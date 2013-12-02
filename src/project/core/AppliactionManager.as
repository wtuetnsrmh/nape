package project.core
{
	/*
	* 描述：应用控制类
	* 获取stage,GameMain
	*/
    import flash.display.*;
    import flash.events.*;

    public class AppliactionManager extends EventDispatcher
    {
        private static var _stage:Stage;
        private static var apm:AppliactionManager;
        public static var APP:Object;

        public function AppliactionManager()
        {
            if (apm != null)
            {
                throw new Error("Error");
            }
            return;
        }// end function

        public static function getInstance() : AppliactionManager
        {
            if (apm == null)
            {
                apm = new AppliactionManager;
            }
            return apm;
        }// end function

        public static function initializeStandardAs(param1:DisplayObject) : void
        {
            _stage = param1.stage;
            APP = param1;
            return;
        }// end function

        public static function get stage() : Stage
        {
            return _stage;
        }// end function

    }
}
