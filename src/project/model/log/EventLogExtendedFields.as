package project.model.log
{
	import project.model.data.DataModel;
	import project.model.data.User;
	import project.model.friends.BonusModel;
	
	/**
	 * ...
	 * @author bbjxl 2013
	 */
	public class EventLogExtendedFields extends DataModel
	{
		private var _lv:int;
		private var _user:User;
		private var _win:int;
		private var _bonus:BonusModel
		private var _lotteryId:int;
		private var _battleId:String;
		private var _arena:String;
		private var _saver:User;
		private var _slaver:User;
		private var _slave:User;
		private var _card:int;
		private var _star:int;
		private var _card1:int;
		private var _card2:int;
		
		public function EventLogExtendedFields(param:Object, type:int)
		{
			switch (type)
			{
				case 1: 
					//1	玩家升级	lv	int	等级
					_lv = (param["lv"] == null) ? 0 : param["lv"];
					break;
				case 2: 
					/*2	挑战战争学院	user	User	对手信息
					   win	int	是否获胜，1-胜利，0-失败
					   bonus	Bonus	奖励内容
					   lotteryId	int	抽奖编号（可为空）
					 battleId	string	战斗编号*/
					_user = (param["user"] == null) ? null : new User(param["user"]);
					_win = (param["win"] == null) ? 0 : param["win"];
					_lotteryId = (param["lotteryID"] == null) ? 0 : param["lotteryID"];
					_battleId = (param["battleId"] == null) ? null : param["battleId"];
					if (param["bonus"] == null) {
						_bonus = null;
						}else {
							_bonus = new BonusModel();
							_bonus.setData(param["bonus"]);
							_bonus.toObject();
							}
					break;
				case 3: 
					/*3	竞技场挑战	arena	string	竞技场名称
					   user	User	对手信息
					   win	int	是否获胜，1-胜利，0-失败
					 battleId	string	战斗编号*/
					 _battleId = (param["battleId"] == null) ? null : param["battleId"];
					 _win = (param["win"] == null) ? 0 : param["win"];
					 _user = (param["user"] == null) ? null : new User(param["user"]);
					 _arena=(param["arena"] == null) ? "" : param["arena"];
					break;
				case 4: 
					/*4	失去竞技场擂主	arena	string	竞技场名称
					   win	int	连胜次数
					   user	User	对手信息
					 battleId	string	战斗编号*/
					  _battleId = (param["battleId"] == null) ? null : param["battleId"];
					 _win = (param["win"] == null) ? 0 : param["win"];
					 _user = (param["user"] == null) ? null : new User(param["user"]);
					 _arena=(param["arena"] == null) ? "" : param["arena"];
					break;
				case 5: 
					/*5	挑战宿命之塔	lv	int	宿命之塔塔层
					   win	int	是否获胜，1-胜利，0-失败
					 battleId	string	战斗编号*/
					  _battleId = (param["battleId"] == null) ? null : param["battleId"];
					 _win = (param["win"] == null) ? 0 : param["win"];
					 _lv = (param["lv"] == null) ? 0 : param["lv"];
					break;
				case 6: 
					/*6	好友挑战自己	user	User	对手信息
					   win	int	自己是否获胜，1-胜利，0-失败
					 battleId	string	战斗编号*/
					  _battleId = (param["battleId"] == null) ? null : param["battleId"];
					 _win = (param["win"] == null) ? 0 : param["win"];
					 _user = (param["user"] == null) ? null : new User(param["user"]);
					break;
				case 7: 
					/*7	好友奴役自己	user	User	对手信息
					   win	int	是否获胜，1-胜利，0-失败
					 battleId	string	战斗编号*/
					 _battleId = (param["battleId"] == null) ? null : param["battleId"];
					 _win = (param["win"] == null) ? 0 : param["win"];
					 _user = (param["user"] == null) ? null : new User(param["user"]);
					break;
				case 8: 
					/* 8	好友解救自己	saver	User	发起解救的玩家信息
					   slaver	User	原奴隶主玩家信息
					 battleId	string	战斗编号*/
					 _battleId = (param["battleId"] == null) ? null : param["battleId"];
					 _slaver = (param["slaver"] == null) ? null : new User(param["slaver"]);
					 _saver = (param["saver"] == null) ? null : new User(param["saver"]);
					break;
				case 9: 
					/*9	好友解救我的奴隶	saver	User	发起解救的玩家信息
					   slave	User	奴隶玩家信息
					   win	int	是否解救成功，1-成功，0-失败
					 battleId	string	战斗编号*/
					 _win = (param["win"] == null) ? 0 : param["win"];
					 _battleId = (param["battleId"] == null) ? null : param["battleId"];
					 _slave = (param["slave"] == null) ? null : new User(param["slave"]);
					 _saver = (param["saver"] == null) ? null : new User(param["saver"]);
					break;
				case 10: 
					/*10	奴隶工作完成奖励	slave	User	奴隶玩家信息
					 bonus	Bonus	奖励信息*/
					 _slave = (param["slave"] == null) ? null : new User(param["slave"]);
					 if (param["bonus"] == null) {
						_bonus = null;
						}else {
							_bonus = new BonusModel();
							_bonus.setData(param["bonus"]);
							_bonus.toObject();
							}
					break;
				case 11: 
					/*11	奴隶被解救奖励	saver	User	发起解救的玩家信息
					   slave	User	奴隶玩家信息
					 bonus	Bonus	奖励信息*/
					 _saver = (param["saver"] == null) ? null : new User(param["saver"]);
					 _slave = (param["slave"] == null) ? null : new User(param["slave"]);
					 if (param["bonus"] == null) {
						_bonus = null;
						}else {
							_bonus = new BonusModel();
							_bonus.setData(param["bonus"]);
							_bonus.toObject();
							}
					break;
				case 12: 
					//12	获得宿命之塔奖励	bonus	Bonus	奖励信息
					if (param["bonus"] == null) {
						_bonus = null;
						}else {
							_bonus = new BonusModel();
							_bonus.setData(param["bonus"]);
							_bonus.toObject();
							}
					break;
				case 13: 
					//13	领取签到奖励	bonus	Bonus	奖励信息
					if (param["bonus"] == null) {
						_bonus = null;
						}else {
							_bonus = new BonusModel();
							_bonus.setData(param["bonus"]);
							_bonus.toObject();
							}
					break;
				case 14: 
					//14	领取活跃宝箱	bonus	Bonus	奖励信息
					if (param["bonus"] == null) {
						_bonus = null;
						}else {
							_bonus = new BonusModel();
							_bonus.setData(param["bonus"]);
							_bonus.toObject();
							}
					break;
				case 15: 
					//15	购买商品	bonus	Bonus	奖励信息
					if (param["bonus"] == null) {
						_bonus = null;
						}else {
							_bonus = new BonusModel();
							_bonus.setData(param["bonus"]);
							_bonus.toObject();
							}
					break;
				case 16: 
					/*16	升级卡牌星数	card	int	卡牌编号
					 star	int	星级*/
					_card = (param["card"] == null) ? 0 : param["card"];
					_star = (param["star"] == null) ? 0 : param["star"];
					break;
				case 17: 
					/* 17	卡牌进化	card1	int	原卡牌编号
					 card2	int	进化后的卡牌编号*/
					_card1 = (param["card1"] == null) ? 0 : param["card1"];
					_card2 = (param["card2"] == null) ? 0 : param["card2"];
					break;
				case 18: 
					//18	开启卡包	bonus	Bonus	奖励信息
					if (param["bonus"] == null) {
						_bonus = null;
						}else {
							_bonus = new BonusModel();
							_bonus.setData(param["bonus"]);
							_bonus.toObject();
							}
					break;
				case 19: 
					//19	酒馆招募	card	int	卡牌编号
					_card = (param["card"] == null) ? 0 : param["card"];
					break;
				case 20: 
					//20 抽奖中获得
					if (param["bonus"] == null) {
						_bonus = null;
						}else {
							_bonus = new BonusModel();
							_bonus.setData(param["bonus"]);
							_bonus.toObject();
							}
					break;
			}
		}
		
		public function get lv():int 
		{
			return _lv;
		}
		
		public function set lv(value:int):void 
		{
			_lv = value;
		}
		
		public function get user():User 
		{
			return _user;
		}
		
		public function set user(value:User):void 
		{
			_user = value;
		}
		
		public function get win():int 
		{
			return _win;
		}
		
		public function set win(value:int):void 
		{
			_win = value;
		}
		
		public function get bonus():BonusModel 
		{
			return _bonus;
		}
		
		public function set bonus(value:BonusModel):void 
		{
			_bonus = value;
		}
		
		public function get lotteryId():int 
		{
			return _lotteryId;
		}
		
		public function set lotteryId(value:int):void 
		{
			_lotteryId = value;
		}
		
		public function get battleId():String 
		{
			return _battleId;
		}
		
		public function set battleId(value:String):void 
		{
			_battleId = value;
		}
		
		public function get arena():String 
		{
			return _arena;
		}
		
		public function set arena(value:String):void 
		{
			_arena = value;
		}
		
		public function get saver():User 
		{
			return _saver;
		}
		
		public function set saver(value:User):void 
		{
			_saver = value;
		}
		
		public function get slaver():User 
		{
			return _slaver;
		}
		
		public function set slaver(value:User):void 
		{
			_slaver = value;
		}
		
		public function get slave():User 
		{
			return _slave;
		}
		
		public function set slave(value:User):void 
		{
			_slave = value;
		}
		
		public function get card():int 
		{
			return _card;
		}
		
		public function set card(value:int):void 
		{
			_card = value;
		}
		
		public function get star():int 
		{
			return _star;
		}
		
		public function set star(value:int):void 
		{
			_star = value;
		}
		
		public function get card1():int 
		{
			return _card1;
		}
		
		public function set card1(value:int):void 
		{
			_card1 = value;
		}
		
		public function get card2():int 
		{
			return _card2;
		}
		
		public function set card2(value:int):void 
		{
			_card2 = value;
		}
	
	}

}