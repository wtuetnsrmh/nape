package bbjxl.com.content.first{
	import flash.events.Event;
	public class MNKS_Botton_PageClickEvent extends Event {
		public static  const MNKSBOTTONPAGECLICKEVENT:String="mnksbottonpageclickevent";
		public static  const MNKSBOTTONSETUPCLICKEVENT:String="mnksbottonsetupclickevent";
		
		private var _currentPageId:uint;//当前页ID
		
		
		
		public function MNKS_Botton_PageClickEvent(eventType:String="mnksbottonpageclickevent") {
			super(eventType,true);
		}
		
		
		public function set currentPageId(_id:uint):void {
			_currentPageId=_id;
		}
		public function get currentPageId():uint {
			return _currentPageId;
		}
		
		
		
	}
}