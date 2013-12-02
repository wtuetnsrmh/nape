package project.model.item
{
	/*
	 * 描述：所有图标数据模型
	 *
	 */
	import flash.events.EventDispatcher;
	import project.config.ApplicationConfig;
	import project.config.ItemConfig;
	import project.config.LocalConfig;
	import project.debug.Debug;
	import project.model.ModelLocator;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import project.utils.CustomTool;
	
	public class ItemModel extends EventDispatcher implements IModel
	{
		/*id	int	包裹格子的编号
		   item	int	物品编号
		   stack	int	物品数量
		
		   xml:
		   ID:对应该类的_id
		   Name	属性	否	物品名称
		   Description	属性	否	物品描述
		   Category	属性	否	物品分类
		   Price	属性	否	出售价格，若为0则表示无法出售
		   Usable	属性	否	是否可使用，1-可使用，0-不可使用
		
		 */
		private var _id:int = -1;//包裹格子的编号
		private var _itemId:int; //物品编号
		private var _number:int; //物品数量  对应：stack
		
		private var _description:String; //描述
		private var _name:String;//物品名称
		private var _category:int; //类型
		private var _price:int; //出售价格，若为0则表示无法出售
		private var _canSell:Boolean = true; //能否能出售
		private var _canUse:Boolean= true;; //是否可使用
		
		private var _ico:String; //图标地址
		private var _icoImage:String; //正常图标地址
		private var _icoBigImage:String; //大图标地址
		private var _icoCardImage:String; //卡图标地址
		
		private var _imageSrcPrefix:String;//放图标的目录地址
		
		/*private var _requiredStr:int;
		private var _requiredDex:int;
		private var _requiredSpeed:int;
		private var _needLevel:int = 1; //需要的等级
		private var _maxNumber:int; //最大数量
		protected var _level:int; //等级
		private var _bind:Boolean;
		protected var _quality:int; //质量
		protected var _qualityColor:uint = 0; //质量颜色
		private var _shopPrice:int; //商场价格
		private var _shopPriceRMB:int; //商场人民币
		private var _qPoint:int;
		private var _shopDiscountPrice:int; //折扣价
		private var _shopDiscountRMB:int; //折扣人民币
		private var _showPrice:int; //显示的价格
		private var _isShop:Boolean;
		private var _attr:Object;
		private var _canUpgrade:int; //能否升级
		private var _showUpgrade:int;
		private var _fromUI:String;
		private var _onSale:Number = 0;
		private var _discout:Number = 0;
		private var _fixed:Boolean;
		protected var _levelColor:uint;
		protected var _useInfo:String;
		private var _tipsId:int;
		private var _cardId:int;*/
		
		
		public function ItemModel(param:Object)
		{
			_id = (param["id"] == null)?0:param["id"];
			_itemId = (param["item"] == null)?0:param["item"];
			_number = (param["stack"] == null)?0:param["stack"];
			
			if (_itemId == 0) {
				_ico = "";
				}else {
					_ico = imageSrcPrefix + CustomTool.turn000Num(_itemId) + ".jpg";
					//Debug.log("_ico=" + _ico);
					}
			_description = ItemConfig.ITEM_CONFIG.Item.(@ID == _itemId).@Description;
			_name = ItemConfig.ITEM_CONFIG.Item.(@ID == _itemId).@Name;
			_category = ItemConfig.ITEM_CONFIG.Item.(@ID == _itemId).@Category;
			_price = ItemConfig.ITEM_CONFIG.Item.(@ID == _itemId).@Price;
			_canSell = (_price <= 0)?false:true;
			_canUse = (int(ItemConfig.ITEM_CONFIG.Item.(@ID == _itemId).@Usable) == 0)?false:true;

			/*//矢量就用SWF，位置用GIF
			this._ico = this.imageSrcPrefix + "items/PROP_" + this._itemId + "_S.swf";
			this.icoImage = this.imageSrcPrefix + "items/PROP_" + this._itemId + "_N.swf";
			this.icoBigImage = this.imageSrcPrefix + "items/PROP_" + this._itemId + ".swf";
			this.icoCardImage = this.imageSrcPrefix + "items/PROP_" + this._itemId + "_N.swf"; //出售面板图标99*/
		} // end function
		
		//获取提示文字信息
		public function getToolTipStr():String
		{
			//var _loc_1:String = String(LocalConfig.LOCAL_LAN.ItemToolTip.ItemTip.@Text).replace("{name}", this._name).replace("{description}", this._description);
			return "";
		} // end function
		
		//获取没有描述的提示文字信息
		public function getToolTipStrWithoutDescription():String
		{
			//var _loc_1:String = String(LocalConfig.LOCAL_LAN.ItemTipWithoutDes.ItemTip.@Text).replace("{name}", this._name);
			return "";
		} // end function
		
		
		
		public function get imageSrcPrefix():String
		{
			return ModelLocator.getInstance().dynamicURL + "assets/images/Items/";
		} // end function
		
		public function set imageSrcPrefix(param1:String):void
		{
			this._imageSrcPrefix = param1;
			return;
		} // end function
		
		public function get id():int 
		{
			return _id;
		}
		
		public function set id(value:int):void 
		{
			_id = value;
		}
		
		public function get itemId():int 
		{
			return _itemId;
		}
		
		public function set itemId(value:int):void 
		{
			_itemId = value;
		}
		
		public function get number():int 
		{
			return _number;
		}
		
		public function set number(value:int):void 
		{
			_number = value;
		}
		
		public function get description():String 
		{
			return _description;
		}
		
		public function set description(value:String):void 
		{
			_description = value;
		}
		
		public function get name():String 
		{
			return _name;
		}
		
		public function set name(value:String):void 
		{
			_name = value;
		}
		
		public function get category():int 
		{
			return _category;
		}
		
		public function set category(value:int):void 
		{
			_category = value;
		}
		
		public function get price():int 
		{
			return _price;
		}
		
		public function set price(value:int):void 
		{
			_price = value;
		}
		
		public function get canSell():Boolean 
		{
			return _canSell;
		}
		
		public function set canSell(value:Boolean):void 
		{
			_canSell = value;
		}
		
		public function get canUse():Boolean 
		{
			return _canUse;
		}
		
		public function set canUse(value:Boolean):void 
		{
			_canUse = value;
		}
		
		public function get ico():String 
		{
			return _ico;
		}
		
		public function set ico(value:String):void 
		{
			_ico = value;
		}
		
		public function get icoImage():String 
		{
			return _icoImage;
		}
		
		public function set icoImage(value:String):void 
		{
			_icoImage = value;
		}
		
		public function get icoBigImage():String 
		{
			return _icoBigImage;
		}
		
		public function set icoBigImage(value:String):void 
		{
			_icoBigImage = value;
		}
		
		public function get icoCardImage():String 
		{
			return _icoCardImage;
		}
		
		public function set icoCardImage(value:String):void 
		{
			_icoCardImage = value;
		}
		
		
	
	}
}
