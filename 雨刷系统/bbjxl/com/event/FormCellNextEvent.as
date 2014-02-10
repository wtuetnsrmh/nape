package bbjxl.com.event{
	import flash.events.Event;
	public class FormCellNextEvent extends Event {
		public static  const FORMCELLNEXTEVENT:String="formcellnextevent";
		public static  const FORMCOMMONCHANGEEVENT:String="formcommonchangeevent";
		
		private var _parentId:uint;//
		private var _thisid:uint;
		private var _thisSelectId:uint;
		private var _thisSelect:Object;//当前下拉条的选择
		private var _changeRow:String="normal";//哪个下拉条改变了，默认是最后一列的性能评测
		
		public function FormCellNextEvent(eventType:String="formcellnextevent") {
			super(eventType,true);
		}
		public function set changeRow(_id:String):void {
			_changeRow=_id;
		}
		public function get changeRow():String {
			return _changeRow;
		}
		public function set thisSelect(_id:Object):void {
			_thisSelect=_id;
		}
		public function get thisSelect():Object {
			return _thisSelect;
		}
		public function set thisSelectId(_id:uint):void {
			_thisSelectId=_id;
		}
		public function get thisSelectId():uint {
			return _thisSelectId;
		}
		public function set thisid(_id:uint):void {
			_thisid=_id;
		}
		public function get thisid():uint {
			return _thisid;
		}
		public function set parentId(_id:uint):void {
			_parentId=_id;
		}
		public function get parentId():uint {
			return _parentId;
		}
		
	}
}