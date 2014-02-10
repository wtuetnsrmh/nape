package bbjxl.com.content.three{
	/**
	作者：被逼叫小乱
	www.bbjxl.com/Blog
	自定义类
	
	**/
	import flash.events.Event;

	public class PartClickEvent extends Event {

		public static  const PARTCLICKEVENT:String="partclickevent";
		public var _clicked:Boolean=false;//故障选项ID
		
		public function set clicked(_id:Boolean):void {
			_clicked=_id;
		}
		public function get clicked():Boolean {
			return _clicked;
		}

		public function PartClickEvent(eventType:String="partclickevent"):void {

			super(eventType,true);

		}
	}
}