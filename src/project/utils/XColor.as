package project.utils
{
    import flash.display.*;
    import flash.filters.*;
    import flash.geom.*;

    public class XColor extends Object
    {

        public function XColor()
        {
            return;
        }// end function

        public static function setRGB(param1:Sprite, param2:uint) : void
        {
            var _loc_3:* = new ColorTransform();
            _loc_3.color = param2;
            param1.transform.colorTransform = _loc_3;
            return;
        }// end function

        public static function getRGB(param1:Sprite) : uint
        {
            return param1.transform.colorTransform.color;
        }// end function

        public static function getRGBstr(param1:Sprite) : String
        {
            var _loc_2:* = param1.transform.colorTransform.color.toString(16);
            var _loc_3:* = 6 - _loc_2.length;
            while (_loc_3--)
            {
                
                _loc_2 = "0" + _loc_2;
            }
            _loc_2 = "0x" + _loc_2;
            return _loc_2;
        }// end function

        public static function setRGB2(param1:Sprite, param2:uint, param3:uint, param4:uint) : void
        {
            var _loc_5:* = param2 << 16 | param3 << 8 | param4;
            setRGB(param1, _loc_5);
            return;
        }// end function

        public static function getRGB2(param1:Sprite) : Object
        {
            var _loc_2:* = param1.transform.colorTransform;
            return {r:_loc_2.redOffset, g:_loc_2.greenOffset, b:_loc_2.blueOffset};
        }// end function

        public static function reset(param1:Sprite) : void
        {
            param1.transform.colorTransform = new ColorTransform();
            return;
        }// end function

        public static function setBrightness(param1:Sprite, param2:uint) : void
        {
            var mc:* = param1;
            var bright:* = param2;
            var trans:* = mc.transform.colorTransform;
            var _loc_4:* = trans;
            with (trans)
            {
                var _loc_5:* = (100 - Math.abs(bright)) / 100;
                blueMultiplier = (100 - Math.abs(bright)) / 100;
                var _loc_5:* = _loc_5;
                greenMultiplier = _loc_5;
                redMultiplier = _loc_5;
                var _loc_5:* = bright > 0 ? (bright * (256 / 100)) : (0);
                blueOffset = bright > 0 ? (bright * (256 / 100)) : (0);
                var _loc_5:* = _loc_5;
                greenOffset = _loc_5;
                redOffset = _loc_5;
            }
            mc.transform.colorTransform = trans;
            return;
        }// end function

        public static function setBrightOffset(param1:Sprite, param2:uint) : void
        {
            var mc:* = param1;
            var offset:* = param2;
            var trans:* = mc.transform.colorTransform;
            var _loc_4:* = trans;
            with (trans)
            {
                var _loc_5:* = offset;
                blueOffset = offset;
                var _loc_5:* = _loc_5;
                greenOffset = _loc_5;
                redOffset = _loc_5;
            }
            mc.transform.colorTransform = trans;
            return;
        }// end function

        public static function setTint(param1:Sprite, param2:uint, param3:uint, param4:uint, param5:uint) : void
        {
            var mc:* = param1;
            var r:* = param2;
            var g:* = param3;
            var b:* = param4;
            var percent:* = param5;
            var per:* = percent / 100;
            var trans:* = mc.transform.colorTransform;
            var _loc_7:* = trans;
            with (trans)
            {
                redOffset = per * redOffset;
                greenOffset = per * greenOffset;
                blueOffset = per * blueOffset;
                var _loc_8:* = (100 - percent) / 100;
                blueMultiplier = (100 - percent) / 100;
                var _loc_8:* = _loc_8;
                greenMultiplier = _loc_8;
                redMultiplier = _loc_8;
            }
            mc.transform.colorTransform = trans;
            return;
        }// end function

        public static function getTint(param1:Sprite) : Object
        {
            var _loc_2:* = param1.transform.colorTransform;
            var _loc_3:* = new Object();
            _loc_3.percent = (1 - _loc_2.redMultiplier) * 100;
            var _loc_4:* = 100 / _loc_3.percent;
            _loc_3.r = Math.round(_loc_4 * _loc_2.redOffset);
            _loc_3.g = Math.round(_loc_4 * _loc_2.greenOffset);
            _loc_3.b = Math.round(_loc_4 * _loc_2.blueOffset);
            return _loc_3;
        }// end function

        public static function setTintOffset(param1:Sprite, param2:uint, param3:uint, param4:uint) : void
        {
            var mc:* = param1;
            var r:* = param2;
            var g:* = param3;
            var b:* = param4;
            var trans:* = mc.transform.colorTransform;
            var _loc_6:* = trans;
            with (trans)
            {
                redOffset = r;
                greenOffset = g;
                blueOffset = b;
            }
            mc.transform.colorTransform = trans;
            return;
        }// end function

        public static function getTintOffset(param1:Sprite) : Object
        {
            var _loc_2:* = param1.transform.colorTransform;
            var _loc_3:* = new Object();
            _loc_3.rb = _loc_2.redOffset;
            _loc_3.gb = _loc_2.greenOffset;
            _loc_3.bb = _loc_2.blueOffset;
            return _loc_3;
        }// end function

        public static function reverseColor(param1:DisplayObject) : void
        {
            var _loc_2:Array = [-1, 0, 0, 0, 255, 0, -1, 0, 0, 255, 0, 0, -1, 0, 255, 0, 0, 0, 1, 0];
            var _loc_3:* = new ColorMatrixFilter(_loc_2);
            param1.filters = [_loc_3];
            return;
        }// end function

        public static function removeColor(param1:DisplayObject) : void
        {
            var _loc_2:Number = 0.2225;
            var _loc_3:Number = 0.7169;
            var _loc_4:Number = 0.0606;
            var _loc_5:Array = [0.3086, 0.6094, 0.082, 0, 0, 0.3086, 0.6094, 0.082, 0, 0, 0.3086, 0.6094, 0.082, 0, 0, 0, 0, 0, 1, 0];
            var _loc_6:ColorMatrixFilter = new ColorMatrixFilter(_loc_5);
            param1.filters = [_loc_6];
            return;
        }// end function

        public static function invert(param1:Sprite) : void
        {
            var mc:* = param1;
            var trans:* = mc.transform.colorTransform;
            var _loc_3:* = trans;
            with (trans)
            {
                redMultiplier = -redMultiplier;
                greenMultiplier = -greenMultiplier;
                blueMultiplier = -blueMultiplier;
                redOffset = 255 - redOffset;
                greenOffset = 255 - greenOffset;
                blueOffset = 255 - blueOffset;
            }
            mc.transform.colorTransform = trans;
            return;
        }// end function

        public static function setNegative(param1:Sprite, param2:Number) : void
        {
            var mc:* = param1;
            var percent:* = param2;
            var trans:* = mc.transform.colorTransform;
            var _loc_4:* = trans;
            with (trans)
            {
                var _loc_5:* = (100 - 2 * percent) / 100;
                blueMultiplier = (100 - 2 * percent) / 100;
                var _loc_5:* = _loc_5;
                greenMultiplier = _loc_5;
                redMultiplier = _loc_5;
                var _loc_5:* = percent * (255 / 100);
                blueOffset = percent * (255 / 100);
                var _loc_5:* = _loc_5;
                greenOffset = _loc_5;
                redOffset = _loc_5;
            }
            mc.transform.colorTransform = trans;
            return;
        }// end function

        public static function getNegative(param1:Sprite) : Number
        {
            var _loc_2:* = param1.transform.colorTransform;
            return _loc_2.redOffset * (100 / 255);
        }// end function

        public static function setRed(param1:Sprite, param2:uint) : void
        {
            var _loc_3:* = param1.transform.colorTransform;
            var _loc_4:* = param2 << 16 | _loc_3.greenOffset << 8 | _loc_3.blueOffset;
            setRGB(param1, _loc_4);
            return;
        }// end function

        public static function setGreen(param1:Sprite, param2:uint) : void
        {
            var _loc_3:* = param1.transform.colorTransform;
            var _loc_4:* = _loc_3.redOffset << 16 | param2 << 8 | _loc_3.blueOffset;
            setRGB(param1, _loc_4);
            return;
        }// end function

        public static function setBlue(param1:Sprite, param2:uint) : void
        {
            var _loc_3:* = param1.transform.colorTransform;
            var _loc_4:* = _loc_3.redOffset << 16 | _loc_3.greenOffset << 8 | param2;
            setRGB(param1, _loc_4);
            return;
        }// end function

        public static function getRed(param1:Sprite) : uint
        {
            return param1.transform.colorTransform.redOffset;
        }// end function

        public static function getGreen(param1:Sprite) : uint
        {
            return param1.transform.colorTransform.greenOffset;
        }// end function

        public static function getBlue(param1:Sprite) : uint
        {
            return param1.transform.colorTransform.blueOffset;
        }// end function

    }
}
