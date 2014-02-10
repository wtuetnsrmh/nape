package bbjxl.com.event{
	import flash.events.Event;
	public class PopFramInitEvent extends Event {
		public static  const POPFRAMINITEVENT:String="popframinitevent";
		
		private var _symptomsArr:Array;//所有部件及各自的点数组
		public function PopFramInitEvent(eventType:String="popframinitevent") {
			super(eventType,true);
		}
		public function set symptomsArr(_id:Array):void {
			_symptomsArr=_id;
		}
		public function get symptomsArr():Array {
			return _symptomsArr;
		}
		
	}
}