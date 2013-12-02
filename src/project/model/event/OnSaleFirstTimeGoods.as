package project.model.event
{
	import project.model.data.DataModel;
	import project.model.shop.PurchaseType;
	
	/**
	 * 首充特惠
	 * 1.	优惠商品信息
	 * id	int	商品编号
	   credit	PurchaseType	购买商品所需货币类型
	   name	string	商品的名称
	   desc	string	商品的描述文本
	   img	string	商品的物品图片相对链接（相对于资源服务器地址）
	   price	int	商品的价格
	   purchased	int	是否已购买1-是，0-否
	
	 * @author bbjxl 2013
	 */
	public class OnSaleFirstTimeGoods extends DataModel
	{
		private var _id:int;
		private var _credit:int;
		private var _name:String;
		private var _desc:String;
		private var _img:String;
		private var _price:int;
		private var _purchased:Boolean;
		
		
		public function OnSaleFirstTimeGoods()
		{
			
		}
		public function setData(param:Object):void {
			_id = (param["id"] == null)?0:param["id"];
			_credit = (param["credit"] == null)?PurchaseType.CRYSTAL:param["credit"];
			_name = (param["name"] == null)?"无此商品名称":param["name"];
			_desc = (param["desc"] == null)?"":param["desc"];
			//_desc="sdfsdf<br>3234234<br>sdfdsf/nsdfsdfsddfs";
			_img = (param["img"] == null)?"":param["img"];
			_price = (param["price"] == null)?0:param["price"];
			_purchased = (param["purchased"] == null)?false:((param["purchased"]==1)?true:false);
			}
		
		public function get id():int
		{
			return _id;
		}
		
		public function set id(value:int):void
		{
			_id = value;
		}
		
		public function get credit():int
		{
			return _credit;
		}
		
		public function set credit(value:int):void
		{
			_credit = value;
		}
		
		public function get name():String 
		{
			return _name;
		}
		
		public function set name(value:String):void 
		{
			_name = value;
		}
		
		public function get desc():String 
		{
			return _desc;
		}
		
		public function set desc(value:String):void 
		{
			_desc = value;
		}
		
		public function get img():String 
		{
			return _img;
		}
		
		public function set img(value:String):void 
		{
			_img = value;
		}
		
		public function get price():int 
		{
			return _price;
		}
		
		public function set price(value:int):void 
		{
			_price = value;
		}
		
		public function get purchased():Boolean 
		{
			return _purchased;
		}
		
		public function set purchased(value:Boolean):void 
		{
			_purchased = value;
		}
		
		
	
	}

}