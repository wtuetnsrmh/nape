package project.model.shop
{
	import flash.events.EventDispatcher;
	import project.config.ItemConfig;
	import project.model.data.DataModel;
	import project.model.item.IModel;
	import project.model.item.ItemModel;
	import project.model.ModelLocator;
	import project.utils.CustomTool;
	
	/**
	 * 商品
	 * @author bbjxl 2013
	 */
	public class GoodsModel extends DataModel implements IModel
	{
		/*id	int	物品编号
		   gold	int	金币价格（可为空）
		   crystal	int	水晶价格（可为空）
		   honor	int	荣誉价格（可为空）
		   hot	int	是否为热销商品（1-热销，0-正常）
		   order	int	显示顺序
		 */
		private var _id:int;
		private var _gold:int;
		private var _crystal:int;
		private var _honor:int;
		private var _hot:int;
		private var _order:int;
		
		private var _imageUrl:String;
		private var _name:String;
		private var _des:String;
		private var _price:int;//出售价格
		private var _priceType:int = 0;//货币类型
		
		private var _category:int;//在XML中所属的分类
		public function GoodsModel(param:Object)
		{
			_id = (param["id"] == null)?0:param["id"];
			_gold = (param["gold"] == null)?0:param["gold"];
			_crystal = (param["crystal"] == null)?0:param["crystal"];
			_honor = (param["honor"] == null)?0:param["honor"];
			_hot = (param["hot"] == null)?0:param["hot"];
			_order = (param["order"] == null)?0:param["order"];
			
			_price=ItemConfig.ITEM_CONFIG.Item.(@ID == _id).@Price;
			_name=ItemConfig.ITEM_CONFIG.Item.(@ID == _id).@Name;
			_des=ItemConfig.ITEM_CONFIG.Item.(@ID == _id).@Description;
			_category = ItemConfig.ITEM_CONFIG.Item.(@ID == _id).@Category;
			_imageUrl=ModelLocator.getInstance().dynamicURL + "assets/images/Items/" + CustomTool.turn000Num(_id) + ".jpg";
		}
		/**
		 * 自动设置商品的购买类型
		 * 优先：水晶－金币－荣誉
		 */
		public function autoSetPriceType():void {
			if (_crystal > 0) {
				_priceType = PurchaseType.CRYSTAL;
				return;
				}
			if (_gold > 0) {
				_priceType = PurchaseType.GOLD;
				return;
				}
			if (_honor > 0) {
				_priceType = PurchaseType.HONOR;
				return;
				}
			}
			
		public function get id():int 
		{
			return _id;
		}
		
		public function set id(value:int):void 
		{
			_id = value;
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
		
		public function get honor():int 
		{
			return _honor;
		}
		
		public function set honor(value:int):void 
		{
			_honor = value;
		}
		
		public function get hot():int 
		{
			return _hot;
		}
		
		public function set hot(value:int):void 
		{
			_hot = value;
		}
		
		public function get order():int 
		{
			return _order;
		}
		
		public function set order(value:int):void 
		{
			_order = value;
		}
		
		public function get category():int 
		{
			return _category;
		}
		
		public function set category(value:int):void 
		{
			_category = value;
		}
		
		public function get imageUrl():String 
		{
			return _imageUrl;
		}
		
		public function set imageUrl(value:String):void 
		{
			_imageUrl = value;
		}
		
		public function get name():String 
		{
			return _name;
		}
		
		public function set name(value:String):void 
		{
			_name = value;
		}
		
		public function get des():String 
		{
			return _des;
		}
		
		public function set des(value:String):void 
		{
			_des = value;
		}
		
		public function get price():int 
		{
			return _price;
		}
		
		public function set price(value:int):void 
		{
			_price = value;
		}
		
		public function get priceType():int 
		{
			return _priceType;
		}
		
		public function set priceType(value:int):void 
		{
			_priceType = value;
		}
	
	}

}