package project.events
{
	/*
	* 描述：所有UI事件类型集
	* 
	*/
    import flash.events.Event;
	
    public class UIEvent extends Event
    {
        public static const OPEN_BAG_PANE:String = "OPEN_BAG_PANE";//打开背包面板
        public static const OPEN_PLAYER_ATTR_PANE:String = "OPEN_PLAYER_ATTR_PANE";//打开角色属性面板
		
		public static const SHOW_SKYCITY_SCENE:String = "SHOW_SKYCITY_SCENE";//天空之城
		public static const SHOW_LONGBAO_SCENE:String = "SHOW_LONGBAO_SCENE";//龙窟
		public static const SHOW_STATUE_SCENE:String = "SHOW_STATUE_SCENE";//女神像
		public static const SHOW_SLAVE_SCENE:String = "SHOW_SLAVE_SCENE";//奴隶营地
		public static const SHOW_ARENA_SCENE:String = "SHOW_ARENA_SCENE";//竞技声
		public static const SHOW_TOWER_SCENE:String = "SHOW_TOWER_SCENE";//宿命之塔
		public static const SHOW_COLLENGE_SCENE:String = "SHOW_COLLENGE_SCENE";//修炼馆
		public static const SHOW_CULTIVATION_SCENE:String = "SHOW_CULTIVATION_SCENE";//战争学院
		public static const SHOW_TAVERN_SCENE:String = "SHOW_TAVERN_SCENE";//酒馆
		public static const SHOW_CRYSTALHOLE_SCENE:String = "SHOW_CRYSTALHOLE_SCENE";//水晶矿洞
		
		
		
        public static const SHOW_WEAPON_SCENE:String = "SHOW_WEAPON_SCENE";
        public static const SHOW_OFFICER_SCENE:String = "SHOW_OFFICER_SCENE";
        public static const SHOW_SKILL_SCENE:String = "SHOW_SKILL_SCENE";
        public static const SHOW_BUDOUKAI_SCENE:String = "SHOW_BUDOUKAI_SCENE";
        //public static const SHOW_ARENA_SCENE:String = "SHOW_ARENA_SCENE";
        public static const SHOW_MAIN_SCENE:String = "SHOW_MAIN_SCENE";
        public static const SHOW_PVE_SCENE:String = "SHOW_PVE_SCENE";
		public static const SHOW_BLESS_SCENE:String = "SHOW_BLESS_SCENE";
		
        public static const SHOW_SHOP:String = "SHOW_SHOP";//显示出售
        public static const SHOW_FEED:String = "SHOW_FEED";
        public static const SHOW_CHAMPION:String = "SHOW_CHAMPION";
        public static const ITEM_CHOOSE:String = "ITEM_CHOOSE";//背包中的道具点击变化时

        public function UIEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
        {
            super(param1, param2, param3);
            return;
        }// end function

    }
}
