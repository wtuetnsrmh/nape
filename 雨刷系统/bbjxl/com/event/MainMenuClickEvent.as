package bbjxl.com.event{
	import flash.events.Event;
	public class MainMenuClickEvent extends Event {
		public static  const MAINMENUCLICKEVENT:String="mainmenuclickevent";
		public static  const SUBMENUCLICKEVENT:String="submenuclickevent";
		
		private var _clickId:uint;//主菜单所点击的按钮ID
		private var _subclickId:uint;//次菜单所点击的按钮ID
		
		public function MainMenuClickEvent(eventType:String="mainmenuclickevent") {
			super(eventType,true);
		}
		
		public function set subclickId(_id:uint):void {
			_subclickId=_id;
		}
		public function get subclickId():uint {
			return _subclickId;
		}
		
		public function set clickId(_id:uint):void {
			_clickId=_id;
		}
		public function get clickId():uint {
			return _clickId;
		}
		
	}
}