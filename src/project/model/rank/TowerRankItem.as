package project.model.rank
{
	import project.model.data.DataModel;
	import project.model.data.User;
	
	/**
	 * 3.	宿命之塔排行
	 * @author bbjxl 2013
	 */
	public class TowerRankItem extends DataModel
	{
		/*rank	int	排行
		   user	User	玩家信息
		   lv	int	宿命之塔最高塔层记录
		 */
		private var _rank:int;
		private var _user:User;
		private var _lv:int;
		public function TowerRankItem(param:Object)
		{
			_rank = (param["rank"] == null)?0:param["rank"];
			_user = (param["user"] == null)?null:new User(param["user"]);
			_lv = (param["lv"] == null)?0:param["lv"];
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
		
		public function get lv():int 
		{
			return _lv;
		}
		
		public function set lv(value:int):void 
		{
			_lv = value;
		}
	
	}

}