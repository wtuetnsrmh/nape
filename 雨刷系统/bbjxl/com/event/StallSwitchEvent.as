package bbjxl.com.event{
	import flash.events.Event;
	public class StallSwitchEvent extends Event {
		public static  const STALLSWITCHEVENT:String="stallswitchevent";
		
		private var _switchId:uint;//档位开关处于的状态
		public function StallSwitchEvent(eventType:String="stallswitchevent") {
			super(eventType,true);
		}
		public function set switchId(_id:uint):void {
			_switchId=_id;
		}
		public function get switchId():uint {
			return _switchId;
		}
		
	}
}