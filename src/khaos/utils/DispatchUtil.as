package khaos.utils
{
	import khaos.events.XDispatch;
	import khaos.events.XEvent;

	public class DispatchUtil
	{
		/**有些时候只要更新view，而不用经过Model
		 * 为了直接发消息给View**/
		public static function notify(type:String, info:* = null):void
		{
			XDispatch.getInstance().dispatchEvent(new XEvent(type, info));
		}
		
		public static function addNotify(type: String,func: Function): void {
			XDispatch.getInstance().addEventListener(type,func);
		}
		
		public static function removeNotify(type: String, func: Function): void {
			XDispatch.getInstance().removeEventListener(type,func);
		}

	}
}