package project.model.log
{
	import project.model.data.DataModel;
	
	/**
	 * ...
	 * @author bbjxl 2013
	 */
	public class EventLog extends DataModel
	{
		/*category	EventLogCategory	事件日志分类编号
		   type	int	事件日志扩展字段编号
		   time	string	事件时间
		 */
		   
		private var _category:int;
		private var _type:int;
		private var _timer:String;
		private var _log:EventLogExtendedFields;
		public function EventLog(param:Object)
		{
			_category = (param["category"] == null)?0:param["category"];
			_type = (param["type"] == null)?0:param["type"];
			_timer = (param["time"] == null)?"":param["time"];
			_log = new EventLogExtendedFields(param, _type);
		}
		
		public function get category():int 
		{
			return _category;
		}
		
		public function set category(value:int):void 
		{
			_category = value;
		}
		
		public function get type():int 
		{
			return _type;
		}
		
		public function set type(value:int):void 
		{
			_type = value;
		}
		
		public function get timer():String 
		{
			return _timer;
		}
		
		public function set timer(value:String):void 
		{
			_timer = value;
		}
		
		public function get log():EventLogExtendedFields 
		{
			return _log;
		}
		
		public function set log(value:EventLogExtendedFields):void 
		{
			_log = value;
		}
	
	}

}