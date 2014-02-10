package bbjxl.com.event{
	import flash.events.Event;
	public class StartKeyEvent extends Event {
		public static  const STARTKEYEVENT:String="startkeyevent";
		
		private var _startId:uint;//点火开关处于的状态
		public function StartKeyEvent(eventType:String="startkeyevent") {
			super(eventType,true);
		}
		public function set startId(_id:uint):void {
			_startId=_id;
		}
		public function get startId():uint {
			return _startId;
		}
		
	}
}