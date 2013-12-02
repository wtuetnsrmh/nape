package project.controller
{
	import flash.events.EventDispatcher;
	import flash.utils.Dictionary;
	import project.config.ErrorZhCn;
	import project.config.ItemConfig;
	import project.debug.Debug;
	import project.model.newBie.NewBieModel;
	import project.model.newBie.NewBieModelId;
	import project.view.module.helppane.NewbiePane;
	
	/**
	 * 新手引导控制类
	 * @author bbjxl 2013
	 */
	public class NewBieControler extends EventDispatcher
	{
		public static const BATTEL:int = 18;//战斗中涉及到stepId
		public static const PAUSE:int = 19;//点暂停时出现的stepId
		public static const EDIT_SLOD:int = 31;//编辑卡组中选择佣兵涉及到stepId
		public static const EDIT_TAIL:int = 32;//编辑卡组中选择装备涉及到stepId
		public static const EDIT_MIT:int = 33;//编辑卡组中选择卷轴涉及到stepId
		public static const EDIT_SAVE:int = 34;//编辑卡组可以点保存按钮时涉及到stepId
		public static const BUY_GOLD_OVER:int = 39;//购买金币卡包后关闭提示窗口时涉及到stepId
		public static const ENTERED_TOWER:int = 8;//如果进入塔后没战斗就退出，再进入所要跳到的引导stepId
		public static const CHAT_CLOSE:int = 42;//关闭聊天面板需要进入下一步引导的当前stepId
		//public static const MOVE_TO_READY_FIRST:int = 12;//第一张守方卡移到等待区时要触发进入下一步的当前stepId
		
		//--------------------新手引导，用于各引导只判断一次------------------------------------
		public var _newBieHp:Boolean = false;//第一个去血
		public var _newBieSP:Boolean = false;//第一个准备值为０
		public var _newBieMoveToReady:Boolean = false;//第一张守方卡移到等待区
		public var _newBiePopCard:Boolean = false;//单击弹出卡
		public var _newBieHideCard:Boolean = false;//弹出卡单击隐藏
		public var _newBieMoveToBattle:Boolean = false;//攻方移入战斗区显示攻击值属性
		public var _newBieStatueFirst:Boolean = false;//第一次女神像受伤
		public var _newBieSelecteRace:Boolean = false;//第一次选种族
		public var _newBieBatlleStar:Boolean = false;//第一战斗开始
		public var _newBieBatlleOver:Boolean = false;//第一战斗结束
		public var _newBieEnterTower:Boolean = false;//第一获取塔数据
		
		//--------------------------------------------------------
		
		
		private var _currentNewBieModle:NewBieModel; //当前进度
		private var _totalNewBies:Dictionary; //服务端返回的总记录
		private var _totalConfigDic:Dictionary; //配置文件中的所有模块引导配置
		private var _finishDic:Dictionary;//存储所有模块完成情况
		
		private var _totalModelFinish:Boolean = false;//是否所有的模块都完成，即新手引导结束
		private static var _newBieControler:NewBieControler;
		
		public function NewBieControler()
		{
			if (_newBieControler != null)
			{
				throw Error(new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE));
			}
			_finishDic = new Dictionary();
			_totalConfigDic = new Dictionary();
			config();
			
			_totalNewBies = new Dictionary();
		}
		
		public function config():void
		{
			_totalConfigDic[NewBieModelId.FISET] = decode(NewBieModelId.FISET);
			_totalConfigDic[NewBieModelId.TRAINING] = decode(NewBieModelId.TRAINING);
			_totalConfigDic[NewBieModelId.DEFFENCE] = decode(NewBieModelId.DEFFENCE);
			_totalConfigDic[NewBieModelId.TAVER] = decode(NewBieModelId.TAVER);
			_totalConfigDic[NewBieModelId.MIX] = decode(NewBieModelId.MIX);
			_totalConfigDic[NewBieModelId.SLAVE] = decode(NewBieModelId.SLAVE);
		
		}
		
		/**
		 * 根据模块ＩＤ返回解析后的队伍
		 * @return
		 */
		private function decode(modelId:int):Vector.<NewBieModel>
		{
			var loc:XML;
			var tempNBS:Vector.<NewBieModel> = new Vector.<NewBieModel>();
			for each (loc in ItemConfig.NEWBIE_CONFIG.Model)
			{
				if (loc.@ID == modelId)
				{
					var levelXml:XML;
					for each (levelXml in loc.Level)
					{
						var stepXml:XML;
						for each (stepXml in levelXml.Step)
						{
							var temp:NewBieModel = new NewBieModel();
							temp.modelId = modelId;
							temp.levelId = levelXml.@ID;
							temp.step = stepXml.@Frame;
							temp.stepId = stepXml.@ID;
							temp.levelClassName = levelXml.@ClassName;
							tempNBS.push(temp);
							temp = null;
						}
					}
					break;
				}
			}
			
			levelXml = null;
			loc = null;
			stepXml = null;
			return tempNBS;
		}
		
		/**
		 * 判断当前进行的模块是否已经全完成
		 * @param	param
		 */
		public function judgestCurrentModelCompelte():Boolean
		{
			//如果当前进度的模块步数ID等于该模块最后一步的ＩＤ，则表示该模块完成
			if (_currentNewBieModle.stepId == _totalConfigDic[_totalConfigDic[_currentNewBieModle.modelId].length - 1].stepId)
			{
				return true;
			}
			return false;
		}
		
		/**
		 * 判断指定的模块是否已经全完成
		 * 服务端：模块以１开始，进度(levelid)以０开始
		 * @param	param
		 */
		public function judgestCompelteByID(levelid:int, modelid:int):Boolean
		{
			//如果比最后一步所属的子阶段ＩＤ还大，表示这个模块完成
			if (levelid > _totalConfigDic[modelid][_totalConfigDic[modelid].length - 1].levelId)
			{
				return true;
			}
			return false;
		}
		
		/**
		 * 初始化服务端返回的数据
		 * @param	param
		 */
		public function setData(param:Object):void
		{
			//这里存的是各模块的最后一个完成的子阶段levelId,0表示没有开始
			_totalNewBies[NewBieModelId.FISET] = (param[NewBieModelId.FISET] == null)?0:param[NewBieModelId.FISET];
			_totalNewBies[NewBieModelId.TRAINING] =(param[NewBieModelId.TRAINING] == null)?0:param[NewBieModelId.TRAINING];
			_totalNewBies[NewBieModelId.DEFFENCE] =(param[NewBieModelId.DEFFENCE] == null)?0:param[NewBieModelId.DEFFENCE];
			_totalNewBies[NewBieModelId.TAVER] = (param[NewBieModelId.TAVER] == null)?0:param[NewBieModelId.TAVER];
			_totalNewBies[NewBieModelId.MIX] =(param[NewBieModelId.MIX] == null)?0:param[NewBieModelId.MIX];
			_totalNewBies[NewBieModelId.SLAVE] = (param[NewBieModelId.SLAVE] == null)?0:param[NewBieModelId.SLAVE];
			
			
			setFinishDic();
			
			_currentNewBieModle = new NewBieModel();
			//先判断第一模块(第一阶段)是否完成，如果没完成则进行第一模块的引导
			if (!_finishDic[NewBieModelId.FISET])
			{
				_currentNewBieModle = findModelById(_totalNewBies[NewBieModelId.FISET], NewBieModelId.FISET);
				if (_currentNewBieModle == null ) {
					Debug.log("新手引导一阶段出错：当前进度对应配置文件中没有找到stepId对应的数据，stepId=" + _totalNewBies[NewBieModelId.FISET]);
					//重新开始引导
					currentNewBieModle = findModelById(0,NewBieModelId.FISET);
					return;
					}
			}
		}
		
		/**
		 * 初始化数据完后调用该方法，显示当前步的引导
		 */
		public function refreshByValue(modelid:int = -1, levelid:int = -1, stepid:int = -1):void {
			if(modelid!=-1)
			_currentNewBieModle.modelId = modelid;
			if(levelid!=-1)
			_currentNewBieModle.levelId = levelid;
			if (stepid != -1) {
				var tempNBM:NewBieModel = findModelByStepId(stepid, _currentNewBieModle.modelId);
				var tempid:int = tempNBM.step;
				_currentNewBieModle.levelClassName = tempNBM.levelClassName;
				_currentNewBieModle.step = tempid;
				_currentNewBieModle.stepId = stepid;
				tempNBM = null;
				}
			refresh();
			}
			
		/**
		 * 初始化数据完后调用该方法，显示当前步的引导
		 */
		public function refresh():void {
			currentNewBieModle = _currentNewBieModle;
			}
		
		/**
		 * 每个模块的触发nextStep的事件，都要先判断下当前所在的模块是否已经完成，未完成才调用该方法
		 * 下一步
		 * @param	levelid
		 * @param	modelid
		 * @return
		 */
		public function nextStep():void {
			var temp:NewBieModel = findModelByStepId(_currentNewBieModle.stepId + 1, _currentNewBieModle.modelId);
			if (temp) {
				currentNewBieModle = temp;
				temp = null;
				}else {
					//没找到表示已经是最后一步了，该模块完成
					setModelFinishById(_currentNewBieModle.modelId);
					//服务该模块记录加一
					SMZTController.getInstance().SetNext(_currentNewBieModle.modelId, function():void {
						setModelFinishById(_currentNewBieModle.modelId);
						NewbiePane.getInstance().hide();
						Debug.log("模块完成");
						});
					}
			}
		
		/**
		 * 根据stepId找到相应步的模型
		 */
		private function findModelByStepId(stepid:int,modelid:int):NewBieModel {
			for (var i:String in _totalConfigDic[modelid]) {
				if ((_totalConfigDic[modelid][i] as NewBieModel).stepId == stepid) {
					return _totalConfigDic[modelid][i];
					}
				}
				return null;
			}
			
		/**
		 * 根据levelId找到相应子阶段第一步的模型
		 */
		private function findModelById(levelid:int,modelid:int):NewBieModel {
			for (var i:String in _totalConfigDic[modelid]) {
				if ((_totalConfigDic[modelid][i] as NewBieModel).levelId == levelid) {
					return _totalConfigDic[modelid][i];
					}
				}
				return null;
			}
		
		
		/**
		 * 设置指定模块的完成情况
		 */	
		public function setModelFinishById(modelid:int, finishFlag:Boolean = true ):void {
			_finishDic[modelid] = finishFlag;
			
			for (var i:String in _finishDic) {
				if (!_finishDic[i]) {
					_totalModelFinish = false;
					return;
					}
				}
			_totalModelFinish = true;
			}
			
		/**
		 * 设置各模块的完成情况
		 */
		private function setFinishDic():void 
		{
			_finishDic[NewBieModelId.FISET] = judgestCompelteByID(_totalNewBies[NewBieModelId.FISET],NewBieModelId.FISET);
			_finishDic[NewBieModelId.TRAINING] = judgestCompelteByID(_totalNewBies[NewBieModelId.TRAINING],NewBieModelId.TRAINING);
			_finishDic[NewBieModelId.DEFFENCE] = judgestCompelteByID(_totalNewBies[NewBieModelId.DEFFENCE],NewBieModelId.DEFFENCE);
			_finishDic[NewBieModelId.TAVER] = judgestCompelteByID(_totalNewBies[NewBieModelId.TAVER],NewBieModelId.TAVER);
			_finishDic[NewBieModelId.MIX] = judgestCompelteByID(_totalNewBies[NewBieModelId.MIX],NewBieModelId.MIX);
			_finishDic[NewBieModelId.SLAVE] = judgestCompelteByID(_totalNewBies[NewBieModelId.SLAVE], NewBieModelId.SLAVE);
			
			for (var i:String in _finishDic) {
				if (!_finishDic[i]) {
					_totalModelFinish = false;
					return;
					}
				}
			_totalModelFinish = true;
		}
		
		public static function getInstance():NewBieControler
		{
			if (_newBieControler == null)
			{
				_newBieControler = new NewBieControler;
			}
			return _newBieControler;
		} // end function
		
		public function get currentNewBieModle():NewBieModel
		{
			return _currentNewBieModle;
		}
		
		public function set currentNewBieModle(value:NewBieModel):void
		{
			/*if (value.levelId > _currentNewBieModle.levelId) {
				//如果levelid增加，则通知服务端相应记录增加
				SMZTController.getInstance().SetNext(_currentNewBieModle.modelId);
				}*/
			_currentNewBieModle = value;
			
			//显示引导界面
			NewbiePane.getInstance().playInstance(_currentNewBieModle);
		}
		
		public function get finishDic():Dictionary 
		{
			return _finishDic;
		}
		
		public function set finishDic(value:Dictionary):void 
		{
			_finishDic = value;
		}
		
		public function get totalNewBies():Dictionary 
		{
			return _totalNewBies;
		}
		
		public function set totalNewBies(value:Dictionary):void 
		{
			_totalNewBies = value;
		}
		
		public function get totalModelFinish():Boolean 
		{
			return _totalModelFinish;
		}
		
		public function set totalModelFinish(value:Boolean):void 
		{
			_totalModelFinish = value;
		}
	
	}

}