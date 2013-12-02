package project.utils
{

    public class XMath extends Object
    {

        public function XMath()
        {
            return;
        }// end function

        public static function formatNumber(param1:Number, param2:int) : String
        {
            var _loc_3:String = null;
            var _loc_4:String = null;
            var _loc_5:int = 0;
            var _loc_7:uint = 0;
            var _loc_8:int = 0;
            var _loc_9:int = 0;
            var _loc_10:uint = 0;
            var _loc_11:Number = NaN;
            _loc_3 = param1.toString();
            _loc_3 = "" + _loc_3 + "";
            var _loc_6:* = _loc_3.length;
            _loc_5 = _loc_3.indexOf(".", 0);
            if (_loc_5 == -1)
            {
                _loc_4 = _loc_3 + ".";
                _loc_7 = 0;
                while (_loc_7 < param2)
                {
                    
                    _loc_4 = _loc_4 + "0";
                    _loc_7 = _loc_7 + 1;
                }
                return _loc_4;
            }
            else
            {
                if (_loc_6 - _loc_5 - 1 >= param2)
                {
                    _loc_8 = _loc_5 + param2 + 1;
                    _loc_9 = 1;
                    _loc_10 = 0;
                    while (_loc_10 < param2)
                    {
                        
                        _loc_9 = _loc_9 * 10;
                        _loc_10 = _loc_10 + 1;
                    }
                    _loc_11 = Math.round(param1 * _loc_9) / _loc_9;
                    _loc_4 = _loc_11.toString();
                    return _loc_4;
                }
                else
                {
                    _loc_4 = _loc_3;
                    _loc_7 = 0;
                    while (_loc_7 < param2 - _loc_6 + _loc_5 + 1)
                    {
                        
                        _loc_4 = _loc_4 + "0";
                        _loc_7 = _loc_7 + 1;
                    }
                    return _loc_4;
                }
            }
        }// end function

        public static function getRandomMaxUint(param1:uint, param2:uint) : uint
        {
            var _loc_3:* = random(param1, param2);
            var _loc_4:* = random(param1, param2);
            if (random(param1, param2) > _loc_3)
            {
                _loc_3 = getRandomMaxUint(param1, param2);
            }
            return _loc_3;
        }// end function

        public static function getRandomMinUint(param1:uint, param2:uint) : uint
        {
            var _loc_3:* = random(param1, param2);
            var _loc_4:* = random(param1, param2);
            if (random(param1, param2) < _loc_3)
            {
                _loc_3 = getRandomMinUint(param1, param2);
            }
            return _loc_3;
        }// end function

        public static function random(param1:uint, param2:uint) : uint
        {
            return Math.ceil(Math.random() * param2) + param1 - 1;
        }// end function

        public static function getRanomPositiveNegative(param1:uint) : int
        {
            var _loc_2:int = 0;
            if (Math.random() > 0.5)
            {
                _loc_2 = param1;
            }
            else
            {
                _loc_2 = -param1;
            }
            return _loc_2;
        }// end function

    }
}
