package bbjxl.com.content.four {
	/*
	 * 症状部件单元格下拉框选中事件
	 * */
	import flash.events.Event;
	public class SymptomPartTableCellSelectedEvent extends Event {
		public static  const SYMPTOMPARTCELLSELECTED:String="symptompartcellselected";
		public static  const SYMPTOMCELLSELECTED:String="symptomcellselected";
		
		private var _ad_id:uint;
		public function SymptomPartTableCellSelectedEvent(eventType:String) {
			super(eventType,true);
		}
		public function set ad_id(_id:uint):void {
			_ad_id=_id;
		}
		public function get ad_id():uint {
			return _ad_id;
		}
		
	}
}