package bbjxl.com.content.first{
	import flash.events.Event;
	public class MNKSClickEvent extends Event {
		public static  const MNKSCLICKEVENT:String="mnksclickevent";
		public static  const CLOSEMNKSEVENT:String="closemnksevent";
		
		
		private var _score:uint;//分数
		private var _rightOrFalse:Boolean;//正确与否
		private var _tiNum:uint;//题目ID
		private var _mySelecte:uint;//我的选择
		private var _rightIndex:uint;//正确的索引
		private var _toPlatformSubjectoption:String;//用于传给后台的选项选项名称
		
		
		public function MNKSClickEvent(eventType:String="mnksclickevent") {
			super(eventType,true);
		}
		
		public function set toPlatformSubjectoption(_id:String):void {
			_toPlatformSubjectoption=_id;
		}
		public function get toPlatformSubjectoption():String {
			return _toPlatformSubjectoption;
		}
		public function set rightIndex(_id:uint):void {
			_rightIndex=_id;
		}
		public function get rightIndex():uint {
			return _rightIndex;
		}
		
		public function set rightOrFalse(_id:Boolean):void {
			_rightOrFalse=_id;
		}
		public function get rightOrFalse():Boolean {
			return _rightOrFalse;
		}
		
		public function set mySelecte(_id:uint):void {
			_mySelecte=_id;
		}
		public function get mySelecte():uint {
			return _mySelecte;
		}
		
		public function set score(_id:uint):void {
			_score=_id;
		}
		public function get score():uint {
			return _score;
		}
		
		public function set tiNum(_id:uint):void {
			_tiNum=_id;
		}
		public function get tiNum():uint {
			return _tiNum;
		}
		
	}
}