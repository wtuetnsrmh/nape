package project.model.chat
{
	import project.debug.Debug;
	import project.model.data.DataModel;
	import project.model.data.User;
	import project.model.item.IModel;
	
	/**
	 *广播消息子模型
	 * @author bbjxl 2013
	 */
	public class Broadcast extends DataModel implements IModel
	{
		/*
		 * 1	全服文本通告	msg	string	全服文本公告，一般用于临时通知
			2	玩家获得卡牌	user	User	目标玩家
				cardId	int	卡牌编号
			3	玩家获得成就	user	User	目标玩家
				achvId	int	成就编号
			4	竞技场连胜	user	User	擂主玩家
				win	int	连胜场次
			5	竞技场挑战成功	user	User	挑战者玩家
				loser	User	原擂主玩家
			6	使用卡包获得卡牌	user	User	目标玩家
				cardId	int	卡牌编号
				itemId	int	物品编号
			7	酒馆招募获得卡牌	user	User	目标玩家
				cardId	int	卡牌编号
			8	宿命之塔过关	user	User	玩家
				lv	int	塔层编号

		
		 */
		public static const ALLSERVER:int = 1;
		public static const GETCARD:int = 2;
		public static const GETACHV:int = 3;
		public static const ARENA_WIN:int = 4;
		public static const ARENA_CHALLENGE:int = 5;
		public static const USER_CARDS:int = 6;
		public static const TAVERN:int = 7;
		public static const TOWER:int = 8;
		 
		private var _type:int = 0;
		private var _msg:String;
		private var _user:User;
		private var _cardId:int;
		private var _itemId:int;
		private var _achvId:int;
		private var _win:int;
		private var _loser:User;
		private var _lv:int;
		
		public function Broadcast(param:Object)
		{
			_type = (param["type"] == null)?0:param["type"];
			switch(_type) {
				case ALLSERVER:
					_msg=(param["msg"] == null)?"":param["msg"];
					break;
				case GETCARD:
					_user = new User(param["user"]);
					_cardId=(param["cardId"] == null)?0:param["cardId"];
					break;
				case GETACHV:
					_user = new User(param["user"]);
					_achvId=(param["achvId"] == null)?0:param["achvId"];
					break;
				case ARENA_WIN:
					_user = new User(param["user"]);
					_win=(param["win"] == null)?0:param["win"];
					break;
				case ARENA_CHALLENGE:
					_user = new User(param["user"]);
					_loser= new User(param["loser"]);
					break;
				case USER_CARDS:
					_user = new User(param["user"]);
					_cardId = (param["cardId"] == null)?0:param["cardId"];
					_itemId=(param["itemId"] == null)?0:param["itemId"];
					break;
				case TAVERN:
					_user = new User(param["user"]);
					_cardId = (param["cardId"] == null)?0:param["cardId"];
					break;
				case TOWER:
					_user = new User(param["user"]);
					_lv = (param["lv"] == null)?0:param["lv"];
					break;
				default:
					Debug.log("广播出错！")
					break;
				}
		}
		
		public function get type():int 
		{
			return _type;
		}
		
		public function set type(value:int):void 
		{
			_type = value;
		}
		
		public function get msg():String 
		{
			return _msg;
		}
		
		public function set msg(value:String):void 
		{
			_msg = value;
		}
		
		public function get user():User 
		{
			return _user;
		}
		
		public function set user(value:User):void 
		{
			_user = value;
		}
		
		public function get cardId():int 
		{
			return _cardId;
		}
		
		public function set cardId(value:int):void 
		{
			_cardId = value;
		}
		
		public function get achvId():int 
		{
			return _achvId;
		}
		
		public function set achvId(value:int):void 
		{
			_achvId = value;
		}
		
		public function get win():int 
		{
			return _win;
		}
		
		public function set win(value:int):void 
		{
			_win = value;
		}
		
		public function get loser():User 
		{
			return _loser;
		}
		
		public function set loser(value:User):void 
		{
			_loser = value;
		}
		
		public function get itemId():int 
		{
			return _itemId;
		}
		
		public function set itemId(value:int):void 
		{
			_itemId = value;
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