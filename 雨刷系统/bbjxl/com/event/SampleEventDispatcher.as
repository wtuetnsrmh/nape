package bbjxl.com.event 
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	/**
	 * ...
	 * @author bbjxl
	 */
	public class SampleEventDispatcher implements IEventDispatcher
	{
		public var _dispatcher:EventDispatcher;  

		public function SampleEventDispatcher() 
		{
			_dispatcher = new EventDispatcher();
		}
		
		/* INTERFACE flash.events.IEventDispatcher */
		
		public function dispatchEvent(event:Event):Boolean
		{
			return _dispatcher.dispatchEvent(event);
		}
		
		public function hasEventListener(type:String):Boolean
		{
			return _dispatcher.hasEventListener(type);  

		}
		
		public function willTrigger(type:String):Boolean
		{
			 return _dispatcher.willTrigger(type);  
		}
		
		public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false):void
		{
			_dispatcher.removeEventListener(type,listener,useCapture);  

		}
		
		public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false):void
		{
			_dispatcher.addEventListener(type,listener,useCapture,priority,useWeakReference);  
		}
		
	}

}