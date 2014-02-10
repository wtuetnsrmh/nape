package bbjxl.com.event{
	import flash.events.Event;
	import bbjxl.com.display.Part;
	public class PowerEvent extends Event {
		public static  const POWEREVENT:String="powerevent";
		public static  const POWERCLICKEVENT:String="powerclickevent";
		
		private var _ZbHitPart:*;//正笔接触到的部件
		private var _FbHitPart:*;
		private var _ZbHitPinId:uint;//下笔接触到的点的ID
		private var _FbHitPinId:uint;
		
		public function PowerEvent(eventType:String="powerevent") {
			super(eventType,true);
		}
		public function set FbHitPart(_id:*):void {
			_ZbHitPart=_id;
		}
		public function get FbHitPart():* {
			return _ZbHitPart;
		}
		public function set ZbHitPart(_id:*):void {
			_ZbHitPart=_id;
		}
		public function get ZbHitPart():* {
			return _ZbHitPart;
		}
		public function set FbHitPinId(_id:uint):void {
			_FbHitPinId=_id;
		}
		public function get FbHitPinId():uint {
			return _FbHitPinId;
		}
		public function set ZbHitPinId(_id:uint):void {
			_ZbHitPinId=_id;
		}
		public function get ZbHitPinId():uint {
			return _ZbHitPinId;
		}
		
	}
}