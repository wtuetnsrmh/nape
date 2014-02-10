package bbjxl.com.event{
	import flash.events.Event;
	public class ADClickEvent extends Event {
		public static  const ADCLICKEVENT:String="adclickevent";
		
		private var _ad_id:uint;//广告ID
		public function ADClickEvent(eventType:String) {
			super(eventType,true);
		}
		public function set ad_id(_id:uint):void {
			_ad_id=_id;
		}
		public function get ad_id():uint {
			return _ad_id;
		}
		
	}
}