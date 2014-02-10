package bbjxl.com.event 
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	
	/**
	 * ...
	 * @author bbjxl
	 */
	public class TotalEventDispather extends EventDispatcher
	{
		
		public function TotalEventDispather() 
		{
			super();
		}
		//发出事件的方法 
		public function doAction(event:Event):void {
			dispatchEvent(event); 
		} 
	}

}