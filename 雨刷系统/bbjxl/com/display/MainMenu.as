package bbjxl.com.display{
	/**
	作者：被逼叫小乱
	www.bbjxl.com/Blog
	主菜单
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.display.Graphics;
	import flash.display.SimpleButton;
	import flash.utils.getDefinitionByName;
	import flash.display.SimpleButton;
	import flash.display.Shape;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.TextFieldAutoSize;
	import flash.filters.BitmapFilterQuality;
	
	import flash.filters.GlowFilter;
	import bbjxl.com.event.MainMenuClickEvent;
	import bbjxl.com.effect.Reflect;

	public class MainMenu extends MovieClip {
		private var _bjrsSB:SimpleButton=new SimpleButton();//部件认识按钮
		private var _xrfxSB:SimpleButton=new SimpleButton();//线路分析按钮
		private var _xnjc:SimpleButton=new SimpleButton();//性能检测按钮
		private var _gzzd:SimpleButton=new SimpleButton();//故障诊断按钮
		
		public function MainMenu() {
			var re2:Reflect=new Reflect(this,20,55, -5,10,0);//用于影片

			_bjrsSB=this.getChildByName("bjrs") as SimpleButton;
			_xrfxSB=this.getChildByName("xrfx") as SimpleButton;
			_xnjc=this.getChildByName("xnjc") as SimpleButton;
			_gzzd=this.getChildByName("gzzd") as SimpleButton;
			
			_bjrsSB.addEventListener(MouseEvent.MOUSE_DOWN,MainMenuClickHandler);
			_xrfxSB.addEventListener(MouseEvent.MOUSE_DOWN,MainMenuClickHandler);
			_xnjc.addEventListener(MouseEvent.MOUSE_DOWN,MainMenuClickHandler);
			_gzzd.addEventListener(MouseEvent.MOUSE_DOWN,MainMenuClickHandler);
			
		}//End Fun
		
		private function MainMenuClickHandler(e:MouseEvent):void{
			
			var mmClickEvent:MainMenuClickEvent=new MainMenuClickEvent();
			
			switch(e.target.name){
				case "bjrs":
				mmClickEvent.clickId=1;
				break;
				case "xrfx":
				mmClickEvent.clickId=2;
				break;
				case "xnjc":
				mmClickEvent.clickId=3;
				break;
				case "gzzd":
				mmClickEvent.clickId=4;
				break;
				default:
				trace("出错")
				
				}
				
			dispatchEvent(mmClickEvent);
			}
		
		
		
	}
}