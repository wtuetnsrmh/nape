package project.model.data
{
    import com.greensock.*;
    import project.config.*;
    import project.core.*;
    import project.model.*;
    import project.view.controls.*;
    import flash.display.*;
    import flash.events.*;
    import flash.text.*;
    import flash.utils.*;

    public class UserBuff extends EventDispatcher
    {
        private var _buffId:int = 0;
        private var _type:int = 0;
        private var _amount:int = 0;
        private var _expTime:String = "";
        private var _buffAvatar:DisplayObject;
        private var _isShort:Boolean = false;
        private var tt:ToolTip;
        private var animeTimer:Timer;
        private var _vipLevel:int = 0;

        public function UserBuff(param1:int, param2:int, param3:String = "", param4:int = 0)
        {
            this.tt = ToolTip.getInstance();
            this.tt.bgAlpha = 0.88;
            this.tt.cornerRadius = 12;
            this.tt.colors = [1642254, 1642254];
            this.tt.border = 16762389;
            this.tt.borderSize = 1;
            var _loc_5:* = new TextFormat(null, 12, ApplicationConfig.FONT_COLOR);
            this.tt.contentFormat = _loc_5;
            this._buffId = param1;
            this._type = param2;
            this._amount = param4;
            this._expTime = param3;
            this._buffAvatar = SMZTResourceManager.getInstance().loadAssets(ModelLocator.getInstance().staticURL + ApplicationConfig.mainConfig.imgSrc + "buffs/BUFF_" + this._buffId + ".swf");
            this._buffAvatar.addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            this.animeTimer = new Timer(2000);
            this.animeTimer.addEventListener(TimerEvent.TIMER, this.onAnimeTimer);
            return;
        }// end function

        private function onMouseOver(event:MouseEvent) : void
        {
            this.tt.show(this._buffAvatar, "", this.getToolTipStr());
            return;
        }// end function

        public function getToolTipStr() : String
        {
            var dest:String;
            var str:String;
            str;
            if (this._buffId == 9)
            {
                dest;
                if (ModelLocator.getInstance().isQQRelated())
                {
                    var _loc_3:int = 0;
                    var _loc_4:* = ItemConfig.BUFF_CONFIG.Buff;
                    var _loc_2:* = new XMLList("");
                    for each (_loc_5 in _loc_4)
                    {
                        
                        var _loc_6:* = _loc_4[_loc_3];
                        with (_loc_4[_loc_3])
                        {
                            if (@Id == String(_buffId.toString() + _vipLevel.toString()))
                            {
                                _loc_2[_loc_3] = _loc_5;
                            }
                        }
                    }
                    str = str + _loc_2.@Info;
                }
                else
                {
                    var _loc_3:int = 0;
                    var _loc_4:* = ItemConfig.BUFF_CONFIG.Buff;
                    var _loc_2:* = new XMLList("");
                    for each (_loc_5 in _loc_4)
                    {
                        
                        var _loc_6:* = _loc_4[_loc_3];
                        with (_loc_4[_loc_3])
                        {
                            if (@Id == _buffId)
                            {
                                _loc_2[_loc_3] = _loc_5;
                            }
                        }
                    }
                    str = str + _loc_2.@Info;
                }
            }
            else
            {
                var _loc_3:int = 0;
                var _loc_4:* = ItemConfig.BUFF_CONFIG.Buff;
                var _loc_2:* = new XMLList("");
                for each (_loc_5 in _loc_4)
                {
                    
                    var _loc_6:* = _loc_4[_loc_3];
                    with (_loc_4[_loc_3])
                    {
                        if (@Id == _buffId)
                        {
                            _loc_2[_loc_3] = _loc_5;
                        }
                    }
                }
                str = str + _loc_2.@Info;
            }
            str = str + "</font><br/>";
            if (this._expTime != "")
            {
                if (this._isShort)
                {
                    str = str + ("<font color=\'#FF0000\'>" + LocalConfig.LOCAL_LAN.Characters.ExpriteTime.@Text + this._expTime + "</font>");
                }
                else
                {
                    str = str + ("<font color=\'#FFFFFF\'>" + LocalConfig.LOCAL_LAN.Characters.ExpriteTime.@Text + this._expTime + "</font>");
                }
            }
            if (this.buffId == 214)
            {
                str = str.replace("{value}", this.amount);
            }
            return str;
        }// end function

        private function onAnimeTimer(event:TimerEvent) : void
        {
            var onAlpha0:Function;
            var event:* = event;
            onAlpha0 = function () : void
            {
                TweenLite.to(_buffAvatar, 0.8, {alpha:1});
                return;
            }// end function
            ;
            if (this.isShort && this._buffAvatar)
            {
                TweenLite.to(this._buffAvatar, 0.8, {alpha:0.1, onComplete:onAlpha0});
            }
            return;
        }// end function

        private function tweenImage(param1:Boolean) : void
        {
            if (param1)
            {
                this.animeTimer.start();
            }
            else
            {
                this.animeTimer.stop();
                TweenLite.to(this._buffAvatar, 10, {alpha:1});
            }
            return;
        }// end function

        public function get buffId() : int
        {
            return this._buffId;
        }// end function

        public function set buffId(param1:int) : void
        {
            this._buffId = param1;
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

        public function get amount() : int
        {
            return this._amount;
        }// end function

        public function set amount(param1:int) : void
        {
            this._amount = param1;
            return;
        }// end function

        public function get expTime() : String
        {
            return this._expTime;
        }// end function

        public function set expTime(param1:String) : void
        {
            this._expTime = param1;
            return;
        }// end function

        public function get buffAvatar() : DisplayObject
        {
            return this._buffAvatar;
        }// end function

        public function set buffAvatar(param1:DisplayObject) : void
        {
            this._buffAvatar = param1;
            return;
        }// end function

        public function get isShort() : Boolean
        {
            return this._isShort;
        }// end function

        public function set isShort(param1:Boolean) : void
        {
            this._isShort = param1;
            if (this._isShort)
            {
                this.tweenImage(true);
            }
            else
            {
                this.tweenImage(false);
            }
            return;
        }// end function

        public function get vipLevel() : int
        {
            return this._vipLevel;
        }// end function

        public function set vipLevel(param1:int) : void
        {
            this._vipLevel = param1;
            if (this._vipLevel >= 1)
            {
                switch(this._vipLevel)
                {
                    case 1:
                    {
                        break;
                    }
                    case 2:
                    {
                        break;
                    }
                    case 3:
                    {
                        break;
                    }
                    default:
                    {
                        break;
                        break;
                    }
                }
                switch(this._vipLevel)
                {
                    case 1:
                    case 2:
                    {
                        break;
                    }
                    case 3:
                    {
                        break;
                    }
                    default:
                    {
                        if (ModelLocator.getInstance().snsType == ModelLocator.SNS_FACEBOOK || ModelLocator.getInstance().snsType == ModelLocator.SNS_QQ || ModelLocator.getInstance().snsType == ModelLocator.SNS_QZONE)
                        {
                        }
                        else
                        {
                        }
                        break;
                        break;
                    }
                }
            }
            this._buffAvatar.addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            return;
        }// end function

    }
}
