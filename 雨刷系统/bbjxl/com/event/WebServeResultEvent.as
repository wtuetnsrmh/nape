package bbjxl.com.event
{
	import flash.events.Event;
	
	/**
	 * ...
	 * @author bbjxl
		www.bbjxl.com
	 */
	public class WebServeResultEvent extends Event 
	{
		public static var COMPLETE:String = "complete";
		public static var FAILED:String = "failed";
		
		private var _data:Object;
		private var _name:String;
		public function WebServeResultEvent(param_event:String, param_data:Object = null,methName:String="") 
		{
			super(param_event);
			_data = param_data;
			_name = methName;
			
		}
		
			/**
			* Get data of OperationEvent
			* 
			* @return	Object with data
			*/		
			public function get data():Object
			{
				return _data;
			}
			
			public function get methName():String
			{
				return _name;
			}
		
	}

}