package project.model.shop 
{
	import project.config.ErrorZhCn;
	import project.config.ItemCategory;
	import project.debug.Debug;
	import project.events.SMZTDataChangeEvent;
	import project.model.data.DataModel;
	import project.model.item.IModel;
	
	/**
	 * ...
	 * @author bbjxl 2013
	 */
	public class ShopModel extends DataModel implements IModel 
	{
		private var _hot:Vector.<GoodsModel>;//执销
		private var _cards:Vector.<GoodsModel>;//卡包
		private var _items:Vector.<GoodsModel>;//道具
		private var _golds:Vector.<GoodsModel>;//金币
		private var _honors:Vector.<GoodsModel>;//荣誉
		
		private var _list:Vector.<GoodsModel>;//商品列表
		
		private static var _shopModel:ShopModel = null;
		public function ShopModel() 
		{
			if (_shopModel != null)
			{
				throw new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE);
			}
			_hot = new Vector.<GoodsModel>();
			_cards = new Vector.<GoodsModel>();
			_items = new Vector.<GoodsModel>();
			_golds = new Vector.<GoodsModel>();
			_honors = new Vector.<GoodsModel>();
			_list = new Vector.<GoodsModel>();
		}
		
		/**
		 * 根据物品ID返回相应的物品在商城中商品信息
		 * @param	param
		 */
		public function findGoodModelByItemid(param:int):GoodsModel {
			for (var i:String in _list) {
				if (_list[i].id == param) {
					return _list[i];
					}
				}
				Debug.log("findGoodModelByItemid:商场中没有所要找的物品商品信息");
				return null;
			}
		
		public function setData(param:Object):void {
			removeValueFromArray(_cards);
			_cards = null;
			removeValueFromArray(_hot);
			_hot = null;
			removeValueFromArray(_items);
			_items = null;
			removeValueFromArray(_golds);
			_golds = null;
			removeValueFromArray(_list);
			_list = null;
			removeValueFromArray(_honors);
			_honors = null;
			_hot = new Vector.<GoodsModel>();
			_cards = new Vector.<GoodsModel>();
			_items = new Vector.<GoodsModel>();
			_golds = new Vector.<GoodsModel>();
			_honors = new Vector.<GoodsModel>();
			_list = new Vector.<GoodsModel>();
			for (var i:String in param.goods) {
				var temp:GoodsModel = new GoodsModel(param.goods[i]);
				
				_list.push(temp);
				temp = null;
				}
			//排序
			quickSort(_list, 0, _list.length - 1);
			
			for (var j:String in _list) {
				if (_list[j].hot == 1) {
					_hot.push(_list[j]);
					}
				if (_list[j].category == ItemCategory.CARDS && _list[j].crystal>0) {
					_cards.push(_list[j]);
					}
				if (_list[j].category == ItemCategory.PROPS && _list[j].crystal>0) {
					_items.push(_list[j]);
					}
				if (_list[j].gold>0) {
					_golds.push(_list[j]);
					}
				if (_list[j].honor>0) {
					_honors.push(_list[j]);
					}
				}
			
				
			dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
			}
		//快速排序 
		//============================================
		public function quickSort(a:Vector.<GoodsModel>,a_low:int,a_high:int):void
			{
				if (a.length < 1) return;
				
				var low:int = a_low;
				var high:int = a_high;
				if (low>=high)
				{
					return;
				}
				var transfer:Boolean = true;
				while (low!=high)
				{
					if (judgeLevel0(a[low],a[high]))
					{
						var temp:GoodsModel = a[low];
						a[low] = a[high];
						a[high] = temp;
						transfer = (transfer == true) ? false:true;
					}
					transfer ? high--:low++;
				}
				low--;
				high++;
				quickSort(a,a_low,low);
				quickSort(a,high,a_high);
			}
		public function judgeLevel0(arg1:GoodsModel,arg2:GoodsModel):Boolean {
			var returnFalg:Boolean = false;

				if (arg1.order > arg2.order) {
					returnFalg = true;
					return returnFalg;
				}
				
				return returnFalg;
			}
	
		public function removeValueFromArray(arr:Vector.<GoodsModel>):void
		{
			var len:uint = arr.length;
			
			for (var i:Number = len-1; i > -1; i--)
			{
				arr.splice(i, 1);
			}
		}
		
		public static function getInstance() : ShopModel
		{
			if (_shopModel == null)
			{
			  _shopModel = new ShopModel;
			}
			return _shopModel; 
		}// end function
		
		public function get list():Vector.<GoodsModel> 
		{
			return _list;
		}
		
		public function set list(value:Vector.<GoodsModel>):void 
		{
			_list = value;
		}
		
		public function get hot():Vector.<GoodsModel> 
		{
			return _hot;
		}
		
		public function set hot(value:Vector.<GoodsModel>):void 
		{
			_hot = value;
		}
		
		public function get cards():Vector.<GoodsModel> 
		{
			return _cards;
		}
		
		public function set cards(value:Vector.<GoodsModel>):void 
		{
			_cards = value;
		}
		
		public function get items():Vector.<GoodsModel> 
		{
			return _items;
		}
		
		public function set items(value:Vector.<GoodsModel>):void 
		{
			_items = value;
		}
		
		public function get honors():Vector.<GoodsModel> 
		{
			return _honors;
		}
		
		public function set honors(value:Vector.<GoodsModel>):void 
		{
			_honors = value;
		}
		
		public function get golds():Vector.<GoodsModel> 
		{
			return _golds;
		}
		
		public function set golds(value:Vector.<GoodsModel>):void 
		{
			_golds = value;
		}
	}

}