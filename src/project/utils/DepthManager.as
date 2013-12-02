package project.utils
{
	import starling.display.DisplayObject;
	import starling.display.DisplayObjectContainer;
	/*
	* 描述：显示对象深度管理类
	* 
	*/
   

    public class DepthManager extends Object
    {
        public static const SWAPTOTOP:String = "swap_to_top";

        public function DepthManager()
        {
            return;
        }// end function

		/*置底
		* @ param 置底对象
		*/
        public static function bringToBottom(param1:DisplayObject) : void
        {
            var _loc_2:DisplayObjectContainer= param1.parent;
            if (_loc_2 == null)
            {
                return;
            }
            if (_loc_2.getChildIndex(param1) != 0)
            {
                _loc_2.setChildIndex(param1, 0);
            }
            return;
        }// end function

		/*置顶
		* @ param 置顶对象
		*/
        public static function bringToTop(param1:DisplayObject) : void
        {
			if (isTop(param1)) return;
            var _loc_6:DisplayObject = null;
            var _loc_2:DisplayObjectContainer= param1.parent;
            if (_loc_2 == null)
            {
                return;
            }
            var _loc_3:int = _loc_2.numChildren - 1;
            //var _loc_4:DisplayObject = _loc_2.getChildIndex(param1);
            var _loc_5:int = 0;
            while (_loc_5 <= _loc_3)
            {
                
                _loc_6 = _loc_2.getChildAt(_loc_5);
                _loc_5++;
            }
            if (_loc_2.getChildIndex(param1) != _loc_3)
            {
                _loc_2.setChildIndex(param1, _loc_3);
            }
            return;
        }// end function

		/*是否是顶层
		* @ param
		*/
        public static function isTop(param1:DisplayObject) : Boolean
        {
            var _loc_2:* = param1.parent;
            if (_loc_2 == null)
            {
                return true;
            }
            return (_loc_2.numChildren - 1) == _loc_2.getChildIndex(param1);
        }// end function

		/*是否是底层
		* @ param
		*/
        public static function isBottom(param1:DisplayObject) : Boolean
        {
            var _loc_2:* = param1.parent;
            if (_loc_2 == null)
            {
                return true;
            }
            var _loc_3:* = _loc_2.getChildIndex(param1);
            if (_loc_3 == 0)
            {
                return true;
            }
            return false;
        }// end function

		/*param1正好在param2下面
		* @ param DisplayObject
		* @ param DisplayObject
		*/
        public static function isJustBelow(param1:DisplayObject, param2:DisplayObject) : Boolean
        {
            var _loc_3:* = param1.parent;
            if (_loc_3 == null)
            {
                return false;
            }
            if (param2.parent != _loc_3)
            {
                return false;
            }
            return _loc_3.getChildIndex(param1) == (_loc_3.getChildIndex(param2) - 1);
        }// end function

		/*param1正好在param2上面
		* @ param DisplayObject
		* @ param DisplayObject
		*/
        public static function isJustAbove(param1:DisplayObject, param2:DisplayObject) : Boolean
        {
            return isJustBelow(param2, param1);
        }// end function
		
		
    }
}
