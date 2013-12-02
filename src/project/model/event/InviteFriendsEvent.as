package project.model.event 
{
	import project.model.data.DataModel;
	import flash.events.IEventDispatcher;
	import project.controller.SMZTController;
	import project.core.SMZTUIManager;
	import project.model.friends.BonusModel;
	/**
	 * 邀请好友活动
	 * @author bbjxl 2013
	 */
	public class InviteFriendsEvent extends DataModel implements IEventModel 
	{
		
		private var _getAward:Function;
		private var _getEventInfor:Function;
		public function InviteFriendsEvent() 
		{
			//领取指定条件编号的奖励。
			_getAward = function(id,callback:Function=null):void {
				SMZTController.getInstance().getInviteFriendEventAward(id, function (param:Object):void {
					var tempBM:BonusModel = new BonusModel();
					tempBM.setData(param);
					SMZTUIManager.getInstance().manageShowBonus.showBonus(tempBM);
					param = null;
					//SMZTUIManager.getInstance().mainPane.refreshSelfData();//刷新个人数据
					if (callback != null) {
						callback.call(null);//回调刷新活动界面
						}
					});
				}
			
			_getEventInfor = SMZTController.getInstance().getInviteFriendEventInfor;
		}
		
		public function get getAward():Function 
		{
			return _getAward;
		}
		
		public function set getAward(value:Function):void 
		{
			_getAward = value;
		}
		
		public function get getEventInfor():Function 
		{
			return _getEventInfor;
		}
		
		public function set getEventInfor(value:Function):void 
		{
			_getEventInfor = value;
		}
		
	}

}