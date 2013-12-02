package project.controller 
{
	import com.adobe.serialization.json.JSON;
	
	import khaos.view.ViewType;
	
	import project.config.ApplicationConfig;
	import project.config.ErrorZhCn;
	import project.config.LocalConfig;
	import project.model.attack.AttackSkillDir;
	import project.view.attack.AttackPanel;
	import project.view.attack.skillTest;
	import project.view.module.loading.LockScreen;
	
	import starling.events.Event;

	/*import project.view.module.attack.BattleReadyPanel;
	import project.view.module.helppane.NewbiePane;
	import project.view.module.lottery.LotteryPanel;
	import project.view.module.scene.arena.ArenaScene;
	import project.view.module.scene.main.MainScene;*/
	/**
	 * 战斗控制类
	 * @author bbjxl 2012
	 */
	public class AttackController 
	{
		//----------------------容器---------------------------------
		
		//-----------------------UI---------------------------------
		private var attackPanel:AttackPanel;//战斗场景
		//private var _battleReadyView:BattleReadyPanel;//出战设置
		//private var _battleOverPanel:AttackOverPanel;//战斗结束界面
		//-----------------------数据---------------------------------
		
		//-----------------------事件--------------------------------
		
		private static var _instance:AttackController = null;
		
		public function AttackController() 
		{
			 if (_instance!=null)
            {
                throw new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE);
            }
			//_battleReadyView = BattleReadyPanel.getInstance();
			attackPanel = AttackPanel.getInstance();
			var skillDir:AttackSkillDir = new AttackSkillDir();
		}
		//--------------------------------------------------------
		/**
		 * 战斗记录获得回调函数-开始播放战斗
		 * 
		 */
		private function battlleDataCallBack(param:Object):void {
			attackPanel.initBattleView(param);
			attackPanel.rootContainer = Root.vmgr.getContainer(ViewType.TOP);
//			attackPanel.addHandler(AttackPanel.HANDLER_BATTLE_OVER, onBattleOver);
			
			LockScreen.getInstance().show(true);
			skillTest.getInstance().initLoadSkillAssets();
			skillTest.getInstance().addEventListener(skillTest.Complete, function(e:Event):void {
				LockScreen.getInstance().hide();
				attackPanel.show(true);
				});
			}
		 
		/**
		 * 战斗结束
		 */
		/*private function onBattleOver() : void
        {
			AttackOverPanel.getInstance().updataUI();
			AttackOverPanel.getInstance().show(true);
			if (_battleOverPanel == null) {
				_battleOverPanel = AttackOverPanel.getInstance();
				}
			_battleOverPanel.updataUI();
			_battleOverPanel.show(true);
			_battleOverPanel.addHandler(AttackOverPanel.REPLAY, function():void {
				
				attackPanel.onRestart(null);
				_battleOverPanel.hide();
				});
				
			//-------------------新手引导用-----战斗结束面板------------------
			if (!NewBieControler.getInstance().finishDic[NewBieModelId.FISET]) {
				NewbiePane.getInstance().show();
				}
			//--------------------end--------------------
			
			_battleOverPanel.addHandler(AttackOverPanel.CONTINUE, function():void {
				//-------------------新手引导用-----点 战斗结束------------------
				if (!NewBieControler.getInstance().finishDic[NewBieModelId.FISET] && !NewBieControler.getInstance()._newBieBatlleOver) {
					NewBieControler.getInstance()._newBieBatlleOver = true;
					NewBieControler.getInstance().nextStep();
					}
				//--------------------end--------------------
				
				//播放背景音乐
				SMZTSoundManager.playBgMusic(String(ApplicationConfig.mainConfig.staticURL[0])+String(ApplicationConfig.mainConfig.bgMusic[0]));
				
				//---------------根据当前战斗的场景，结束后判断是否要有分享-----------------------------------------
				SMZTController.getInstance().checkFeededFromDic();
				//--------------------------------------------------------
				
				_battleOverPanel.hide();
				if (LotteryModel.getInstance().showAfterBattle) {
					//如果有抽奖则显示抽奖界面-抽奖界面关闭时刷新当前场景（LotteryPanel.hide()中）
					LotteryPanel.getInstance().show(true);
					LotteryPanel.getInstance().state = LotteryPanel.TRAINING;
					}else {
						attackPanel.hide();
						attackPanel._attackPlayer.restart();
						attackPanel.changePlayBtnStatus(1);
						attackPanel.disposeData();
						
						SMZTUIManager.getInstance().mainPane.refreshCurrentScene();//刷新当前场景
						}
				
				});
          
        }// end function	*/
			
		/**
		 * 根据出战设置的类型显示战斗
		 */
		public function onAttack(deckArr:Array=null) : void
        {
            //this.isNeedFreshData = true;
            var battleDeck:Object = new Object();
			battleDeck.deck = deckArr;
			trace(com.adobe.serialization.json.JSON.encode(deckArr))
			//attackPanel.showVisiteBtnVisibleStatus(false, false);
			SMZTController.getInstance().getBattleData(com.adobe.serialization.json.JSON.encode(deckArr), battlleDataCallBack);//测试base64返回
            //trace("进入的战斗类型" + this._battleReadyView.battleType);
            /*switch(this._battleReadyView.battleType)
            {
				case BattleReadyPanel.TOWER_TYPE:
                {
					//宿命之塔
                    attackPanel.showVisiteBtnVisibleStatus(false, false);
					SMZTController.getInstance().TowerChallenge(com.adobe.serialization.json.JSON.encode(deckArr), trainingGetBattalHistoryById)
                    break;
                }
				case BattleReadyPanel.TRAINING_TYPE:
                {
					//战争学院
                    attackPanel.showVisiteBtnVisibleStatus(true, false);
					SMZTController.getInstance().trainingChallenge(com.adobe.serialization.json.JSON.encode(deckArr), trainingGetBattalHistoryById)
                    break;
                }
                case BattleReadyPanel.ARENA_TYPE:
                {
                    attackPanel.showVisiteBtnVisibleStatus(true, false);
					SMZTUIManager.getInstance().arenaScene.stopUpdataUI();
					SMZTController.getInstance().arenaChallenge(com.adobe.serialization.json.JSON.encode(deckArr), getBattalHistoryById)
                    break;
                }
				case BattleReadyPanel.CHALLENGE_FRIENDS_TYPE:
                {
                    attackPanel.showVisiteBtnVisibleStatus(true, false);
					SMZTController.getInstance().challengeFriends(com.adobe.serialization.json.JSON.encode(deckArr), getBattalHistoryById)
					
                    break;
                }
				case BattleReadyPanel.ENSLAVE_FRIENDS_TYPE:
                {
                    attackPanel.showVisiteBtnVisibleStatus(true, false);
					SMZTController.getInstance().getEnslaveData(com.adobe.serialization.json.JSON.encode(deckArr), getBattalHistoryById)
                    break;
                }
				case BattleReadyPanel.SAVE_FRIENDS_TYPE:
                {
                    attackPanel.showVisiteBtnVisibleStatus(true, false);
					SMZTController.getInstance().getSaveData(com.adobe.serialization.json.JSON.encode(deckArr),getBattalHistoryById)
                    break;
                }
                default:
                {
					//測試
					attackPanel.showVisiteBtnVisibleStatus(false, false);
					SMZTController.getInstance().getBattleDataTest(com.adobe.serialization.json.JSON.encode(deckArr), getBattalHistoryById);//测试base64返回
					//SMZTController.getInstance().getBattleData(com.adobe.serialization.json.JSON.encode(deckArr), battlleDataCallBack);//测试文本
                    break;
                }
            }*/
            return;
        }// end function
		/**
		 * 根据战斗记录ＩＤ获取战斗记录(战争学院)
		 * @return
		 */
		/*private function trainingGetBattalHistoryById(param:Object):void {
			if(param.data.lotteryId!=null){
				LotteryModel.getInstance().showAfterBattle = true;//战斗结束显示抽奖
				LotteryModel.getInstance().currentLotteryId = param.data.lotteryId;// LotteryModel.getInstance().lotteryIdArr.shift();
				}
			if (param.data.battleId!=null) {
				SMZTController.getInstance().getBattleData(param.data.battleId, battlleDataCallBack);
				}else {
					_battleReadyView.hide();
					SMZTUIManager.getInstance().mainPane.refreshCurrentScene();
					}
			
			}*/
		/**
		 * 根据战斗记录ＩＤ获取战斗记录
		 * @return
		 */
		/*private function getBattalHistoryById(param:Object):void {
			if (param.data.battleId!=null) {
				SMZTController.getInstance().getBattleData(param.data.battleId, battlleDataCallBack);
				}else {
					if (_battleReadyView.battleType == BattleReadyPanel.CHALLENGE_FRIENDS_TYPE || _battleReadyView.battleType == BattleReadyPanel.ENSLAVE_FRIENDS_TYPE || _battleReadyView.battleType == BattleReadyPanel.SAVE_FRIENDS_TYPE) {
						//如果是挑战，解救，占领好友时没有返回战斗记录则给出提示：好友没有设置防御塔，不战而胜！
						AlertConfirmPane.getInstance().type = 0;
						AlertConfirmPane.getInstance().showMessage(LocalConfig.LOCAL_LAN.FriendPane.NoBattleTip.@Text);
						}
					_battleReadyView.hide();
					SMZTUIManager.getInstance().mainPane.refreshCurrentScene();
					}
			
			}*/
		//--------------------------------------------------------
		/**
		 * 根据战斗记录回放战斗（日志）
		 * @return
		 */
		//public function replayBattleById(value:String):void {
			//SMZTController.getInstance().getBattleData(value, replayBattlleDataCallBack);
			//}
			//
		//private function replayBattlleDataCallBack(param:Object):void 
		//{
			//attackPanel.initBattleView(param);
			//attackPanel.addHandler(AttackPanel.HANDLER_BATTLE_OVER, onBattleOver);
			//attackPanel.show(true);
		//}
		//--------------------------------------------------------
		public static function getInstance() : AttackController
        {
            if (_instance == null)
            {
                _instance = new AttackController();
            }
            return _instance;
        }// end function
		
	}

}