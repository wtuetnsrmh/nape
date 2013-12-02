package project.model.friends 
{
	import project.config.ErrorZhCn;
	import project.events.SMZTDataChangeEvent;
	import project.model.data.DataModel;
	
	/**
	 * 好友列表模型
	 * @author bbjxl 2012
	 */
	public class FriendsModel extends DataModel 
	{
		private var _friends:Vector.<FriendsRowModel>;
		
		private static var _friendsModel:FriendsModel;
		public function FriendsModel() 
		{
			if (_friendsModel != null) {
				throw new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE);
				}
		}
		//--------------------------------------------------------
		public function updataData(param:Object):void {
			if (_friends) {
				_friends = null;
				}
			_friends = new Vector.<FriendsRowModel>();
			for (var i:String in param) {
				var temp:FriendsRowModel = new FriendsRowModel(param[i]);
				_friends.push(temp);
				temp = null;
				}
			dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
			}
		
		//--------------------------------------------------------
		public static function getInstance() : FriendsModel
		{
			if (_friendsModel == null)
			{
			  _friendsModel = new FriendsModel;
			}
			return _friendsModel; 
		}// end function
		
		public function get friends():Vector.<FriendsRowModel> 
		{
			return _friends;
		}
		
		public function set friends(value:Vector.<FriendsRowModel>):void 
		{
			_friends = value;
		}
		
	}

}