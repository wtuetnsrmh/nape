package bbjxl.com.content.first{
	import flash.events.Event;
	public class RMPXClickEvent extends Event {
		public static  const RMPXCLICKEVENT:String="rmpxclickevent";
		public static  const RMPXBOTTONCLICKEVENT:String="rmpxbottonclickevent";//下半部分中的作用与位置按钮点击事件
		
		
		private var _clickPartId:uint;//所点击的部件ID
		private var _clickBottonPartId:uint;//作用还是位置id
		private var _clickPartName:String;//点击部件的名称
		
		
		public function RMPXClickEvent(eventType:String="rmpxclickevent") {
			super(eventType,true);
		}
		
		public function set clickPartName(_id:String):void {
			_clickPartName=_id;
		}
		public function get clickPartName():String {
			return _clickPartName;
		}
		
		public function set clickPartId(_id:uint):void {
			_clickPartId=_id;
		}
		public function get clickPartId():uint {
			return _clickPartId;
		}
		
		public function set clickBottonPartId(_id:uint):void {
			_clickBottonPartId=_id;
		}
		public function get clickBottonPartId():uint {
			return _clickBottonPartId;
		}
		
	}
}