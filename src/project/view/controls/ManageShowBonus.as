package project.view.controls
{
	
	import flash.display.Sprite;
	import flash.events.TimerEvent;
	import flash.utils.Dictionary;
	import flash.utils.Timer;
	import project.config.ItemConfig;
	import project.config.LocalConfig;
	import project.controller.SMZTController;
	import project.core.SMZTUIManager;
	import project.model.data.BagData;
	import project.model.data.PlayerData;
	import project.model.friends.BonusModel;
	import project.model.item.CardModel;
	import project.model.item.ItemModel;
	import project.utils.Reflection;
	import project.view.base.BaseSprite;
	
	/**
	 * 控制显示奖励显示
	 * @author bbjxl 2013
	 */
	public class ManageShowBonus
	{
		public static const GOLD:int = 0;//金币
		public static const CRYSTAL:int = 1;
		public static const HONOR:int = 2;
		public static const EXP:int = 3;//
		public static const ITEM:int = 4;//
		public static const CARD:int = 5;//
		
		private var _bonusModle:BonusModel;
		private var _showBuff:Array;//等待显示的奖品队列
		private var _currentNoNewShowing:Boolean = false;//当前是否已经有公告在显示
		private var _currentShowNew:ShowServerNews;
		private var _newsBuff:Array;//公告队列
		private var _timer:Timer = new Timer(100);
		public var bufferBonusDir:Dictionary;//缓存中的等战斗结束后要显示的bonus
		private var _cont:int = 0;//显示物品计时器，１00毫秒+1，每500毫秒显示一队列中的奖品信息到舞台上
		
		public function ManageShowBonus()
		{
			_newsBuff = new Array();
			_showBuff = new Array();
			_timer.addEventListener(TimerEvent.TIMER, timerHandler);
			bufferBonusDir = new Dictionary();
			
			
		}
		
		/**
		 * 从缓冲bonus队列中显示一个指定类型的bonus
		 * @param	e
		 */
		public function showBufferBonusByKey(key:int):void {
			if (bufferBonusDir[key] != null) {
				showBonusAddSomeDataAndMoreThanOne(bufferBonusDir[key]);
				delete bufferBonusDir[key];
				}
			}
		
		/**
		 * 显示一条奖品信息
		 * @param	e
		 */
		private function timerHandler(e:TimerEvent):void 
		{
			if (_showBuff.length > 0) {
				//物品提示
				_cont++;
				if (_cont >= 5) {
					var temp:ShowBonusRow = new ShowBonusRow(_showBuff.shift());
					SMZTUIManager.getInstance().mainPane.bonusLayer.addChild(temp);
					temp = null;
					_cont = 0;
					}
				
				}
			if (_newsBuff.length > 0 && !_currentNoNewShowing) {
				//全服公告,当前没有正在显示的公告
				_currentNoNewShowing = true;
				_currentShowNew = null;
				_currentShowNew = new ShowServerNews(_newsBuff.shift(), function ():void { _currentShowNew = null; _currentNoNewShowing = false; } );
				SMZTUIManager.getInstance().mainPane.bonusLayer.addChild(_currentShowNew);
				}
			if (_currentShowNew != null) {
				_currentShowNew.render();
				}
				
			if(_showBuff.length==0 && _newsBuff.length==0 && !_currentNoNewShowing) {
				_timer.stop();
				}
		}
		
		/**
		 * 添加一条全服文件公告
		 * @param	value
		 */
		public function showServerNode(value:String):void {
			_newsBuff.push(value);
			if (!_timer.running) {
				_timer.start();
				}
			}
		
		/**
		 * 显示奖励不加相应的数据－自动判断bonus包含的类型，显示多个
		 * @param	value
		 */
		public function showBonusNoDataAndMoreThanOne(value:BonusModel):void
		{
			_bonusModle = value;
			if (_bonusModle.gold != 0)
			{
				_showBuff.push(String(LocalConfig.LOCAL_LAN.StatueScene.GlodTip.@Text).replace("{number}",_bonusModle.gold));
			}
			if (_bonusModle.honor != 0)
			{
				_showBuff.push(String(LocalConfig.LOCAL_LAN.StatueScene.HonorTip.@Text).replace("{number}",_bonusModle.honor));
			}
			if (_bonusModle.crystal != 0)
			{
				_showBuff.push(String(LocalConfig.LOCAL_LAN.StatueScene.CrystalTip.@Text).replace("{number}",_bonusModle.crystal));
				
			}
			if (_bonusModle.exp != 0)
			{
				_showBuff.push(String(LocalConfig.LOCAL_LAN.StatueScene.ExpTip.@Text).replace("{number}",_bonusModle.exp));
				
			}
			if (_bonusModle.items && _bonusModle.items.length > 0)
			{
				for (var j:String in _bonusModle.items) {
					_showBuff.push(String(LocalConfig.LOCAL_LAN.StatueScene.ItemTip.@Text).replace("{name}",ItemConfig.ITEM_CONFIG.Item.(@ID == _bonusModle.items[j].id).@Name).replace("{number}",_bonusModle.items[j].number));
					}
				//如果有获得物品则更新背包数据
				SMZTController.getInstance().getBagData(false);
			}
			if (_bonusModle.cards && _bonusModle.cards.length > 0)
			{
				for (var i:String in _bonusModle.cards)
				{
					_showBuff.push(String(LocalConfig.LOCAL_LAN.StatueScene.CardTip.@Text).replace("{name}",CardModel.returnCardNameById(_bonusModle.cards[i].id)).replace("{number}",_bonusModle.cards[i].number));
					
				}
				
			}
			if (_bonusModle.achievements && _bonusModle.achievements.length > 0)
			{
				//增加成就
				
			}
			if (!_timer.running) {
				_timer.start();
				}
		}
		
		
		/**
		 * 显示奖励只加物品跟卡的数据－自动判断bonus包含的类型，显示多个(战斗后显示的奖励-因为除物品跟卡外其他金币这种在战斗后会刷新个人货币)
		 * @param	value
		 */
		public function showBonusAddSomeDataAndMoreThanOne(value:BonusModel):void
		{
			_bonusModle = value;
			if (_bonusModle.gold != 0)
			{
				_showBuff.push(String(LocalConfig.LOCAL_LAN.StatueScene.GlodTip.@Text).replace("{number}",_bonusModle.gold));
			}
			if (_bonusModle.honor != 0)
			{
				_showBuff.push(String(LocalConfig.LOCAL_LAN.StatueScene.HonorTip.@Text).replace("{number}",_bonusModle.honor));
			}
			if (_bonusModle.crystal != 0)
			{
				_showBuff.push(String(LocalConfig.LOCAL_LAN.StatueScene.CrystalTip.@Text).replace("{number}",_bonusModle.crystal));
				
			}
			if (_bonusModle.exp != 0)
			{
				_showBuff.push(String(LocalConfig.LOCAL_LAN.StatueScene.ExpTip.@Text).replace("{number}",_bonusModle.exp));
				
			}
			if (_bonusModle.items && _bonusModle.items.length > 0)
			{
				for (var j:String in _bonusModle.items) {
					_showBuff.push(String(LocalConfig.LOCAL_LAN.StatueScene.ItemTip.@Text).replace("{name}",ItemConfig.ITEM_CONFIG.Item.(@ID == _bonusModle.items[j].id).@Name).replace("{number}",_bonusModle.items[j].number));
					
					}
				//如果有获得物品则更新背包数据
				SMZTController.getInstance().getBagData(false);
			}
			if (_bonusModle.cards && _bonusModle.cards.length > 0)
			{
				for (var i:String in _bonusModle.cards)
				{
					_showBuff.push(String(LocalConfig.LOCAL_LAN.StatueScene.CardTip.@Text).replace("{name}",CardModel.returnCardNameById(_bonusModle.cards[i].id)).replace("{number}",_bonusModle.cards[i].number));
					for (var n:int = 0; n < _bonusModle.cards[i].number; n++ ) {
						PlayerData.getInstance().addOneCard(_bonusModle.cards[i].id);
						}
					
				}
				PlayerData.getInstance().updataTotalType();
				
			}
			
			if (_bonusModle.achievements && _bonusModle.achievements.length > 0)
			{
				//增加成就
				
			}
			if (!_timer.running) {
				_timer.start();
				}
		}
		
		/**
		 * 指定在舞台中显示什么奖励，只显示不增加数据,只显示指定的一种
		 * @param	value
		 */
		public function showBonusNoData(value:BonusModel,type):void
		{
			switch(type) {
				case GOLD:
					_showBuff.push(String(LocalConfig.LOCAL_LAN.StatueScene.GlodTip.@Text).replace("{number}",value.gold));
					break;
				case HONOR:
					_showBuff.push(String(LocalConfig.LOCAL_LAN.StatueScene.HonorTip.@Text).replace("{number}",value.honor));
					break;
				case CRYSTAL:
					_showBuff.push(String(LocalConfig.LOCAL_LAN.StatueScene.CrystalTip.@Text).replace("{number}",value.crystal));
					break;
				case EXP:
					_showBuff.push(String(LocalConfig.LOCAL_LAN.StatueScene.ExpTip.@Text).replace("{number}",value.exp));
					break;
				case ITEM:
					if (value.items && value.items.length > 0)
					{
						try 
						{
							//新的bonus
							for (var j:String in value.items) {
								_showBuff.push(String(LocalConfig.LOCAL_LAN.StatueScene.ItemTip.@Text).replace("{name}",ItemConfig.ITEM_CONFIG.Item.(@ID == value.items[j].id).@Name).replace("{number}",value.items[j].number));
								}
						}catch (e:ReferenceError) {
							//旧的bonus,物品数量只为１
								for (var j:String in value.items) {
									_showBuff.push(String(LocalConfig.LOCAL_LAN.StatueScene.ItemTip.@Text).replace("{name}",ItemConfig.ITEM_CONFIG.Item.(@ID == value.items[j].id).@Name).replace("{number}",1));
									}
							}
					}
					break;
				case CARD:
					if (value.cards && value.cards.length > 0)
					{
						try 
						{
							//新的bonus
							for (var i:String in value.cards)
								{
									_showBuff.push(String(LocalConfig.LOCAL_LAN.StatueScene.CardTip.@Text).replace("{name}",CardModel.returnCardNameById(value.cards[i].id)).replace("{number}",value.cards[i].number));
								}
						}catch (e:ReferenceError) {
							//旧的bonus,物品数量只为１
								for (var i:String in value.cards)
									{
										_showBuff.push(String(LocalConfig.LOCAL_LAN.StatueScene.CardTip.@Text).replace("{name}",CardModel.returnCardNameById(value.cards[i].id)).replace("{number}",1));
									}
							}
					}
					break;
				}
				
			if (!_timer.running) {
				_timer.start();
				}
		}
		
		/**
		 * 显示奖励且添加相应的数据
		 * @param	value
		 */
		public function showBonus(value:BonusModel):void
		{
			_bonusModle = value;
			if (_bonusModle == null) return;
			if (_bonusModle.gold != 0)
			{
				//更新金币数
				PlayerData.getInstance().gold += _bonusModle.gold;
				_showBuff.push(String(LocalConfig.LOCAL_LAN.StatueScene.GlodTip.@Text).replace("{number}",_bonusModle.gold));
			}
			if (_bonusModle.honor != 0)
			{
				//更新荣誉
				PlayerData.getInstance().honor += _bonusModle.honor;
				_showBuff.push(String(LocalConfig.LOCAL_LAN.StatueScene.HonorTip.@Text).replace("{number}",_bonusModle.honor));
			}
			if (_bonusModle.crystal != 0)
			{
				PlayerData.getInstance().crystal += _bonusModle.crystal;
				_showBuff.push(String(LocalConfig.LOCAL_LAN.StatueScene.CrystalTip.@Text).replace("{number}",_bonusModle.crystal));
				
			}
			if (_bonusModle.exp != 0)
			{
				PlayerData.getInstance().expGain += _bonusModle.exp;
				_showBuff.push(String(LocalConfig.LOCAL_LAN.StatueScene.ExpTip.@Text).replace("{number}",_bonusModle.exp));
				
			}
			if (_bonusModle.items && _bonusModle.items.length > 0)
			{
				for (var j:String in _bonusModle.items) {
					_showBuff.push(String(LocalConfig.LOCAL_LAN.StatueScene.ItemTip.@Text).replace("{name}",ItemConfig.ITEM_CONFIG.Item.(@ID == _bonusModle.items[j].id).@Name).replace("{number}",_bonusModle.items[j].number));
					
					}
				//如果有获得物品则更新背包数据
				SMZTController.getInstance().getBagData(false);
			}
			if (_bonusModle.cards && _bonusModle.cards.length > 0)
			{
				for (var i:String in _bonusModle.cards)
				{
					_showBuff.push(String(LocalConfig.LOCAL_LAN.StatueScene.CardTip.@Text).replace("{name}",CardModel.returnCardNameById(_bonusModle.cards[i].id)).replace("{number}",_bonusModle.cards[i].number));
					for (var n:int = 0; n < _bonusModle.cards[i].number; n++ ) {
						PlayerData.getInstance().addOneCard(_bonusModle.cards[i].id);
						}
					
				}
				PlayerData.getInstance().updataTotalType();
				
			}
			if (_bonusModle.achievements && _bonusModle.achievements.length > 0)
			{
				//增加成就
				
			}
			_bonusModle = null;
			if (!_timer.running) {
				_timer.start();
				}
		}
	
	}

}