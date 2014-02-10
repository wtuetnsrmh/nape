package bbjxl.com.content.four{
	/**
	作者：被逼叫小乱
	过程分析表中选的在线还是离线的通道
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.MouseEvent;
	public class OnlineOrOfflineChannel extends EventDispatcher {
		public static const ONLINE:String = "Online";//在线
		public static const OFFLINE:String = "Offline";//离线
		//===================================================================================================================//
		public var partShort:String;//部件的简称
		//===================================================================================================================//
		public function OnlineOrOfflineChannel() {
			super();
		}//End Fun
		public function online():void {
			dispatchEvent(new Event(ONLINE));
			}
			
		public function offline():void {
			dispatchEvent(new Event(OFFLINE));
			}
		//--------------------------------------------------------------------------------------------------------------------//
		
		//===================================================================================================================//
	}
}