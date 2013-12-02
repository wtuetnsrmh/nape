package project.config
{
	import flash.display.Stage;
	import flash.text.TextField;
	import flash.text.TextFormat;
	/*
	* 描述：游戏配置文件
	* 
	*/
    public class ApplicationConfig extends Object
    {
        public static const STAGE_WIDTH:int = 900;
        public static const STAGE_HEIGHT:int = 800;
		public static const CARD_WIDTH:int = 194;
		public static const CARD_HEIGHT:int = 270;
		public static const SMALL_CARD_WH:int = 75;//小卡宽高
		
        public static const VERSION:String = "2";//总版本（前后端版本）
        public static const FLASH_VERSION:String = "V 0.1." + VERSION;//单FLASH版本
        public static const BUILD:String = " 2013-06-20";
		
        public static var mainConfig:XML;//第一个总配置文件，各地址及模块加载地址等
		
        public static const APP_NAME:String = "诸神之怒";
        public static const APP_NAME_51:String = "51诸神之怒";
        public static const EVENT_VALENTINE:String = "valentine";//情人节
        public static const EVENT_CHRISTMAS:String = "christmas";//圣诞节活动
        public static var FONT:String = "Microsoft YaHei";//字体
        public static var FONT_COLOR:String = "0xffffff";//颜色
		
		public static var _ctrlKeyDown:Boolean = false;//是否CTRL键按下
		
		private static var _appTextFormat:TextFormat = new TextFormat("微软雅黑");
		
		public static var _code:String = "test";//防多开test
		
		public static var _token:String = "";
		
		
        public function ApplicationConfig()
        {
            return;
        }// end function
		
		public static function setDefaultTextFormat(... arg):void {
			for (var i:String in arg) {
				if(arg[i]!=null)
				arg[i].defaultTextFormat=_appTextFormat;
				}
			
			}
		public static function setAppTextFormat(... arg):void {
			/*var tf:TextFormat = new TextFormat("微软雅黑");
			_timeText.setTextFormat(tf);
			_descText.setTextFormat(tf);*/
			for (var i:String in arg) {
				if(arg[i]!=null)
				arg[i].setTextFormat(_appTextFormat);
				}
			
			}

    }
}
