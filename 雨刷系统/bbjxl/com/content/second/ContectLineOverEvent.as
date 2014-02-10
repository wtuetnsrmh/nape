package bbjxl.com.content.second{
	import flash.events.Event;
	public class ContectLineOverEvent extends Event {
		public static  const CONTECTLINEOVEREVENT:String="contectlineoverevent";
		
		private var _zPinId:uint;//正点ID
		private var _fPinId:uint;//负点ID
		public function ContectLineOverEvent(eventType:String="contectlineoverevent") {
			super(eventType,true);
		}
		public function set zPinId(_id:uint):void {
			_zPinId=_id;
		}
		public function get zPinId():uint {
			return _zPinId;
		}
		
		
		public function set fPinId(_id:uint):void {
			_fPinId=_id;
		}
		public function get fPinId():uint {
			return _fPinId;
		}
		
	}
}