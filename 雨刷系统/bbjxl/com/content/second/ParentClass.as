package bbjxl.com.content.second{
	/**
	作者：被逼叫小乱
	基类
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.display.Stage;
	import flash.display.StageScaleMode;
	import flash.display.StageAlign;
	import flash.system.ApplicationDomain;
	import flash.events.Event;
	import flash.display.LoaderInfo;

	import flash.display.SimpleButton;
	import com._public._method.app;
	import flash.display.Loader;
	import bbjxl.com.display.StartSystem;

	public class ParentClass extends StartSystem {
		protected var _loaderInfo:LoaderInfo;//获取皮肤swf的LoaderInfo
		
		//===================================================================================================================//
		public function set loaderInfo(value:LoaderInfo):void {
			_loaderInfo = value;
		}
		
		
		//===================================================================================================================//
		public function ParentClass() {
			
		}//End Fun
		//--------------------------------------------------------------------------------------------------------------------//
		
		//--------------------------------------------------------------------------------------------------------------------//
		
		//--------------------------------------------------------------------------------------------------------------------//
		protected function createClip(className:String):MovieClip {
			var clip:MovieClip;
			var thisDomain:ApplicationDomain;
			thisDomain=_loaderInfo.applicationDomain;
			clip=app.createMc(className,thisDomain);
			if (clip == null) {
				clip = null;
			}
			return clip;
		}
		public function getChild(_name:String):MovieClip {
			return createClip(_name);
		}
		protected function createButton(className:String):SimpleButton {
			var but:SimpleButton;
			var thisDomain:ApplicationDomain;
			thisDomain=_loaderInfo.applicationDomain;
			but=app.createButton(className,thisDomain);
			if (but == null) {
				but = null;
			}
			return but;
		}
		//===================================================================================================================//
	}
}