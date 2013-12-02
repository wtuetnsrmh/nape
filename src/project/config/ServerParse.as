package project.config
{
	/*
	* 描述：服务请求地址集
	* 
	*/
    public class ServerParse extends Object
    {
        //public static const JSON_TEST:String = "handlers/user/test.ashx";
		public static const SELECTE_HERO:String = "/handlers/guide/selecthero.ashx";//选择英雄
		public static const NEXT:String = "/handlers/guide/next.ashx";//增加玩家当前新手引导进度
		public static const TRACRE:String = "/handlers/user/trace.ashx";//向服务端登记用户某个行为。
		public static const STATUS:String = "/handlers/guide/info.ashx";//获取玩家当前新手引导步骤
		public static const LOGIN_TEST:String = "handlers/user/test.ashx";//登陆
		public static const INITIALIZE:String = "handlers/user/initialize.ashx";//3.	获取玩家初始化信息
		public static const CREA_CARDGROUP:String = "handlers/deck/create.ashx";//1.	创建卡组
		public static const UNLOCK_DECKITEM:String = "/handlers/deck/unlock.ashx";//解锁指定编号的卡组槽
		public static const DELETE_DECKITEM:String = "/handlers/deck/delete.ashx";//解除卡组
		public static const ATTACK_HISTORY:String = "/handlers/battle/history.ashx";//获取战斗记录
		
		public static const HEART_BEAT:String = "/handlers/user/heartbeat.ashx";//心跳请求
		
		//public static const ATTACK_HISTORY:String = "/handlers/battle/test.ashx";//获取战斗记录测试
		public static const ATTACK_MODLE_HISTORY:String = "/handlers/battle/test2.ashx";//获取战斗记录测试
		
		public static const GET_USER_INFOR_FOR_FEED:String = "/handlers/feed/info.ashx";//获取用户动态
		public static const GET_DEFENCE_DATA:String = "/handlers/defence/status.ashx";//获取防御配置
		public static const SET_DEFENCE_DATA:String = "/handlers/defence/setup.ashx";//设置防御卡组
		public static const GET_ARENA_DATA:String = "/handlers/arena/list.ashx";//获取竞技场信息
		public static const ARENA_CHALLENGE:String = "/handlers/arena/challenge.ashx";//挑战指定的竞技场
		public static const GET_FRIENDS_DATA:String = "/handlers/friend/list.ashx";//获取好友列表信息。
		public static const GET_FRIENDS_BOUNS_DATA:String = "/handlers/friend/bonus.ashx";//获取好友的随机事件奖励。
		public static const ENSLAVE_DATA:String = "/handlers/slave/enslave.ashx";//俘虏指定的玩家
		public static const FREE_DATA:String = "/handlers/slave/free.ashx";//释放指定俘虏
		public static const SAVE_SLAVES:String = "/handlers/slave/save.ashx";//7.	解救指定俘虏
		public static const CHALLENGE_FRIENDS_DATA:String = "/handlers/friend/challenge.ashx";//挑战好友
		public static const GET_USER_INFO:String = "/handlers/user/info.ashx";//获取指定玩家的统计信息。 
		public static const GET_BAG_DATA:String = "/handlers/inventory/info.ashx";//获取背包数据
		public static const USE_ITEM:String = "/handlers/inventory/use.ashx";//使用道具
		public static const SELL_ITEM:String = "/handlers/inventory/sell.ashx";//出售道具
		public static const GET_TRAINING_DATA:String = "/handlers/training/info.ashx";//获取/刷新战争学院信息
		public static const TRAINING_CHALLENGE:String = "/handlers/training/challenge.ashx";//挑战战争学院中的玩家
		public static const GET_LOTTERY:String = "/handlers/lottery/info.ashx";//获取指定编号的抽奖状态
		public static const START_LOTTERY:String = "/handlers/lottery/start.ashx";//开始指定编号的抽奖
		public static const GET_SHOP_GOODS_LIST:String = "/handlers/store/list.ashx";//获取商城物品列表
		public static const PURCHASE_GOODS:String = "/handlers/store/purchase.ashx";//购买商城道具
		public static const GET_TAVERN_DATA:String = "/handlers/tavern/info.ashx";//获取酒馆信息
		public static const PURCHASE_CARD:String = "/handlers/tavern/purchase.ashx";//招募指定卡槽编号的卡牌
		public static const UNLOCK_SLOT_BY_ID:String = "/handlers/tavern/unlock.ashx";//解锁酒馆指定编号的卡槽
		public static const REFRESH_TAVERN:String = "/handlers/tavern/refresh.ashx";//5.	刷新酒馆
		public static const SEND_MESSAGE:String = "/handlers/chat/send.ashx";//发送聊天信息
		public static const GET_SLAVE_DATA:String = "/handlers/slave/info.ashx";//获取俘虏营地信息
		public static const SET_SLAVE_WORK:String = "/handlers/slave/work.ashx";//指定奴隶进行工作。
		public static const GET_ACQUIRE_DATA:String = "/handlers/slave/acquire.ashx";//收获指定奴隶的工作奖励。
		public static const GET_TOWER_DATA:String = "/handlers/tower/info.ashx";//获取闯关信息
		public static const TOWER_CHALLENGE:String = "/handlers/tower/challenge.ashx";//5.	挑战关卡
		public static const TOWER_TELEPORT:String = "/handlers/tower/teleport.ashx";//6.	传送
		public static const TOWER_QUIT:String = "/handlers/tower/quit.ashx";//9.	退出
		public static const TOWER_PASS_INFO:String = "/handlers/tower/levelinfo.ashx";//获取闯关信息
		public static const STATUE_ACTIVETY_LIST:String = "/handlers/activity/info.ashx";//获取活跃度任务列表
		public static const STATUE_BOX_AWARD:String = "/handlers/activity/award.ashx";//领取指定编号的宝箱
		public static const STATUE_SIGN_INFO:String = "/handlers/sign/info.ashx";//获取玩家的签到状态。
		public static const STATUE_OPEN_BOX:String = "/handlers/sign/open.ashx";//打开指定编号的签到宝箱。
		public static const GET_ACHIEVEMENT_LIST:String = "/handlers/achv/list.ashx";//获取玩家的成就列表
		public static const EQUIP_ACHIEVEMENT:String = "/handlers/achv/equip.ashx";//装备指定成就上的称号
		public static const ACHIEVEMENT_AWARD:String = "/handlers/achv/award.ashx";//领取指定成就的奖励
		public static const GET_RANK_DATA:String = "/handlers/rank/info.ashx";//获取指定类型的排行榜数据
		public static const GET_FEED_BONUS:String = "/handlers/feed/callback.ashx";//获取用户发布分享后的奖励
		public static const GET_LOG_LIST:String = "/handlers/eventlog/list.ashx";//玩家事件日志列表
		public static const CARD_STARUP:String = "/handlers/card/starup.ashx";//令指定卡牌进阶
		public static const CARD_MIX:String = "/handlers/card/mix.ashx";//合成指定编号的卡牌
		public static const GET_VIP_STATE:String = "/handlers/vip/info.ashx";//获取会员信息
		public static const GET_VIP_DIALY:String = "/handlers/vip/dialy.ashx";//领取每日奖励
		public static const GET_VIP_ONCE:String = "/handlers/vip/once.ashx";//领取充值奖励
		public static const GET_CODE:String = "/handlers/verify/code.ashx";//4.	会话校验
		
        //public static const VERIFY:String = "handler/verify.ashx";
		
		
        

        public function ServerParse()
        {
            return;
        }// end function

    }
}
