package project.controller
{
	/*
	* 描述：登陆成功后 应用总管理
	* 初始化游戏
	* 
	*/
	import com.adobe.utils.ArrayUtil;
	import flash.ui.Keyboard;
	import flash.utils.Dictionary;
	import project.config.ApplicationConfig;
	import project.core.AppliactionManager;
	import project.core.SMZTSoundManager;
	import project.core.SMZTSystemManager;
	import project.core.SMZTUIManager;
	import project.dll.DLLLoader;
	import project.dll.DLLLoaderUI;
	import project.model.data.PlayerData;
	import project.model.ModelLocator;
	import project.view.base.BaseTitleWindow;
	import project.view.module.alert.AlertMasterPane;
	import project.view.module.chat.BroadCastPanel;
	import project.view.module.chat.ChatPane;
	//import project.view.module.announce.AnnouncementPane;
	import project.view.module.base.ModuleLoader;
	import project.view.module.loading.LockScreen;
	import flash.events.*;
	
   

    public class ApplicationController extends EventDispatcher
    {
        private var loader:DLLLoader;
        private var loaderUI:DLLLoaderUI;
        private static var ac:ApplicationController;
		private static var totalWin:Array=new Array();

        public function ApplicationController()
        {
            this.loader = new DLLLoader();
            if (ac)
            {
                throw new Error("Error");
            }
            return;
        }// end function

		/**
		 * 所有打开的弹窗
		 */
		public static function pushWin(win:BaseTitleWindow):void {
			totalWin.push(win);
			}
		/**
		 * 关闭一个窗口时从数组中移除
		 * @param	win
		 */
		public static function removeAtWin(win:BaseTitleWindow):void {
			/*if (ArrayUtil.arrayContainsValue(totalWin, win)) {
				ArrayUtil.removeValueFromArray(totalWin, win);
				}*/
			ArrayUtil.removeValueFromArray(totalWin, win);
			}
		private static function keyDownHandler(e:KeyboardEvent):void 
		{
			//新手引导未完成时不能按ＥＳＣ关闭
			if (NewBieControler.getInstance().totalModelFinish && e.keyCode == Keyboard.ESCAPE) {
				if (totalWin.length > 0) {
					(totalWin.pop() as BaseTitleWindow).hide();
					}
				}
		}
		
		//初始化游戏
        public function initGame() : void
        {
            SMZTSoundManager.setVolume(0.3);
			ChatPane.getInstance().show();
			BroadCastPanel.getInstance().show();
            //SMZTController.getInstance().initServerList(this.onServerListLoad);
			
			onServerListLoad();
			
			
			AppliactionManager.stage.addEventListener(KeyboardEvent.KEY_DOWN, keyDownHandler);
			
			SMZTSoundManager.playBgMusic(String(ApplicationConfig.mainConfig.staticURL[0])+String(ApplicationConfig.mainConfig.bgMusic[0]));
            return;
        }// end function

		//服务器列表加载完
        private function onServerListLoad() : void
        {
			SMZTController.getInstance().Initialize();//初始化用户信息
            //SMZTController.getInstance().initPlayerInfo(0, this.onPlayerInfoLoad);//初始化用户信息
            //ChatController.getInstance().startChatListening();//开始聊天侦听，获取聊天数据
            SMZTSystemManager.getInstance().startHeartBeat();//20秒发送一次心跳包，从而更新场景等数据信息
			SMZTController.getInstance().getBagData(false);//初始化背包数据
            //AnnouncementPane.getInstance().startAnnoucement();//公告面板
            //SMZTUIManager.getInstance().mainScene.reCheckEvent();//主场景检查是否有活动
            return;
        }// end function

       /* private function onPlayerInfoLoad(param1:XML) : void
        {
            if (PlayerData.getInstance().sinaVip == 2 && ModelLocator.getInstance().snsType == ModelLocator.SNS_SINA)
            {
                AlertMasterPane.getInstance().show(true);
            }
            LockScreen.getInstance().hide();
            this.checkEvent();//检查是否有活动
            return;
        }// end function

        public function checkEvent(event:Event = null, param2:Boolean = false) : void
        {
            if (param2)
            {
                SMZTController.getInstance().checkEvent(this.onEventCheckBack);
            }
            else if (PlayerData.getInstance().budoukaiBuildingLv > 0 && PlayerData.getInstance().champinBuildingLv > 0 && PlayerData.getInstance().officerBuildingLv > -1 && PlayerData.getInstance().weaponBuildingLv > -1 && PlayerData.getInstance().skillBuildingLv > -1)
            {
                SMZTController.getInstance().checkEvent(this.onEventCheckBack);
            }
            return;
        }// end function

        private function onEventCheckBack(param1:XML) : void
        {
            var mdl:ModuleLoader;
            var onAdLoad:Function;
            var xmlData:XML = param1;
            onAdLoad = function (event:Event) : void
            {
                mdl.instance.playerLevel = int(PlayerData.getInstance().playerLevel);
                mdl.instance.addEventListener("qifu", onQifuClickS);
                return;
            }// end function
            
            mdl = new ModuleLoader();
            mdl.show(ApplicationConfig.mainConfig.eventURL + "?" + ModelLocator.getInstance().tokenStr);
            mdl.addEventListener("MODULE_LOAD", onAdLoad);
            return;
        }// end function

		//祈福活动
        private function onQifuClickS(event:Event) : void
        {
            var mdl:ModuleLoader;
            var onEventModuleLoad:Function;
            //var event:* = event;
            onEventModuleLoad = function (event:Event) : void
            {
                mdl.instance.dynamicURL = ModelLocator.getInstance().dynamicURL;
                return;
            }// end function
			
            mdl = new ModuleLoader();
            mdl.show(ApplicationConfig.mainConfig.qifu);
            mdl.addEventListener("MODULE_LOAD", onEventModuleLoad);
            return;
        }// end function*/

        public static function getInstance() : ApplicationController
        {
            if (!ac)
            {
                ac = new ApplicationController;
            }
            return ac;
        }// end function

    }
}
