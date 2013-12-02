package project.model.friends
{
	import project.config.ItemConfig;
	import project.config.LocalConfig;
	import project.debug.Debug;
	import project.model.data.DataModel;
	import project.model.data.PlayerData;
	import project.model.item.CardModel;
	import project.model.item.ItemModel;
	
	/**
	 * 奖励信息
	 * @author bbjxl 2012
	 */
	public class BonusModel extends DataModel
	{
		/*gold	int	金币数
		   crystal	int	水晶数
		   exp	int	经验值
		   items	array[int]	物品编号列表
		   cards	array[int]	卡牌编号列表
		   achievements	array[int]	成就编号列表
		   honor:int;//荣誉
		   注：当玩家没有获得相应属性的奖励时，相关的键值会被舍去
		 */
		//--------------------------------------------------------
		private var _gold:int;
		private var _crystal:int;
		private var _exp:int;
		private var _items:Array;
		private var _cards:Array;
		private var _achievements:Array;
		private var _honor:int; //荣誉
		
		//--------------------------------------------------------
		public function BonusModel()
		{
		
		}
		
		/**
		 * 返回当前任务的奖励信息
		 * @return
		 */
		public function returnBonusText():String
		{
			var returnStr:String = "";
			if (_gold != 0)
			{
				returnStr += "金币+" + _gold;
				//更新金币数
				PlayerData.getInstance().gold += _gold;
			}
			if (_crystal != 0)
			{
				returnStr += "水晶+" + _crystal;
				PlayerData.getInstance().crystal += _crystal;
			}
			if (_exp != 0)
			{
				returnStr += "经验+" + _exp;
				PlayerData.getInstance().expGain += _exp;
			}
			return returnStr;
		}
		
		public function ToString():String
		{
			var str:String = "";
			if (_gold != 0)
			{
				str += String(LocalConfig.LOCAL_LAN.StatueScene.GlodTip.@Text).replace("{number}", _gold) + ";";
			}
			if (_honor != 0)
			{
				str += String(LocalConfig.LOCAL_LAN.StatueScene.HonorTip.@Text).replace("{number}", _honor) + ";";
			}
			if (crystal != 0)
			{
				str += String(LocalConfig.LOCAL_LAN.StatueScene.CrystalTip.@Text).replace("{number}", crystal) + ";";
				
			}
			if (exp != 0)
			{
				str += String(LocalConfig.LOCAL_LAN.StatueScene.ExpTip.@Text).replace("{number}", exp) + ";";
			}
			str += itemToString();
			str += cardsToString();
			return str;
		}
		
		//输出所有物品名称
		public function itemToString():String
		{
			var str:String = "";
			if (items && items.length > 0)
			{
				str = "物品:";
				for (var j:String in items)
				{
					if (int(j) == items.length - 1)
					{
						str += String(LocalConfig.LOCAL_LAN.StatueScene.ItemLogTip.@Text).replace("{name}", ItemConfig.ITEM_CONFIG.Item.(@ID == items[j].id).@Name).replace("{number}", items[j].number) + ";";
					}
					else
					{
						str += String(LocalConfig.LOCAL_LAN.StatueScene.ItemLogTip.@Text).replace("{name}", ItemConfig.ITEM_CONFIG.Item.(@ID == items[j].id).@Name).replace("{number}", items[j].number) + "、";
					}
				}
				
			}
			return str;
		}
		
		//输出所有卡名称
		public function cardsToString():String
		{
			var str:String = "";
			if (cards && cards.length > 0)
			{
				str = "卡牌:";
				for (var i:String in cards)
				{
					
					if (int(i) == cards.length - 1)
					{
						str += returnCardNameByQuity(cards[i].id).replace("{number}", cards[i].number)+ ";";
					}
					else
					{
						str += returnCardNameByQuity(cards[i].id).replace("{number}", cards[i].number)+ "、";
					}
				}
			}
			return str;
		}
		
		/**
		 * 返回相应的加链接字符
		 * @param	temp 卡ＩＤ或用户ＩＤ
		 * @param	contentStr 内容
		 * @param	type
		 * @return
		 */
		public static function returnAddHref(param:int,contentStr:String, type:int = 1):String {
			var returnStr:String = "";
			switch(type) {
				case 1:
					//返回名字,点击弹出个人信息面板
					returnStr= "<a href='event:" + type+"_"+param +"'><font color='#be702e'>" + contentStr + "</font></a>";
					break;
				case 2:
					//返回加了链接的卡牌名字
					returnStr = "<a href='event:" +type+"_"+ param +"'>" + contentStr+ "</a>";
					break;
				}
				
			return returnStr;
			}
		
		/**
		 * 根据不同的品质显示不同颜色的卡名-没有number
		 * 1	普通
		   2	良好
		   3	优秀
		   4	史诗
		   5	魔神
		   6	传说
		 */
		public static function returnCardNameByQuityNoNumber(value:int):String
		{
			var tempQ:int = int(ItemConfig.CARD_CONFIG.Card.(@ID == String(value)).@Quality);
			if (tempQ < 4)
			{
				return String(LocalConfig.LOCAL_LAN.LogPane.NormalCardLogTip.@Text).replace("{name}", CardModel.returnCardNameById(value));
			}
			else if (tempQ ==4)
			{
				return String(LocalConfig.LOCAL_LAN.LogPane.ShiShiCardLogTip.@Text).replace("{name}", CardModel.returnCardNameById(value));
			}
			else if (tempQ==5)
			{
				return String(LocalConfig.LOCAL_LAN.LogPane.MaoShenCardLogTip.@Text).replace("{name}", CardModel.returnCardNameById(value));
			}else if (tempQ==6)
			{
				return String(LocalConfig.LOCAL_LAN.LogPane.ChuanShuoCardLogTip.@Text).replace("{name}", CardModel.returnCardNameById(value));
			}
			
			return String(LocalConfig.LOCAL_LAN.LogPane.NormalCardLogTip.@Text).replace("{name}", CardModel.returnCardNameById(value));
		}
		/**
		 * 根据不同的品质显示不同颜色的卡名-没有number
		 * 1	普通
		   2	良好
		   3	优秀
		   4	史诗
		   5	魔神
		   6	传说
		 */
		public static function returnCardNameByQuity(value:int):String
		{
			var tempQ:int = int(ItemConfig.CARD_CONFIG.Card.(@ID == String(value)).@Quality);
			if (tempQ < 4)
			{
				return "<a href='event:" +2+"_"+ value +"'>" + String(LocalConfig.LOCAL_LAN.StatueScene.NormalCardLogTip.@Text).replace("{name}", CardModel.returnCardNameById(value))+ "</a>";
			}
			else if (tempQ ==4)
			{
				return "<a href='event:" +2+"_"+ value +"'>" +String(LocalConfig.LOCAL_LAN.StatueScene.ShiShiCardLogTip.@Text).replace("{name}", CardModel.returnCardNameById(value))+ "</a>";
			}
			else if (tempQ==5)
			{
				return "<a href='event:" +2+"_"+ value +"'>" +String(LocalConfig.LOCAL_LAN.StatueScene.MaoShenCardLogTip.@Text).replace("{name}", CardModel.returnCardNameById(value))+ "</a>";
			}else if (tempQ==6)
			{
				return "<a href='event:" +2+"_"+ value +"'>" +String(LocalConfig.LOCAL_LAN.StatueScene.ChuanShuoCardLogTip.@Text).replace("{name}", CardModel.returnCardNameById(value))+ "</a>";
			}
			
			return "<a href='event:" +2+"_"+ value +"'>" +String(LocalConfig.LOCAL_LAN.StatueScene.NormalCardLogTip.@Text).replace("{name}", CardModel.returnCardNameById(value))+ "</a>";
		}
		
		/**
		 * 把物品跟卡转成object数组
		 * @param	param
		 */
		public function toObject():void
		{
			
			var tempItem:Array = new Array();
			if(items!=null){
			while (items.length > 0)
			{
				var temp:Object = new Object();
				var tempid:int = items.shift();
				if (!arrayContainsValue(tempItem, tempid))
				{
					temp.number = 1;
					temp.id = tempid;
					tempItem.push(temp);
				}
				temp = null;
			}
			items = tempItem;
			}
			
			tempItem = new Array();
			if(cards!=null){
			while (cards.length > 0)
			{
				var tempcard:Object = new Object();
				var cardid:int = cards.shift();
				if (!arrayContainsValue(tempItem, cardid))
				{
					tempcard.number = 1;
					tempcard.id = cardid;
					tempItem.push(tempcard);
				}
				tempcard = null;
			}
			cards = tempItem;
			}
			tempItem = null;
		
		}
		
		private function arrayContainsValue(arr:Array, value:int):Boolean
		{
			for (var i:String in arr)
			{
				if (arr[i].id == value)
				{
					arr[i].number++;
					return true;
				}
			}
			return false;
		}
		
		public function setData(param:Object):void
		{
			if (param == null)
			{
				Debug.log("点了没有随机任务的随机按钮！")
				return;
			}
			_honor = (param["honor"] == null) ? 0 : param["honor"];
			_gold = (param["gold"] == null) ? 0 : param["gold"];
			_crystal = (param["crystal"] == null) ? 0 : param["crystal"];
			_exp = (param["exp"] == null) ? 0 : param["exp"];
			_items = (param["items"] == null) ? null : param["items"];
			_cards = (param["cards"] == null) ? null : param["cards"];
			_achievements = (param["achievements"] == null) ? null : param["achievements"];
		}
		
		public function get gold():int
		{
			return _gold;
		}
		
		public function set gold(value:int):void
		{
			_gold = value;
		}
		
		public function get crystal():int
		{
			return _crystal;
		}
		
		public function set crystal(value:int):void
		{
			_crystal = value;
		}
		
		public function get exp():int
		{
			return _exp;
		}
		
		public function set exp(value:int):void
		{
			_exp = value;
		}
		
		public function get items():Array
		{
			return _items;
		}
		
		public function set items(value:Array):void
		{
			_items = value;
		}
		
		public function get cards():Array
		{
			return _cards;
		}
		
		public function set cards(value:Array):void
		{
			_cards = value;
		}
		
		public function get achievements():Array
		{
			return _achievements;
		}
		
		public function set achievements(value:Array):void
		{
			_achievements = value;
		}
		
		public function get honor():int
		{
			return _honor;
		}
		
		public function set honor(value:int):void
		{
			_honor = value;
		}
	
	}

}