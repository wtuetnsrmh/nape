package project.model.friends 
{
	import project.config.ErrorZhCn;
	import project.events.SMZTDataChangeEvent;
	import project.model.data.DataModel;
	import project.model.data.Statistics;
	import project.model.data.User;
	
	/**
	 * 好友信息模型
	 * @author bbjxl 2012
	 */
	public class FriendsInforModel extends DataModel 
	{
		private var _user:User;
		private var _statistics:Statistics;
		private static var _friendsInforModel:FriendsInforModel;
		public function FriendsInforModel() 
		{
			if (_friendsInforModel != null) {
				throw new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE);
				}
		}
		//--------------------------------------------------------
		public function updataData(param:Object):void {
			_user = new User(param.user);
			_statistics = new Statistics(param.statistic);
			dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
			}
		
		//--------------------------------------------------------
		public static function getInstance() : FriendsInforModel
		{
			if (_friendsInforModel == null)
			{
			  _friendsInforModel = new FriendsInforModel;
			}
			return _friendsInforModel; 
		}// end function
		
		public function get user():User 
		{
			return _user;
		}
		
		public function set user(value:User):void 
		{
			_user = value;
		}
		
		public function get statistics():Statistics 
		{
			return _statistics;
		}
		
		public function set statistics(value:Statistics):void 
		{
			_statistics = value;
		}

		
	}

}