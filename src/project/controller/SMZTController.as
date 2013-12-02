package project.controller
{
	/*
	 * 描述：所有与服务端的通讯管理类
	 *
	 */
	import com.adobe.serialization.json.JSON;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.external.ExternalInterface;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.net.URLVariables;
	import flash.system.Capabilities;
	import flash.utils.Dictionary;
	
	import project.config.ApplicationConfig;
	import project.config.ErrorZhCn;
	import project.config.LocalConfig;
	import project.config.ServerParse;
	import project.core.DotNetServer;
	import project.debug.Debug;
	import project.debug.myDebug;
	import project.model.arena.ArenaModel;
	import project.model.crystalHole.CrystalHoleModel;
	import project.model.data.BagData;
	import project.model.data.PlayerData;
	import project.model.data.chat.ChatMessage;
	import project.model.defence.DefenceModel;
	import project.model.friends.BonusModel;
	import project.model.friends.FriendsModel;
	import project.model.item.ItemModel;
	import project.model.platform.AwardYellowInfo;
	import project.model.shop.ShopModel;
	import project.utils.Base64;
	import project.utils.Browser;
	import project.view.module.loading.LockScreen;

//	import project.view.module.scene.tower.AutoBattleTargetPanel;
	
	/*import com.adobe.crypto.*;
	   import project.config.*;
	   import project.config.ErrorZhCn;
	   import project.core.*;
	   import project.events.*;
	   import project.model.*;
	   import project.model.data.*;
	   import project.model.data.chat.*;
	
	   import project.model.item.*;
	   import project.view.module.bagpane.*;
	   import project.view.module.daily.*;
	   import project.view.module.loading.*;
	   import project.view.module.playerinfo.*;
	
	
	   import flash.events.*;
	   import flash.external.*;
	 import flash.net.*;*/
	
	public class SMZTController extends EventDispatcher
	{
		private static var feedDic:Dictionary; //分享
		
		private static var _SMZTController:SMZTController;
		
		public function SMZTController()
		{
			if (_SMZTController != null)
			{
				throw new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE);
			}
			feedDic = new Dictionary();
			
			return;
		} // end function
		/**
		 * 心跳请求
		 * @param	param1
		 */
		public function sendHeartBeat(param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					callBackFun.call(null, param.data);
				}
			}
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.HEART_BEAT, postData, onCallBack);
		}
		//====================================================
		/**
		 * 测试
		 * @param1
		 * @param2
		 * @param3
		 */ /*public function Json_text(param1:Function=null):void {
		   var callBackFun:Function = param1;
		   function onCallBack(param:Object):void {
		   if (callBackFun != null) {
		   callBackFun.call(null, param);
		   }
		   }
		   LockScreen.getInstance().show(true);
		   var postData:URLVariables = new URLVariables();
		   DotNetServer.sendHTTPRequest(ServerParse.JSON_TEST, postData, onCallBack);
		 }*/
		//--------------------------------------------------------
		
		/**
		 * 注册
		 * @param	param1
		 */
		public function register(heroId:int, param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					callBackFun.call(null, param);
				}
			}
			var postData:URLVariables = new URLVariables();
			postData.id = heroId;
			DotNetServer.sendHTTPRequest(ServerParse.SELECTE_HERO, postData, onCallBack);
		}
		
		/**
		 * 向服务端登记用户某个行为。
		 * @param	param1
		 */
		public function SetTrace(param1:int):void
		{
			
			var postData:URLVariables = new URLVariables();
			postData.id = param1;
			postData.detail = Capabilities.version+";"+Capabilities.screenResolutionY;
			//Debug.log("postData.detail=" + postData.detail);
			DotNetServer.simpleLoad(ServerParse.TRACRE, postData);
		}
		
		/**
		 * 获取新手进度
		 * @param	param1
		 */
		public function GetStatus(param1:Function = null):void
		{
			trace("GetStatus")
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					callBackFun.call(null, param);
				}
			}
			var postData:URLVariables = new URLVariables();
			LockScreen.getInstance().show(true);
			DotNetServer.simpleLoad(ServerParse.STATUS, postData, onCallBack);
		}
		
		/**
		 * 增加玩家当前新手引导进度
		 * id	int	需要增加的新手引导模块的编号
		 * @param	param1
		 */
		public function SetNext(modelid:int,param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					callBackFun.call(null);
				}
			}
			var postData:URLVariables = new URLVariables();
			postData.id = modelid;
			DotNetServer.sendHTTPRequest(ServerParse.NEXT, postData, onCallBack);
		}
		
		//--------------------------------------------------------
		public function Login(param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					callBackFun.call(null, param);
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.account =  "test1316797587";//new Date().getTime().toString();// "test101";"yu12";//"yu11129";//
			DotNetServer.simpleLoad(ServerParse.LOGIN_TEST, postData, onCallBack);
		}
		
		/**
		 * 初始化用户信息
		 * @param	param1
		 */
		public function Initialize(param1:Function = null):void
		{
			//Debug.log("Initialize");
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				PlayerData.getInstance().setPlayerData(param.data);
				
				if (callBackFun != null)
				{
					callBackFun.call(null, param);
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.INITIALIZE, postData, onCallBack);
		}
		
		//-----------------创建卡组---------------------------------------
		/**
		 *
		 * @param	deckId创建的卡组ID
		 * @param	deckName要创建的卡组名称
		 * @param	cardsId 要创建的卡组中所包括的卡ID
		 * @param	param1 回调方法
		 */
		public function CreaCardGroup(deckId:int, deckName:String, cardsId:Array, param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					LockScreen.getInstance().hide();
					callBackFun.call(null, param);
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = deckId;
			//var tempCardsId:Array = ["51", "58", "59", "60", "61", "162", "163"];
			postData.cards = cardsId.toString();
			postData.name = deckName;
			DotNetServer.sendHTTPRequest(ServerParse.CREA_CARDGROUP, postData, onCallBack);
		}
		
		//--------------------------------------------------------
		/**
		 * 解锁卡组
		 * @param	param1
		 */
		public function UnlockDeckItem(unlockDeckId:int, param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					LockScreen.getInstance().hide();
					callBackFun.call(null, param);
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = unlockDeckId;
			DotNetServer.sendHTTPRequest(ServerParse.UNLOCK_DECKITEM, postData, onCallBack);
		}
		
		//--------------------------------------------------------
		/**
		 * 解散卡组
		 * @param	param1
		 */
		public function DeleteDeck(DeckId:int, param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					LockScreen.getInstance().hide();
					callBackFun.call(null, param);
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = DeckId;
			DotNetServer.sendHTTPRequest(ServerParse.DELETE_DECKITEM, postData, onCallBack);
		}
		
		//----测试用----------------------------------------------
		public function getBattleDataTest(battleHistoryId:String, callback:Function = null):void
		{
			var callBackFun:Function = callback;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					LockScreen.getInstance().hide();
					callBackFun.call(null, param);
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.decks = battleHistoryId;
			DotNetServer.sendHTTPRequest(ServerParse.ATTACK_MODLE_HISTORY, postData, onCallBack);
		}
		
		//--------------------------------------------------------
		
		//--------------------------------------------------------
		/**
		 * 获取战斗记录
		 * @param	param1
		 */
		/*public function getBattleData(battleHistoryId:String, callback:Function = null):void
		{
			var callBackFun:Function = callback;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					LockScreen.getInstance().hide();
					callBackFun.call(null, param);
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = battleHistoryId;
			DotNetServer.sendHTTPRequest(ServerParse.ATTACK_HISTORY, postData, onCallBack);
		}*/
		
		public function getBattleData(battleHistoryId:String,callback:Function=null):void {
		   var loader:URLLoader = new URLLoader();
		   loader.addEventListener(Event.COMPLETE, completeHandler);
		
		   var request:URLRequest = new URLRequest("1.txt");
		   try {
			   LockScreen.getInstance().show(true);
		   loader.load(request);
		   } catch (error:Error) {
		   //trace("Unable to load requested document.");
		   }
		   var callBackFun:Function = callback;
		   function completeHandler(event:flash.events.Event):void {
		
		   if (callBackFun != null) {
		   LockScreen.getInstance().hide();
		   callBackFun.call(null,com.adobe.serialization.json.JSON.decode(event.target.data));
		   }
		
		   }
		 }
		
		//------------获取用户动态--------------------------------------
		/**
		 * 获取用户动态
		 * 获取用户动态参数，当客户端收到键为feed的数据时调用此接口。
		 * @param	param1
		 */
		public function feedInfor(feedId:int):void
		{
			
			/*function onCallBack(returnObj:Object):void
			{
				//不是自动战斗
				if (checkFeedAction(returnObj.data.feedInfo.action) && !SMZTUIManager.getInstance().towerScene.autoBattleFlag)
				{
					
					feedDic[String(returnObj.data.feedInfo.action)] = returnObj.data.feedInfo.param;
				}
				else
				{
					Browser.feedInfor(returnObj.data.feedInfo.param);
					Debug.log("1传给js的param:" + returnObj.data.feedInfo.param);
				}
			}
			//LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = feedId;
			DotNetServer.sendHTTPRequest(ServerParse.GET_USER_INFOR_FOR_FEED, postData, onCallBack);*/
		}
		
		/**
		 * 获取用户发布分享后的奖励
		 * @param	param1
		 */
		public function getFeedBonusData(feedId:int):void
		{
			Debug.log("js调用swf:getFeedBonusData");
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				//把当奖品放入奖品显示队列显示在舞台中间
				var tempBonus:BonusModel = new BonusModel();
				tempBonus.setData(param.data.bonus);
				
//				SMZTUIManager.getInstance().manageShowBonus.showBonus(tempBonus);
				tempBonus = null;
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = feedId;
			DotNetServer.sendHTTPRequest(ServerParse.GET_FEED_BONUS, postData, onCallBack);
		}
		
		/**
		 * 检查是否有ＦＥＥＤ，有则分享
		 * @param	param
		 * @return
		 */
		/*public function checkFeededFromDic():void
		{
//			trace(BattleReadyPanel.getInstance().battleType);
			var temp:String = (LocalConfig.LOCAL_LAN.FeedAtion.Feed.(@battleType == BattleReadyPanel.getInstance().battleType)).@ID;
			if (temp == null)
				return;
			var feedParam:String = feedDic[temp];
			if (feedParam != null)
			{
				Browser.feedInfor(feedParam);
				Debug.log("2传给js的param:" + feedParam);
				delete feedDic[temp];
			}
		
		}*/
		
		/**
		 * 检查是否需要战斗结束后调用
		 * @param	param1
		 */
		private function checkFeedAction(param:int):Boolean
		{
			var temp:XMLList = LocalConfig.LOCAL_LAN.FeedAtion.Feed;
			
			for each (var feedi:XML in temp)
			{
				Debug.log("checkFeedAction-feedid=" + feedi.@ID)
				if (feedi.@ID == param)
				{
					return true;
				}
			}
			return false;
		}
		
		//====================================================
		/**
		 * 获取防御设置
		 * @param	param1
		 */
		public function getDefenceData(param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				DefenceModel.getInstance().setDefenceData(param.data.defence);
				
				if (callBackFun != null)
				{
					callBackFun.call(null);
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.GET_DEFENCE_DATA, postData, onCallBack);
		}
		
		/**
		 * 设置防线
		 * @param	param1
		 */
		public function setDefenceData(type:int, param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					LockScreen.getInstance().hide();
					callBackFun.call(null, param);
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.v1 = com.adobe.serialization.json.JSON.encode(DefenceModel.getInstance().returnDeckIdArrByModel(1));
			postData.v2 = com.adobe.serialization.json.JSON.encode(DefenceModel.getInstance().returnDeckIdArrByModel(2));
			postData.v3 = com.adobe.serialization.json.JSON.encode(DefenceModel.getInstance().returnDeckIdArrByModel(3));
			postData.v4 = com.adobe.serialization.json.JSON.encode(DefenceModel.getInstance().returnDeckIdArrByModel(4));
			
			DotNetServer.sendHTTPRequest(ServerParse.SET_DEFENCE_DATA, postData, onCallBack);
		}
		
		//====================================================
		/**
		 * 获取竞技场数据
		 * @param	param1
		 */
		public function getArenaData(fistFlag:Boolean = false, param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				ArenaModel.getInstance().setArenaData(param.data.arenas);
				
				if (callBackFun != null)
				{
					callBackFun.call(null);
				}
			}
			if (fistFlag)
			{
				//第一次有LOADING
				LockScreen.getInstance().show(true);
			}
			
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.GET_ARENA_DATA, postData, onCallBack);
		}
		
		/**
		 * 攻擂请求
		 * @param	param1
		 */
		public function arenaChallenge(decks:String, param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					LockScreen.getInstance().hide();
					callBackFun.call(null, param);
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = ArenaModel.getInstance().arenaId
			postData.decks = decks;
			postData.tid = ArenaModel.getInstance().championId;
			DotNetServer.sendHTTPRequest(ServerParse.ARENA_CHALLENGE, postData, onCallBack);
		}
		
		//====================================================
		/**
		 * 获取一批随机用户信息
		 * @param	页码
		 * @param	搜索关键词
		 */
		public function getRandomList(param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				if (callBackFun != null)
				{
					callBackFun.call(null, param.data.friends);
				}
			}
			
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.GET_RANDOM_LIST_DATA, postData, onCallBack);
		}
		
		/**
		 * 获取好友列表
		 * @param	页码
		 * @param	搜索关键词
		 */
		public function getFriendsList(pagNum:int = 0, key:String = null, param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				FriendsModel.getInstance().updataData(param.data.friends);
				
				if (callBackFun != null)
				{
					callBackFun.call(null, param.data);
				}
			}
			
			var postData:URLVariables = new URLVariables();
			postData.page = pagNum;
			postData.key = key;
			DotNetServer.sendHTTPRequest(ServerParse.GET_FRIENDS_DATA, postData, onCallBack);
		}
		
		/**
		 * 获取随机事件
		 * @param	param1
		 */
		public function getBonusData(friendId:int, param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				if (callBackFun != null)
				{
					callBackFun.call(null, param.data);
				}
			}
			
			var postData:URLVariables = new URLVariables();
			postData.id = friendId;
			DotNetServer.sendHTTPRequest(ServerParse.GET_FRIENDS_BOUNS_DATA, postData, onCallBack);
		
		}
		
		/**
		 * 解救指定玩家-好友
		 * @param	param1
		 */
		
		public function getSaveData(decks:String, param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					LockScreen.getInstance().hide();
					callBackFun.call(null, param);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
//			postData.id = SMZTUIManager.getInstance().friendsPanel._currentRowUserId;
			postData.decks = decks;
			//postData.mid = SMZTUIManager.getInstance().friendsPanel._currentRowMasterId;
			DotNetServer.sendHTTPRequest(ServerParse.SAVE_SLAVES, postData, onCallBack);
		}
		/**
		 * 挑战指定好友
		 */
		public function challengeFriends(decks:String, param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					LockScreen.getInstance().hide();
					callBackFun.call(null, param);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
//			postData.id = SMZTUIManager.getInstance().friendsPanel._currentRowUserId;
			postData.decks = decks;
			DotNetServer.sendHTTPRequest(ServerParse.CHALLENGE_FRIENDS_DATA, postData, onCallBack);
		}
		
		
		
		//====================================================
		/**
		 * 获取用户金币等信息
		 * @param	param1
		 */
		public function getUserDataById(userId:int, param1:Function = null):void
		{
			if (userId == 0)
				return;
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					//LockScreen.getInstance().hide();
					callBackFun.call(null, param.data);
					callBackFun = null;
				}
			}
			//LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = userId;
			DotNetServer.sendHTTPRequest(ServerParse.GET_USER_INFO, postData, onCallBack);
		}
		
		//====================================================
		/**
		 * 获取背包数据
		 * @param	lockFlag是否显示加载界面
		 */ 
		public function getBagData(lockFlag:Boolean = true,param1:Function=null):void {
			var callBackFun:Function = param1;
		   function onCallBack(param:Object):void
		   {
			    if(lockFlag){
				   LockScreen.getInstance().hide();
					}
				BagData.getInstance().setBagData(param.data.inventory);
			   if (callBackFun != null)
				{
					callBackFun.call(null);
					callBackFun = null;
				}
			   
		   }
		   if(lockFlag){
		   LockScreen.getInstance().show(true);
		   }
		   var postData:URLVariables = new URLVariables();
		   DotNetServer.sendHTTPRequest(ServerParse.GET_BAG_DATA, postData, onCallBack);
		 }
		 /**
		  * 使用道具
		  */
		 public function useItem(soltId:int,itemId:int,param1:Function):void {
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					//LockScreen.getInstance().hide();
				
					callBackFun.call(null, param.data);
					callBackFun = null;
				}
			}
			//LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = soltId;
			postData.itemId = itemId;
			DotNetServer.sendHTTPRequest(ServerParse.USE_ITEM, postData, onCallBack);
		 }
		 /**
		  * 出售道具
		  */
		 public function sellItem(soltId:int,itemId:int,amount:int=1,param1:Function=null):void {
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					//LockScreen.getInstance().hide();
				
					callBackFun.call(null);
					callBackFun = null;
				}
			}
			//LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = soltId;
			postData.itemId = itemId;
			postData.amount = amount;
			DotNetServer.sendHTTPRequest(ServerParse.SELL_ITEM, postData, onCallBack);
		 }
		/*public function getBagData():void
		{
			var loader:URLLoader = new URLLoader();
			loader.addEventListener(Event.COMPLETE, completeHandler);
			
			var request:URLRequest = new URLRequest("1.txt");
			try
			{
				loader.load(request);
			}
			catch (error:Error)
			{
				//trace("Unable to load requested document.");
			}
			function completeHandler(event:Event):void
			{
				BagData.getInstance().setBagData(JSON.decode(event.target.data).inventory);
				trace(JSON.decode(event.target.data).inventory)
			}
		}*/
		
		//====================================================
		/**
		 * 获取/刷新战争学院信息
		 * @param	param1
		 */
		public function getTrainingData(param1:Function,showloading:Boolean=true):void {
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					LockScreen.getInstance().hide();
					callBackFun.call(null, param.data);
					callBackFun = null;
				}
			}
			if (showloading) {
				LockScreen.getInstance().show(true);
				}
			
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.GET_TRAINING_DATA, postData, onCallBack);
		 }
		 /**
		 * 战斗学院-挑战
		 * @param	param1
		 */
		public function trainingChallenge(decks:String, param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					LockScreen.getInstance().hide();
					callBackFun.call(null, param);
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
//			postData.id = SMZTUIManager.getInstance().trainingScene.userId;
			postData.decks = decks;
			DotNetServer.sendHTTPRequest(ServerParse.TRAINING_CHALLENGE, postData, onCallBack);
		}
		/**
		 * 获取指定编号的抽奖状态
		 * @param	param1
		 */
		public function getLotteryById(lotteryId:int, param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					//LockScreen.getInstance().hide();
					callBackFun.call(null, param.data);
				}
			}
			//LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = lotteryId;
			DotNetServer.sendHTTPRequest(ServerParse.GET_LOTTERY, postData, onCallBack);
		}
		/**
		 * 开始指定编号的抽奖
		 * @param	param1
		 */
		public function startLottery(lotteryId:int,discards:String, param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					LockScreen.getInstance().hide();
					callBackFun.call(null, param.data);
				}
			}
			//LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.discard = discards;
			postData.id = lotteryId;
			DotNetServer.sendHTTPRequest(ServerParse.START_LOTTERY, postData, onCallBack);
		}
		
		//====================================================
		/**
		 * 获取商城物品列表
		 * @param	param1
		 */
		public function getShopGoods(param:Function=null,showloading:Boolean=true):void
		{
			var callBackFun:Function = param;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					LockScreen.getInstance().hide();
					ShopModel.getInstance().setData(param.data);
					callBackFun.call(null);
				}
				
			}
			if(showloading){
				LockScreen.getInstance().show(true);
				}
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.GET_SHOP_GOODS_LIST, postData, onCallBack);
		}
		/**
		 * 购买商城道具
		 *  id	int	道具编号
			amount	int	购买数量
			type	int	付费类型，参考商城：支付类型

		 * @param	param1
		 */
		public function purchaseGoods(id:int,amount:int,type:int,param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					LockScreen.getInstance().hide();
					callBackFun.call(null, param.data);
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = id;
			postData.amount = amount;
			postData.type = type;
			DotNetServer.sendHTTPRequest(ServerParse.PURCHASE_GOODS, postData, onCallBack);
		}
		
		//====================================================
		/**
		 * 2.	获取酒馆信息
		 * @param	param1
		 */
		public function getTavernData(param1:Function,showloading:Boolean=true):void {
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					LockScreen.getInstance().hide();
					callBackFun.call(null, param.data.tavern);
					callBackFun = null;
				}
			}
			if (showloading) {
				LockScreen.getInstance().show(true);
				}
			
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.GET_TAVERN_DATA, postData, onCallBack);
		 }
		 /**
		 * 刷新整个酒馆的卡槽
		 * @param	param1
		 */
		public function refreshTavernData(param1:Function):void {
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					LockScreen.getInstance().hide();
					callBackFun.call(null, param.data);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.REFRESH_TAVERN, postData, onCallBack);
		 }
		 /**
		 * 4.	招募卡牌
		 * id	int	卡槽编号
			type	int	付费方式，参考商城：支付类型
		 * @param	param1
		 */
		public function purchaseCard(id:int,type:int,param1:Function):void {
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					LockScreen.getInstance().hide();
					callBackFun.call(null,param.data.bonus);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			
			var postData:URLVariables = new URLVariables();
			postData.id = id;
			postData.type = type;
			DotNetServer.sendHTTPRequest(ServerParse.PURCHASE_CARD, postData, onCallBack);
		 }
		/**
		 * 3.	解锁卡槽
		 * id	int	卡槽编号
			type	int	付费方式，参考商城：支付类型
		 * @param	param1
		 */
		public function unlockSlotById(id:int,param1:Function):void {
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					LockScreen.getInstance().hide();
					callBackFun.call(null);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			
			var postData:URLVariables = new URLVariables();
			postData.id = id;
			DotNetServer.sendHTTPRequest(ServerParse.UNLOCK_SLOT_BY_ID, postData, onCallBack);
		 }
		//========================聊天============================
		/**
		 * 4.	发送聊天信息
		 * channel	int	聊天频道，参考ChatChannel
			msg	string	内容
			tid	int	发送目标玩家编号（可选）

		 * @param	param1
		 */
		public function sendMessage(channel:int, msg:String, tid:int = 0, param1:Function = null ):void {
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					//LockScreen.getInstance().hide();
					callBackFun.call(null);
					callBackFun = null;
				}
			}
			//LockScreen.getInstance().show(true);
			
			var postData:URLVariables = new URLVariables();
			postData.channel = channel;
			postData.msg = msg;
			if (tid != 0) {
				postData.tid = tid;
				}
			DotNetServer.sendHTTPRequest(ServerParse.SEND_MESSAGE, postData, onCallBack);
		 }
		//================奴隶营地====================================
		/**
		 * 获取俘虏营地信息
		 * slaveCamp	SlaveCamp	奴隶营地信息

		 * @param	param1
		 */
		public function getSlaveData(param1:Function = null ):void {
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					LockScreen.getInstance().hide();
					callBackFun.call(null,param.data.slaveCamp);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.GET_SLAVE_DATA, postData, onCallBack);
		 }
		 
		 /**
		 * 俘虏指定玩家
		 * @param	param1
		 */
		public function getEnslaveData(decks:String, param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					LockScreen.getInstance().hide();
					callBackFun.call(null, param);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
//			postData.id = SMZTUIManager.getInstance().friendsPanel._currentRowUserId;
			postData.decks = decks;
			DotNetServer.sendHTTPRequest(ServerParse.ENSLAVE_DATA, postData, onCallBack);
		}
		
		
		/**
		 * 解救指定玩家-奴隶营地中
		 * id	int	奴隶玩家编号
			decks	array[int]	卡组编号列表

		 * @param	param1
		 */
		
		public function saveUser(id:int,decks:String, param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					LockScreen.getInstance().hide();
					callBackFun.call(null, param);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = id;
			postData.decks = decks;
			//postData.mid = SMZTUIManager.getInstance().friendsPanel._currentRowMasterId;
			DotNetServer.sendHTTPRequest(ServerParse.FREE_DATA, postData, onCallBack);
		}
		
		/**
		 * 指定奴隶进行工作。
		 * id	int	奴隶玩家编号
			work	SlaveWork	奴隶工作的类型
		 * @param	param1
		 */
		
		public function setSlaveWork(id:int,work:int, param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					LockScreen.getInstance().hide();
					callBackFun.call(null, param);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = id;
			postData.work = work;
			DotNetServer.sendHTTPRequest(ServerParse.SET_SLAVE_WORK, postData, onCallBack);
		}
		/**
		 * 8.	收获奴隶工作奖励
		 * id	int	奴隶玩家编号

		 * @param	param1
		 */
		
		public function getAcquireData(id:int, param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					LockScreen.getInstance().hide();
					callBackFun.call(null, param.data.bonus);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = id;
			DotNetServer.sendHTTPRequest(ServerParse.GET_ACQUIRE_DATA, postData, onCallBack);
		}
		//=============宿命之塔=======================================
		/**
		 * 获取闯关信息

		 * @param	param1
		 */
		
		public function getTowerStateData(param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					LockScreen.getInstance().hide();
					callBackFun.call(null, param.data.tower);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.GET_TOWER_DATA, postData, onCallBack);
		}
		/**
		 * 5.	挑战关卡

		 * @param	param1
		 */
		public function TowerChallenge(decks:String,param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					LockScreen.getInstance().hide();
					callBackFun.call(null, param);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.decks = decks;
			DotNetServer.sendHTTPRequest(ServerParse.TOWER_CHALLENGE, postData, onCallBack);
		}
		
		/**
		 * 6.	传送
			lv	int	需要传送的关卡编号
		 * @param	param1
		 */
		public function TowerTelePort(lv:int,param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					LockScreen.getInstance().hide();
					callBackFun.call(null);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = lv;
			DotNetServer.sendHTTPRequest(ServerParse.TOWER_TELEPORT, postData, onCallBack);
		}
		
		/**
		 *6.	获取关卡信息
			id	int	需要获取的关卡信息的编号
		 */
		public function TowerPassInfo(id:int,param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					LockScreen.getInstance().hide();
					callBackFun.call(null,param.data.level);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = id;
			DotNetServer.sendHTTPRequest(ServerParse.TOWER_PASS_INFO, postData, onCallBack);
		}
		
		/**
		 *将玩家传送到塔外（第0层）
		 */
		public function TowerQuit(param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				if (callBackFun != null)
				{
					LockScreen.getInstance().hide();
					callBackFun.call(null);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.TOWER_QUIT, postData, onCallBack);
		}
		//================女神像====================================
		/**
		 * 2.	获取活跃度任务列表
		 * @param	param1
		 */
		public function getActivityListData(param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null, param.data.activity);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.STATUE_ACTIVETY_LIST, postData, onCallBack);
		}
		
		/**
		 * 3.	领取活跃度宝箱
		 * @param	param1
		 */
		public function getBoxAward(id:int,param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = id;
			DotNetServer.sendHTTPRequest(ServerParse.STATUE_BOX_AWARD, postData, onCallBack);
		}
		
		/**
		 * 获取玩家的签到状态。
		 * @param	param1
		 */
		public function getSignInfo(param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param.data.sign);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.STATUE_SIGN_INFO, postData, onCallBack);
		}
		
		/**
		 * 打开指定编号的签到宝箱。
		 * 返回：lotteryId	int	抽奖编号
		 * @param	param1
		 */
		public function openSignBoxById(id:int,param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param.data);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = id;
			DotNetServer.sendHTTPRequest(ServerParse.STATUE_OPEN_BOX, postData, onCallBack);
		}
		//===============成就=====================================
		/**
		 * 2.	获取成就列表
		 * @param	param1
		 */
		public function getAchievementList(param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param.data);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.GET_ACHIEVEMENT_LIST, postData, onCallBack);
		}
		
		/**
		 * 装备指定成就上的称号
		 * @param	param1
		 */
		public function equipAchievement(id:int,param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = id;
			DotNetServer.sendHTTPRequest(ServerParse.EQUIP_ACHIEVEMENT, postData, onCallBack);
		}
		
		/**
		 * 领取指定成就的奖励
		 * @param	param1
		 */
		public function achievementAward(id:int,param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param.data.bonus);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = id;
			DotNetServer.sendHTTPRequest(ServerParse.ACHIEVEMENT_AWARD, postData, onCallBack);
		}
		//====================排行榜================================
		/**
		 * 获取指定类型的排行榜数据
		 * @param	param1
		 */
		public function getRankListData(type:int,page:int,param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param.data);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.type = type;
			postData.page = page;
			DotNetServer.sendHTTPRequest(ServerParse.GET_RANK_DATA, postData, onCallBack);
		}
		//==================日志==================================
		/**
		 * 4.	获取事件日志列表
		 * @param	param1
		 */
		public function getLogListData(param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param.data.logs);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.GET_LOG_LIST, postData, onCallBack);
		}
		//=================合成===================================
		/**
		 * 令指定卡牌进阶
		 * id	int	需要进阶的卡牌编号
			protect	int	是否使用防爆石：1-是，0-否
			luck	int	是否使用幸运石：1-是，0-否
			
			进阶结果：
			0-失败且卡牌被摧毁
			1-失败但卡牌未被摧毁
			2-成功

		 * @param	param1
		 */
		public function cardStarUp(id:int,param1:Function = null,protect:int=0,luck:int=0):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param.data.result);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = id;
			postData.protect = protect;
			postData.luck = luck;
			DotNetServer.sendHTTPRequest(ServerParse.CARD_STARUP, postData, onCallBack);
		}
		
		/**
		 * 合成指定编号的卡牌
			id	int	需要合成的目标卡牌编号
		 * @param	param1
		 */
		public function cardMix(id:int,param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null);
					callBackFun = null;
				}
			}
			//LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = id;
			DotNetServer.sendHTTPRequest(ServerParse.CARD_MIX, postData, onCallBack);
		}
		//===================VIP=================================
		/**
		 * 获取会员信息
		 * @param	param1
		 */
		public function getVipState(param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param.data.vipState);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.GET_VIP_STATE, postData, onCallBack);
		}
		
		/**
		 * 领取每日奖励
		 * @param	param1
		 */
		public function getDialyGift(param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.GET_VIP_DIALY, postData, onCallBack);
		}
		
		/**
		 * 领取充值奖励
		 * @param	param1
		 */
		public function getOnceGift(lv:int,param1:Function = null):void
		{
			Debug.log("lv="+lv)
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = lv;
			DotNetServer.sendHTTPRequest(ServerParse.GET_VIP_ONCE, postData, onCallBack);
		}
		//=====================防多开===============================
		/**
		 * 防多开
		 * code	string	校验码
		 * @param	param1
		 */
		public function getCode(param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				
				if (callBackFun != null)
				{
					Debug.log("param.data.code="+param.data.code)
					callBackFun.call(null,param.data.code);
					callBackFun = null;
				}
			}
			var postData:URLVariables = new URLVariables();
			postData.token = ApplicationConfig._token;
			DotNetServer.simpleLoad(ServerParse.GET_CODE, postData, onCallBack);
		}
		//========================首冲活动============================
		/**
		 * 获取首充特惠活动状态信息
		 * @param	param1
		 */
		public function getFistEventInfor(param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param.data.goods);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.GET_EVENT_INFOR, postData, onCallBack);
		}
		/**
		 * 购买指定编号的特惠商品。
		 * @param	param1
		 */
		public function buyGoodsById(id:int,param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param.data.bonus);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = id;
			DotNetServer.sendHTTPRequest(ServerParse.BUY_EVENT_GOODS, postData, onCallBack);
		}
		//====================邀请好友活动================================
		/**
		 * 获取好友邀请活动状态信息。
		 * @param	param1
		 */
		public function getInviteFriendEventInfor(param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param.data);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.GET_INVITE_EVENT_INFOR, postData, onCallBack);
		}
		
		/**
		 * 领取指定条件编号的奖励。
		 * id	int	需要领取的奖励编号（即成功邀请的好友数量）
		 * @param	param1
		 */
		public function getInviteFriendEventAward(id:int,param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param.data.bonus);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = id;
			DotNetServer.sendHTTPRequest(ServerParse.GET_INVITE_EVENT_AWARD, postData, onCallBack);
		}
		
		/**
		 * 2.	获取活动状态。
		 * @param	param1
		 * ranks	array[RechargeRank]	可兑换商品列表
			begin	int	活动开始日期时间戳
			end	int	活动结束日期时间戳

		 */
		public function getRechargeRankEventInfor(param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param.data);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.GET_RECHARGE_RANK, postData, onCallBack);
		}
		
		/**
		 *领取当前登录玩家所在排名的奖励
		 * id	int
		 * @param	param1
		 */
		public function getRechargeRankEventAward(param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param.data.bonus);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.AWARD_RECHARGE_RANK, postData, onCallBack);
		}
		//====================水晶矿洞================================
		/**
		 * 3.	获取区域信息
		 * page	int	目标区域编号
		 * @param	param1
		 */
		public function getAreaMines(page:int,param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param.data);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.page = page;
			DotNetServer.sendHTTPRequest(ServerParse.GET_AREA_MINES, postData, onCallBack);
		}
		
		/**
		 * 4.	获取矿点信息
		 * id	int	目标矿点编号
		 * @param	param1
		 */
		public function getPointMine(id:int,param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param.data);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = id;
			DotNetServer.sendHTTPRequest(ServerParse.GET_POINT_MINES, postData, onCallBack);
		}
		
		/**
		 * 5.	获取我的矿点信息
		 * id	int	目标矿点编号
		 * @param	param1
		 */
		public function getMyMine(param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				CrystalHoleModel.getInstance().updataMyMineData(param.data);//更新我的矿体
				if (callBackFun != null)
				{
					
					callBackFun.call(null,param.data);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.GET_MY_MINES, postData, onCallBack);
		}
		
		/**
		 * 6.	收获矿点
		 * id	int	目标矿点编号
		 * @param	param1
		 */
		public function harvestMine(id:int,param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param.data.bonus);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = id;
			DotNetServer.sendHTTPRequest(ServerParse.HARVEST_MINES, postData, onCallBack);
		}
		
		/**
		 * 7.	占领矿点
		 * id	int	目标矿点编号
			decks	array[int]	卡组槽编号数组

		 * @param	param1
		 */
		public function occupyMine(id:int,decks:String,param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = id;
			postData.decks = decks;
			DotNetServer.sendHTTPRequest(ServerParse.OCCUPY_MINES, postData, onCallBack);
		}
		
		/**
		 * 8.	掠夺矿点
		 * id	int	目标矿点编号
			decks	array[int]	卡组槽编号数组

		 * @param	param1
		 */
		public function robMine(id:int,decks:String,param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					/*//更新我的矿体
					SMZTController.getInstance().getMyMine();*/
					
					callBackFun.call(null,param);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = id;
			postData.decks = decks;
			DotNetServer.sendHTTPRequest(ServerParse.ROB_MINES, postData, onCallBack);
		}
		
		/**
		 * 协助指定编号的矿点
		 * id	int	目标矿点编号

		 * @param	param1
		 */
		public function assetsMines(id:int,param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param.data.bonus);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = id;
			DotNetServer.sendHTTPRequest(ServerParse.ASSIST_MINES, postData, onCallBack);
		}
		
		/**
		 * 10.	偷窃矿点
		 * id	int	目标矿点编号

		 * @param	param1
		 */
		public function stealMines(id:int,param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param.data.bonus);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = id;
			DotNetServer.sendHTTPRequest(ServerParse.STEAL_MINES, postData, onCallBack);
		}
		
		/**
		 * 11.	放弃矿点
		 * id	int	目标矿点编号

		 * @param	param1
		 */
		public function giveUpMines(id:int,param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param.data);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = id;
			DotNetServer.sendHTTPRequest(ServerParse.GIVEUP_MINES, postData, onCallBack);
		}
		//====================泰坦来逆袭================================
		/**
		 * 获取可兑换商品列表
		 * @param	param1
		 */
		public function getExchangeGoods(param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param.data.goods);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.GET_EXCHANGE_GOODS, postData, onCallBack);
		}
		
		/**
		 * 4.	获取闯关状态
		 * @return level	RushLevel	当前所在关卡
			revive	int	复活点所在关卡编号，若没有复活点则为0
			surplus	int	剩余挑战次数
			ticket	int	兑换券数量
		 */
		public function getPassInfo(param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param.data);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.GET_PASS_INFO, postData, onCallBack);
		}
		
		
		/**
		 * 5.	闯关
		 * revive	int	是否使用水晶复活
			decks	array[int]	出战卡组编号数组

		 * @return battleId	string	战斗编号
		 */
		public function challengePass(revive:int=0,decks:String="",param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.revive = revive;
			postData.decks = decks;
			DotNetServer.sendHTTPRequest(ServerParse.CHALLENG_PASS, postData, onCallBack);
		}
		
		/**
		 * 6.	兑换道具
		 * id	int	兑换编号
		 * @return bonus	Bonus	兑换成功后的奖励
		 */
		public function exchengeGood(id:int,param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param.data.bonus);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = id;
			DotNetServer.sendHTTPRequest(ServerParse.EXCHENG_GOOD, postData, onCallBack);
		}
		/**
		 * 花水晶把当前关卡设置成复活点
		 */
		public function useCrystalRevive(param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param.data);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.USER_CRYSTAL_REVIVE, postData, onCallBack);
		}
		
		
		//---------------------龙宝-----------------------------------
		/**
		 * 获取当前玩家推图基本状态信息
		 */
		public function getLongBaoInfo(param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param.data);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.GET_LONGBAO_INFO, postData, onCallBack);
		}
		
		
		/**
		 * 获取当前玩家推图章节状态信息
		 * id	int	章节编号
		 * 
		 * @return levels	array[StoryLevel]	关卡数组
			@return chest	Bonus	全通宝箱奖励
			@return earned	int	是否已领取奖励1-是 0-否
		 */
		public function getChapterInfo(id:int,param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param.data);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = id;
			DotNetServer.sendHTTPRequest(ServerParse.GET_CHAPTER_INFO, postData, onCallBack);
		}
		
		/**
		 * 获取当前玩家推图章节状态信息
		 * id	int	关卡唯一编号
		 * decks	array[int]	出战卡组编号数组
		 * 
		 * battleId	string	战斗记录编号
			bonus	Bonus	战斗奖励
		 */
		public function challengeStory(id:int,decks:String,param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = id;
			postData.decks = decks;
			DotNetServer.sendHTTPRequest(ServerParse.CHALLENGE_STORY, postData, onCallBack);
		}
		
		/**
		 * 探索
		 */
		public function searchStory(id:int,param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param.data);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = id;
			DotNetServer.sendHTTPRequest(ServerParse.SEARCH_STORY, postData, onCallBack);
		}
		
		/**
		 * 8.	领取章节奖励
		 */
		public function getBonusChapter(id:int,param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param.data);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = id;
			DotNetServer.sendHTTPRequest(ServerParse.CAHPTER_AWARD, postData, onCallBack);
		}
		
		/**
		 * 出售指定编号的卡牌
		 */
		public function sellCardById(id:int,qty:int=1,param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param.data.bonus);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			postData.id = id;
			postData.qty = qty;
			DotNetServer.sendHTTPRequest(ServerParse.SELL_CARD, postData, onCallBack);
		}
		//-----------------黄钻---------------------------------------
		/**
		 * 获取当前玩家的黄钻礼包领取状态
		 * @return newbie	Bonus	新手礼包状态
					dialy	array[Bonus]	每日礼包数组，第一个为Vip1礼包奖励，依此类推
					newbieAwarded	int	是否已领取新手礼包 1-是 0-否
					dialyAwarded	int	是否已领取每日礼包 1-是 0-否

		 */
		public function getAwardYellowData(param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					
					callBackFun.call(null,param.data);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.GET_YELLOW_STATE, postData, onCallBack);
		}
		
		/**
		 * 2.	领取新手礼包

		 */
		public function getAwardNewBieYellow(param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				if (callBackFun != null)
				{
					callBackFun.call(null);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.GET_YELLOW_NEWBIE_AWARD, postData, onCallBack);
		}
		
		/**
		 * 2.	领取当前玩家的每日礼包

		 */
		public function getAwardDialyYellow(param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				if (callBackFun != null)
				{
					callBackFun.call(null);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.GET_YELLOW_DIALY_AWARD, postData, onCallBack);
		}
		
		/**
		 * 2.	领取当前玩家的升级礼包
			noVip	Bonus	无会员的升级礼包
			yellowVip	Bonus	黄钻会员的升级礼包

		 */
		public function getAwardLevelUpYellow(param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				if (callBackFun != null)
				{
					callBackFun.call(null,param.data);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.GET_YELLOW_LEVEL_UP_AWARD, postData, onCallBack);
		}
		//----------------------腾讯活动----------------------------------
		/**
		 * 获取首充特惠活动状态信息
		 * @param	param1
		 */
		public function getQQFistEventInfor(param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param.data.goods);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.GET_QQ_EVENT_INFOR, postData, onCallBack);
		}
		
		/**
		 * 2.	获取活动状态。
		 * @param	param1
		 * ranks	array[RechargeRank]	可兑换商品列表
			begin	int	活动开始日期时间戳
			end	int	活动结束日期时间戳

		 */
		public function QQgetRechargeRankEventInfor(param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param.data);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.GET_QQ_RECHARGE_RANK, postData, onCallBack);
		}
		
		/**
		 *领取当前登录玩家所在排名的奖励
		 * id	int
		 * @param	param1
		 */
		public function QQgetRechargeRankEventAward(param1:Function = null):void
		{
			var callBackFun:Function = param1;
			function onCallBack(param:Object):void
			{
				LockScreen.getInstance().hide();
				
				if (callBackFun != null)
				{
					callBackFun.call(null,param.data.bonus);
					callBackFun = null;
				}
			}
			LockScreen.getInstance().show(true);
			var postData:URLVariables = new URLVariables();
			DotNetServer.sendHTTPRequest(ServerParse.AWARD_QQ_RECHARGE_RANK, postData, onCallBack);
		}
		//--------------------------------------------------------
		public static function getInstance():SMZTController
		{
			if (_SMZTController == null)
			{
				_SMZTController = new SMZTController;
			}
			return _SMZTController;
		} // end function
	
	}
}
