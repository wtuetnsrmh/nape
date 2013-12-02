package project.utils
{
    import flash.events.*;

    public class FormatSeconds extends EventDispatcher
    {

        public function FormatSeconds()
        {
            return;
        }// end function

        public static function formatSecondToDateTime(param1:uint) : String
        {
            var _loc_2:* = Math.floor(param1 / (24 * 3600));
            param1 = param1 % (24 * 3600);
            var _loc_3:* = Math.floor(param1 / 3600);
            var _loc_4:* = param1 % 3600;
            var _loc_5:* = Math.floor(_loc_4 / 60);
            param1 = param1 - _loc_3 * 3600 - _loc_5 * 60;
            if (_loc_2 < 1)
            {
                return _loc_3 + ":" + _loc_5 + ":" + param1;
            }
            return _loc_2 + "天" + _loc_3 + ":" + _loc_5 + ":" + param1;
        }// end function

        public static function formatSecondToDateMinute(param1:uint) : String
        {
            var _loc_2:* = Math.floor(param1 / (24 * 3600));
            param1 = param1 % (24 * 3600);
            var _loc_3:* = Math.floor(param1 / 3600);
            var _loc_4:* = param1 % 3600;
            var _loc_5:* = Math.floor(_loc_4 / 60);
            param1 = param1 - _loc_3 * 3600 - _loc_5 * 60;
            var _loc_6:String = "";
            var _loc_7:String = "";
            if (_loc_3 < 10)
            {
                _loc_6 = "0" + _loc_3.toString();
            }
            else
            {
                _loc_6 = _loc_3.toString();
            }
            if (_loc_5 < 10)
            {
                _loc_7 = "0" + _loc_5.toString();
            }
            else
            {
                _loc_7 = _loc_5.toString();
            }
            return _loc_6 + ":" + _loc_7 + "";
        }// end function

        public static function formatSecondToDateHour(param1:uint) : String
        {
            var _loc_2:* = Math.floor(param1 / (24 * 3600));
            param1 = param1 % (24 * 3600);
            var _loc_3:* = Math.floor(param1 / 3600);
            var _loc_4:* = param1 % 3600;
            var _loc_5:* = Math.floor(_loc_4 / 60);
            param1 = param1 - _loc_3 * 3600 - _loc_5 * 60;
            var _loc_6:String = "";
            var _loc_7:String = "";
            var _loc_8:String = "";
            if (_loc_3 < 10)
            {
                _loc_6 = "0" + _loc_3.toString();
            }
            else
            {
                _loc_6 = _loc_3.toString();
            }
            if (_loc_5 < 10)
            {
                _loc_7 = "0" + _loc_5.toString();
            }
            else
            {
                _loc_7 = _loc_5.toString();
            }
            if (param1 < 10)
            {
                _loc_8 = "0" + param1.toString();
            }
            else
            {
                _loc_8 = param1.toString();
            }
            return _loc_6 + ":" + _loc_7 + ":" + _loc_8;
        }// end function

        public static function formatSecondToDateDay(param1:uint) : String
        {
            var _loc_2:* = Math.floor(param1 / (24 * 3600));
            param1 = param1 % (24 * 3600);
            var _loc_3:* = Math.floor(param1 / 3600);
            var _loc_4:* = param1 % 3600;
            var _loc_5:* = Math.floor(_loc_4 / 60);
            param1 = param1 - _loc_3 * 3600 - _loc_5 * 60;
            return _loc_2 + "天";
        }// end function

    }
}
