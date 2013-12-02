package project.model.cultivation
{
	import project.config.ItemConfig;
	import project.model.data.DataModel;
	import project.model.item.ItemModel;
	
	/**
	 * 合成公式模型
	 * @author bbjxl 2013
	 */
	public class MixExpressModel extends DataModel
	{
		/*	 <Mixture ID="390">
		   <Requirement>
		   <Gold>0</Gold>
		   <Honor>0</Honor>
		   <Crystal>0</Crystal>
		   <Exp>0</Exp>
		   <Items>
		   <Item ID="81" Amount="1" />
		   </Items>
		   <Cards>
		   <Card ID="30" Amount="30" />
		   <Card ID="69" Amount="2" />
		   <Card ID="2" Amount="3" />
		   </Cards>
		   </Requirement>
		   </Mixture>
		 </Mixtures>*/
		private var _targetCardId:int;
		private var _gold:int;
		private var _honor:int;
		private var _crystal:int;
		private var _exp:int;
		private var _items:Array;
		private var _cards:Array;
		private var _itemId:int;
		private var _itemName:String;
		
		public function MixExpressModel(it:ItemModel)
		{
			_itemId = it.itemId;
			_itemName = it.name;
			var loc:XML = findMixXMLByid(it.itemId);
			if (loc == null)
				return;
			_targetCardId = loc.@ID;
			_gold = loc.Requirement.Gold;
			_honor = loc.Requirement.Honor;
			_crystal = loc.Requirement.Crystal;
			_exp = loc.Requirement.Exp;
			var tempItem:XML;
			_items = new Array();
			var tempItemObj:Object;
			for each (tempItem in loc.Requirement.Items.Item)
			{
				tempItemObj = new Object();
				tempItemObj.id = tempItem.@ID.toXMLString();
				tempItemObj.number = tempItem.@Amount.toXMLString();
				_items.push(tempItemObj);
				
			}
			
			_cards = new Array();
			for each (tempItem in loc.Requirement.Cards.Card)
			{
				tempItemObj = new Object();
				tempItemObj.id = tempItem.@ID.toXMLString();
				tempItemObj.number = tempItem.@Amount.toXMLString();
				_cards.push(tempItemObj);
			}
			tempItemObj = null;
			loc = null;
		}
		
		private function findMixXMLByid(id:int):XML
		{
			var loc:XML;
			for each (loc in ItemConfig.MIXTURES_CONFIG.Mixture)
			{
				if (loc.Requirement.Items.Item.@ID == id)
				{
					return loc;
				}
			}
			return null;
		}
		
		public function get targetCardId():int
		{
			return _targetCardId;
		}
		
		public function set targetCardId(value:int):void
		{
			_targetCardId = value;
		}
		
		public function get gold():int 
		{
			return _gold;
		}
		
		public function set gold(value:int):void 
		{
			_gold = value;
		}
		
		public function get honor():int 
		{
			return _honor;
		}
		
		public function set honor(value:int):void 
		{
			_honor = value;
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
		
		public function get itemId():int 
		{
			return _itemId;
		}
		
		public function set itemId(value:int):void 
		{
			_itemId = value;
		}
		
		public function get itemName():String 
		{
			return _itemName;
		}
		
		public function set itemName(value:String):void 
		{
			_itemName = value;
		}
	}

}