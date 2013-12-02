package project.model.event 
{
	import project.model.data.DataModel;
	
	/**
	 * 邀请好友模型
	 * id	int	奖励编号（即邀请的好友数量）
		earned	int	是否已领取1-是，0-否
	 * @author bbjxl 2013
	 */
	public class FriendInvitationGoods extends DataModel 
	{
		private var _id:int;
		private var _earned:Boolean = false;
		private var _enable:Boolean = false;//是否可领取
		public function FriendInvitationGoods() 
		{
			
		}
		
		public function setData(param:Object):void {
			_id = (param["id"] == null)?0:param["id"];
			_earned = (param["earned"]==null)?false:(param["earned"] == 1)?true:false;
			}
			
		public function get id():int 
		{
			return _id;
		}
		
		public function set id(value:int):void 
		{
			_id = value;
		}
		
		public function get earned():Boolean 
		{
			return _earned;
		}
		
		public function set earned(value:Boolean):void 
		{
			_earned = value;
		}
		
		public function get enable():Boolean 
		{
			return _enable;
		}
		
		public function set enable(value:Boolean):void 
		{
			_enable = value;
		}
		
	}

}