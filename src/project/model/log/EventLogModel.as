package project.model.log 
{
	import project.config.ErrorZhCn;
	import project.events.SMZTDataChangeEvent;
	import project.model.data.DataModel;
	
	/**
	 * 日志模型
	 * @author bbjxl 2013
	 */
	public class EventLogModel extends DataModel 
	{
		private var _roleLogs:Vector.<EventLog>;
		private var _battleLogs:Vector.<EventLog>;
		private var _traningLogs:Vector.<EventLog>;
		private var _friendsLogs:Vector.<EventLog>;
		private var _deckLogs:Vector.<EventLog>;
		
		private static var _eventLogModel:EventLogModel;
		public function EventLogModel() 
		{
			if (_eventLogModel != null) {
				throw Error(new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE));
				}
		}
		
		public function setData(param:Object):void {
			_roleLogs = new Vector.<EventLog>();
			_battleLogs = new Vector.<EventLog>();
			_traningLogs = new Vector.<EventLog>();
			_friendsLogs = new Vector.<EventLog>();
			_deckLogs = new Vector.<EventLog>();
			
			for (var i:String in param) {
				var log:EventLog = new EventLog(param[i]);
				switch(log.category) {
					case EventLogCategory.ROLE:
						_roleLogs.push(log);
						break;
					case EventLogCategory.GRAND:
						_battleLogs.push(log);
						break;
					case EventLogCategory.TRAINING:
						_traningLogs.push(log);
						break;
					case EventLogCategory.FRIENDS:
						_friendsLogs.push(log);
						break;
					case EventLogCategory.DECKS:
						_deckLogs.push(log);
						break;
					}
				
				log = null;
				}
				
			dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
			}
		
		public static function getInstance() : EventLogModel
		{
			if (_eventLogModel == null)
			{
			  _eventLogModel = new EventLogModel;
			}
			return _eventLogModel; 
		}// end function
		
		public function get roleLogs():Vector.<EventLog> 
		{
			return _roleLogs;
		}
		
		public function set roleLogs(value:Vector.<EventLog>):void 
		{
			_roleLogs = value;
		}
		
		public function get battleLogs():Vector.<EventLog> 
		{
			return _battleLogs;
		}
		
		public function set battleLogs(value:Vector.<EventLog>):void 
		{
			_battleLogs = value;
		}
		
		public function get traningLogs():Vector.<EventLog> 
		{
			return _traningLogs;
		}
		
		public function set traningLogs(value:Vector.<EventLog>):void 
		{
			_traningLogs = value;
		}
		
		public function get friendsLogs():Vector.<EventLog> 
		{
			return _friendsLogs;
		}
		
		public function set friendsLogs(value:Vector.<EventLog>):void 
		{
			_friendsLogs = value;
		}
		
		public function get deckLogs():Vector.<EventLog> 
		{
			return _deckLogs;
		}
		
		public function set deckLogs(value:Vector.<EventLog>):void 
		{
			_deckLogs = value;
		}
		
		
	}

}