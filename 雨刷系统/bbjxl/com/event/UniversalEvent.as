package bbjxl.com.event{
	import bbjxl.com.content.second.Pin;
	import flash.events.Event;
	import bbjxl.com.display.Part;
	public class UniversalEvent extends Event {
		public static  const UNIVERSSALEVENT:String="universalevent";
		public static  const UNIVERSSALSELECTEEVENT:String="universalselecteevent";
		
		private var _ZbHitPart:*;//正笔接触到的部件
		private var _FbHitPart:*;
		private var _ZbHitPinId:uint;//正笔接触到的点的ID
		private var _FbHitPinId:uint;
		private var _ZbHitPin:Pin;//正笔接触到的点
		private var _FbHitPin:Pin;
		public function UniversalEvent(eventType:String="universalevent") {
			super(eventType,true);
		}
		
		public function set FbHitPin(_id:Pin):void {
			_FbHitPin=_id;
		}
		public function get FbHitPin():Pin {
			return _FbHitPin;
		}
		public function set ZbHitPin(_id:Pin):void {
			_ZbHitPin=_id;
		}
		public function get ZbHitPin():Pin {
			return _ZbHitPin;
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