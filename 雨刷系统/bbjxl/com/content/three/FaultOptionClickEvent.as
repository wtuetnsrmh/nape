package bbjxl.com.content.three{
	/**
	作者：被逼叫小乱
	www.bbjxl.com/Blog
	自定义类
	
	**/
	import flash.events.Event;

	public class FaultOptionClickEvent extends Event {

		public static  const FAULTOPTIONCLICKEVENT:String="faultoptionclickevent";
		public var _faultOptionIndex:uint;//故障选项ID
		public var _faultContent:String;//故障名称
		public var _faultId:uint;//故障ID(后台给出)
		
		public function set faultOptionIndex(_id:uint):void {
			_faultOptionIndex=_id;
		}
		public function get faultOptionIndex():uint {
			return _faultOptionIndex;
		}

		public function FaultOptionClickEvent(eventType:String="faultoptionclickevent"):void {

			super(eventType,true);

		}
	}
}