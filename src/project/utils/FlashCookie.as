package project.utils
{
    import flash.net.*;

    public class FlashCookie extends Object
    {

        public function FlashCookie()
        {
            return;
        }// end function
		//============================================
		// 清除缓存
		//============================================
        public static function clearCache(param1:String,param2:String) : void
        {
			try{
			 var _loc_3:* = SharedObject.getLocal(param1);
				if (_loc_3.data.hasOwnProperty(param1) && _loc_3.data[param1].hasOwnProperty(param2))
				{
					_loc_3.data[param1][param2] = null;
				}
			}catch (e:TypeError) {  
				
			}
            
            return;
        }// end function
		/*
		* @ param1 缓存中的标志
		* @ param2 数据属性
		*
		*/
        public static function getCookie(param1:String, param2:String)
        {
            var _loc_3:* = SharedObject.getLocal(param1);
            if (_loc_3.data.hasOwnProperty(param1) && _loc_3.data[param1].hasOwnProperty(param2))
            {
                return _loc_3.data[param1][param2];
            }
            return null;
        }// end function
		/*
		* @ param1 缓存中的标志
		* @ param2 数据属性
		* @ param3 数据值
		*/
        public static function setCookie(param1:String, param2:String, param3:*) : void
        {
            var _loc_4:* = SharedObject.getLocal(param1);
            var _loc_5:* = new Object();
            _loc_5[param2] = param3;
            _loc_4.data[param1] = _loc_5;
            _loc_4.flush();
            return;
        }// end function

    }
}
