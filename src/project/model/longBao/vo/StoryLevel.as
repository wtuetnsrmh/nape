package project.model.longBao.vo 
{
	import project.model.data.DataModel;
	import project.model.friends.BonusModel;
	import project.model.tower.ResultReport;
	
	/**
	 * ...
	 * @author bbjxl 2013
	 */
	public class StoryLevel extends DataModel 
	{
		/*id	int	关卡唯一编号，挑战时需要发送此参数
			level	int	关卡编号，用以定位章节地图中的关卡位置
			rank	ResultReport	历史战斗评价
			passRank	ResultReport	过关评价要求
			difficulty	int	难度编号，定义见关卡难度
			talks	array[Talk]	对话信息数组
			mode	int	战斗模式
			passBonus	Bonus	过关奖励
			searchBonus	Bonus	探索奖励
			*/
		private var _id:int;
		private var _level:int;
		private var _rank:ResultReport;
		private var _passRank:ResultReport;
		private var _difficulty:int;
		private var _talks:Vector.<Talk>;
		private var _mode:int;
		private var _searchBonus:BonusModel;
		private var _passBonus:BonusModel;
		public function StoryLevel(param:Object) 
		{
			_id = (param["id"]==null)?0:param["id"];
			_level = (param["level"]==null)?0:param["level"];
			_passRank = new ResultReport();
			_passRank.result=(param["passRank"]==null)?ResultReport.NULL:param["passRank"];
			_rank = new ResultReport();
			_rank.result=(param["rank"]==null)?ResultReport.NULL:param["rank"];
			_difficulty = (param["difficulty"] == null)?Difficulty.EASY:param["difficulty"];
			_mode = (param["mode"] == null)?0:param["mode"];
			if(param["searchBonus"]){
			_searchBonus = new BonusModel();
			_searchBonus.setData(param["searchBonus"]);
			}
			if(param["passBonus"]){
			_passBonus = new BonusModel();
			_passBonus.setData(param["passBonus"]);
			}
			if (param["talks"]) {
				var temp:Array = param["talks"];
				_talks = new Vector.<Talk>();
				for (var i:String in temp) {
					var talk:Talk = new Talk(temp[i]);
					_talks.push(talk);
					talk = null;
					}
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
		
		public function get difficulty():int 
		{
			return _difficulty;
		}
		
		public function set difficulty(value:int):void 
		{
			_difficulty = value;
		}
		
		public function get talks():Vector.<Talk> 
		{
			return _talks;
		}
		
		public function set talks(value:Vector.<Talk>):void 
		{
			_talks = value;
		}
		
		public function get mode():int 
		{
			return _mode;
		}
		
		public function set mode(value:int):void 
		{
			_mode = value;
		}
		
		public function get level():int 
		{
			return _level;
		}
		
		public function set level(value:int):void 
		{
			_level = value;
		}
		
		public function get rank():ResultReport 
		{
			return _rank;
		}
		
		public function set rank(value:ResultReport):void 
		{
			_rank = value;
		}
		
		public function get searchBonus():BonusModel 
		{
			return _searchBonus;
		}
		
		public function set searchBonus(value:BonusModel):void 
		{
			_searchBonus = value;
		}
		
		public function get passBonus():BonusModel 
		{
			return _passBonus;
		}
		
		public function set passBonus(value:BonusModel):void 
		{
			_passBonus = value;
		}
		
		public function get passRank():ResultReport 
		{
			return _passRank;
		}
		
		public function set passRank(value:ResultReport):void 
		{
			_passRank = value;
		}
		
	}

}