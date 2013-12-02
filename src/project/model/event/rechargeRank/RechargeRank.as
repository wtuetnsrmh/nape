package project.model.event.rechargeRank
{
	import project.debug.Debug;
	import project.model.data.DataModel;
	import project.model.data.User;
	
	
	
	
	//import project.model.friends.BonusModel;
	
	/**
	 * 充值排名活动
	 * @author bbjxl 2013
	 */
	public class RechargeRank extends DataModel
	{
		/*id	int	排名编号
		   user	User	玩家信息（可能为空）
		   crystal int   此玩家充值的水晶数
		 bonus	Bonus	排名奖励信息*/
		
		private var _id:int;
		private var _user:User;
		private var _cardsId:Vector.<Object>;
		private var _crystal:int;
		
		
		public function RechargeRank()
		{
		
		}
		
		public function setData(param:Object):void
		{
			//Debug.log("param=" + param)
			_id = param["id"];
			//Debug.log("_id=" + _id)
			_crystal = (param["crystal"] == null) ? 0 : param["crystal"];
			_user = (param["user"] == null) ? null : new User(param["user"]);
			var _bonus:Object = param["bonus"];
			//Debug.log("_bonus=" + _bonus)
			if (_bonus)
			{
				var tempCard:Object = _bonus["cards"];
				//Debug.log("tempCard=" + tempCard)
				if (tempCard != null)
				{
					_cardsId = new Vector.<Object>();
					for (var i:String in tempCard)
					{
						var temp:Object = new Object();
						temp.id = int(i);
						temp.number = tempCard[i];
						_cardsId.push(temp);
						temp = null;
					}
				}
				_bonus = null;
				tempCard = null;
			}
		}
		
		public function get id():int
		{
			return _id;
		}
		
		public function set id(value:int):void
		{
			_id = value;
		}
		
		public function get user():User
		{
			return _user;
		}
		
		public function set user(value:User):void
		{
			_user = value;
		}
		
		public function get crystal():int
		{
			return _crystal;
		}
		
		public function set crystal(value:int):void
		{
			_crystal = value;
		}
		
		public function get cardsId():Vector.<Object>
		{
			return _cardsId;
		}
		
		public function set cardsId(value:Vector.<Object>):void
		{
			_cardsId = value;
		}
	
	}

}