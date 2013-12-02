package project.model.longBao 
{
	import project.config.ErrorZhCn;
	import project.controller.SMZTController;
	import project.core.SMZTUIManager;
	import project.events.SMZTDataChangeEvent;
	import project.model.data.DataModel;
	import project.model.friends.BonusModel;
	import project.model.longBao.vo.StoryLevel;
	import project.model.ModelLocator;
	import project.view.module.scene.longbao.LongBaoScene;
	import project.view.module.scene.longbao.SmallMap;
	
	/**
	 * ...
	 * @author bbjxl 2013
	 */
	public class LongBaoModel extends DataModel 
	{
		//----------------------容器---------------------------------
		
		//-----------------------UI---------------------------------
		
		//-----------------------数据---------------------------------
		/*energy	int	剩余体力值
			maxEnergy	int	最大体力值
			regenTime	int	下次增加体力值剩余秒数
			chapter	int	当前章节编号
			search	array[StoryLevel]	可探索关卡数组
			levels	array[StoryLevel]	关卡数组
			chest	Bonus	全通宝箱奖励
			earned	int	是否已领取奖励1-是 0-否
			challengeCost 挑战关卡所需体力
			searchCost 探索所需体力

			*/
		private var _energy:int;
		private var _maxEnergy:int;
		private var _regenTime:int;
		private var _chapter:int = 0;//服务端记录的最大的一章
		private var _currentChapter:int = -1;//当前章
		private var _search:Vector.<StoryLevel>;
		private var _levels:Vector.<StoryLevel>;
		private var _chest:BonusModel;
		private var _earned:Boolean = false;
		private var _currentChallengePassId:int;//当前挑战的关卡ID
		private var _challengCost:int;
		private var _searchCost:int;
		//-----------------------事件--------------------------------
		private static var _longBaoModel:LongBaoModel;
		
		public function LongBaoModel() 
		{
			if (_longBaoModel != null) {
				throw new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE);
				}
		}
		
		/**
		 * @getChapterFlag 是否要获取当前章信息
		 * 获取当前玩家推图基本状态信息
		 */
		public function getInfo(getChapterFlag:Boolean = false):void {
			//--------------------------测试------------------------------
			/*id	int	关卡唯一编号，挑战时需要发送此参数
			level	int	关卡编号，用以定位章节地图中的关卡位置
			rank	ResultReport	历史战斗评价
			difficulty	int	难度编号，定义见关卡难度
			talks	array[Talk]	对话信息数组
			mode	int	战斗模式
			
			name	string	人物名称
			leftPic	string	左边图像
			rightPic	string	右边图像
			text	string	对白内容
			map	string	地图名称
			actor	int	当前发言者 0-无 1-左边 2-右边
			battle	int	是否发生战斗1-是 0-否
			*/
			
			/*var tempObj:Object = { id:1, level:1, difficulty:1, talks:[ { name:"人物名称", leftPic:ModelLocator.getInstance().staticURL + "images/characters/0001.png",rightPic:ModelLocator.getInstance().staticURL + "images/characters/0003.png",
			text:"对话内容对话内容对话内容对话内容对话内容",map:"地图名称",actor:1,battle:0
			},{ name:"人物名称2",
			rightPic:ModelLocator.getInstance().staticURL + "images/characters/0003.png",text:"对话内容对话内容对话内容2对话内容对话内容",map:"地图名称",actor:2,battle:0
			},{ name:"人物名称3", leftPic:ModelLocator.getInstance().staticURL + "images/characters/0002.png",
			rightPic:ModelLocator.getInstance().staticURL + "images/characters/0004.png",text:"对话内容对话内容对话内容3对话内容对话内容",map:"地图名称",actor:2,battle:1
			},{ name:"人物名称4", leftPic:ModelLocator.getInstance().staticURL + "images/characters/0002.png",
			rightPic:ModelLocator.getInstance().staticURL + "images/characters/0005.png",text:"对话内容对话内容对话内容4对话内容对话内容",map:"地图名称",actor:2,battle:0
			},{ name:"人物名称5", leftPic:ModelLocator.getInstance().staticURL + "images/characters/0002.png",
			rightPic:ModelLocator.getInstance().staticURL + "images/characters/0006.png",text:"对话内容对话内容对话内5容对话内容对话内容",map:"地图名称",actor:2,battle:0
			}],mode:4}
			var tempsl:StoryLevel = new StoryLevel(tempObj);
			SMZTUIManager.getInstance().longBaoScene.dramaPlayer.currentStoryLevel = tempsl;
			return;*/
			//--------------------------------------------------------
			
			SMZTController.getInstance().getLongBaoInfo(function(param:Object):void {
				energy = param["energy"];
				_maxEnergy = param["maxEnergy"];
				_regenTime = param["regenTime"];
				_challengCost = param["challengeCost"];
				_searchCost = param["searchCost"];
				
				if (_chapter != param["chapter"]) {
					_chapter = param["chapter"];
					_currentChapter = _chapter;//第一次当前章设为最大一章
					}
				
				if (_chapter == 0) {
					//如果是第一次进龙宝,即序章对话时,一定要请求章信息
					currentChapter = _chapter;
					return;
					}
					
				if (getChapterFlag) {
					currentChapter = _currentChapter;
					}
				} );
			}
		
		public static function getInstance() : LongBaoModel
		{
			if (_longBaoModel == null)
			{
			  _longBaoModel = new LongBaoModel;
			}
			return _longBaoModel; 
		}// end function
		
		public function get energy():int 
		{
			return _energy;
		}
		
		public function set energy(value:int):void 
		{
			if (_energy != value) {
				_energy = value;
				SmallMap.getInstance().updataPowerUI();
				}
		}
		
		public function get maxEnergy():int 
		{
			return _maxEnergy;
		}
		
		public function set maxEnergy(value:int):void 
		{
			_maxEnergy = value;
		}
		
		public function get regenTime():int 
		{
			return _regenTime;
		}
		
		public function set regenTime(value:int):void 
		{
			_regenTime = value;
		}
		
		public function get chapter():int 
		{
			return _chapter;
		}
		
		public function set chapter(value:int):void 
		{
			_chapter = value;
			
		}
		
		public function get levels():Vector.<StoryLevel> 
		{
			return _levels;
		}
		
		public function set levels(value:Vector.<StoryLevel>):void 
		{
			_levels = value;
		}
		
		public function get chest():BonusModel 
		{
			return _chest;
		}
		
		public function set chest(value:BonusModel):void 
		{
			_chest = value;
		}
		
		public function get earned():Boolean 
		{
			return _earned;
		}
		
		public function set earned(value:Boolean):void 
		{
			_earned = value;
		}
		
		public function get currentChallengePassId():int 
		{
			return _currentChallengePassId;
		}
		
		public function set currentChallengePassId(value:int):void 
		{
			_currentChallengePassId = value;
		}
		
		public function get currentChapter():int 
		{
			return _currentChapter;
		}
		
		public function set currentChapter(value:int):void 
		{
			_currentChapter = value;
			SMZTController.getInstance().getChapterInfo(value, function(param:Object):void {
				_search = null;
				_search = new Vector.<StoryLevel>();
				var tempSh:Array = param["search"];
				var storyLevel:StoryLevel
				for (var i:String in tempSh) {
					storyLevel = new StoryLevel(tempSh[i]);
					_search.push(storyLevel);
					storyLevel = null;
					}
					
				_levels = null;
				_levels = new Vector.<StoryLevel>();
				var temp:Array = param["levels"];
				for (var i:String in temp) {
					storyLevel = new StoryLevel(temp[i]);
					_levels.push(storyLevel);
					storyLevel = null;
					}
					
				_chest = new BonusModel();
				_chest.setData(param["chest"]);
				_earned = (param["earned"] == 1)?true:false;
				if (_currentChapter == 0) {
					//如果是序章,播放序章对话
					SMZTUIManager.getInstance().longBaoScene.dramaPlayer.currentStoryLevel = _levels[0];
					
					}
				dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
				})
		}
		
		public function get challengCost():int 
		{
			return _challengCost;
		}
		
		public function set challengCost(value:int):void 
		{
			_challengCost = value;
		}
		
		public function get searchCost():int 
		{
			return _searchCost;
		}
		
		public function set searchCost(value:int):void 
		{
			_searchCost = value;
		}
		
		public function get search():Vector.<StoryLevel> 
		{
			return _search;
		}
		
		public function set search(value:Vector.<StoryLevel>):void 
		{
			_search = value;
		}
	}

}