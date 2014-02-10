package event{
	/**
	作者：被逼叫小乱
	www.bbjxl.com/Blog
	自定义类
	
	**/
	import flash.events.Event;

	public class xlevent extends Event {

		public static  const LAUNCH_CLICK:String="launch_click";//进入点击事件
		public var _event_swfurl:String;//SWF地址

		public function xlevent(eventType:String):void {

			super(eventType);//super(eventType),ture;//父类侦听用true

		}
	}
}