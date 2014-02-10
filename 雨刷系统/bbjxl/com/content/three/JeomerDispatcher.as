package bbjxl.com.content.three{
	/**
	作者：被逼叫小乱
	//扣分事件发出者
	www.bbjxl.com/Blog
	**/
	import bbjxl.com.event.JeomerEvent;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.MouseEvent;
	public class JeomerDispatcher extends EventDispatcher {
		private var _jeomerEvent:JeomerEvent;//扣分事件
		//===================================================================================================================//
		
		//===================================================================================================================//
		public function doAction(value:uint):void {
			_jeomerEvent = new JeomerEvent(JeomerEvent.JEOMEREVENT);
			_jeomerEvent.error_id = value;
			dispatchEvent(_jeomerEvent); 
		} 
		//--------------------------------------------------------------------------------------------------------------------//
		
		//===================================================================================================================//
	}
}