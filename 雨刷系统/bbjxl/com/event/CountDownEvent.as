package bbjxl.com.event{
	import flash.events.Event;
	public class CountDownEvent extends Event {
		public static  const COUNTDOWNEVENT:String="countdownevent";
		
		public function CountDownEvent(eventType:String="countdownevent") {
			super(eventType,true);
		}
		
		
	}
}