package project.model.rank
{
	import project.model.data.DataModel;
	import project.model.data.User;
	
	/**
	 * 2.	等级排行
	 * @author bbjxl 2013
	 */
	public class UserRankItem extends DataModel
	{
		/*rank	int	排行
		   user	User	玩家信息
		   cards	int	卡牌数量
		 */
		private var _rank:int;
		private var _user:User;
		//private var _cards:int;
		public function UserRankItem(param:Object)
		{
			_rank = (param["rank"] == null)?0:param["rank"];
			_user = (param["user"] == null)?null:new User(param["user"]);
			//_cards = (param["cards"] == null)?0:param["cards"];
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
		
		/*public function get cards():int 
		{
			return _cards;
		}
		
		public function set cards(value:int):void 
		{
			_cards = value;
		}*/
	
	}

}