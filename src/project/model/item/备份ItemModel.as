package project.model.item
{
	/*
	* 描述：所有图标数据模型
	* 
	*/
	import project.config.ApplicationConfig;
    import project.config.ItemConfig;
	import project.config.LocalConfig;
    import project.model.ModelLocator;
    import flash.events.*;

    public class ItemModel extends EventDispatcher implements IModel
    {
        private var _innerType:int = -1;
        private var _typeOrder:int = 0;
        private var _hotOrder:int = 0;
        private var _sId:int;
        private var _category:int;//类型
        private var _itemId:int;//背包ID
        private var _itemClass:int;//背包类
        private var _type:int;
        private var _name:String;
        private var _ico:String;//小图标地址
        private var _icoImage:String;//正常图标地址
        private var _icoBigImage:String;//大图标地址
        private var _icoCardImage:String;//卡图标地址
        private var _requiredStr:int;
        private var _requiredDex:int;
        private var _requiredSpeed:int;
        private var _needLevel:int = 1;//需要的等级
        private var _canSell:Boolean = true;//能否出售
        private var _number:int;//数量
        private var _maxNumber:int;//最大数量
        protected var _level:int;//等级
        private var _bind:Boolean;
        protected var _quality:int;//质量
        protected var _qualityColor:uint = 0;//质量颜色
        private var _price:int;//价格
        private var _shopPrice:int;//商场价格
        private var _shopPriceRMB:int;//商场人民币
        private var _qPoint:int;
        private var _shopDiscountPrice:int;//折扣价
        private var _shopDiscountRMB:int;//折扣人民币
        private var _showPrice:int;//显示的价格
        private var _description:String;//描述
        private var _isShop:Boolean;
        private var _attr:Object;
        private var _canUse:int;//能否装备
        private var _canUpgrade:int;//能否升级
        private var _showUpgrade:int;
        private var _fromUI:String;
        private var _onSale:Number = 0;
        private var _discout:Number = 0;
        private var _fixed:Boolean;
        protected var _levelColor:uint;
        protected var _useInfo:String;
        private var _tipsId:int;
        private var _cardId:int;
        private var _imageSrcPrefix:String;

		/*
		* @ param1 _sId
		* @ param2 _itemId
		* @ param3 _category
		* @ param4 _itemClass
		* @ param5 _type
		* @ param6 _ico url
		* @ param7 _number
		* @ param8 _maxNumber
		* @ param9 _description
		*/
        public function ItemModel(param1:int = 0, param2:int = 0, param3:int = 0, param4:int = 0, param5:int = 0, param6:String = null, param7:int = 1, param8:int = 1, param9:String = null)
        {
            var _loc_13:XML = null;
            this._sId = param1;
            this._itemId = param2;
            this._category = param3;
            this._itemClass = param4;
            this._type = param5;
            if (this.ico == null)
            {
				//默认图标地址
                this._ico = "assets/images/ico.jpg";
            }
            else
            {
                this._ico = param6;
            }
            this._description = param9;
            this._number = param7;
            this._maxNumber = param8;
            this._useInfo = "";
			
			//矢量就用SWF，位置用GIF
            this._ico = this.imageSrcPrefix + "items/PROP_" + this._itemId + "_S.swf";
            this.icoImage = this.imageSrcPrefix + "items/PROP_" + this._itemId + "_N.swf";
            this.icoBigImage = this.imageSrcPrefix + "items/PROP_" + this._itemId + ".swf";
            this.icoCardImage = this.imageSrcPrefix + "items/PROP_" + this._itemId + "_N.swf";//出售面板图标99
            for each (_loc_13 in ItemConfig.ITEM_CONFIG.Prop)
            {
                //根据配置文件设置此图标的其他数据
                if (_loc_13.@Id == this._itemId)
                {
                    this._name = _loc_13.@Name;
                    this._description = _loc_13.@Info;
                    this._useInfo = _loc_13.@Tips;
                    if (_loc_13.@CanSell == "0")
                    {
						//能不能卖
                        this._canSell = false;
                    }
                    this.innerType = _loc_13.@Type;//内部类型
                    break;
                }
            }
            return;
        }// end function

		//获取提示文字信息
        public function getToolTipStr() : String
        {
            var _loc_1:String = String(LocalConfig.LOCAL_LAN.ItemToolTip.ItemTip.@Text).replace("{name}", this._name).replace("{description}", this._description);
            return _loc_1;
        }// end function

		//获取没有描述的提示文字信息
        public function getToolTipStrWithoutDescription() : String
        {
            var _loc_1:String = String(LocalConfig.LOCAL_LAN.ItemTipWithoutDes.ItemTip.@Text).replace("{name}", this._name);
            return _loc_1;
        }// end function

        public function get sId() : int
        {
            return this._sId;
        }// end function

        public function set sId(param1:int) : void
        {
            this._sId = param1;
            return;
        }// end function

        public function get category() : int
        {
            return this._category;
        }// end function

        public function set category(param1:int) : void
        {
            this._category = param1;
            return;
        }// end function

        public function get itemId() : int
        {
            return this._itemId;
        }// end function

        public function set itemId(param1:int) : void
        {
            this._itemId = param1;
            return;
        }// end function

        public function get itemClass() : int
        {
            return this._itemClass;
        }// end function

        public function set itemClass(param1:int) : void
        {
            this._itemClass = param1;
            return;
        }// end function

        public function get type() : int
        {
            return this._type;
        }// end function

        public function set type(param1:int) : void
        {
            this._type = param1;
            return;
        }// end function

        public function get name() : String
        {
            return this._name;
        }// end function

        public function set name(param1:String) : void
        {
            this._name = param1;
            return;
        }// end function

        public function get ico() : String
        {
            return this._ico;
        }// end function

        public function set ico(param1:String) : void
        {
            this._ico = param1;
            return;
        }// end function

        public function get icoImage() : String
        {
            return this._icoImage;
        }// end function

        public function set icoImage(param1:String) : void
        {
            this._icoImage = param1;
            return;
        }// end function

        public function get number() : int
        {
            return this._number;
        }// end function

        public function set number(param1:int) : void
        {
            this._number = param1;
            return;
        }// end function

        public function get maxNumber() : int
        {
            return this._maxNumber;
        }// end function

        public function set maxNumber(param1:int) : void
        {
            this._maxNumber = param1;
            return;
        }// end function

        public function get level() : int
        {
            return this._level;
        }// end function

        public function set level(param1:int) : void
        {
            this._level = param1;
            return;
        }// end function

        public function get needLevel() : int
        {
            return this._needLevel;
        }// end function

        public function set needLevel(param1:int) : void
        {
            this._needLevel = param1;
            return;
        }// end function

        public function get bind() : Boolean
        {
            return this._bind;
        }// end function

        public function set bind(param1:Boolean) : void
        {
            this._bind = param1;
            return;
        }// end function

        public function get quality() : int
        {
            return this._quality;
        }// end function

        public function set quality(param1:int) : void
        {
            this._quality = param1;
            return;
        }// end function

        public function get qualityColor() : uint
        {
            return this._qualityColor;
        }// end function

        public function set qualityColor(param1:uint) : void
        {
            this._qualityColor = param1;
            return;
        }// end function

        public function get price() : int
        {
            return this._price;
        }// end function

        public function set price(param1:int) : void
        {
            this._price = param1;
            return;
        }// end function

        public function get shopPrice() : int
        {
            return this._shopPrice;
        }// end function

        public function set shopPrice(param1:int) : void
        {
            this._shopPrice = param1;
            return;
        }// end function

        public function get showPrice() : int
        {
            return this._showPrice;
        }// end function

        public function set showPrice(param1:int) : void
        {
            this._showPrice = param1;
            return;
        }// end function

        public function get description() : String
        {
            return this._description;
        }// end function

        public function set description(param1:String) : void
        {
            this._description = param1;
            return;
        }// end function

        public function get isShop() : Boolean
        {
            return this._isShop;
        }// end function

        public function set isShop(param1:Boolean) : void
        {
            this._isShop = param1;
            return;
        }// end function

        public function get attr() : Object
        {
            return this._attr;
        }// end function

        public function set attr(param1:Object) : void
        {
            this._attr = param1;
            return;
        }// end function

        public function get requiredStr() : int
        {
            return this._requiredStr;
        }// end function

        public function set requiredStr(param1:int) : void
        {
            this._requiredStr = param1;
            return;
        }// end function

        public function get requiredDex() : int
        {
            return this._requiredDex;
        }// end function

        public function set requiredDex(param1:int) : void
        {
            this._requiredDex = param1;
            return;
        }// end function

        public function get requiredSpeed() : int
        {
            return this._requiredSpeed;
        }// end function

        public function set requiredSpeed(param1:int) : void
        {
            this._requiredSpeed = param1;
            return;
        }// end function

        public function get canUpgrade() : int
        {
            return this._canUpgrade;
        }// end function

        public function set canUpgrade(param1:int) : void
        {
            this._canUpgrade = param1;
            return;
        }// end function

        public function get canUse() : int
        {
            return this._canUse;
        }// end function

        public function set canUse(param1:int) : void
        {
            this._canUse = param1;
            return;
        }// end function

        public function get icoBigImage() : String
        {
            return this._icoBigImage;
        }// end function

        public function set icoBigImage(param1:String) : void
        {
            this._icoBigImage = param1;
            return;
        }// end function

        public function get fromUI() : String
        {
            return this._fromUI;
        }// end function

        public function set fromUI(param1:String) : void
        {
            this._fromUI = param1;
            return;
        }// end function

        public function get shopPriceRMB() : int
        {
            return this._shopPriceRMB;
        }// end function

        public function set shopPriceRMB(param1:int) : void
        {
            this._shopPriceRMB = param1;
            return;
        }// end function

        public function get onSale() : Number
        {
            return this._onSale;
        }// end function

        public function set onSale(param1:Number) : void
        {
            this._onSale = param1;
            return;
        }// end function

        public function get discout() : Number
        {
            return this._discout;
        }// end function

        public function set discout(param1:Number) : void
        {
            this._discout = param1;
            return;
        }// end function

        public function get fixed() : Boolean
        {
            return this._fixed;
        }// end function

        public function set fixed(param1:Boolean) : void
        {
            this._fixed = param1;
            return;
        }// end function

        public function get levelColor() : uint
        {
            return this._levelColor;
        }// end function

        public function set levelColor(param1:uint) : void
        {
            this._levelColor = param1;
            return;
        }// end function

        public function get icoCardImage() : String
        {
            return this._icoCardImage;
        }// end function

        public function set icoCardImage(param1:String) : void
        {
            this._icoCardImage = param1;
            return;
        }// end function

        public function get useInfo() : String
        {
            return this._useInfo;
        }// end function

        public function set useInfo(param1:String) : void
        {
            this._useInfo = param1;
            return;
        }// end function

        public function get tipsId() : int
        {
            return this._tipsId;
        }// end function

        public function set tipsId(param1:int) : void
        {
            var _loc_2:XML = null;
            this._tipsId = param1;
            for each (_loc_2 in ItemConfig.ITEM_CONFIG.Prop)
            {
                
                if (_loc_2.@Id == this._tipsId)
                {
                    this._useInfo = _loc_2.@Tips;
                }
            }
            return;
        }// end function

        public function get showUpgrade() : int
        {
            return this._showUpgrade;
        }// end function

        public function set showUpgrade(param1:int) : void
        {
            this._showUpgrade = param1;
            return;
        }// end function

        public function get shopDiscountPrice() : int
        {
            return this._shopDiscountPrice;
        }// end function

        public function set shopDiscountPrice(param1:int) : void
        {
            this._shopDiscountPrice = param1;
            return;
        }// end function

        public function get shopDiscountRMB() : int
        {
            return this._shopDiscountRMB;
        }// end function

        public function set shopDiscountRMB(param1:int) : void
        {
            this._shopDiscountRMB = param1;
            return;
        }// end function

        public function get cardId() : int
        {
            return this._cardId;
        }// end function

        public function set cardId(param1:int) : void
        {
            this._cardId = param1;
            return;
        }// end function

        public function get imageSrcPrefix() : String
        {
            return ModelLocator.getInstance().staticURL +ApplicationConfig.mainConfig.imgSrc;
        }// end function

        public function set imageSrcPrefix(param1:String) : void
        {
            this._imageSrcPrefix = param1;
            return;
        }// end function

        public function get canSell() : Boolean
        {
            return this._canSell;
        }// end function

        public function set canSell(param1:Boolean) : void
        {
            this._canSell = param1;
            return;
        }// end function

        public function get innerType() : int
        {
            return this._innerType;
        }// end function

        public function set innerType(param1:int) : void
        {
            this._innerType = param1;
            return;
        }// end function

        public function get typeOrder() : int
        {
            return this._typeOrder;
        }// end function

        public function set typeOrder(param1:int) : void
        {
            this._typeOrder = param1;
            return;
        }// end function

        public function get hotOrder() : int
        {
            return this._hotOrder;
        }// end function

        public function set hotOrder(param1:int) : void
        {
            this._hotOrder = param1;
            return;
        }// end function

        public function get qPoint() : int
        {
            return this._qPoint;
        }// end function

        public function set qPoint(param1:int) : void
        {
            this._qPoint = param1;
            return;
        }// end function

    }
}
