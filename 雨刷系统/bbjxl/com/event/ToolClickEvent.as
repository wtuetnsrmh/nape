package bbjxl.com.event{
	import flash.events.Event;
	public class ToolClickEvent extends Event {
		public static  const TOOLCLICKEVENT:String="toolclickevent";
		
		private var _toolId:uint;//工具ID
		private var _toolitemId:uint;
		public function ToolClickEvent(eventType:String="toolclickevent") {
			super(eventType,true);
		}
		public function set toolitemId(_id:uint):void {
			_toolitemId=_id;
		}
		public function get toolitemId():uint {
			return _toolitemId;
		}
		public function set toolId(_id:uint):void {
			_toolId=_id;
		}
		public function get toolId():uint {
			return _toolId;
		}
		
	}
}