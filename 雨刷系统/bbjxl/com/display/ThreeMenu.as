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
	public class ThreeMenu extends Sprite {
		private var returnMainMenu:ThreeMenuItem;//返回主菜单
		private var returnSecondMenu:ThreeMenuItem;//返回次菜单
		private var help:ThreeMenuItem;//帮助
		private var quit:ThreeMenuItem;//退出
		//===================================================================================================================//
		
		//===================================================================================================================//
		public function ThreeMenu() {
			returnMainMenu=new ThreeMenuItem("返回主菜单");
			returnMainMenu.x=30;
			returnMainMenu.y=10;
			returnMainMenu.buttonMode=true;
			returnMainMenu.mouseChildren=false;
			addChild(returnMainMenu);
			returnSecondMenu=new ThreeMenuItem("返回次菜单");
			returnSecondMenu.x=returnMainMenu.x+returnMainMenu.width+10;
			returnSecondMenu.y=10;
			returnSecondMenu.buttonMode=true;
			returnSecondMenu.mouseChildren=false;
			addChild(returnSecondMenu);
			
			help=new ThreeMenuItem("帮 助");
			help.x=returnSecondMenu.x+returnSecondMenu.width+10;
			help.y=10;
			help.buttonMode=true;
			help.mouseChildren=false;
			
			addChild(help);
			
			quit=new ThreeMenuItem("退 出");
			quit.x=help.x+help.width+10;
			quit.y=10;
			quit.buttonMode=true;
			quit.mouseChildren=false;
			
			addChild(quit);
			
			returnMainMenu.addEventListener(MouseEvent.CLICK,mainMenuClick);
			returnSecondMenu.addEventListener(MouseEvent.CLICK,secondMenuClick);
		}//End Fun
		//--------------------------------------------------------------------------------------------------------------------//
			private function mainMenuClick(e:MouseEvent):void{
				dispatchEvent(new Event("mainMenuClick"));
				}
				
			private function secondMenuClick(e:MouseEvent):void{
				dispatchEvent(new Event("secondMenuClick"));
				}
		//===================================================================================================================//
	}
}