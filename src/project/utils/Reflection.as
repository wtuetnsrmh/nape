package project.utils
{
	/*
	* 描述：反射类
	* 
	* 
	*/
    import flash.display.*;
    import flash.system.*;
    import flash.utils.*;

    public class Reflection extends Object
    {

        public function Reflection()
        {
            return;
        }// end function

		/*
		 * 生成显示对象
		* @ param1 类名
		* @ param2 域
		*/
        public static function createDisplayObjectInstance(param1:String, param2:ApplicationDomain = null) : DisplayObject
        {
            return createInstance(param1, param2) as DisplayObject;
        }// end function

		/*
		 * 生成实例
		* @ param1 类名
		* @ param2 域
		*/
        public static function createInstance(param1:String, param2:ApplicationDomain = null):*
        {
			//trace(param1)
            var _loc_3:Class = getClass(param1, param2);
            if (_loc_3 != null)
            {
                return new _loc_3;
            }
            return null;
        }// end function

		/*生成类
		* @ param1 类名
		* @ param2 域
		*/
        public static function getClass(param1:String, param2:ApplicationDomain = null) : Class
        {
            var _loc_3:Class = null;
            if (param2 == null)
            {
                param2 = ApplicationDomain.currentDomain;
            }
            if (param2.hasDefinition(param1))
            {
                _loc_3 = param2.getDefinition(param1) as Class;
            }
            return _loc_3;
        }// end function

		/*获取类的全名，包括包名
		* @ 
		* @ 
		*/
        public static function getFullClassName(param1:*) : String
        {
            return getQualifiedClassName(param1);
        }// end function

		/*获取实例类名
		* @ param1 实例
		* @ 
		*/
        public static function getClassName(param1:*) : String
        {
            var _loc_2:* = getFullClassName(param1);
            var _loc_3:* = _loc_2.lastIndexOf(".");
            if (_loc_3 >= 0)
            {
                _loc_2 = _loc_2.substr((_loc_3 + 1));
            }
            return _loc_2;
        }// end function

		/*获取包名
		* @ 
		* @ 
		*/
        public static function getPackageName(param1) : String
        {
            var _loc_2:* = getFullClassName(param1);
            var _loc_3:* = _loc_2.lastIndexOf(".");
            if (_loc_3 >= 0)
            {
                return _loc_2.substring(0, _loc_3);
            }
            return "";
        }// end function

    }
}
