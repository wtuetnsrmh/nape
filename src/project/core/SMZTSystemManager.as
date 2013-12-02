package project.core
{
   
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	import project.model.chat.BroadcastModel;
	import project.model.chat.ChatModle;
	import project.controller.SMZTController;
    import project.config.ServerParse;
    import flash.events.EventDispatcher;
	import project.view.module.bottombar.BottomBarPane;

    public class SMZTSystemManager extends EventDispatcher
    {
        private var heartTimer:Timer;
        private var antiAddictedStatus:int;
        private var timeSnap:Number;
        private var sleepNum:int = 0;
        private var sleepDetectTimer:Timer;
        private var _sleepMode:Boolean = false;
        private var exchangeId:int = 0;
        private static var wSystemManager:SMZTSystemManager;
        private static var messageArr:Array = ["您累计在线时间已满1小时", "您累计在线时间已满3小时，请您下线休息，做适当身体活动。", "您已经进入疲劳游戏时间，您的游戏收益将降为正常值的50％，为了您的健康，请尽快下线休息，做适当身体活动，合理安排学习生活。", "您已进入不健康游戏时间，为了您的健康，请您立即下线休息。如不下线，您的身体将受到损害，您的收益已降为零，直到您的累计下线时间满5小时后，才能恢复正常。"];
        private static const NO_ACTION_REQUEST:Array = [ServerParse.HEART_BEAT];// , ServerParse.REFRESH_CHAT, ServerParse.ANNOUCEMENT];
        private static var deatTimeLineArr:Array = [4, 8, 12, 14, 16, 17, 18, 19, 20];

        public function SMZTSystemManager()
        {
            this.timeSnap = new Date().time;
            if (wSystemManager != null)
            {
                throw new Error("Error");
            }
            this.heartTimer = new Timer(20000);//20秒心跳包
            this.heartTimer.addEventListener(TimerEvent.TIMER, this.onHeartBeat);
            return;
        }// end function

		/**
		* 检查是否为休眠状态
		* @param1	发送的请求方法名
		* @param2	
		* @param3		
		*/
        public function checkSleep(param1:String) : void
        {
            if (this.sleepNum > 20)
            {
                if (!this.sleepMode)
                {
                    this.sleepMode = true;
                }
            }
			//如果收到的都是心跳包(聊天和通告公告)的信息连续二十次，则判定为用户休眠状态，此时心跳包间隔改为二分钟
            if (param1 == NO_ACTION_REQUEST[0])
            {
                sleepNum++;
                return;
            }
			
            this.sleepNum = 0;
            if (this.sleepMode)
            {
                this.sleepMode = false;
            }
            return;
        }// end function

        public function get sleepMode() : Boolean
        {
            return this._sleepMode;
        }// end function

        public function set sleepMode(param1:Boolean) : void
        {
            this._sleepMode = param1;
            if (this._sleepMode)
            {
				//睡眠模式时二分钟才更新
                this.heartTimer.delay = 120000;
                /*if (!ChatPane.getInstance().isOpened)
                {
                    ChatController.getInstance().chatRefreshTimer.delay = 120000;
                }*/
                //AnnouncementPane.getInstance().refreshTimer.delay = 120000;
            }
            else
            {
                this.heartTimer.delay = 20000;
                //ChatController.getInstance().chatRefreshTimer.delay = 10000;
                //AnnouncementPane.getInstance().refreshTimer.delay = 20000;
            }
            return;
        }// end function

		//手动刷新心跳包
        public function refreshHeartBeat() : void
        {
            SMZTController.getInstance().sendHeartBeat(updataChatAndAnnouncement);
            return;
        }// end function
		
		/**
		 * 更新聊天及公告栏
		 * @param	param
		 */
		private function updataChatAndAnnouncement(param:Object):void 
		{
			if (param["msgs"] != null) {
				ChatModle.getInstance().setData(param["msgs"]);
				}
			if (param["notices"] != null) {
				BroadcastModel.getInstance().setData(param["notices"]);
				}
			//更新成就提示　achv	int	未领取奖励的成就的个数
			if (param["achv"] != null) {
				if (param["achv"] > 0) {
					SMZTUIManager.getInstance().bottmBarPane.showAchivEffect(true);
					}else {
						SMZTUIManager.getInstance().bottmBarPane.showAchivEffect();
						}
				}else {
						SMZTUIManager.getInstance().bottmBarPane.showAchivEffect();
						}
		}

		//时间到就发送心跳包
        private function onHeartBeat(event:TimerEvent) : void
        {
			
            SMZTController.getInstance().sendHeartBeat(updataChatAndAnnouncement);
            /*if (SMZTUIManager.getInstance().mainPane.isOfficeScene && PlayerData.getInstance().currentNewbieQuest.taskName != "PetEquip" && !SMZTUIManager.getInstance().officerSelectPane.isOpened)
            {
                SMZTController.getInstance().refreshPlayerOfficer(ModelLocator.getInstance().currentUId);
            }*/
            return;
        }// end function

		//刷新主场景信息
        private function updateMainScreen(param1:XML) : void
        {
            /*this.handleBudoukaiInfo(param1);
            this.handleAntiAddicted(param1);
            this.handlePlayerStatus(param1);//更新用户信息
            this.handleAchievements(param1);
            this.handleBulletin(param1);
            this.handleAlert(param1);
            this.handleVersion(param1);//更新版本
            this.handleRemindSign(param1);
            this.handleGift(param1);
            this.handleBuyGift(param1);*/
            return;
        }// end function

		//是否有礼物
        /*private function handleGift(param1:XML) : void
        {
            if (param1.hasOwnProperty("Buyer"))
            {
                AlertConfirmPane.getInstance().showMessage(LocalConfig.LOCAL_LAN.GiftGet.@Text);
            }
            return;
        }// end function*/



       /* private function handleVersion(param1:XML) : void
        {
            if (ApplicationConfig.VERSION != param1.GameVersion)
            {
                AlertConfirmPane.getInstance().errorType = "NeedLogin";
                AlertConfirmPane.getInstance().showMessage(LocalConfig.LOCAL_LAN.SystemAlert.VersionUpdate.@Text);
            }
            return;
        }// end function*/

		//是否有弹出提示信息
        /*private function handleAlert(param1:XML) : void
        {
            if (String(param1.Alert) != "")
            {
                AlertConfirmPane.getInstance().showMessage(param1.Alert);
            }
            return;
        }// end function*/



		/*//更新任务信息
        private function handleAchievements(param1:XML) : void
        {
			//当前访问的是自己的房间
            if (ModelLocator.getInstance().uId == ModelLocator.getInstance().currentUId)
            {
                if (param1.Achievement == 1)
                {
                    SMZTUIManager.getInstance().bottmBarPane.newQuest(true);
                }
                else
                {
                    SMZTUIManager.getInstance().bottmBarPane.newQuest(false);
                }
            }
            return;
        }// end function

		//提醒标记
        public function handleRemindSign(param1:XML) : void
        {
            if (ModelLocator.getInstance().uId == ModelLocator.getInstance().currentUId)
            {
                SMZTUIManager.getInstance().playerInfoPane.removeRemindSign();
                if (ModelLocator.getInstance().snsType == ModelLocator.SNS_FACEBOOK)
                {
                }
                if (param1.hasOwnProperty("ItemExchange"))
                {
                    SMZTUIManager.getInstance().playerInfoPane.addEventSign(int(param1.ItemExchange));
                    this.exchangeId = int(param1.ItemExchange);
                }
                SMZTUIManager.getInstance().playerInfoPane.addRemindSign(12);
                if (PlayerData.getInstance().newbieItem == 1)
                {
                    SMZTUIManager.getInstance().playerInfoPane.addRemindSign(5);
                }
                if (param1.DayTease == 0)
                {
                    if (int(param1.DayTease.@Amount) >= int(param1.DayTease.@Limen))
                    {
                        SMZTUIManager.getInstance().playerInfoPane.addRemindSign(4);
                    }
                    else
                    {
                        SMZTUIManager.getInstance().playerInfoPane.addRemindSign(3);
                    }
                }
                if (PlayerData.getInstance().fightCount > 0)
                {
                    SMZTUIManager.getInstance().playerInfoPane.addRemindSign(2);
                }
                if (param1.Tournament.@Trigger == 2 && param1.Tournament.@Signed == 0 && int(PlayerData.getInstance().playerLevel) >= 3)
                {
                    SMZTUIManager.getInstance().playerInfoPane.addRemindSign(1);
                }
                if ((ModelLocator.getInstance().isQQRelated() || ModelLocator.getInstance().snsType == ModelLocator.SNS_RR || ModelLocator.getInstance().snsType == ModelLocator.SNS_KX || ModelLocator.getInstance().snsType == ModelLocator.SNS_SINA) && param1.IsFan == 0)
                {
                    SMZTUIManager.getInstance().playerInfoPane.addRemindSign(7);
                }
                if (ModelLocator.getInstance().snsType != ModelLocator.SNS_51 && param1.hasOwnProperty("FriendAchievement"))
                {
                    SMZTUIManager.getInstance().playerInfoPane.addRemindSign(8);
                }
            }
            return;
        }// end function

		//换服务器地址，当出现IO错误时
        public function switchToAnotherDynamicURL() : void
        {
            var _loc_1:* = ModelLocator.getInstance().dynamicURL;
            var _loc_2:int = 0;
            while (_loc_2 < ModelLocator.getInstance().dynamicURLArr.length)
            {
                
                if (_loc_1 == ModelLocator.getInstance().dynamicURLArr[_loc_2])
                {
                    if (_loc_2 < (ModelLocator.getInstance().dynamicURLArr.length - 1))
                    {
                        ModelLocator.getInstance().dynamicURL = ModelLocator.getInstance().dynamicURLArr[(_loc_2 + 1)];
                    }
                    else
                    {
                        ModelLocator.getInstance().dynamicURL = ModelLocator.getInstance().dynamicURLArr[0];
                    }
                    break;
                }
                _loc_2++;
            }
            return;
        }// end function

        private function handlePlayerStatus(param1:XML) : void
        {
            if (ModelLocator.getInstance().uId == ModelLocator.getInstance().currentUId)
            {
                PlayerData.getInstance().refreshGoldSilver(param1.Gold, param1.Silver);
            }
            return;
        }// end function

        private function handleAntiAddicted(param1:XML) : void
        {
            var _loc_2:* = int(param1.AntiAddicted / 900);
            if (_loc_2 != this.antiAddictedStatus)
            {
                switch(_loc_2)
                {
                    case 4:
                    case 8:
                    {
                        AntiAddictedPane.getInstance().showMessage(messageArr[0]);
                        break;
                    }
                    case 12:
                    case 14:
                    {
                        AntiAddictedPane.getInstance().showMessage(messageArr[1]);
                        break;
                    }
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    {
                        AntiAddictedPane.getInstance().showMessage(messageArr[2]);
                    }
                    default:
                    {
                        if (_loc_2 >= 20)
                        {
                            AntiAddictedPane.getInstance().showMessage(messageArr[3]);
                        }
                        break;
                        break;
                    }
                }
            }
            this.antiAddictedStatus = _loc_2;
            return;
        }// end function*/

        

        public function updateHeartBeat() : void
        {
            SMZTController.getInstance().sendHeartBeat(updataChatAndAnnouncement);
            return;
        }// end function

        public function startHeartBeat() : void
        {
            this.heartTimer.stop();
            this.heartTimer.reset();
            this.heartTimer.start();
            SMZTController.getInstance().sendHeartBeat(updataChatAndAnnouncement);
            return;
        }// end function

        public static function getInstance() : SMZTSystemManager
        {
            if (wSystemManager == null)
            {
                wSystemManager = new SMZTSystemManager;
            }
            return wSystemManager;
        }// end function

    }
}
