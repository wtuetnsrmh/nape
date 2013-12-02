package project.model.editDeck 
{
	import project.config.ErrorZhCn;
	import project.events.SMZTDataChangeEvent;
	import project.model.data.DataModel;
	import project.model.data.DeckModel;
	import project.model.data.PlayerData;
	import project.model.item.CardModel;
	import project.model.item.IModel;
	import project.utils.CustomTool;
	import project.view.module.DeckPane.SelecteRacePanel;
	
	/**
	 * 编辑卡组面板数据模型
	 * @author bbjxl 2012
	 */
	public class EditDeckModel extends DataModel implements IModel 
	{
		//----------------------容器---------------------------------
		
		//-----------------------UI---------------------------------
		
		//-----------------------数据---------------------------------
		private var _editDeckId:int;//要编辑的卡组ID
		private var _playData:PlayerData;
		private var _deckName:String;//卡组名称
		private var _hero:CardModel;//英雄卡
		private var _cards:Array;//所带的卡（包括法宝，神通）
		private var _usedMitac:Vector.<CardModel>;//卡组中已用的神通
		private var _usedTalisman:Vector.<CardModel>;//卡组中已用的法宝
		private var _usedSoldier:Vector.<CardModel>;//卡组中已用的兵
		private var _totalCanUseSoldier:Vector.<CardModel>;//所有当前英雄可以带的兵
		private var _totalCanUseTalisma:Vector.<CardModel>;//所有当前英雄可以带的法宝
		private var _totalCanUseMitac:Vector.<CardModel>;//所有当前英雄可以带的神通
		
		private var _usedMitacNum:int = 0;//已装备的神通
		private var _usedSoldierNum:int = 0;//已装备的兵
		private var _usedTalismaNum:int = 0;//已装备的法宝
		//-----------------------事件--------------------------------
		
		private static var _editDeckModel:EditDeckModel;
		
		public function EditDeckModel() 
		{
			if (_editDeckModel != null) {
				 throw new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE);
				}
			_playData = PlayerData.getInstance();
		}
		//--------------------------------------------------------
		private function initData():void {
			_usedMitac = new Vector.<CardModel>();
			_usedTalisman = new Vector.<CardModel>();
			_usedSoldier = new Vector.<CardModel>();
			_totalCanUseSoldier = new Vector.<CardModel>();
			_totalCanUseTalisma = new Vector.<CardModel>();
			_totalCanUseMitac = new Vector.<CardModel>();
			}
		/**
		 * 根据ID从所有可用的兵卡数组中找出所要的卡数据模型
		 */
		public function findCardFormTotalCanUseSoldierById(parma:int):CardModel {
			for (var i:String in _totalCanUseSoldier) {
				if (_totalCanUseSoldier[i].id == parma) {
					return _totalCanUseSoldier[i];
					}
				}
				return null;
			}
		/**
		 * 根据ID从所有可用的神通卡数组中找出所要的卡数据模型
		 */
		public function findCardFormTotalCanUseMitacById(parma:int):CardModel {
			for (var i:String in _totalCanUseMitac) {
				if (_totalCanUseMitac[i].id == parma) {
					return _totalCanUseMitac[i];
					}
				}
				return null;
			}
		/**
		 * 根据ID从所有可用的法宝卡数组中找出所要的卡数据模型
		 */
		public function findCardFormTotalCanUseTalismaById(parma:int):CardModel {
			for (var i:String in _totalCanUseTalisma) {
				if (_totalCanUseTalisma[i].id == parma) {
					return _totalCanUseTalisma[i];
					}
				}
				return null;
			}
		//--------------------------------------------------------
		public function get usedTalismaNum() : int
		 {
			 _usedTalismaNum = 0;
			for (var i:String in _usedTalisman) {
				if (_usedTalisman[i]) {
					_usedTalismaNum++;
					}
				}
			 return _usedTalismaNum;
		}// end function
		
		public function set usedTalismaNum(param1:int) : void
		{
			
		  _usedTalismaNum= param1;
		  return;
		}// end function
		public function get usedSoldierNum() : int
		 {
			  _usedSoldierNum = 0;
			for (var i:String in _usedSoldier) {
				if (_usedSoldier[i]) {
					_usedSoldierNum++;
					}
				}
		   return _usedSoldierNum;
		}// end function
		
		public function set usedSoldierNum(param1:int) : void
		{
			
		  _usedSoldierNum= param1;
		  return;
		}// end function
		public function get usedMitacNum() : int
		 {
			 _usedMitacNum = 0;
			for (var i:String in _usedMitac) {
				if (_usedMitac[i]) {
					_usedMitacNum++;
					}
				}
		   return _usedMitacNum;
		}// end function
		
		public function set usedMitacNum(param1:int) : void
		{
		  _usedMitacNum= param1;
		  return;
		}// end function
		/**
		 * 卡组中的所有卡
		 */
		public function get cards() :Array
		 {
			 _cards = new Array();
			 _cards.push(_hero.id);
			 var tempCards:Vector.<CardModel> = _usedSoldier.concat(_usedMitac, _usedTalisman);
			 for (var i:String in tempCards) {
				 if (tempCards[i]) {
					 _cards.push(tempCards[i].id);
					 }
				 }
			
		   return _cards;
		}// end function
		
		public function set cards(param1:Array) : void
		{
			
		  _cards= param1;
		  return;
		}// end function
		
		public function get deckName() : String
		 {
		   return _deckName;
		}// end function
		
		public function set deckName(param1:String) : void
		{
		  _deckName= param1;
		  return;
		}// end function
		
		public function get totalCanUseMitac() : Vector.<CardModel>
		 {
		   return _totalCanUseMitac;
		}// end function
		
		public function set totalCanUseMitac(param1:Vector.<CardModel>) : void
		{
		  _totalCanUseMitac= param1;
		  return;
		}// end function
		
		public function get totalCanUseTalisma() : Vector.<CardModel>
		 {
		   return _totalCanUseTalisma;
		}// end function
		
		public function set totalCanUseTalisma(param1:Vector.<CardModel>) : void
		{
		  _totalCanUseTalisma= param1;
		  return;
		}// end function
		
		public function get totalCanUseSoldier() : Vector.<CardModel>
		 {
		   return _totalCanUseSoldier;
		}// end function
		
		public function set totalCanUseSoldier(param1:Vector.<CardModel>) : void
		{
		  _totalCanUseSoldier= param1;
		  return;
		}// end function
		public function get usedSoldier() : Vector.<CardModel>
		 {
		   return _usedSoldier;
		}// end function
		
		public function set usedSoldier(param1:Vector.<CardModel>) : void
		{
		  _usedSoldier = param1;
		  //dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
		  return;
		}// end function
		
		public function get usedTalisman() : Vector.<CardModel>
		 {
		   return _usedTalisman;
		}// end function
		
		public function set usedTalisman(param1:Vector.<CardModel>) : void
		{
		  _usedTalisman = param1;
		  //用于判断是否让神通的按钮可以点击
		  //dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
		  return;
		}// end function
		
		
		public function get usedMitac() : Vector.<CardModel>
		 {
		   return _usedMitac;
		}// end function
		
		public function set usedMitac(param1:Vector.<CardModel>) : void
		{
		  _usedMitac = param1;
		  //dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
		  return;
		}// end function
		
		public function get hero() : CardModel
		 {
		   return _hero;
		}// end function
		
		public function set hero(param1:CardModel) : void
		{
		  _hero= param1;
		  return;
		}// end function
		
		public function get editDeckId() : int
		 {
		   return _editDeckId;
		}// end function
		
		public function set editDeckId(param1:int) : void
		{
			initData();
		  _editDeckId = param1;
		  var temp:DeckModel = _playData.returnDeckModelByDeckId(param1);//已有的卡组
		  _deckName = temp.deckName;
		  if (temp.cards) {
			  //已有卡组，编辑已有卡组
			  hero = temp.heroCard;
			  usedMitac = temp.mitacCard.concat();
			  usedTalisman = temp.talismanCard.concat();
			  usedSoldier = temp.soldierCard.concat();
			  }else {
				  //没有卡组，要新建
				  //_playData.updataTotalType();
				  hero = new CardModel(SelecteRacePanel.getInstance().currentCardId);//种族选择面板中当前选的英雄ID
				  usedMitac = new Vector.<CardModel>(_hero.mitac);
				  usedSoldier = new Vector.<CardModel>(_hero.ally);
				  usedTalisman = new Vector.<CardModel>(_hero.talisman);
				  }
			//如果该卡组英雄可以带神通
			if (usedMitac.length > 0) {
				totalCanUseMitac = PlayerData.retunCardsByRace(hero.race, _playData.MitacCards);
				}
			if (usedTalisman.length > 0) {
				totalCanUseTalisma = PlayerData.retunCardsByRace(hero.race, _playData.TalismanCards);
				}
			if (usedSoldier.length > 0) {
				totalCanUseSoldier = PlayerData.retunCardsByRace(hero.race, _playData.SoldierCards);
				}
				
		  dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
		  return;
		}// end function
		//--------------------------------------------------------
		public static function getInstance() : EditDeckModel
        {
            if (_editDeckModel == null)
            {
                _editDeckModel = new EditDeckModel;
            }
            return _editDeckModel;
        }// end function
		
	}

}