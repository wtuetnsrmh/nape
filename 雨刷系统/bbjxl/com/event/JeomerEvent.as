package bbjxl.com.event {
	//扣分事件
	import flash.events.Event;
	public class JeomerEvent extends Event {
		public static  const JEOMEREVENT:String="JeomerEvent";
		
		private var _error_id:uint;//扣分的类型即错误的类型
		/*
		 * 扣分ID对应的错误:
		 * 万用表使用错误，电阻档测电压       0
			万用表使用错误，电压档测电阻      1
			
		*/

		public function JeomerEvent(eventType:String) {
			super(eventType,true);
		}
		public function set error_id(_id:uint):void {
			_error_id=_id;
		}
		public function get error_id():uint {
			return _error_id;
		}
		
	}
}