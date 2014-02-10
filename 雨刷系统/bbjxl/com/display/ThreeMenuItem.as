package bbjxl.com.display{
	/**
	作者：被逼叫小乱
	第三界面中的菜单
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.filters.GlowFilter;
	import flash.utils.getDefinitionByName;
	import flash.events.Event;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	import flash.events.IOErrorEvent;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	public class ThreeMenuItem extends Sprite {
		private var returnMainMenu:TextField=new TextField();//返回主菜单
		
		//===================================================================================================================//
		
		//===================================================================================================================//
		public function ThreeMenuItem(thisName:String) {
			returnMainMenu.autoSize = TextFieldAutoSize.LEFT;
            var format:TextFormat = new TextFormat();
            format.color = 0xFB0000;
            format.size = 13;
			format.bold=true;
			returnMainMenu.selectable=false;
			//name_txt.background=true;
            returnMainMenu.defaultTextFormat = format;
			returnMainMenu.x=0;
			returnMainMenu.y=0;
			returnMainMenu.text=thisName;
			
			//描边效果
			var myGlowFilter = new flash.filters.GlowFilter(0xffffff,2, 2, 2, 7, 2, false, false);
			var myFilters:Array = returnMainMenu.filters;
			myFilters.push(myGlowFilter);
			returnMainMenu.filters = myFilters;

			addChild(returnMainMenu);
			
		}//End Fun
		//--------------------------------------------------------------------------------------------------------------------//
		
		//===================================================================================================================//
	}
}