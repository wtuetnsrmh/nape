package project.model.jewelry
{
	/*
	* 描述：饰品数据模型
	* 
	*/
    import __AS3__.vec.*;
	import project.config.ItemConfig;
    import project.config.LocalConfig;
    //import project.model.data.PlayerData;
    import project.model.item.ItemModel;
    import project.utils.HashMap;
    import mx.utils.StringUtil;

    public class JewelryItem extends ItemModel
    {
        private var _equiped:int = 0;
        private var _setId:int = 0;
        private var _setAmount:int = 0;
        private var _canEquip:Boolean = false;//能否装备
        private var _job:int = 0;//职业
        private var _isEquiped:int;//已装备
        private var _baseEffect:String = "";//特有效果
        private var _effect:String = "";
        private var _nameColor:String = "#FFFFFF";
        private var _isIdentified:Boolean;//是否鉴定
        private var _attrPaneIndex:int;//面板中的序号
        private var _color:int;
        private var _qualityStr:String;
        private var _setName:String = "";
        private var myJv:Vector.<JewelryItem>;
        private var hm:HashMap;
        private static const EFFECT_DATA:XMLList = LocalConfig.LOCAL_LAN.ItemToolTip.JewelryEffects.Effect;

		/*
		* @ param1 _sId 
		* @ param2 _itemId 道具ID
		* @ param3 _category 类别
		* @ param4 _itemClass 道具类
		* @ param5 _type 类型
		* @ param6 _ico url地址
		* @ param7 _number 数量
		* @ param8 _maxNumber 最大数量
		* @ param9 _description 描述
		*/
        public function JewelryItem(param1:int = 0, param2:int = 0, param3:int = 0, param4 = null, param5:int = 0, param6:String = null, param7:int = 1, param8:int = 1, param9:String = null)
        {
            var eNode:XML;
            var i:int;
            var effect:XML;
            var eId:int;
            var tempStr:String;
            var sId:int = param1;
            var itemId:int = param2;
            var category:int = param3;
            var attr:* = param4;
            var type:int = param5;
            var icoUri:String = param6;
            var number:int = param7;
            var maxNumber:int = param8;
            var description:String = param9;
            this._qualityStr = LocalConfig.LOCAL_LAN.ItemToolTip.JewelryPoor.@Text;
            this.hm = new HashMap();
            super(sId, itemId, category, itemClass, type, icoUri, number, maxNumber, description);
            var eSmallMc:String = imageSrcPrefix + "jewelries/JEWELRY_" + itemId + "_S.swf";
            var eMc:String = imageSrcPrefix + "jewelries/JEWELRY_" + itemId + "_N.swf";
            var eBigMc:String= imageSrcPrefix + "jewelries/JEWELRY_" + itemId + ".swf";
            var eCardMc:String = imageSrcPrefix + "jewelries/JEWELRY_" + itemId + "_N.swf";
            this.ico = eSmallMc;
            icoImage = eMc;
            icoBigImage = eBigMc;
            icoCardImage = eCardMc;
            this.category = category;
           /* var _loc_11:int = 0;
            var _loc_12:* = ItemConfig.JEWELRY_CONIFG.Jewelry;*/
            for each (eNode in ItemConfig.JEWELRY_CONIFG.Jewelry)
            {
                
                //eNode = _loc_12[_loc_11];
                if (eNode.@Id == this.itemId)
                {
                    this.name = eNode.@Name;
                    this.description = eNode.@Info;
                    this.name = eNode.@Name;
                    this.needLevel = eNode.@RequireLevel;
                    this.itemClass = eNode.@Type;
                    this.setName = eNode.@SetName;
                    break;
                }
            }
            
           /* for each (effect in attr)
            {
                
                //effect = _loc_12[_loc_11];
                eId = effect.@Id;
                var _loc_14:int = 0;
                var _loc_15:* = ItemConfig.ITEM_EFFECT.Effect;
                var _loc_13:* = new XMLList("");
                for each (_loc_16 in _loc_15)
                {
                    
                    var _loc_17:* = _loc_15[_loc_14];
                    with (_loc_15[_loc_14])
                    {
                        if (@Id == eId)
                        {
                            _loc_13[_loc_14] = _loc_16;
                        }
                    }
                }
                tempStr = _loc_13.@Name;
                if (i == 0)
                {
                    var _loc_14:int = 0;
                    var _loc_15:* = EFFECT_DATA;
                    var _loc_13:* = new XMLList("");
                    for each (_loc_16 in _loc_15)
                    {
                        
                        var _loc_17:* = _loc_15[_loc_14];
                        with (_loc_15[_loc_14])
                        {
                            if (@Id == eId)
                            {
                                _loc_13[_loc_14] = _loc_16;
                            }
                        }
                    }
                    this.name = _loc_13.@PreName + name;
                }
                if (StringUtil.trim(tempStr) != "")
                {
                    if (effect.@Value < 1)
                    {
                        tempStr = tempStr + (effect.@Value < 0 ? (XMath.formatNumber(effect.@Value * 100, 1) + "%") : ("+" + XMath.formatNumber(effect.@Value * 100, 1) + "%"));
                    }
                    else
                    {
                        tempStr = tempStr + (effect.@Value < 0 ? (XMath.formatNumber(effect.@Value, 1)) : ("+" + XMath.formatNumber(effect.@Value, 1)));
                    }
                    if (i == 0)
                    {
                        this.effect = this.effect + String(LocalConfig.LOCAL_LAN.ItemToolTip.JewelryBaseEff.@Text).replace("{effect}", tempStr);
                    }
                    else
                    {
                        this.effect = this.effect + String(LocalConfig.LOCAL_LAN.ItemToolTip.JewelryExtraEff.@Text).replace("{effect}", tempStr);
                    }
                }
                i = (i + 1);
            }*/
            return;
        }// end function

		/*重写设置质量
		* @ param
		* @ param
		*/
        override public function set quality(param1:int) : void
        {
            /*var effect:XML;
            var c:int;
            var eNode:XML;
            var eId:int;
            var tempStr:String;
            var quality:* = param1;
            _quality = quality;
            var i:int;
            var _loc_3:int = 0;
            var _loc_4:* = attr;
            while (_loc_4 in _loc_3)
            {
                
                effect = _loc_4[_loc_3];
                eId = effect.@Id;
                var _loc_6:int = 0;
                var _loc_7:* = ItemConfig.ITEM_EFFECT.Effect;
                var _loc_5:* = new XMLList("");
                for each (_loc_8 in _loc_7)
                {
                    
                    var _loc_9:* = _loc_7[_loc_6];
                    with (_loc_7[_loc_6])
                    {
                        if (@Id == eId)
                        {
                            _loc_5[_loc_6] = _loc_8;
                        }
                    }
                }
                tempStr = _loc_5.@Name;
                if (i == 0)
                {
                    var _loc_6:int = 0;
                    var _loc_7:* = EFFECT_DATA;
                    var _loc_5:* = new XMLList("");
                    for each (_loc_8 in _loc_7)
                    {
                        
                        var _loc_9:* = _loc_7[_loc_6];
                        with (_loc_7[_loc_6])
                        {
                            if (@Id == eId)
                            {
                                _loc_5[_loc_6] = _loc_8;
                            }
                        }
                    }
                    this.name = _loc_5.@PreName + name;
                }
                if (StringUtil.trim(tempStr) != "")
                {
                    if (effect.@Value < 1)
                    {
                        tempStr = tempStr + (effect.@Value < 0 ? (XMath.formatNumber(effect.@Value * 100, 1) + "%") : ("+" + XMath.formatNumber(effect.@Value * 100, 1) + "%"));
                    }
                    else
                    {
                        tempStr = tempStr + (effect.@Value < 0 ? (XMath.formatNumber(effect.@Value, 1)) : ("+" + XMath.formatNumber(effect.@Value, 1)));
                    }
                    if (i == 0)
                    {
                        this.effect = this.effect + String(LocalConfig.LOCAL_LAN.ItemToolTip.JewelryBaseEff.@Text).replace("{effect}", tempStr);
                    }
                    else
                    {
                        this.effect = this.effect + String(LocalConfig.LOCAL_LAN.ItemToolTip.JewelryExtraEff.@Text).replace("{effect}", tempStr);
                    }
                }
                i = (i + 1);
            }
            switch(_quality)
            {
                case 0:
                {
                    this._nameColor = "#FFFFFF";
                    this._qualityStr = LocalConfig.LOCAL_LAN.ItemToolTip.JewelryPoor.@Text;
                    c;
                    break;
                }
                case 1:
                {
                    this._nameColor = "#0033FF";
                    this._qualityStr = LocalConfig.LOCAL_LAN.ItemToolTip.JewelryGood.@Text;
                    c;
                    break;
                }
                case 2:
                {
                    this._nameColor = "#990099";
                    this._qualityStr = LocalConfig.LOCAL_LAN.ItemToolTip.JewelryExcellent.@Text;
                    c;
                    break;
                }
                case 3:
                {
                    this._nameColor = "#FF6600";
                    this._qualityStr = LocalConfig.LOCAL_LAN.ItemToolTip.JewelryLegend.@Text;
                    c;
                    break;
                }
                case -1:
                {
                    this._nameColor = "#990099";
                    this._qualityStr = LocalConfig.LOCAL_LAN.ItemToolTip.JewelrySuper.@Text;
                    c;
                    break;
                }
                default:
                {
                    break;
                }
            }
            this.color = c;
            var _loc_3:int = 0;
            var _loc_4:* = ItemConfig.JEWELRY_CONIFG.Jewelry;
            while (_loc_4 in _loc_3)
            {
                
                eNode = _loc_4[_loc_3];
                if (eNode.@Id == this.itemId && eNode.@Quality == quality)
                {
                    this.name = eNode.@Name;
                    this.description = eNode.@Info;
                    this.name = eNode.@Name;
                    this.needLevel = eNode.@RequireLevel;
                    this.itemClass = eNode.@Type;
                    break;
                }
            }*/
            return;
        }// end function

		/*重写获取提示信息
		* @ param
		* @ param
		*/
        override public function getToolTipStr() : String
        {
            var _loc_1:String = "";
            /*_loc_1 = _loc_1 + ("<b><font size = \'14\' color = \'" + this._nameColor + "\'> " + name + "</font></b><br/><br/>");
            _loc_1 = _loc_1 + String(LocalConfig.LOCAL_LAN.ItemToolTip.JewelryQuality.@Text).replace("{quality}", this._qualityStr);
            if (!this.isIdentified)
            {
                if (_quality >= 2)
                {
                    _loc_1 = _loc_1 + ("<font color=\'#FFFFFF\'>" + LocalConfig.LOCAL_LAN.ItemToolTip.UnIdenitfied.@Text);
                }
            }
            else if (_quality >= 2)
            {
                _loc_1 = _loc_1 + ("<font color=\'#FFFFFF\'>" + LocalConfig.LOCAL_LAN.ItemToolTip.Idenitfied.@Text);
            }
            _loc_1 = _loc_1 + "</font><br/>";
            var _loc_2:* = needLevel > 1 ? (needLevel.toString()) : (" 1");
            var _loc_3:* = int(PlayerData.getInstance().ownLevel) >= this.needLevel ? ("#FFFFFF") : ("#FF0000");
            _loc_1 = _loc_1 + String(LocalConfig.LOCAL_LAN.ItemToolTip.JewelryNeedLevel.@Text).replace("{color}", _loc_3).replace("{level}", _loc_2);
            _loc_1 = _loc_1 + ("<font color = \'#1BFFEC\'></font><font color=\'#FFFFFF\'>" + this.effect + "</font><br/>");
            _loc_1 = _loc_1 + this.getSetDes();
            _loc_1 = _loc_1 + ("<font color = \'#FFFFFF\'>" + description + "</font>");*/
            return _loc_1;
        }// end function

		//判断是否已经装备上
        private function hasEquipedT(param1:int) : Boolean
        {
            /*var _loc_2:int = 0;
            while (_loc_2 < this.hm.keys().length)
            {
                
                if (this.hm.get(this.hm.keys()[_loc_2]).itemId == param1)
                {
                    this.hm.remove(this.hm.keys()[_loc_2]);
                    return true;
                }
                _loc_2++;
            }*/
            return false;
        }// end function

        

		
        override public function getToolTipStrWithoutDescription() : String
        {
            var _loc_1:String = "";
            /*_loc_1 = _loc_1 + ("<b><font size = \'14\' color = \'" + this._nameColor + "\'> " + name + "</font></b><br/><br/>");
            _loc_1 = _loc_1 + String(LocalConfig.LOCAL_LAN.ItemToolTip.JewelryQuality.@Text).replace("{quality}", this._qualityStr);
            if (!this.isIdentified)
            {
                if (_quality >= 2)
                {
                    _loc_1 = _loc_1 + ("<font color=\'#FFFFFF\'>" + LocalConfig.LOCAL_LAN.ItemToolTip.UnIdenitfied.@Text);
                }
            }
            else if (_quality >= 2)
            {
                _loc_1 = _loc_1 + ("<font color=\'#FFFFFF\'>" + LocalConfig.LOCAL_LAN.ItemToolTip.Idenitfied.@Text);
            }
            _loc_1 = _loc_1 + "</font><br/>";
            var _loc_2:* = needLevel > 1 ? (needLevel.toString()) : (" 1");
            var _loc_3:* = int(PlayerData.getInstance().ownLevel) >= this.needLevel ? ("#FFFFFF") : ("#FF0000");
            _loc_1 = _loc_1 + String(LocalConfig.LOCAL_LAN.ItemToolTip.JewelryNeedLevel.@Text).replace("{color}", _loc_3).replace("{level}", _loc_2);
            _loc_1 = _loc_1 + this.getSetDes();
            _loc_1 = _loc_1 + ("<font color = \'#1BFFEC\'></font><font color=\'#FFFFFF\'>" + this.effect + "</font><br/>");*/
            return _loc_1;
			
        }// end function

        public function get job() : int
        {
            return this._job;
        }// end function

        public function set job(param1:int) : void
        {
            this._job = param1;
            return;
        }// end function

        public function get isEquiped() : int
        {
            return this._isEquiped;
        }// end function

        public function set isEquiped(param1:int) : void
        {
            this._isEquiped = param1;
            return;
        }// end function

        public function get baseEffect() : String
        {
            return this._baseEffect;
        }// end function

        public function set baseEffect(param1:String) : void
        {
            this._baseEffect = param1;
            return;
        }// end function

        public function get effect() : String
        {
            return this._effect;
        }// end function

        public function set effect(param1:String) : void
        {
            this._effect = param1;
            return;
        }// end function

        public function get isIdentified() : Boolean
        {
            return this._isIdentified;
        }// end function

        public function set isIdentified(param1:Boolean) : void
        {
            this._isIdentified = param1;
            return;
        }// end function

        public function get attrPaneIndex() : int
        {
            return this._attrPaneIndex;
        }// end function

        public function set attrPaneIndex(param1:int) : void
        {
            this._attrPaneIndex = param1;
            return;
        }// end function

        public function get color() : int
        {
            return this._color;
        }// end function

        public function set color(param1:int) : void
        {
            this._color = param1;
            return;
        }// end function

        public function get setId() : int
        {
            return this._setId;
        }// end function

        public function set setId(param1:int) : void
        {
            this._setId = param1;
            return;
        }// end function

        public function get setAmount() : int
        {
            return this._setAmount;
        }// end function

        public function set setAmount(param1:int) : void
        {
            this._setAmount = param1;
            return;
        }// end function

        public function get setName() : String
        {
            return this._setName;
        }// end function

        public function set setName(param1:String) : void
        {
            this._setName = param1;
            return;
        }// end function

    }
}
