package project.model.rank
{
	import project.model.data.DataModel;
	import project.model.data.User;
	
	/**
	 *4.	卡牌排行
	 * @author bbjxl 2013
	 */
	public class CardRankItem extends DataModel
	{
		/*rank	int	排行
		   user	User	玩家信息
		   power	int	战斗力统计
		 */
		private var _rank:int;
		private var _user:User;
		private var _power:int;
		public function CardRankItem(param:Object)
		{
			_rank = (param["rank"] == null)?0:param["rank"];
			_user = (param["user"] == null)?null:new User(param["user"]);
			_power = (param["power"] == null)?0:param["power"];
		}
		
		public function get rank():int 
		{
			return _rank;
		}
		
		public function set rank(value:int):void 
		{
			_rank = value;
		}
		
		public function get user():User 
		{
			return _user;
		}
		
		public function set user(value:User):void 
		{
			_user = value;
		}
		
		public function get power():int 
		{
			return _power;
		}
		
		public function set power(value:int):void 
		{
			_power = value;
		}
	
	}

}