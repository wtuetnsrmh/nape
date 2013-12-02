package project.config
{
	
	/*
	 * 描述：背包配置信息
	 *
	 */
	public class ItemConfig extends Object
	{
		public static var ITEM_CONFIG:XML; //物品配置
		
		public static var CARD_CONFIG:XML; //卡牌信息
		public static var SKILL_CONFIG:XML; //技能信息
		public static var LEVEL_CONFIG:XML; //等级信息
		public static var DECKS_CONFIG:XML; //卡组解锁信息
		public static var ACTIVITY_CONFIG:XML; //活跃度及宝箱信息
		public static var ACHV_CONFIG:XML; //成就信息
		public static var MIXTURES_CONFIG:XML; //合成公式
		public static var VIP_CONFIG:XML; //ＶＩＰ
		
		public static var CHARACTERS_CONFIG:XML = <Characters>
				<Race Text="北欧神族" id="3" />
				<Race Text="人族" id="1" />
				<Race Text="希腊神族" id="2" />
				<Race Text="异界神族" id="4" />
				<Race Text="无种族" id="5" />
				<race Label="种族" />
				<CardClass Text="英雄" id="1" />
				<CardClass Text="近战" id="2" />
				<CardClass Text="骑士" id="3" />
				<CardClass Text="野兽" id="4" />
				<CardClass Text="不死" id="5" />
				<CardClass Text="射手" id="6" />
				<CardClass Text="地形" id="7" />
				<CardClass Text="龙族" id="8" />
				<CardClass Text="使魔" id="9" />
				<CardClass Text="神裔" id="10" />
				<CardClass Text="魔物" id="11" />
				<CardClass Text="装备" id="12" />
				<CardClass Text="卷轴" id="13" />
				<Level Text="级" />
				<Gold Text="金币" />
				<Crystal Text="水晶" />
				<Exp Text="经验" />
				<None Text="无" />
			</Characters>
		
		//新手引导配置文件
		//Step ID每个model中都要依次增加且唯一，frame可以随意不唯一，表示对应的帧数
		//model id从１开始,levelid,stepid从0开始
		public static var NEWBIE_CONFIG:XML =  <NewBie>
				<Model ID="1">
					<Level ID="0" ClassName="Level11">
						<Step ID="0" Frame="1" />
					</Level>
					<Level ID="1" ClassName="Level11">
						<Step ID="1" Frame="1" />
					</Level>
					<Level ID="2" ClassName="Level12">
						<Step ID="2" Frame="1" />
						<Step ID="3" Frame="2" />
						<Step ID="4" Frame="3" />
						<Step ID="5" Frame="4" />
						<Step ID="6" Frame="5" />
						<Step ID="7" Frame="6" />
						<Step ID="8" Frame="7" />
						<Step ID="9" Frame="8" />
						<Step ID="10" Frame="9" />
						<Step ID="11" Frame="10" />
						<Step ID="12" Frame="11" />
						<Step ID="13" Frame="12" />
						<Step ID="14" Frame="13" />
						<Step ID="15" Frame="14" />
						<Step ID="16" Frame="15" />
						<Step ID="17" Frame="16" />
						<Step ID="18" Frame="17" />
						<Step ID="19" Frame="18" />
						<Step ID="20" Frame="19" />
						<Step ID="21" Frame="20" />
					</Level>
					<Level ID="3" ClassName="Level13">
						<Step ID="22" Frame="1" />
						<Step ID="23" Frame="2" />
						<Step ID="24" Frame="3" />
						<Step ID="25" Frame="4" />
					</Level>
					<Level ID="4" ClassName="Level14">
						<Step ID="26" Frame="1" />
						<Step ID="27" Frame="2" />
						<Step ID="28" Frame="3" />
						<Step ID="29" Frame="4" />
						<Step ID="30" Frame="5" />
						<Step ID="31" Frame="6" />
						<Step ID="32" Frame="7" />
						<Step ID="33" Frame="8" />
						<Step ID="34" Frame="9" />
						<Step ID="35" Frame="10" />
					</Level>
					<Level ID="5" ClassName="Level15">
						<Step ID="36" Frame="1" />
						<Step ID="37" Frame="2" />
						<Step ID="38" Frame="3" />
						<Step ID="39" Frame="4" />
						<Step ID="40" Frame="5" />
					</Level>
					<Level ID="6" ClassName="Level16">
						<Step ID="41" Frame="1" />
						<Step ID="42" Frame="2" />
					</Level>
					<Level ID="7" ClassName="Level17">
						<Step ID="43" Frame="1" />
						<Step ID="44" Frame="2" />
						<Step ID="45" Frame="3" />
					</Level>
				</Model>
				<Model ID="2">
					<Level ID="0" ClassName="Level21">
						<Step ID="0" Frame="1" />
						<Step ID="1" Frame="2" />
					</Level>
				</Model>
				<Model ID="3">
					<Level ID="0" ClassName="Level31">
						<Step ID="0" Frame="1" />
						<Step ID="1" Frame="2" />
						<Step ID="2" Frame="3" />
						<Step ID="3" Frame="4" />
					</Level>
				</Model>
				<Model ID="4">
					<Level ID="0" ClassName="Level41">
						<Step ID="0" Frame="1" />
						<Step ID="1" Frame="2" />
						<Step ID="2" Frame="3" />
						<Step ID="3" Frame="4" />
						<Step ID="4" Frame="5" />
					</Level>
				</Model>
				<Model ID="5">
					<Level ID="0" ClassName="Level51">
						<Step ID="0" Frame="1" />
						<Step ID="1" Frame="2" />
						<Step ID="2" Frame="3" />
						<Step ID="3" Frame="4" />
					</Level>
				</Model>
				<Model ID="6">
					<Level ID="0" ClassName="Level61">
						<Step ID="0" Frame="1" />
					</Level>
				</Model>
			</NewBie>
		
		public function ItemConfig()
		{
			return;
		} // end function
	
	}
}
