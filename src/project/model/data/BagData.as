package project.model.data
{
	/*
	 * 描述：背包数据模型
	 * 管理所有的背包数据，一旦背包中的数据改变就发出改变事件，从而在视图中表现出来
	 *
	 */
	
	import project.config.ErrorZhCn;
	import project.config.ItemCategory;
	import project.debug.Debug;
	import project.events.SMZTDataChangeEvent;
	import project.model.item.ItemModel;
	
	public class BagData extends DataModel
	{
		/*max	int	包裹的最大格子数
		   slots	array[Slot]	包裹使用中的格子数组
		 */
		private var _max:int;
		
		private var _cards:Vector.<ItemModel>; //卡包数据
		private var _props:Vector.<ItemModel>; //道具数据
		private var _others:Vector.<ItemModel>; //其他数据
		private var _mixs:Vector.<ItemModel>; //公式数据
		
		private var _itemData:Vector.<ItemModel>; //背包中所有的数据模型（包括卡包，道具，其他）
		
		//private var _capacity:int;//容量
		//private var _used:int;//已经用的容量
		private static var _bagData:BagData;
		
		public function BagData()
		{
			if (_bagData != null)
			{
				throw new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE);
			}
			_cards = new Vector.<ItemModel>;
			_props = new Vector.<ItemModel>;
			_others = new Vector.<ItemModel>;
			_mixs = new Vector.<ItemModel>;
			_itemData = new Vector.<ItemModel>;
			return;
		} // end function
		
		/*
		   public function get weaponData() : Vector.<ItemModel>
		   {
		   return this._weaponData;
		   }// end function
		
		   //赋值武器数据
		   public function setWeaponData(param1:XML) : void
		   {
		   dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
		   return;
		   }// end function
		
		   public function setSuitData(param1:XML) : void
		   {
		   this._suitData.length = 0;
		   //this._suitData = ServerDataTranslator.translateSuitData(param1);
		   dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
		   return;
		   }// end function
		
		   public function setJewelryData(param1:XML) : void
		   {
		   this._jewelryData.length = 0;
		   //this._jewelryData = ServerDataTranslator.translateJewelryData(param1);
		   dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
		   return;
		 }// end function*/
		public function removeValueFromArray(arr:Vector.<ItemModel>):void
		{
			var len:uint = arr.length;
			
			for (var i:Number = len-1; i > -1; i--)
			{
				arr.splice(i, 1);
			}
		}
		
		/**
		 * 获得一个物品
		 * @param	itemId
		 * @param	num
		 */
		/*public function addItemInBag(itemId:int, num:int = 1):void {
			var tempItem:ItemModel = findBagItemById(itemId);
			if (tempItem) {
				tempItem.number += num;
				}else {
					var tempObj:Object = new Object();
					tempObj.item = itemId;
					tempObj.stack = num;
					_itemData.push(new ItemModel(tempObj));
					}
			}*/
		
		/**
		 * 使用道具后手动减少相应道具的数量（用于使用道具后不需要即时跟服务端同步时，如：号角）
		 * @param	param
		 * @return
		 */
		public function itemUsedReduceNum(itemId:int, num:int = 1):void {
			var tempItem:ItemModel = findBagItemById(itemId);
			if (tempItem) {
				tempItem.number -= num;
				}
			}
		 
		/**
		 * 返回背包中指定ID的物品模型
		 * @param	param
		 * @param	param1
		 * @return
		 */
		public function findBagItemById(param:int):ItemModel {
			
			for (var i:String in _itemData) {
				if (_itemData[i].itemId == param && _itemData[i].number>=1) {
					return _itemData[i];
					}
				}
			return null;
			}
		
		/**
		 * 判断背包中是否有足够所需的物品
		 * @param	param物品ID
		 * @param	param1物品数量
		 * @return
		 */
		public function bagExistItem(param:int,param1:int):Boolean {
			var returnFlag:Boolean = false;
			for (var i:String in _itemData) {
				if (_itemData[i].itemId == param && _itemData[i].number>=param1) {
					return true;
					}
				}
			return returnFlag;
			}
			
		public function setBagData(param1:Object):void
		{
			removeValueFromArray(_cards);
			_cards = null;
			removeValueFromArray(_props);
			_props = null;
			removeValueFromArray(_others);
			_others = null;
			removeValueFromArray(_itemData);
			_itemData = null;
			removeValueFromArray(_mixs);
			_mixs = null;
			
			_cards = new Vector.<ItemModel>();
			_props = new Vector.<ItemModel>();
			_others = new Vector.<ItemModel>();
			_mixs = new Vector.<ItemModel>();
			_itemData = new Vector.<ItemModel>();
			_max = (param1["max"] == null) ? 0 : param1["max"];
			var tempObj:Object = param1["slots"];
			//Debug.log(tempObj);
			for (var i:String in tempObj)
			{
				//Debug.log(i,0xffffff);
				var tempItemModel:ItemModel = new ItemModel(tempObj[i]);
				_itemData.push(tempItemModel);
				tempItemModel = null;
			}
			tempObj = null;
			
			var _loc_2:ItemModel = null;
			for each (_loc_2 in _itemData)
			{
				switch (_loc_2.category)
				{
					case ItemCategory.GIFT: 
						_props.push(_loc_2);
						break;
					case ItemCategory.CARDS: 
						_cards.push(_loc_2);
						break;
					case ItemCategory.PROPS: 
						_props.push(_loc_2);
						break;
					case ItemCategory.MIX: 
						_mixs.push(_loc_2);
						_others.push(_loc_2);
						break;
					case ItemCategory.OTHERS: 
						_others.push(_loc_2);
						break;
					default: 
					{
						trace("没这种类型的物品");
						break;
					}
				
				}
			}
			_loc_2 = null;
			
			dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
			return;
		} // end function
		
		public static function getInstance():BagData
		{
			if (_bagData == null)
			{
				_bagData = new BagData;
			}
			return _bagData;
		} // end function
		
		public function get cards():Vector.<ItemModel>
		{
			return _cards;
		}
		
		public function set cards(value:Vector.<ItemModel>):void
		{
			_cards = value;
		}
		
		public function get props():Vector.<ItemModel>
		{
			return _props;
		}
		
		public function set props(value:Vector.<ItemModel>):void
		{
			_props = value;
		}
		
		public function get others():Vector.<ItemModel>
		{
			return _others;
		}
		
		public function set others(value:Vector.<ItemModel>):void
		{
			_others = value;
		}
		
		public function get max():int
		{
			return _max;
		}
		
		public function set max(value:int):void
		{
			_max = value;
		}
		
		public function get itemData():Vector.<ItemModel> 
		{
			return _itemData;
		}
		
		public function set itemData(value:Vector.<ItemModel>):void 
		{
			_itemData = value;
		}
		
		public function get mixs():Vector.<ItemModel> 
		{
			return _mixs;
		}
		
		public function set mixs(value:Vector.<ItemModel>):void 
		{
			_mixs = value;
		}
	
	}
}
