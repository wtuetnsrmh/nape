package bbjxl.com.ui{
	import flash.events.Event;
	public class FormCellClickEvent extends Event {
		public static  const FORMCELLCLICKEVENT:String="formcellclickevent";
		
		
		private var _clickPartId:uint;//所点击的部件ID
		
		
		public function FormCellClickEvent(eventType:String="formcellclickevent") {
			super(eventType,true);
		}
		
		
		public function set clickPartId(_id:uint):void {
			_clickPartId=_id;
		}
		public function get clickPartId():uint {
			return _clickPartId;
		}
		

		
	}
}