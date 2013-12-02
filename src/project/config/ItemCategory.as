package project.config
{
	/*
	* 描述：背包类别
	* 
	*/
    public class ItemCategory extends Object
    {
		//要与配置的XML文件相对应
		public static const CARDS:int =1;//卡包
		public static const PROPS:int =2;//道具
		public static const OTHERS:int =3;//其他
		public static const MIX:int = 4;//公式（公式也放在其他里）
		public static const GIFT:int = 5;//礼包（礼包也放在道具里）
        /*public static const WEAPON:int = 1;//武器
        public static const OFFICER:int = 2;//武将
        public static const SKILL:int = 0;//技能
        public static const JEWELRY:int = 3;//饰品
        public static const HP_CARD:int = 4;//个人信息
        public static const ITEM:int = 5;//道具
        public static const STONE:int = 28;//商场
        public static const SUIT:int = 33;//服装*/

        public function ItemCategory()
        {
            return;
        }// end function

    }
}
