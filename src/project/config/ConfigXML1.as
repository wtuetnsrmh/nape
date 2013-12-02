package project.config
{
	import flash.display.Sprite;
	
	/**
	 * 配置文件包括：
	 *   所有的错误提示文字
	 *   技能信息
	 *   物品信息
	 *   卡牌信息
	 *   等级信息
	 * @author bbjxl
	   www.bbjxl.com
	   time 03/29/2013 19:10:52
	 */
	public class ConfigXML extends Sprite
	{
		public static const LEVEL_CONFIG:XML = <Levels>
  <Level ID="1" Exp="0" />
  <Level ID="2" Exp="100" />
  <Level ID="3" Exp="400" />
  <Level ID="4" Exp="900" />
  <Level ID="5" Exp="1600" />
  <Level ID="6" Exp="2500" />
  <Level ID="7" Exp="3600" />
  <Level ID="8" Exp="4900" />
  <Level ID="9" Exp="6400" />
  <Level ID="10" Exp="8100" />
  <Level ID="11" Exp="10000" />
  <Level ID="12" Exp="12100" />
  <Level ID="13" Exp="14400" />
  <Level ID="14" Exp="16900" />
  <Level ID="15" Exp="19600" />
  <Level ID="16" Exp="22500" />
  <Level ID="17" Exp="25600" />
  <Level ID="18" Exp="28900" />
  <Level ID="19" Exp="32400" />
  <Level ID="20" Exp="36100" />
  <Level ID="21" Exp="40000" />
  <Level ID="22" Exp="44100" />
  <Level ID="23" Exp="48400" />
  <Level ID="24" Exp="52900" />
  <Level ID="25" Exp="57600" />
  <Level ID="26" Exp="62500" />
  <Level ID="27" Exp="67600" />
  <Level ID="28" Exp="72900" />
  <Level ID="29" Exp="78400" />
  <Level ID="30" Exp="84100" />
  <Level ID="31" Exp="90000" />
  <Level ID="32" Exp="96100" />
  <Level ID="33" Exp="102400" />
  <Level ID="34" Exp="108900" />
  <Level ID="35" Exp="115600" />
  <Level ID="36" Exp="122500" />
  <Level ID="37" Exp="129600" />
  <Level ID="38" Exp="136900" />
  <Level ID="39" Exp="144400" />
  <Level ID="40" Exp="152100" />
  <Level ID="41" Exp="160000" />
  <Level ID="42" Exp="168100" />
  <Level ID="43" Exp="176400" />
  <Level ID="44" Exp="184900" />
  <Level ID="45" Exp="193600" />
  <Level ID="46" Exp="202500" />
  <Level ID="47" Exp="211600" />
  <Level ID="48" Exp="220900" />
  <Level ID="49" Exp="230400" />
  <Level ID="50" Exp="240100" />
  <Level ID="51" Exp="250000" />
  <Level ID="52" Exp="260100" />
  <Level ID="53" Exp="270400" />
  <Level ID="54" Exp="280900" />
  <Level ID="55" Exp="291600" />
  <Level ID="56" Exp="302500" />
  <Level ID="57" Exp="313600" />
  <Level ID="58" Exp="324900" />
  <Level ID="59" Exp="336400" />
  <Level ID="60" Exp="348100" />
  <Level ID="61" Exp="360000" />
  <Level ID="62" Exp="372100" />
  <Level ID="63" Exp="384400" />
  <Level ID="64" Exp="396900" />
  <Level ID="65" Exp="409600" />
  <Level ID="66" Exp="422500" />
  <Level ID="67" Exp="435600" />
  <Level ID="68" Exp="448900" />
  <Level ID="69" Exp="462400" />
  <Level ID="70" Exp="476100" />
  <Level ID="71" Exp="490000" />
  <Level ID="72" Exp="504100" />
  <Level ID="73" Exp="518400" />
  <Level ID="74" Exp="532900" />
  <Level ID="75" Exp="547600" />
  <Level ID="76" Exp="562500" />
  <Level ID="77" Exp="577600" />
  <Level ID="78" Exp="592900" />
  <Level ID="79" Exp="608400" />
  <Level ID="80" Exp="624100" />
  <Level ID="81" Exp="640000" />
  <Level ID="82" Exp="656100" />
  <Level ID="83" Exp="672400" />
  <Level ID="84" Exp="688900" />
  <Level ID="85" Exp="705600" />
  <Level ID="86" Exp="722500" />
  <Level ID="87" Exp="739600" />
  <Level ID="88" Exp="756900" />
  <Level ID="89" Exp="774400" />
  <Level ID="90" Exp="792100" />
  <Level ID="91" Exp="810000" />
  <Level ID="92" Exp="828100" />
  <Level ID="93" Exp="846400" />
  <Level ID="94" Exp="864900" />
  <Level ID="95" Exp="883600" />
  <Level ID="96" Exp="902500" />
  <Level ID="97" Exp="921600" />
  <Level ID="98" Exp="940900" />
  <Level ID="99" Exp="960400" />
</Levels>
		 
		public static const SKILL_CONFIG:XML = <Skills>
  <Skill Description="对敌方战场上所有目标施放，使目标受到2点技能伤害，并有50%的概率被冰冻（下一回合无法行动）。" ID="1" Name="暴风雪Ⅱ" />
  <Skill Description="对敌方场上所有目标造成1点技能伤害。" ID="2" Name="爆炎术Ⅰ" />
  <Skill Description="对敌方场上所有目标造成2点技能伤害。" ID="3" Name="爆炎术Ⅱ" />
  <Skill Description="自身HP低于或等于2时增加3点攻击力。" ID="4" Name="不屈" />
  <Skill Description="离开战场时，降低对方2点信仰。" ID="5" Name="背信者Ⅱ" />
  <Skill Description="对正面目标施放，使目标受到1点技能伤害，并有50%的概率被冰冻（下一回合无法行动）。" ID="6" Name="冰弹Ⅰ" />
  <Skill Description="对正面目标施放，使目标受到2点技能伤害，并有50%的概率被冰冻（下一回合无法行动）。" ID="7" Name="冰弹Ⅱ" />
  <Skill Description="对正面目标施放，使目标受到3点技能伤害，并有50%的概率被冰冻（下一回合无法行动）。" ID="8" Name="冰弹Ⅲ" />
  <Skill Description="对正面目标施放，使目标受到4点技能伤害，并有50%的概率被冰冻（下一回合无法行动）。" ID="9" Name="冰弹Ⅳ" />
  <Skill Description="受到普通伤害时，最多承受1点伤害。" ID="10" Name="石皮肤" />
  <Skill Description="如果正面目标为“不死”则对其直接秒杀。" ID="11" Name="驱魔师" />
  <Skill Description="将敌方等待区中当前等待数最长的单位秒杀。" ID="12" Name="黯灭" />
  <Skill Description="敌方场上所有目标在下一回合行动结束后受到1点技能伤害。" ID="13" Name="毒雾Ⅰ" />
  <Skill Description="敌方场上所有目标在下一回合行动结束后受到2点技能伤害。" ID="14" Name="毒雾Ⅱ" />
  <Skill Description="敌方场上所有目标在下一回合行动结束后受到3点技能伤害。" ID="15" Name="毒雾Ⅲ" />
  <Skill Description="当攻击目标为“骑士”时，攻击力加倍。" ID="16" Name="斩马一击" />
  <Skill Description="不受“爆炎术”、“雷电术”、“冰弹”、“火球术”、“饮血斩”影响，并对攻击者造成2点技能伤害。" ID="17" Name="魔法反弹" />
  <Skill Description="当受到普通伤害时，如果攻击者处于自身的攻击范围则反击使对方受到1点普通伤害。" ID="18" Name="快速反击Ⅰ" />
  <Skill Description="当受到普通伤害时，如果攻击者处于自身的攻击范围则反击使对方受到2点普通伤害。" ID="19" Name="快速反击Ⅱ" />
  <Skill Description="当受到普通伤害时，如果攻击者处于自身的攻击范围则反击使对方受到3点普通伤害。" ID="20" Name="快速反击Ⅲ" />
  <Skill Description="只有飞行和必杀射击技能的兵种才能对自身造成普通伤害。" ID="21" Name="飞行" />
  <Skill Description="当在战场上时，除自身外场上我方使魔增加1点普通攻击力。" ID="22" Name="使魔祝福Ⅰ" />
  <Skill Description="将1名我方单位复活到战场。" ID="23" Name="复活术" />
  <Skill Description="当受到普通攻击或发动普通攻击时，使攻击者或目标致盲（丧失50%命中率）。" ID="24" Name="致盲" />
  <Skill Description="我方所有单位恢复1点丢失的HP。" ID="25" Name="圣光Ⅰ" />
  <Skill Description="我方所有单位恢复2点丢失的HP。" ID="26" Name="圣光Ⅱ" />
  <Skill Description="我方所有单位恢复5点丢失的HP。" ID="27" Name="圣光Ⅴ" />
  <Skill Description="受到普通攻击时减少1点伤害。" ID="28" Name="格挡Ⅰ" />
  <Skill Description="受到普通攻击时减少2点伤害。" ID="29" Name="格挡Ⅱ" />
  <Skill Description="受到普通攻击时减少3点伤害。" ID="30" Name="格挡Ⅲ" />
  <Skill Description="增加1点攻击力。" ID="31" Name="攻击UPⅠ" />
  <Skill Description="增加2点攻击力。" ID="32" Name="攻击UPⅡ" />
  <Skill Description="上场时增加我方战场上2个目标各2点攻击力，持续一回合。" ID="33" Name="双人攻击UPⅠ" />
  <Skill Description="增加3点攻击力。" ID="34" Name="攻击UPⅢ" />
  <Skill Description="一回合内，增加我方战场上2个目标各3点攻击力。" ID="35" Name="双人攻击UPⅢ" />
  <Skill Description="敌方正面目标回到等待区。" ID="36" Name="暴风强踢" />
  <Skill Description="对敌方随机目标施放，使目标受到等同于墓地中卡牌数量的技能伤害。" ID="37" Name="亡灵意志" />
  <Skill Description="减少我方等待区任意单位2点等待。" ID="38" Name="风行Ⅱ" />
  <Skill Description="减少我方等待区任意单位4点等待。" ID="39" Name="风行Ⅳ" />
  <Skill Description="减少我方等待区任意单位6点等待。" ID="40" Name="风行Ⅵ" />
  <Skill Description="增加敌方等待区任意目标2点等待。" ID="41" Name="缓行Ⅱ" />
  <Skill Description="增加敌方等待区任意目标4点等待。" ID="42" Name="缓行Ⅳ" />
  <Skill Description="减少等待区我方任意单位2点等待。" ID="43" Name="风行Ⅲ" />
  <Skill Description="将1名我方单位复活到发牌区。" ID="44" Name="轮回Ⅰ" />
  <Skill Description="将3名我方单位复活到发牌区。" ID="45" Name="轮回Ⅲ" />
  <Skill Description="对正面目标直接秒杀。" ID="46" Name="即死" />
  <Skill Description="对敌方战场上所有目标施放，使目标受到1-2点技能伤害。" ID="47" Name="火球术Ⅱ" />
  <Skill Description="对敌方战场上所有目标施放，使目标受到1-4点技能伤害。" ID="48" Name="火球术Ⅳ" />
  <Skill Description="随机对敌方战场上1个目标施放，使目标受到1-5点技能伤害。" ID="49" Name="火球术Ⅴ" />
  <Skill Description="当对目标进行普通攻击并造成伤害时感染敌方，使其丧失1点攻击力和1点体力（受感染的目标无法被再次感染）。" ID="50" Name="病毒" />
  <Skill Description="当攻击目标为“近战”或“飞行”时，攻击力加倍。" ID="51" Name="必杀射击" />
  <Skill Description="对敌方目标施放饮血斩，使目标受到1点技能伤害，随后恢复与造成伤害相等的丢失HP。" ID="52" Name="饮血斩Ⅰ" />
  <Skill Description="对敌方目标施放饮血斩，使目标造成2点技能伤害，随后恢复与造成伤害相等的丢失HP。" ID="53" Name="饮血斩Ⅱ" />
  <Skill Description="对敌方目标施放饮血斩，使目标受到3点技能伤害，随后恢复与造成伤害相等的丢失HP。" ID="54" Name="饮血斩Ⅲ" />
  <Skill Description="对正面及其毗邻的敌方目标造成当前攻击力的普通伤害。" ID="55" Name="极光斩" />
  <Skill Description="当攻击目标为“射手”时，攻击力加倍。" ID="56" Name="奇袭" />
  <Skill Description="当在场上时，除自身外场上我方远程增加1点普通攻击力。" ID="57" Name="箭神祝福" />
  <Skill Description="当在战场上时，所有“近战”增加1点HP。" ID="58" Name="战士守护者Ⅰ" />
  <Skill Description="当在战场上时，所有“近战”增加2点HP。" ID="59" Name="战士守护者Ⅱ" />
  <Skill Description="战场上的全部装备立即进入墓地。" ID="60" Name="挥霍" />
  <Skill Description="敌方战场上所有“飞行”状态的目标失去飞行能力。" ID="61" Name="折翼" />
  <Skill Description="当在战场上时，所有“希腊神族”增加2点HP。" ID="62" Name="希腊守护者Ⅱ" />
  <Skill Description="当在场上时，除自身外场上我方不死增加1点普通攻击力。" ID="63" Name="冥王祝福" />
  <Skill Description="对敌方战场上当前HP最少的目标造成1点技能伤害。" ID="64" Name="弱点狙杀Ⅰ" />
  <Skill Description="对敌方战场上当前HP最少的目标造成2点技能伤害。" ID="65" Name="弱点狙杀Ⅱ" />
  <Skill Description="攻击并造成伤害时，被攻击者在其下一轮行动结束后受到1点技能伤害。" ID="66" Name="猛毒Ⅰ" />
  <Skill Description="攻击并造成伤害时，被攻击者在其下一轮行动结束后受到2点技能伤害。" ID="67" Name="猛毒Ⅱ" />
  <Skill Description="攻击并造成伤害时，被攻击者在其下一轮行动结束后受到3点技能伤害。" ID="68" Name="猛毒Ⅲ" />
  <Skill Description="攻击并造成伤害时，被攻击者在其下一轮行动结束后受到4点技能伤害。" ID="69" Name="猛毒Ⅳ" />
  <Skill Description="攻击并造成伤害时，被攻击者在其下一轮行动结束后受到6点技能伤害。" ID="70" Name="猛毒Ⅵ" />
  <Skill Description="己方墓地中每多一张卡牌时则普通攻击时增加相应点数的攻击力。" ID="71" Name="复仇之魂" />
  <Skill Description="当在场上时，除自身外场上我方神兽增加1点普通攻击力。" ID="72" Name="魔王" />
  <Skill Description="正对面敌方目标死亡后，本场战斗永久增加2点普通攻击与2点HP。" ID="73" Name="鬼神Ⅱ" />
  <Skill Description="当被攻击且受到普通攻击时增加1点攻击力。" ID="74" Name="狂热Ⅰ" />
  <Skill Description="当被攻击且受到普通攻击时增加2点攻击力。" ID="75" Name="狂热Ⅱ" />
  <Skill Description="对敌方目标施放，使其受到1点技能伤害。" ID="76" Name="落雷Ⅰ" />
  <Skill Description="对敌方目标施放，使其受到2点技能伤害。" ID="77" Name="落雷Ⅱ" />
  <Skill Description="对敌方1-2个目标施放闪电，使目标受到2点技能伤害。" ID="78" Name="雷电术Ⅱ" />
  <Skill Description="对敌方目标施放，使其受到3点技能伤害。" ID="79" Name="雷电术Ⅲ" />
  <Skill Description="对敌方1-2个目标施放闪电，使目标受到3点技能伤害。" ID="80" Name="雷电术Ⅲ.Ⅴ" />
  <Skill Description="对敌方目标施放，使其受到4点技能伤害。" ID="81" Name="雷电术Ⅳ" />
  <Skill Description="对敌方目标施放，使其受到1点技能伤害。且场上同名目标受到相同技能伤害。" ID="82" Name="狂雷天牢Ⅰ" />
  <Skill Description="对敌方目标施放，使其受到2点技能伤害。且场上同名目标受到相同技能伤害。" ID="83" Name="狂雷天牢Ⅱ" />
  <Skill Description="对敌方目标施放，使其受到3点技能伤害。且场上同名目标受到相同技能伤害。" ID="84" Name="狂雷天牢Ⅲ" />
  <Skill Description="当在场上时，除自身外场上我方龙族增加1点普通攻击力。" ID="85" Name="龙神附体" />
  <Skill Description="对敌方正面目标造成1点技能伤害，并对其造成诅咒效果。" ID="86" Name="龙之吐息Ⅰ" />
  <Skill Description="对敌方正面目标造成2点技能伤害，并对其造成诅咒效果。" ID="87" Name="龙之吐息Ⅱ" />
  <Skill Description="对敌方正面目标造成3点技能伤害，并对其造成诅咒效果。" ID="88" Name="龙之吐息Ⅲ" />
  <Skill Description="当在战场上时，所有“龙族”增加1点HP。" ID="89" Name="龙神守护者Ⅰ" />
  <Skill Description="不受到“末日审判”，“即死”和“禁飞”的影响。" ID="90" Name="天神下凡" />
  <Skill Description="当在场上时，我方所有场上兵种增加1点普通攻击力。" ID="91" Name="战神祝福Ⅰ" />
  <Skill Description="当进入战场上时，降低我方1点信仰。" ID="92" Name="沉沦Ⅰ" />
  <Skill Description="当进入战场上时，降低我方2点信仰。" ID="93" Name="沉沦Ⅱ" />
  <Skill Description="对拥有“格挡”、“石肤术”、“泰坦附体”技能的目标直接秒杀" ID="94" Name="粉碎者" />
  <Skill Description="对拥有“天神下凡”和“魔法反弹”技能的敌方目标造成双倍伤害。" ID="95" Name="破魔者" />
  <Skill Description="如果正面目标为“地形”则对其直接秒杀。" ID="96" Name="地形破坏者" />
  <Skill Description="当在场上时，所有地形增加2点攻击力。" ID="97" Name="图腾Ⅱ" />
  <Skill Description="当在战场上时，所有“骑士”增加1点HP。" ID="98" Name="骑士守护者Ⅰ" />
  <Skill Description="当在战场上时，所有“骑士”增加3点HP。" ID="99" Name="骑士守护者Ⅲ" />
  <Skill Description="当在场上时，除自身外场上我方英雄增加3点普通攻击力。" ID="100" Name="瓦尔基里" />
  <Skill Description="回合内，我方战场上全部单位增加2点攻击力。" ID="101" Name="群体嗜血术Ⅱ" />
  <Skill Description="对敌方战场上所有“龙族”施放，使目标有75%的概率睡眠（下一回合无法行动）。" ID="102" Name="困龙术" />
  <Skill Description="到敌方下一回合结束前，只有飞行和射手兵种才能对我方造成普通伤害。" ID="103" Name="空之翼" />
  <Skill Description="对敌方战场上所有目标施放，使目标致盲（丧失50%命中率）。" ID="104" Name="群体致盲" />
  <Skill Description="我方战场上全部单位获得1点攻击力加成。" ID="105" Name="群体攻击UPⅠ" />
  <Skill Description="我方战场上全部单位获得2点攻击力加成。" ID="106" Name="群体攻击UPⅡ" />
  <Skill Description="对敌方战场上所有目标施放，使目标受到1-2点技能伤害。" ID="107" Name="天火Ⅱ" />
  <Skill Description="对敌方战场上所有目标施放，使目标受到1-3点技能伤害。" ID="108" Name="天火Ⅲ" />
  <Skill Description="对敌方战场上所有目标施放，使目标受到1-6点技能伤害。" ID="109" Name="天火Ⅵ" />
  <Skill Description="增加敌方等待区所有目标2点等待。" ID="110" Name="群体缓行Ⅱ" />
  <Skill Description="我方战场上全体单位获得1点HP加成。" ID="111" Name="生命女神" />
  <Skill Description="使所有敌方单位获得诅咒状态（每次行动结束后丢失1点HP）。" ID="112" Name="群体诅咒" />
  <Skill Description="对敌方战场上所有目标施放，使目标有75%的概率睡眠（下一回合无法行动）。" ID="113" Name="群体睡眠" />
  <Skill Description="降低敌方场上所有目标1点攻击力。" ID="114" Name="群体碎刃Ⅰ" />
  <Skill Description="降低敌方场上所有目标2点攻击力。" ID="115" Name="群体碎刃Ⅱ" />
  <Skill Description="对我方战场上“野兽”造成1点伤害，随后增加该兵种1点攻击力。" ID="116" Name="受伤的兽群" />
  <Skill Description="当在战场上时，所有“使魔”增加3点HP。" ID="117" Name="使魔守护者Ⅲ" />
  <Skill Description="每回合增加1点HP。" ID="118" Name="世界树之灵" />
  <Skill Description="不受任何普通伤害影响。" ID="119" Name="泰坦附体" />
  <Skill Description="恢复我方4点丢失的信仰。" ID="120" Name="鼓舞Ⅳ" />
  <Skill Description="恢复我方5点丢失的信仰。" ID="121" Name="鼓舞Ⅴ" />
  <Skill Description="每回合降低敌方1点信仰。" ID="122" Name="信仰流失Ⅰ" />
  <Skill Description="每回合降低敌方2点信仰。" ID="123" Name="信仰流失Ⅱ" />
  <Skill Description="每回合降低敌方3点信仰。" ID="124" Name="信仰流失Ⅲ" />
  <Skill Description="每回合降低敌方4点信仰。" ID="125" Name="信仰流失Ⅳ" />
  <Skill Description="如果正面目标为“人族”则对其直接秒杀。" ID="126" Name="刽子手" />
  <Skill Description="当进行攻击并对敌方造成普通伤害时，增加1点攻击力。" ID="127" Name="嗜血术Ⅰ" />
  <Skill Description="当进行攻击并对敌方造成普通伤害时，增加2点攻击力。" ID="128" Name="嗜血术Ⅱ" />
  <Skill Description="当在场上时，除自身外场上我方“神裔”增加1点普通攻击力。" ID="129" Name="神裔祝福" />
  <Skill Description="获得1点HP加成。" ID="130" Name="生命UPⅠ" />
  <Skill Description="获得2点HP加成。" ID="131" Name="生命UPⅡ" />
  <Skill Description="获得3点HP加成。" ID="132" Name="生命UPⅢ" />
  <Skill Description="场上全部单位进入墓地。" ID="133" Name="末日审判" />
  <Skill Description="当有场上有友方希腊神族单位时，获得治疗2效果。" ID="134" Name="希腊盟友" />
  <Skill Description="当有场上有友方人族单位时，获得剑舞效果。" ID="135" Name="人族盟友" />
  <Skill Description="当有场上有异界神族单位时，获得龙息1效果。" ID="136" Name="异界盟友" />
  <Skill Description="当有场上有友方北欧神族单位时，攻击提升2。" ID="137" Name="北欧盟友" />
  <Skill Description="当在场上时，除自身外场上我方“骑士”增加1点普通攻击力。" ID="138" Name="冲锋Ⅰ" />
  <Skill Description="如果正面目标为“龙族”则对其直接秒杀。" ID="139" Name="屠龙者" />
  <Skill Description="感染敌方战场上所有目标，使目标丧失1点攻击力和1点体力（受感染的目标无法再次被感染）。" ID="140" Name="生化危机" />
  <Skill Description="战场上每有一个友军单位，自身增加1点攻击力。" ID="141" Name="战争之王" />
  <Skill Description="如果正面目标攻击力大于或等于3则对其直接秒杀。" ID="142" Name="勇者之魂" />
  <Skill Description="对敌方正面目标普通攻击时恢复1点丢失的HP。" ID="143" Name="吸血Ⅰ" />
  <Skill Description="对敌方正面目标普通攻击时恢复2点丢失的HP。" ID="144" Name="吸血Ⅱ" />
  <Skill Description="当攻击或受到普通攻击时，使攻击者或目标受到诅咒状态（每次行动结束后丢失1点HP）" ID="145" Name="诅咒" />
  <Skill Description="对敌方目标随机目标释放，使目标有75%的概率睡眠（下一回合无法行动）。" ID="146" Name="睡眠术" />
  <Skill Description="当在场上时，除自身外场上我方近程增加1点物理攻击力。" ID="147" Name="战士之魂Ⅰ" />
  <Skill Description="自身附带诅咒状态（每次行动结束后丢失1点HP）" ID="148" Name="体力流失" />
  <Skill Description="当造成普通伤害后，降低对方1点攻击力。" ID="149" Name="碎刃Ⅰ" />
  <Skill Description="当造成普通伤害后，降低对方2点攻击力。" ID="150" Name="碎刃Ⅱ" />
  <Skill Description="当造成普通伤害后，降低对方3点攻击力。" ID="151" Name="碎刃Ⅲ" />
  <Skill Description="每回合恢复等同于墓地中卡牌数量的丢失HP。" ID="152" Name="死灵能量" />
  <Skill Description="随机对我方1名“野兽”造成1点伤害，随后增加该卡牌1点攻击力" ID="153" Name="受伤的野兽" />
  <Skill Description="当在战场上时，所有“北欧神族”增加1点HP。" ID="154" Name="北欧守护者Ⅰ" />
  <Skill Description="进入战场后第一次攻击，增加额外1点普通攻击力" ID="155" Name="偷袭Ⅰ" />
  <Skill Description="进入战场后第一次攻击，增加额外2点普通攻击力。" ID="156" Name="偷袭Ⅱ" />
  <Skill Description="进入战场后第一次攻击，增加额外4点普通攻击力" ID="157" Name="偷袭Ⅳ" />
  <Skill Description="当在战场上时，所有“英雄”增加3点HP。" ID="158" Name="英雄王" />
  <Skill Description="当在战场上时，所有“射手”增加1点HP。" ID="159" Name="射手守护者Ⅰ" />
  <Skill Description="当在战场上时，所有“射手”增加2点HP。" ID="160" Name="射手守护者Ⅱ" />
  <Skill Description="每回合恢复1点丢失的HP。" ID="161" Name="回春术Ⅰ" />
  <Skill Description="每回合恢复2点丢失的HP。" ID="162" Name="回春术Ⅱ" />
  <Skill Description="每回合恢复3点丢失的HP。" ID="163" Name="回春术Ⅲ" />
  <Skill Description="如果正面目标为“北欧神族”则对其直接秒杀。" ID="164" Name="北欧破坏神" />
  <Skill Description="战场上其他友方单位获得1点攻击力。" ID="165" Name="领导者" />
  <Skill Description="当在战场上时，所有“地形”增加1点HP。" ID="166" Name="领地守护者Ⅰ" />
  <Skill Description="当在战场上时，所有“地形”增加3点HP。" ID="167" Name="领地守护者Ⅲ" />
  <Skill Description="恢复我方随机目标1点丢失的HP。" ID="168" Name="治愈术Ⅰ" />
  <Skill Description="恢复我方随机目标2点丢失的HP。" ID="169" Name="治愈术Ⅱ" />
  <Skill Description="恢复我方随机目标3点丢失的HP。" ID="170" Name="治愈术Ⅲ" />
  <Skill Description="恢复我方战场上HP最少的单位5点丢失的HP。" ID="171" Name="治愈术Ⅴ" />
  <Skill Description="如果正面目标为“异界神族”则对其直接秒杀。" ID="172" Name="诛神" />
  <Skill Description="当自身死亡时有50%的概率复活到等待区。" ID="173" Name="重生" />
  <Skill Description="死亡时，对正面及其毗邻的敌方目标造成1点技能伤害。" ID="174" Name="灵魂爆裂Ⅰ" />
  <Skill Description="死亡时，对正面及其毗邻的敌方目标造成2点技能伤害。" ID="175" Name="灵魂爆裂Ⅱ" />
  <Skill Description="死亡时，对正面及其毗邻的敌方目标造成3点技能伤害。" ID="176" Name="灵魂爆裂Ⅲ" />
  <Skill Description="对敌方战场上所有目标施放，使目标受到1-4点技能伤害。" ID="177" Name="火球术Ⅲ" />
</Skills>

		public static const CARDS_CONFIG:XML = <Cards>
  <Card AttackMode="1" Class="1" Description="“不穿盔甲并不代表肉体的脆弱。”——进军统领横刀" ID="1" MaxStar="3" Name="人族男" Quality="1" Race="1" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="“飞马神将“中训练出来执行侦查类行动的骑兵。" ID="2" MaxStar="3" Name="人族女" Quality="4" Race="1" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="全身包裹着黄金打造的战甲，黄金般闪耀的光芒震慑着敌人。" ID="3" MaxStar="3" Name="希腊男" Quality="5" Race="2" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="给狗使用狂化散后，攻击力骤升。往往会死缠一个敌人直到杀死他。" ID="4" MaxStar="3" Name="希腊女" Quality="6" Race="2" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="人族中身强力壮的种族，力量比普通人要大些。" ID="5" MaxStar="3" Name="北欧男" Quality="1" Race="3" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="人族在战场中新培养的兵种，操纵阵法困住敌人的行动。" ID="6" MaxStar="3" Name="北欧女" Quality="4" Race="3" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="掌教真人的弟子，具有一定的道术，能够召唤雷电之力。" ID="7" MaxStar="3" Name="宙斯 " Quality="5" Race="2" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="在深山中经历千锤百炼的修炼，据说能靠单手劈开巨石。" ID="8" MaxStar="3" Name="雅典娜" Quality="6" Race="2" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="据说攻击铁山军的时候常会听见刀剑折断的声音。——民间传说" ID="9" MaxStar="3" Name="赫拉" Quality="1" Race="2" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="善能疗治一切诸病。自无有病，见诸病人而於其前自服苦药，诸病人见是药师服苦药已，然后効服，各得除病。" ID="10" MaxStar="3" Name="战神阿瑞斯" Quality="4" Race="2" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="皇城中的精英部队，一般只有人族军队中的佼佼者才能加入。" ID="11" MaxStar="3" Name="普罗米修斯" Quality="5" Race="2" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="”飞马神将“训练出的骑兵，使用神机弩在战场中直取敌方将首，轻而易举。" ID="12" MaxStar="3" Name="波塞冬" Quality="6" Race="2" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="”即使是飞马神将训练出来的骑兵，都会对这样的军队怀有紧张感”——白云飞" ID="13" MaxStar="3" Name="哈迪斯" Quality="1" Race="2" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="皇城十八卫之一，专职暗杀行动，步伐轻盈，身手敏捷。敌人往往还在睡梦中，就被杀死了。" ID="14" MaxStar="3" Name="阿波罗" Quality="4" Race="2" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="皇城十八卫之一，人族中最擅长格斗技术的护卫军。" ID="15" MaxStar="3" Name="亚瑟王" Quality="5" Race="1" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="皇城十八卫之一，盾上镶有天龙纹，战斗力极其彪悍。" ID="16" MaxStar="3" Name="查理曼大帝" Quality="6" Race="1" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="道士的授业老师，钻研道法的精髓，拥有较为深奥的道法，使用拂尘召唤闪电攻击敌人。" ID="17" MaxStar="3" Name="珀尔修斯" Quality="1" Race="1" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="XX" ID="18" MaxStar="5" Name="齐格菲尔德" Quality="6" Race="3" SP="5" Star="1">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac>2</Mitac>
    <Skill1>158</Skill1>
    <Skill2>139</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="XX" ID="19" MaxStar="5" Name="齐格菲尔德" Quality="6" Race="3" SP="5" Star="2">
    <AP>3</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac>2</Mitac>
    <Skill1>158</Skill1>
    <Skill2>139</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="XX" ID="20" MaxStar="5" Name="齐格菲尔德" Quality="6" Race="3" SP="5" Star="3">
    <AP>3</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Mitac>2</Mitac>
    <Skill1>158</Skill1>
    <Skill2>139</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="XX" ID="21" MaxStar="5" Name="赫拉克勒斯" Quality="6" Race="2" SP="6" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac>0</Mitac>
    <Skill1>158</Skill1>
    <Skill2>119</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>2</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="XX" ID="22" MaxStar="5" Name="赫拉克勒斯" Quality="6" Race="2" SP="6" Star="2">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac>0</Mitac>
    <Skill1>158</Skill1>
    <Skill2>119</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>2</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="XX" ID="23" MaxStar="5" Name="赫拉克勒斯" Quality="6" Race="2" SP="5" Star="3">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac>0</Mitac>
    <Skill1>158</Skill1>
    <Skill2>119</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>2</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="XX" ID="24" MaxStar="5" Name="赫拉克勒斯" Quality="6" Race="2" SP="5" Star="4">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>0</Mitac>
    <Skill1>158</Skill1>
    <Skill2>119</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>2</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="他使用从神秘洞窟中开采出的白色玄铁打造而成的特制马掌可以让马儿日行千里而不知疲倦。 " ID="25" MaxStar="3" Name="梅林" Quality="5" Race="1" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="被茅山道士操纵的士兵尸体，具有一定攻击力，往往能在战场中发挥巨大的作用。" ID="26" MaxStar="3" Name="兰斯洛特" Quality="6" Race="1" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="被茅山道士操纵的将军尸体，攻击力更强，拥有多个便可扭转战局。" ID="27" MaxStar="3" Name="犹大" Quality="4" Race="1" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="”这个阵法能给人带来无穷的力量“——神语 吕公望" ID="28" MaxStar="3" Name="帕尔斯" Quality="5" Race="1" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="使用秘法的力量在战场中攻击和束缚敌人，对战斗有很大帮助。" ID="29" MaxStar="3" Name="赫克托尔" Quality="1" Race="1" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="“飞马神将”训练出来防御型的骑兵，对盾牌的使用了如指掌。" ID="30" MaxStar="3" Name="阿克琉斯" Quality="4" Race="1" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="百草氏之徒，曾追随百草氏尝遍世间百草。身怀武艺，常救师傅与危难之中。 " ID="31" MaxStar="3" Name="游侠罗宾" Quality="5" Race="1" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="身上流淌着战神的血脉，在战场上所向披靡，万夫莫敌。" ID="32" MaxStar="3" Name="奥丁" Quality="6" Race="3" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="人族特别训练出禁法师，以达到与其他四族实力相当的水平。" ID="33" MaxStar="3" Name="雷神托尔" Quality="1" Race="3" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="几乎灭绝的动物，被人族驯服后成为战场的强劲杀手，一口能将敌人一分为二。" ID="34" MaxStar="3" Name="爱神弗丽嘉" Quality="5" Race="3" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="阵中窜出的火焰仿佛能将天空都烧红了！" ID="35" MaxStar="3" Name="战神提尔" Quality="6" Race="3" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="炼器师的弟子，袖子中放有炼器师特制的草药。每当舞姬跳起舞来，甩出来的草药能够治疗周围受伤的士兵。" ID="36" MaxStar="3" Name="布伦希尔德" Quality="1" Race="3" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="骑兵世家“飞马神将”现任当家，坐骑是有“铁马”之称的“黑玉琉璃“。传说他是龙神将的血脉之一，所有坐骑都听从他的号令。" ID="37" MaxStar="3" Name="奥尔布达" Quality="4" Race="3" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="机关大师的得意杰作，可以自动锁定敌人后发动连续攻击，破坏力惊人！ " ID="38" MaxStar="3" Name="阿蒙" Quality="5" Race="4" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="皇城十八卫之一，王牌水军，居有翻江倒海的能力。" ID="39" MaxStar="3" Name="奥西里斯神" Quality="6" Race="4" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="铁骑统领手下的王牌骑兵队，每一个都全副武装，攻守兼备，很难找到能与之抗衡的敌人。" ID="40" MaxStar="3" Name="尼努尔塔神" Quality="1" Race="4" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="跟随吕公望在凌云峰修仙的道人。参透天地之道后羽化升仙是他们的终极追求。 " ID="41" MaxStar="3" Name="湿婆" Quality="4" Race="4" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="人界比武大会的冠军，使用祖传的金刚断骨手，两招之内必废敌人武功。" ID="42" MaxStar="3" Name="梵天" Quality="5" Race="4" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="被上古人皇所驯服的巨大古龙，被指派在天剑痕的顶峰守护着人族的秘宝... " ID="43" MaxStar="3" Name="吉祥天" Quality="6" Race="4" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="师从剑术统领香雪，使用的剑法以轻盈迅捷为特色。 " ID="44" MaxStar="3" Name="毗湿奴" Quality="1" Race="4" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="据说此阵是由死去的人界秘龙的骨架摆放而成的。" ID="45" MaxStar="3" Name="耶和华" Quality="4" Race="4" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="隐匿于人界的龙族，据说常以人类的形态生活在白银湖边，拥有冰蓝色的眼睛。" ID="46" MaxStar="3" Name="圣母玛丽亚" Quality="5" Race="4" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="人界创始者，冰封海的主人。沉睡在冰封海的最低处，人族每年会向海里投放贡品，以求来年白龙神会保佑他们。" ID="47" MaxStar="3" Name="撒旦" Quality="1" Race="4" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="“他们的努力使翡翠之森更加美丽，充满朝气。“——精木长老" ID="48" MaxStar="3" Name="米迦勒" Quality="5" Race="4" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="跟随神木弓箭大师学习的射手，射术不凡。" ID="49" MaxStar="3" Name="卡门普斯" Quality="6" Race="4" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="通常成群结队的在森林里出现，一旦发现敌人，便会毫不犹豫的扑上去。" ID="50" MaxStar="3" Name="怒神劳" Quality="1" Race="4" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="被碧落创造出的剧毒之物，潜伏在森里里，时刻准备毒死敌人。" ID="51" MaxStar="3" Name="智神斯凯尔" Quality="4" Race="4" SP="10" Star="1">
    <AP>4</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>1</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="3" Description="骑兵杀手，会伸出枝干缠住坐骑，然后拉倒并勒死坐骑。" ID="52" MaxStar="4" Name="王国骑士" Quality="1" Race="1" SP="4" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="彩蝶仙的妹妹，和姐姐一样也能使用自己的能力帮助同族。" ID="53" MaxStar="4" Name="王国骑士" Quality="4" Race="1" SP="6" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="3" Description="翡翠之森产出的丛林之雾能够帮助翡翠之森里的居民和植物恢复生命力。" ID="54" MaxStar="4" Name="王国骑士" Quality="5" Race="1" SP="4" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="出生便怀有魔法的力量，由精木长老传授魔法的精髓后，魔法的威力更加强大了。" ID="55" MaxStar="4" Name="王国骑士" Quality="6" Race="1" SP="6" Star="4">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>29</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="弓箭上沾着能够腐蚀护甲的花粉，对重甲目标有致命性的打击。" ID="56" MaxStar="5" Name="重装士兵" Quality="6" Race="1" SP="4" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="虽然还在成长期，但毕竟是绿龙神的孩子，能力非常出色。" ID="57" MaxStar="5" Name="重装士兵" Quality="1" Race="1" SP="8" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="圣湖守护神创造出来保护圣湖的卫士，用手中的利箭誓死保卫圣湖。" ID="58" MaxStar="5" Name="重装士兵" Quality="4" Race="1" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="平时化身为花朵担任翡翠之森的警戒工作，一旦有人踏进森林，守望者会第一时间告诉精木长老。" ID="59" MaxStar="5" Name="重装士兵" Quality="5" Race="1" SP="6" Star="4">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>29</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="3" Description="箭上之毒是碧落配置的剧毒，中了剧毒射手的箭，是见不到第二天的太阳的。" ID="60" MaxStar="5" Name="重装甲骑士" Quality="4" Race="1" SP="10" Star="1">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="巨大、愤怒、无情。" ID="61" MaxStar="5" Name="重装甲骑士" Quality="4" Race="1" SP="8" Star="2">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="3" Description="善于在翡翠之森里布置各种各样的陷阱来阻止敌人的入侵。" ID="62" MaxStar="5" Name="重装甲骑士" Quality="5" Race="1" SP="8" Star="3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>29</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="5" Description="成年的蝶仙有的翅膀会变为彩色。" ID="63" MaxStar="5" Name="幽灵" Quality="5" Race="4" SP="6" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>50</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="5" Description="默默的守护着翡翠之森，关心比他弱小的生物。怀有一颗慈悲的心。" ID="64" MaxStar="5" Name="幽灵" Quality="6" Race="4" SP="4" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>50</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="5" Description="当敌人踏入翡翠之森，迷影斥候就潜伏在他的影子里，在最适合动手的时候，一击必杀。" ID="65" MaxStar="5" Name="幽灵" Quality="1" Race="4" SP="4" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>50</Skill1>
    <Skill2>24</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="居住在翡翠之森的深处，为了不把周围的植物冻住，而居住在洞穴里，足不出户。" ID="66" MaxStar="5" Name="刺蘑菇" Quality="4" Race="2" SP="6" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>50</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="森林中的霸者，每次发怒都能造成大面积破坏与伤亡，是让森林之子们头痛的家伙。" ID="67" MaxStar="5" Name="刺蘑菇" Quality="5" Race="2" SP="4" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>50</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="”行动敏捷，出手迅猛，面对敌人毫不留情。“——夏心" ID="68" MaxStar="5" Name="刺蘑菇" Quality="6" Race="2" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>50</Skill1>
    <Skill2>66</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="体内怀有太阳的能量，能发出巨大的吼声震慑敌人，往往听到吼声后，敌人就会心神不宁。" ID="69" MaxStar="5" Name="刺蘑菇" Quality="1" Race="2" SP="4" Star="4">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>50</Skill1>
    <Skill2>66</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="“她们就像她们的母亲一样美丽，也像她们的母亲一样仁慈。“——精木长老" ID="70" MaxStar="5" Name="树妖" Quality="4" Race="1" SP="10" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>169</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="绿幼龙成长后的样子，更具力量和速度，毒性也更强。" ID="71" MaxStar="5" Name="树妖" Quality="5" Race="1" SP="8" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>169</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="濒临灭绝的物种，现在只有在翡翠之森有机会看到。独角兽的血有着起死回生的神奇功效。" ID="72" MaxStar="5" Name="树妖" Quality="6" Race="1" SP="6" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>169</Skill1>
    <Skill2>24</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="被绿龙神赋予生命的花朵。奇怪的是，她居然能够召唤闪电。" ID="73" MaxStar="5" Name="哥布林战士" Quality="1" Race="1" SP="4" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="即使是强大的妖族，食妖草都能随意杀死，足见这个生物有多强大。" ID="74" MaxStar="5" Name="哥布林战士" Quality="4" Race="3" SP="4" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>174</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="对待翡翠之森的居民很仁慈，而对待外来的人则毫不客气。" ID="75" MaxStar="5" Name="哥布林战士" Quality="5" Race="3" SP="2" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>174</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="身怀着对翡翠之森的信仰，用自己的弓箭射杀所有来犯之人。" ID="76" MaxStar="5" Name="沙虫" Quality="6" Race="2" SP="6" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="神木弓箭大师传授了他们能够操控弓箭飞行轨迹的能力，从而准确无误的击中目标。" ID="77" MaxStar="5" Name="沙虫" Quality="1" Race="2" SP="6" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="“我们将为保卫这片神圣的森林而贡献自己的生命“——神木护卫" ID="78" MaxStar="5" Name="沙虫" Quality="4" Race="2" SP="4" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="桃花仙子召唤的瘴气，拥有非常强的杀伤力，但很快便会消失的无影无踪。" ID="79" MaxStar="5" Name="火焰哥布林" Quality="5" Race="2" SP="8" Star="1">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>2</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="太阳神将自己一部分的灵魂分离在翡翠之森里，以保护翡翠之森。" ID="80" MaxStar="5" Name="火焰哥布林" Quality="6" Race="2" SP="6" Star="2">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>2</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="月神分离自己一部分的灵魂，保护翡翠之森。同时传授自己部分的能力给她的女儿。" ID="81" MaxStar="5" Name="火焰哥布林" Quality="1" Race="2" SP="6" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>107</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="被梦境守护龙派遣去守护翡翠之森的岩石巨怪，是翡翠之森里强大的守护者。" ID="82" MaxStar="5" Name="巨甲虫" Quality="4" Race="2" SP="4" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="仙界的龙在翡翠之森产下的孩子，长大后拥有不俗的战斗能力。" ID="83" MaxStar="5" Name="巨甲虫" Quality="5" Race="2" SP="4" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="丛林之王的孩子，当丛林之王命令攻击敌人时，啸月银狼就会一拥而上，把敌人撕碎。" ID="84" MaxStar="5" Name="巨甲虫" Quality="6" Race="2" SP="2" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2>62</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="由于不堪妖族的骚扰，精族特别训练出的兵种，对妖族有灭绝性的打击。" ID="85" MaxStar="5" Name="花妖" Quality="1" Race="2" SP="4" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>168</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="百步穿杨，箭无虚发。其箭术能力当今天下无人能与之匹敌。" ID="86" MaxStar="5" Name="花妖" Quality="4" Race="2" SP="8" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>168</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="凶悍的攻击力，坚固的防御力。铁背熊是所有敌人的梦魇。" ID="87" MaxStar="5" Name="花妖" Quality="5" Race="2" SP="8" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>168</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="这个巨大的生物出现在战场上就是敌人的噩梦，再生能力使它难以被杀死。" ID="88" MaxStar="5" Name="花妖" Quality="6" Race="2" SP="6" Star="4">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>168</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="灵界守护龙派遣守护翡翠之森的守护者，周围散发着毒气，对翡翠之森的居民无害，但敌人会忍受不了。" ID="89" MaxStar="5" Name="盗贼" Quality="1" Race="1" SP="6" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>60</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="被月神化身注入部分星痕之力，变的极具攻击力和破坏力。" ID="90" MaxStar="5" Name="盗贼" Quality="4" Race="1" SP="4" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>60</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="绿龙神的孩子，负责守护翡翠之森里的灵界，数千年都不会出现一次。" ID="91" MaxStar="5" Name="盗贼" Quality="5" Race="1" SP="4" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>60</Skill1>
    <Skill2>155</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="翡翠之森本是一片死地，绿龙神运用灵力将这里变成了人间仙境。这里的居民都将绿龙神当做神灵一样膜拜。事实证明，绿龙神也确实像神灵一样强大。" ID="92" MaxStar="5" Name="仙人掌" Quality="6" Race="3" SP="8" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="在妖界游荡的小狐狸，据说尾巴能幻化为云朵状的火焰..." ID="93" MaxStar="5" Name="仙人掌" Quality="1" Race="3" SP="6" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="带着翅膀的小妖，经常偷偷地进入人族的村庄袭击人类。" ID="94" MaxStar="5" Name="仙人掌" Quality="4" Race="3" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2>18</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="断肠崖之下的贫瘠之地中生活着一种沙地巨兽，它可以将成吨的沙石吞入口中，再用极强的压力将吞入的沙石瞬间喷射出来，造成极大的破坏力。" ID="95" MaxStar="5" Name="稻草人" Quality="5" Race="1" SP="4" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>41</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="3" Description="喜欢破坏人类村庄的妖怪，相貌丑陋，生性贪婪。" ID="96" MaxStar="5" Name="稻草人" Quality="6" Race="1" SP="2" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>41</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="阵中小妖数量虽然不及万邪阵，但也具有相当的破坏能力。" ID="97" MaxStar="5" Name="稻草人" Quality="1" Race="1" SP="2" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>41</Skill1>
    <Skill2>146</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="被妖王安排到妖界的各个出入口，凡人一旦踏足，则会被毒蛇守卫杀死。" ID="98" MaxStar="5" Name="食人花" Quality="4" Race="2" SP="6" Star="1">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>73</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="妖兽夫人的儿子，不过据说他也不知道自己的生父是谁..." ID="99" MaxStar="5" Name="食人花" Quality="5" Race="2" SP="6" Star="2">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>73</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="吞食黄金的怪虫，它吐出的金丝，可以将敌人缠绕起来，而且越是挣扎越紧锁。很多凡人因贪恋金蚕王腹中黄金，而被它捉住，缠绕窒息而死。" ID="100" MaxStar="5" Name="食人花" Quality="6" Race="2" SP="4" Star="3">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>73</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="栖息在妖界的沙土里 时不时会窜出来袭击猎物.." ID="101" MaxStar="5" Name="毒蜘蛛" Quality="1" Race="2" SP="6" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>67</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="无数小妖化成的阵法，踏入阵中便会被小妖抓住，然后同归于尽。" ID="102" MaxStar="5" Name="毒蜘蛛" Quality="4" Race="2" SP="6" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>68</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="妖族野兽的训化师，除了对手下的野兽之外，对妖族其他同伴漠不关心。" ID="103" MaxStar="5" Name="毒蜘蛛" Quality="5" Race="2" SP="4" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>68</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="人类骑兵最头疼的敌人。象妖的力量无与伦比，巨大而粗壮的鼻子可以把一个敌人甩出数十米远。" ID="104" MaxStar="5" Name="野生蛮牛" Quality="6" Race="2" SP="8" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>127</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="妖界里比较常见的妖怪，手持大刀，刀刃上抹着剧毒，杀人不眨眼。" ID="105" MaxStar="5" Name="野生蛮牛" Quality="1" Race="2" SP="6" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>127</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="独眼巨人一族原生活在翡翠之森，但因作恶多端被驱逐出境，后成为妖族的一员，非常痛恨仙族。" ID="106" MaxStar="5" Name="野生蛮牛" Quality="4" Race="2" SP="6" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>128</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="前有眼，后有眼，八方通见；左也口，右也口，九口言论。神通广大，武力不凡。" ID="107" MaxStar="5" Name="冰霜哥布林" Quality="5" Race="4" SP="8" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>149</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="10" Description="传说成年的凤凰会幻化为倾国倾城的女子，可是千万不要过于的靠近她们，她们周身的幻火会把你化为焦土... " ID="108" MaxStar="5" Name="冰霜哥布林" Quality="6" Race="4" SP="8" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>149</Skill1>
    <Skill2>6</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="又称大鹏金翅鸟，对仙族的弱点了如指掌，曾经只身一人大闹仙界。" ID="109" MaxStar="5" Name="冰霜哥布林" Quality="1" Race="4" SP="6" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>149</Skill1>
    <Skill2>6</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="仙界的一只黄鼠狼下到妖界变化成了妖怪，具有一定的仙力，可以使用仙族的法术。" ID="110" MaxStar="5" Name="娜迦射手" Quality="4" Race="2" SP="8" Star="1">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>64</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="战斗前都会口吐飓风，把敌人的阵型吹散，然后冲入阵中，杀个痛快。" ID="111" MaxStar="5" Name="娜迦射手" Quality="5" Race="2" SP="8" Star="2">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>64</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="在妖界享有较高的地位，妖族的野兽见到她也会退避三分，她的丈夫是谁一直是个谜。" ID="112" MaxStar="5" Name="娜迦射手" Quality="6" Race="2" SP="6" Star="3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>64</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="喜好吃人的恶妖，每吃一个人，他的力量就多一分。" ID="113" MaxStar="5" Name="巨钳龙虾" Quality="1" Race="3" SP="4" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="栖息在妖界最炎热的地带，口吐烈火，灼烧敌人。" ID="114" MaxStar="5" Name="巨钳龙虾" Quality="4" Race="3" SP="4" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2>154</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="负责妖界夜晚的警戒工作，有敌人入侵时，则大声啼叫。" ID="115" MaxStar="5" Name="巨钳龙虾" Quality="5" Race="3" SP="2" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2>154</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="美丽的蛇女身上流淌着女娲的血脉，生性善良，爱好和平。" ID="116" MaxStar="5" Name="金属史莱姆" Quality="6" Race="2" SP="14" Star="1">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>12</HP>
    <Mitac/>
    <Skill1>142</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="半人半狮，也有一半的妖心和一半的人心，不过战斗起来就像野兽般强劲。" ID="117" MaxStar="5" Name="金属史莱姆" Quality="1" Race="2" SP="14" Star="2">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>12</HP>
    <Mitac/>
    <Skill1>162</Skill1>
    <Skill2>142</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="本是普通的凡人，为了追求永生，炼制各种各样的丹药，最后化人为妖。" ID="118" MaxStar="5" Name="金属史莱姆" Quality="4" Race="2" SP="12" Star="3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>12</HP>
    <Mitac/>
    <Skill1>162</Skill1>
    <Skill2>142</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="妖王召唤死去的九位妖族长老的元神制成此阵。站在阵中，所有妖族都会被死去的妖族长老强化肉身。" ID="119" MaxStar="5" Name="巨魔" Quality="5" Race="1" SP="10" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>150</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="由黄蜂幻化成精，特殊的外皮拥有短时间的隐形能力，只要被锋利的蛰针刺中，则命不久矣。" ID="120" MaxStar="5" Name="巨魔" Quality="6" Race="1" SP="8" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>150</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="黑寡妇在战斗时召唤出来的帮手，是妖族对抗飞行敌人的法宝。" ID="121" MaxStar="5" Name="巨魔" Quality="1" Race="1" SP="8" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>150</Skill1>
    <Skill2>155</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="身躯巨大的水龙。因为藏匿与海中，所以躲过了杀龙者的屠刀。" ID="122" MaxStar="5" Name="木乃伊" Quality="4" Race="3" SP="6" Star="1">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>24</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="“当我唤醒他的时候，我感觉到了整个妖界都为他的觉醒而震动”——妖王玄冰" ID="123" MaxStar="5" Name="木乃伊" Quality="5" Race="3" SP="6" Star="2">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>24</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="妖王玄冰需要凶猛的野兽冲锋陷阵，所以创造出了泣天兽。" ID="124" MaxStar="5" Name="木乃伊" Quality="6" Race="3" SP="4" Star="3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>24</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="有些堕落的修道者过度追求火焰的力量，自我焚身，变成了赤火怪。" ID="125" MaxStar="5" Name="勇者" Quality="1" Race="1" SP="8" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>16</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="千年狐妖会变成长相帅气的男人到人界诱惑年轻女子。将女子诱骗到无人的地方后，将女子扒皮抽筋饮血食肉。" ID="126" MaxStar="5" Name="勇者" Quality="4" Race="1" SP="8" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>16</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="背上的巨翼金翅膀会发出强劲的黄金之箭矢，此箭会自动瞄准敌人跳动着的心脏。" ID="127" MaxStar="5" Name="勇者" Quality="5" Race="1" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>16</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="由无数被施以妖力的石块组成的阵法，敌人踏入阵中便会迷失方向。" ID="128" MaxStar="5" Name="幼年毒龙" Quality="6" Race="2" SP="4" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="妖界的创始者，只有妖王才能与黄龙神沟通，并只有在妖界最危难的时刻才能召唤他。黄龙神的愤怒会使所有来犯的敌人遭受永世的折磨。" ID="129" MaxStar="5" Name="幼年毒龙" Quality="1" Race="2" SP="2" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="鬼族的初级小鬼，常以群体出现，拥有不错的攻击力。" ID="130" MaxStar="5" Name="幼年毒龙" Quality="4" Race="2" SP="2" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>68</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="有些凡人死去后没有得到超度，于是便化为了野鬼在乱葬岗游荡。" ID="131" MaxStar="5" Name="吸血蝠" Quality="5" Race="4" SP="6" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>143</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="潜伏在泥地里的怪，凡人一旦踩到，则会被吞噬化解为一滩脓水。" ID="132" MaxStar="5" Name="吸血蝠" Quality="6" Race="4" SP="6" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>143</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="吸了人血的蝙蝠死后会变为鬼蝠，潜藏在山洞里捕猎各种活物。" ID="133" MaxStar="5" Name="吸血蝠" Quality="1" Race="4" SP="4" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>143</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="阵中的枯骨有着吸取所有人灵力的作用，如果一不小心踏入阵中，则会化为干尸。" ID="134" MaxStar="5" Name="佣兵战士" Quality="4" Race="1" SP="4" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Mitac/>
    <Skill1>18</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="奔跑的速度是鬼族中最快的，它常常被派遣到敌军里散播疾病。" ID="135" MaxStar="5" Name="佣兵战士" Quality="5" Race="1" SP="4" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Mitac/>
    <Skill1>19</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="因钻研黑暗的通灵术，被鬼族吸收为新成员并赐予了永生。" ID="136" MaxStar="5" Name="佣兵战士" Quality="6" Race="1" SP="2" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>1</HP>
    <Mitac/>
    <Skill1>19</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="过度贪财的人死后会化为鬼生财，专门到人间窃取凡人的财物。" ID="137" MaxStar="5" Name="佣兵战士" Quality="1" Race="1" SP="0" Star="4">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>1</HP>
    <Mitac/>
    <Skill1>19</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="与鬼族定下契约的凡人，掌握了部分鬼族的力量，邪恶无比。" ID="138" MaxStar="5" Name="佣兵法师" Quality="4" Race="1" SP="8" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>76</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="鬼族大军里的主力军，常常作为先锋军突袭敌人。" ID="139" MaxStar="5" Name="佣兵法师" Quality="5" Race="1" SP="6" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>76</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="狼王的座下骑兵，迅捷的动作，强大的力量使人族军队很头疼。" ID="140" MaxStar="5" Name="佣兵法师" Quality="6" Race="1" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>77</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="传说中山泽的鬼怪。有“投诸四裔，以御魑魅”的记载。" ID="141" MaxStar="5" Name="佣兵射手" Quality="1" Race="2" SP="2" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="想彻底杀死食尸鬼是很难的，当它受伤的时候，它会通过食用尸体恢复生命力。" ID="142" MaxStar="5" Name="佣兵射手" Quality="4" Race="2" SP="0" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="”好战的个性，残忍的手段，山魈是一个把敌人的骨头都会嚼碎的杀手“——邪巫" ID="143" MaxStar="5" Name="佣兵射手" Quality="5" Race="2" SP="0" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>149</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="无数的孤魂野鬼凝聚在一起化身为的新鬼魂，邪恶的气息能让所有人都不寒而栗。" ID="144" MaxStar="5" Name="王国士兵" Quality="6" Race="1" SP="8" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="”光是它那张狰狞恐怖的脸就能把敌人吓破胆“——钟馗" ID="145" MaxStar="5" Name="王国士兵" Quality="1" Race="1" SP="6" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2>18</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="凡人看不到的幽灵，时常会对人施展各种咒术..." ID="146" MaxStar="5" Name="王国士兵" Quality="4" Race="1" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2>18</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="死去野兽灵魂汇聚而成的虚无生物。可以将体内的魂魄进行压缩后急速射出，穿过一切障碍，直击目标。" ID="147" MaxStar="5" Name="荒野巨蟒" Quality="5" Race="3" SP="8" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>156</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="冤魂寄宿的墙壁，被惊扰时便会显露出狰狞的面容与哀怨的叫声。" ID="148" MaxStar="5" Name="荒野巨蟒" Quality="6" Race="3" SP="8" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>156</Skill1>
    <Skill2>16</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="被妖魂帝后复活的幼龙，由于还在幼年期，还无法真正的飞行起来，战斗能力不是很强。" ID="149" MaxStar="5" Name="荒野巨蟒" Quality="1" Race="3" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>156</Skill1>
    <Skill2>16</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="3" Description="音女平常不言苟笑，与世无争。但有人想惹怒音女时，音女发出的音波会把周围的人的耳朵给震碎。" ID="150" MaxStar="5" Name="暗影猎豹" Quality="4" Race="4" SP="6" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="鬼影领主为了对抗仙族特别研究出来的阵法，对仙族有不小的限制作用。" ID="151" MaxStar="5" Name="暗影猎豹" Quality="5" Race="4" SP="6" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>50</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="3" Description="吸血鬼之王，每个月的月圆之夜都要潜入人界吸干数人的鲜血以补充所需的能量。" ID="152" MaxStar="5" Name="暗影猎豹" Quality="6" Race="4" SP="4" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>50</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="栖息在永冻原的鬼族生物，鬼族通常利用它们来攻占坚固的城池。" ID="153" MaxStar="5" Name="海马守卫" Quality="1" Race="2" SP="6" Star="1">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>122</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="血池鬼王通过自己的血池造出来的护卫，得到部分鬼王的能力，颇有战斗力。" ID="154" MaxStar="5" Name="海马守卫" Quality="4" Race="2" SP="4" Star="2">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>122</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="灵力的操控大师，会使用灵力给自己张开保护网，所有人都无法伤害他。" ID="155" MaxStar="5" Name="海马守卫" Quality="5" Race="2" SP="4" Star="3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>122</Skill1>
    <Skill2>62</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="死去的弓箭兵被鬼族复活后留作己用， 寒冰般的内心使得他们的弓箭准确无误。" ID="156" MaxStar="5" Name="水母怪" Quality="6" Race="3" SP="8" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>149</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="永冻原里被冻死的凡人受到鬼族力量的影响，重新复活，来往的旅人多数死于它们之手。" ID="157" MaxStar="5" Name="水母怪" Quality="1" Race="3" SP="6" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>149</Skill1>
    <Skill2>24</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="被妖魂帝后复活的龙，它们飞行过的地方，花草树木都变成了黑色。" ID="158" MaxStar="5" Name="水母怪" Quality="4" Race="3" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>150</Skill1>
    <Skill2>24</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="这种疯狂的蝙蝠只要看到活着的生物便会一拥而上，血液是它们一生的渴求。" ID="159" MaxStar="5" Name="深海巨鲨" Quality="5" Race="1" SP="10" Star="1">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>53</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="“它从不追赶被它咬过的敌人，因为死人是跑不远的。”——九灵" ID="160" MaxStar="5" Name="深海巨鲨" Quality="6" Race="1" SP="8" Star="2">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>53</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="妖魂帝后将镇魂看作自己的女儿一样喜爱。但所有人都不知道，她的真实身份其实是黑龙神的转世化身。" ID="161" MaxStar="5" Name="深海巨鲨" Quality="1" Race="1" SP="6" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>53</Skill1>
    <Skill2>143</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="墓地的亡灵看守者，凡是想踏入墓穴窃取财宝的人都会被他撕成两半。" ID="162" MaxStar="5" Name="雷精灵" Quality="4" Race="2" SP="4" Star="1">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>82</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="在战乱中无数被无端杀害的女子的灵魂聚在一起，变成了鬼姬，复仇是她们解脱的唯一方式。" ID="163" MaxStar="5" Name="雷精灵" Quality="5" Race="2" SP="4" Star="2">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>83</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="死去的鬼族守护龙的骸骨亡灵，因为已经死去，所以更加无所畏惧。" ID="164" MaxStar="5" Name="雷精灵" Quality="6" Race="2" SP="2" Star="3">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>83</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="死前为人类君王的御前护卫，射术惊人百步穿杨。在一次与妖族的战斗中被同伴出卖，妖族抓住他后，将他挖心取肺，剥皮抽筋。现在无法平息的怨恨之意又将他那残破的躯体再次复活，一切只为了复仇。" ID="165" MaxStar="5" Name="懒惰雪人" Quality="1" Race="3" SP="8" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>41</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="常驻在地狱的奈何桥边的使者。职责是确保所有前往投胎的鬼魂，都不会记得自己的前世和地狱里的一切。 " ID="166" MaxStar="5" Name="懒惰雪人" Quality="4" Race="3" SP="8" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>41</Skill1>
    <Skill2>6</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="镇魂使用通灵术召唤出来的强大鬼兽，以孤魂野鬼为食，负责保护镇魂。" ID="167" MaxStar="5" Name="懒惰雪人" Quality="5" Race="3" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>41</Skill1>
    <Skill2>6</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="10" Description="黑龙神的孩子，负责保护鬼界的安全。体内怀有剑灵之气，能和父亲一样召唤强大的飞剑攻击敌人，目前在鬼界的最深处栖息。" ID="168" MaxStar="5" Name="森林仙女" Quality="6" Race="4" SP="8" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Mitac/>
    <Skill1>168</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="鬼界的创始者，万剑的主人，能召唤成千上万的飞剑攻击敌人。据说北方教尊的剑法是由黑龙神传授的。" ID="169" MaxStar="5" Name="森林仙女" Quality="1" Race="4" SP="8" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Mitac/>
    <Skill1>168</Skill1>
    <Skill2>168</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="10" Description="龙生九子之一，出生之日周身便有仙气护体。" ID="170" MaxStar="5" Name="森林仙女" Quality="4" Race="4" SP="6" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Mitac/>
    <Skill1>168</Skill1>
    <Skill2>168</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="龙生九子之一，是九子龙最勇敢的，喜欢冲入敌军直取上将首级。" ID="171" MaxStar="5" Name="忧伤雪人" Quality="5" Race="2" SP="6" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>122</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="八仙之一，生性豁达，手中的扇子据说可以扇出强劲的风力，困住敌人。" ID="172" MaxStar="5" Name="忧伤雪人" Quality="6" Race="2" SP="4" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>122</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="龙生九子之一，勇猛果敢。面对敌人展现出强大的战斗力，不畏牺牲。" ID="173" MaxStar="5" Name="忧伤雪人" Quality="1" Race="2" SP="4" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>123</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="10" Description="龙生九子之首，喜好音乐。能施放优美的音乐，让敌人如痴如醉。" ID="174" MaxStar="5" Name="女海贼" Quality="4" Race="4" SP="8" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>52</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="龙生九子之一，身似龙，雅好斯文。似龙形，排行老八，平生好文。" ID="175" MaxStar="5" Name="女海贼" Quality="5" Race="4" SP="6" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>53</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="10" Description="计都的师弟，是仙族中比较阴狠的角色，以杀戮为乐趣。" ID="176" MaxStar="5" Name="女海贼" Quality="6" Race="4" SP="6" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>53</Skill1>
    <Skill2>55</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="9" Description="龙生九子之一。因为喜欢四处观望，被安排负责仙界的警戒工作。" ID="177" MaxStar="5" Name="飓风女妖" Quality="1" Race="4" SP="6" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>38</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="9" Description="红龙神之子，幼年的体型使得它的攻击力不是很出众，但能力遗传了红龙神。" ID="178" MaxStar="5" Name="飓风女妖" Quality="4" Race="4" SP="6" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>38</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="9" Description="五炁真君之一，姓浩空，讳维淳，字散融。掌管人间之火，被尊称为“火神”。" ID="179" MaxStar="5" Name="飓风女妖" Quality="5" Race="4" SP="4" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>38</Skill1>
    <Skill2>22</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="玉皇大帝的特使，负责传达各种命令，因而受到人们的喜爱。" ID="180" MaxStar="5" Name="骷髅战士" Quality="6" Race="4" SP="8" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>161</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="四神兽之一，仙界北方的守护神兽。平时会化身为人形，吼叫的响声会让周围的人痛不欲生。" ID="181" MaxStar="5" Name="骷髅战士" Quality="1" Race="4" SP="6" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>161</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="四神兽之一，仙界东方的守护神兽。平时会化身为人形，龙头和头尾的力量势大力沉，厚厚的云层都会被一扫而空。" ID="182" MaxStar="5" Name="骷髅战士" Quality="4" Race="4" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>161</Skill1>
    <Skill2>29</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="统领仙界群兽，身上流淌着精族的血脉，非常喜爱动物。" ID="183" MaxStar="5" Name="食尸鬼" Quality="5" Race="4" SP="6" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>73</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="专门收集荒山野岭的孤魂野鬼，再与之吸收或引渡是位亦正亦邪的仙人。" ID="184" MaxStar="5" Name="食尸鬼" Quality="6" Race="4" SP="6" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>73</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="佛教四大菩萨之一，与观音、文殊、普贤一起，深受世人敬仰。" ID="185" MaxStar="5" Name="食尸鬼" Quality="1" Race="4" SP="4" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>73</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="天性纯善，不喜富贵，却慕恋于仙道，最后成为八仙之一。" ID="186" MaxStar="5" Name="骷髅射手" Quality="4" Race="4" SP="8" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="“两枚仙杏安天下，一条金棍定乾坤。风雷两翅开先辈，变化千端起后昆。眼似金铃通九地，发如紫草短三髡。秘传玄妙真仙诀，炼就金刚体不昏。” " ID="187" MaxStar="5" Name="骷髅射手" Quality="5" Race="4" SP="6" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="为给黄帝守夜的神灵。他们白天隐去，夜晚出现，因而叫做＂夜游神＂。" ID="188" MaxStar="5" Name="骷髅射手" Quality="6" Race="4" SP="4" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="红幼龙成长后的样子，更为健壮，更具攻击能力。" ID="189" MaxStar="5" Name="重弩手" Quality="1" Race="1" SP="8" Star="1">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>64</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="广寒宫的女主人，仙界最美的女仙，深受王母的喜爱。" ID="190" MaxStar="5" Name="重弩手" Quality="4" Race="1" SP="6" Star="2">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>64</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="风袋中吹出的飓风能让所有敌人难以前进。" ID="191" MaxStar="5" Name="重弩手" Quality="5" Race="1" SP="4" Star="3">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>64</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="11" Description="北方教尊大弟子，不但剑术绝世无双，相貌也美丽异常。" ID="192" MaxStar="5" Name="窥视之眼" Quality="6" Race="4" SP="4" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>146</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="11" Description="五炁真君之一，名启垣，字积原。掌管人间之水，被尊称为“水神”。" ID="193" MaxStar="5" Name="窥视之眼" Quality="1" Race="4" SP="2" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>146</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="11" Description="平日笑容挂面的开心佛，习得大乘佛法的精髓，所有的法术攻击对他来说都是徒劳的。" ID="194" MaxStar="5" Name="窥视之眼" Quality="4" Race="4" SP="0" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>146</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="北方教尊的师弟，喜欢乘坐自己召唤的飞剑四处游历。" ID="195" MaxStar="5" Name="骷髅剑士" Quality="5" Race="4" SP="8" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="掌管仙界十万大军，武功颇为不俗。痴情的爱着嫦娥。" ID="196" MaxStar="5" Name="骷髅剑士" Quality="6" Race="4" SP="6" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="仙界男仙的领导者。凡得道升仙者，要先拜东华帝君后拜群尊，在仙界的地位十分高。" ID="197" MaxStar="5" Name="骷髅剑士" Quality="1" Race="4" SP="4" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="11" Description="四神兽之一，仙界南方的守护神兽。平时会化身为人形，战斗时使用火焰的力量攻击敌人和保护自己。" ID="198" MaxStar="5" Name="忍者猫" Quality="4" Race="4" SP="8" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>150</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="11" Description="掌管直符灵动九天界，主御群妖灵者，手执万神图，总御万星，尊原始符昭，其乃妖族大帝。" ID="199" MaxStar="5" Name="忍者猫" Quality="5" Race="4" SP="8" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>150</Skill1>
    <Skill2>24</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="11" Description="四神兽之一，仙界西方的守护神兽。平时会化身为人形，战斗时会使用寒冰的力量攻击敌人和保护自己。" ID="200" MaxStar="5" Name="忍者猫" Quality="6" Race="4" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>150</Skill1>
    <Skill2>24</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="八仙中年纪最大的神仙，道教膜拜的神仙之一，总之倒骑着一头毛驴。" ID="201" MaxStar="5" Name="石巨人" Quality="1" Race="2" SP="12" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="传说中的“龙生九子”之一，住在海滨，十分怕鲸鱼，一但鲸鱼发起攻击，它就会吓得乱叫。 " ID="202" MaxStar="5" Name="石巨人" Quality="4" Race="2" SP="12" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>24</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="八仙之一，为吕洞宾之徒，八仙中唯一的女性。" ID="203" MaxStar="5" Name="石巨人" Quality="5" Race="2" SP="10" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>24</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="长相奇特的龙，栖息在太上老君的八卦炉里，由于是红龙神后代，所以不畏惧炙热的炉中之火。" ID="204" MaxStar="5" Name="白猎鹰" Quality="6" Race="1" SP="8" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="红龙神之子，在仙界的最顶层巡视一切，它是仙界的最后一道防线，当仙界危在旦夕时，它会俯身冲下，用炙热的龙息之火将敌人化为灰烬。" ID="205" MaxStar="5" Name="白猎鹰" Quality="1" Race="1" SP="6" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="仙界的创造者。红龙神每次出现，天空都会化为鲜艳的赤红色。目前无人知道它的行踪。有传言说它有时会化身为一名散仙在仙界出现。" ID="206" MaxStar="5" Name="白猎鹰" Quality="4" Race="1" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2>29</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="一个没有过去的人，没有人知道他从哪里来，包括他自己。天生的能力使他逐渐成为了人族不可或缺的战斗力，可是仿佛总有一种未知的力量在他体内涌动着。" ID="207" MaxStar="5" Name="爆炎猴" Quality="5" Race="3" SP="8" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>2</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="人族的机械制造家，可是他参加战斗的目的并不是为了人族的未来。他只是为了得到那丰厚的酬劳而已。 " ID="208" MaxStar="5" Name="爆炎猴" Quality="6" Race="3" SP="6" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>2</Skill1>
    <Skill2>175</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="战略天才，人族讨伐鬼影沼泽的前线指挥官。强大的指挥能力使得军队的战斗力大大提升。" ID="209" MaxStar="5" Name="爆炎猴" Quality="1" Race="3" SP="6" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>3</Skill1>
    <Skill2>175</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="以防御著称的人族铁甲部队统帅，手下部队个个能征善战。在英魂之地决战妖族时，误入八荒破天阵，后战至力竭而亡。" ID="210" MaxStar="5" Name="幼年冰龙" Quality="4" Race="1" SP="6" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>6</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="没有人知道她的真名，之所以叫她香雪，是因为她舞剑的时候就如同雪花飘落般轻盈..." ID="211" MaxStar="5" Name="幼年冰龙" Quality="5" Race="1" SP="6" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>6</Skill1>
    <Skill2>86</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="上古时代，人们经常因疾病而丧命。于是百草氏就跋山涉水，尝遍百草，找寻治病解毒良药，以救夭伤之命。后因误食“断肠草”肠断而死。 " ID="212" MaxStar="5" Name="幼年冰龙" Quality="6" Race="1" SP="4" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>6</Skill1>
    <Skill2>86</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="11" Description="人族精英部队之一车骑部队的首领，身手敏捷，毅力过人。曾率领手下昆仑卫部队奇袭鬼影沼泽，立下赫赫战功。 " ID="213" MaxStar="5" Name="石像旺达" Quality="1" Race="4" SP="10" Star="1">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>10</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="11" Description="当漫天的尘土袭来之时，就说明他们来了... " ID="214" MaxStar="5" Name="石像旺达" Quality="4" Race="4" SP="10" Star="2">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>10</Skill1>
    <Skill2>56</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="11" Description="人君姬轩辕麾下的第一猛将，据说可以徒手劈开山石！ " ID="215" MaxStar="5" Name="石像旺达" Quality="5" Race="4" SP="8" Star="3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>10</Skill1>
    <Skill2>56</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="拥有操纵雷电的强大力量，他恐怖的破坏能力瞬间即可使鬼族的军队灰飞烟灭。 " ID="216" MaxStar="5" Name="冰原巨熊" Quality="6" Race="3" SP="8" Star="1">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>4</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="上古时代熊族部落的传奇首领，拥有过人的智慧与力量。击败蛮族之王蚩尤后建立了黄帝王朝，" ID="217" MaxStar="5" Name="冰原巨熊" Quality="1" Race="3" SP="6" Star="2">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>4</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="闭月之容，羞花之貌... " ID="218" MaxStar="5" Name="冰原巨熊" Quality="4" Race="3" SP="6" Star="3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>4</Skill1>
    <Skill2>162</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="修仙得道之高人，居于坠云峡顶凌云峰上，博古通今，能用无字天书与仙神交流。 " ID="219" MaxStar="5" Name="海盗船长" Quality="5" Race="3" SP="8" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac/>
    <Skill1>74</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="”阳动而行，阴止而藏；阳动而出，阴隐而入；阳远终阴，阴极反阳。“——鬼谷子 " ID="220" MaxStar="5" Name="海盗船长" Quality="6" Race="3" SP="8" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac/>
    <Skill1>74</Skill1>
    <Skill2>95</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="碧落是翡翠之森里的用毒高手。作为最强大的巫医，碧落在翡翠之森里配置各种毒药和解毒药，用于保护翡翠之森。" ID="221" MaxStar="5" Name="海盗船长" Quality="1" Race="3" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac/>
    <Skill1>74</Skill1>
    <Skill2>95</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="她可以吸收纯净月光的精华并将其转化为自身流动的灵力。" ID="222" MaxStar="5" Name="冰原雪狼" Quality="4" Race="2" SP="6" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>156</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="作为森林里最古老的居民，精木长老是绿龙神在翡翠之森里的使者，他负责传达绿龙神给精族的信息。" ID="223" MaxStar="5" Name="冰原雪狼" Quality="5" Race="2" SP="6" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>156</Skill1>
    <Skill2>56</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="被绿龙神创造出来负责保护圣湖守护神，通常居住在圣湖里，几乎不会出水。但当圣湖守护神受到攻击时会毫不犹豫的冲出湖面保护她。" ID="224" MaxStar="5" Name="冰原雪狼" Quality="6" Race="2" SP="4" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>156</Skill1>
    <Skill2>56</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="神木弓箭大师的大徒弟，箭术能力非常突出。有人说，在不久的将来，夏心的箭术会超越她的老师。" ID="225" MaxStar="5" Name="娜迦战士" Quality="1" Race="2" SP="8" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>149</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="为了避免雷击造成翡翠之森的树木着火，闪电之刃吸收着翡翠之森上空的雷电，久而久之，自己具有了一部分的雷神之力，可以随意操控雷电。" ID="226" MaxStar="5" Name="娜迦战士" Quality="4" Race="2" SP="6" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>149</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="拥有传奇故事的刺客，但因为嗜血的欲望过于强烈而被精灵族人驱逐出了翡翠之森。" ID="227" MaxStar="5" Name="娜迦战士" Quality="5" Race="2" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>149</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="原本只是一颗植物的绿萝，受到绿龙神的召唤与影响，化身为人，守护翡翠之森。" ID="228" MaxStar="5" Name="雪人王" Quality="6" Race="2" SP="8" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>127</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="潜伏在翡翠之森里的刺客，暗杀所有冒然进入森林的人。名字的由来是因为他的速度太快，敌人只能刺到他的影子。" ID="229" MaxStar="5" Name="雪人王" Quality="1" Race="2" SP="6" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>127</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="翡翠之森里负责歌颂梦境守护龙的神秘歌女，作为回报，守护龙赐予了丛林之歌较为强大的能力。" ID="230" MaxStar="5" Name="雪人王" Quality="4" Race="2" SP="4" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>127</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="誓死守护圣湖的圣女，运用绿龙神传授的能力，惩罚所有胆敢玷污圣湖的人。" ID="231" MaxStar="5" Name="冰霜女武神" Quality="5" Race="3" SP="8" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>4</Skill1>
    <Skill2>162</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="传说是从一尊石狮子像里飞出来的妖怪，虽说是妖，却与仙族的蒲牢有着千丝万缕的关系。" ID="232" MaxStar="5" Name="冰霜女武神" Quality="6" Race="3" SP="6" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>4</Skill1>
    <Skill2>162</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="传说是从一尊石狮子像里飞出来的妖怪，虽说是妖，却与仙族的蒲牢有着千丝万缕的关系。" ID="233" MaxStar="5" Name="冰霜女武神" Quality="1" Race="3" SP="6" Star="3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>4</Skill1>
    <Skill2>162</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="妖王座下法王之一。天生的摄魂取念之术使所有和她对视过的凡人成为了她的奴隶。" ID="234" MaxStar="5" Name="王国剑士" Quality="4" Race="1" SP="8" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="妖王座下法王之一。人马族被灭族后，妖王出手救了这个最后的血脉，北冥获救后发誓要向人族报灭族之仇。" ID="235" MaxStar="5" Name="王国剑士" Quality="5" Race="1" SP="6" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="手持金箍棒，脚踏筋斗云。齐天大圣的威名无人不知，无人不晓。所有人见到他都要恭敬的拱手作揖，护一声“大圣”" ID="236" MaxStar="5" Name="王国剑士" Quality="6" Race="1" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2>149</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="本是头普通的老虎，被妖王所救后决定为其效忠。由于长期在妖界活动，自己也从一头野兽化身为了妖怪。" ID="237" MaxStar="5" Name="雷刃独角兽" Quality="1" Race="1" SP="8" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>77</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="负责妖界的警戒工作，只要有人踏入妖族的领地，天机妖会马上知道并作出行动。" ID="238" MaxStar="5" Name="雷刃独角兽" Quality="4" Race="1" SP="8" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>78</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="妖王玄冰的掌上明珠，一直伴随在父亲左右。虽说是妖界的公主，但战斗能力非比寻常，恐怕是遗传了父亲的部分能力。" ID="239" MaxStar="5" Name="雷刃独角兽" Quality="5" Race="1" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>78</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="原本是人族，为了获得超越同族的力量，与妖族为伴。败于黄帝后，回到妖界继续潜心修炼。力量较过去，已经脱胎换骨。" ID="240" MaxStar="5" Name="石像鬼" Quality="6" Race="2" SP="8" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>17</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="“他身上散发的寒冷之气，让每一个妖族的人都情不自禁的下跪，颤抖”——天魔圣女" ID="241" MaxStar="5" Name="石像鬼" Quality="1" Race="2" SP="6" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>17</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="为了证明自己的力量而屠龙，就连妖界守护龙也被他斩于马下。其恐怖的弑龙能力，使五大守护龙都退让三分。" ID="242" MaxStar="5" Name="石像鬼" Quality="4" Race="2" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>17</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="5" Description="鬼族的审判官，死去的人将会按照生前的罪过被审判，罪孽深重之人将被打入万劫雷狱永世遭受电打雷劈。" ID="243" MaxStar="5" Name="骷髅法师" Quality="5" Race="4" SP="4" Star="1">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>24</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="5" Description="崇尚死亡的阴司魔教之主，宣扬死亡即解脱，死亡即永生的教义。而信仰他的教众，为了追求那不朽的永生，渐渐变为了鬼族的奴仆。" ID="244" MaxStar="5" Name="骷髅法师" Quality="6" Race="4" SP="2" Star="2">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>24</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="5" Description="无数的冤魂被投入到血池中凝聚成不死巫妖。看到他空洞双眼的人便会被数万个冤魂的哀嚎所折磨，痛不欲生" ID="245" MaxStar="5" Name="骷髅法师" Quality="1" Race="4" SP="2" Star="3">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>24</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="11" Description=" 阴虚八大鬼王之一，能够召唤小鬼为其助战。而当自己受了伤，就吃掉召唤出来的小鬼，快速愈合自己的伤口。" ID="246" MaxStar="5" Name="赤炎小恶魔" Quality="4" Race="4" SP="4" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Mitac/>
    <Skill1>175</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="11" Description="“虽然帝后的容貌倾倒众生，但她的力量深不可测，我还没有见过能对她造成威胁的角色。“——镇魂" ID="247" MaxStar="5" Name="赤炎小恶魔" Quality="5" Race="4" SP="4" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Mitac/>
    <Skill1>175</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="11" Description="阴虚八大鬼王之一，凡人一旦被他的巫蛊之术杀死，就意味着自己的肉身将永世成为尸王的奴仆，直到支离破碎、分崩离析。" ID="248" MaxStar="5" Name="赤炎小恶魔" Quality="6" Race="4" SP="2" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Mitac/>
    <Skill1>175</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="阴虚八大鬼王之一，喜欢屠杀人族，用他们的滚滚鲜血填满它那深不见底的血池。传说只要它身在血池之中就可以不朽。" ID="249" MaxStar="5" Name="嗜血螳螂" Quality="1" Race="3" SP="10" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>64</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="妖魂帝后召唤出来的剧毒之物，听说凡人一旦沾上毒魔皮肤中渗出的毒汁，片刻便会化为白骨。" ID="250" MaxStar="5" Name="嗜血螳螂" Quality="4" Race="3" SP="8" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>64</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="人界瘟疫的罪魁祸首，每次到人界，所经之处百年都不会再有生机。" ID="251" MaxStar="5" Name="嗜血螳螂" Quality="5" Race="3" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>64</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="由上古恶魔的尸体中复活而出的恐怖生物，恶魔之血提供的强大的恢复能力，使得一切攻击在它面前就仿佛抓痒一般。" ID="252" MaxStar="5" Name="金牛座" Quality="6" Race="4" SP="8" Star="1">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>128</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="四方天尊之一，传说东极埋藏着远古之神遗留的神器，而东极圣女负责看守这些神器，避免落入心怀不轨之人的手中。" ID="253" MaxStar="5" Name="金牛座" Quality="1" Race="4" SP="8" Star="2">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>128</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="四方天尊之一，能够打出八部天龙神印，中了此印记将被封印五感，无法行动。" ID="254" MaxStar="5" Name="金牛座" Quality="4" Race="4" SP="6" Star="3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>128</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="从人界守护龙那获得了寒冰的力量，走过的路，触碰过的物体都变成了寒冷的冰块，数百年都不会化掉。" ID="255" MaxStar="5" Name="火枪手" Quality="5" Race="2" SP="6" Star="1">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="从仙界守护龙那获得了火焰的力量，经过之地皆化为火海。" ID="256" MaxStar="5" Name="火枪手" Quality="6" Race="2" SP="6" Star="2">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="四方天尊之一，剑术能力天界之首。曾经化身为凡人传授香雪剑法。" ID="257" MaxStar="5" Name="火枪手" Quality="1" Race="2" SP="4" Star="3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="天庭大将，阐教元始天尊门下徒孙，玉鼎真人的大弟子，变化无穷，神通广大，肉身成圣。" ID="258" MaxStar="5" Name="生化毒蝎" Quality="4" Race="4" SP="12" Star="1">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>161</Skill1>
    <Skill2>50</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="据说濒死之人喝下一口斗神血，就可以恢复生命力，身体甚至比从前更加强壮。" ID="259" MaxStar="5" Name="生化毒蝎" Quality="5" Race="4" SP="10" Star="2">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>161</Skill1>
    <Skill2>50</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="佛祖的身体上长出的灵芝，凡人吃后将长生不老，羽化登仙。" ID="260" MaxStar="5" Name="生化毒蝎" Quality="6" Race="4" SP="8" Star="3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>161</Skill1>
    <Skill2>50</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="众仙佩戴在身边的仙牌，据说这块牌有免于一死的神奇作用。" ID="261" MaxStar="5" Name="地狱三头犬" Quality="1" Race="3" SP="8" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>47</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="当这把斧头砍到任何物品的时候，会产生强大的火球向四周发射。威力巨大，号称战场杀手。" ID="262" MaxStar="5" Name="地狱三头犬" Quality="4" Race="3" SP="8" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>47</Skill1>
    <Skill2>18</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="吸收了天地灵气幻化成的神奇的小壶，把重伤者吸进壶中数日后即可痊愈。" ID="263" MaxStar="5" Name="地狱三头犬" Quality="5" Race="3" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>47</Skill1>
    <Skill2>18</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="使用他的人便会具有雷电之力，轻轻一击即可产生强大的闪电攻击敌人。据说坠云峡就是被雷公钻的闪电劈开的。" ID="264" MaxStar="5" Name="恶魔史莱姆" Quality="6" Race="3" SP="10" Star="1">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>161</Skill1>
    <Skill2>95</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="只要被这把匕首切到伤口，魂魄就会被这把诡异的匕首抽出并被吸取，遭受永世的折磨。" ID="265" MaxStar="5" Name="恶魔史莱姆" Quality="1" Race="3" SP="8" Star="2">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>161</Skill1>
    <Skill2>95</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="一把不用箭的弓，把手搭在弓弦上时，碧游弓会自动产生出一根箭，普通的盔甲会被箭立刻射穿。" ID="266" MaxStar="5" Name="恶魔史莱姆" Quality="4" Race="3" SP="6" Star="3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>161</Skill1>
    <Skill2>95</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="这根鞭子是由一片片龙鳞制造出来的，传说太用力挥舞这根鞭子，会把大地给劈开。" ID="267" MaxStar="5" Name="大魔导师" Quality="5" Race="1" SP="6" Star="1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>83</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="游仙随身携带的枕头。不管在什么地方，躺在上面就能安然入睡。而且具有治疗伤口的神奇作用，伤者往往睡一觉就能痊愈。" ID="268" MaxStar="5" Name="大魔导师" Quality="6" Race="1" SP="4" Star="2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>83</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="拳套上的白虎花纹中蕴含的灵力是这个拳套的力量来源，既有强大的破坏力，又有不俗的防护能力。" ID="269" MaxStar="5" Name="大魔导师" Quality="1" Race="1" SP="4" Star="3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>83</Skill1>
    <Skill2>17</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="这面轻柔的帐能化解所有的法术，致命的攻击就仿佛清风拂面。" ID="270" MaxStar="5" Name="沙漠掠夺者" Quality="4" Race="3" SP="4" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Mitac/>
    <Skill1>155</Skill1>
    <Skill2>147</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="戴上它就能治愈百病的仙冠，据说神医扁鹊从这顶冠中学会了望闻问切。" ID="271" MaxStar="5" Name="沙漠掠夺者" Quality="5" Race="3" SP="2" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Mitac/>
    <Skill1>155</Skill1>
    <Skill2>147</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="传闻江山社稷图中埋藏了上古宝藏的秘密，破解图中的秘密就能成为人中之王。" ID="272" MaxStar="5" Name="沙漠掠夺者" Quality="6" Race="3" SP="2" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Mitac/>
    <Skill1>156</Skill1>
    <Skill2>147</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="用炼狱魔龙身上的一块皮做成的宝甲，没有被它认可的人穿上它会被烈火吞噬。" ID="273" MaxStar="5" Name="致命毒蜂" Quality="1" Race="3" SP="6" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="这把刀的强大之处在于即使是凡人拥有这把刀，也具有了弑仙的能力。" ID="274" MaxStar="5" Name="致命毒蜂" Quality="4" Race="3" SP="4" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="神奇的拂尘，用太白金星掉落的胡须制成。只会出现在真正需要它的人面前。" ID="275" MaxStar="5" Name="致命毒蜂" Quality="5" Race="3" SP="2" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="茅山道士操控尸体所用的香。在战场中使用，可以操控士兵的尸体继续战斗。" ID="276" MaxStar="5" Name="王国魔法师" Quality="6" Race="1" SP="8" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>146</Skill1>
    <Skill2>76</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="齐天大圣大闹天宫的时候带走的酒，一小杯就能让凡人飘飘欲仙，醉倒半生。" ID="277" MaxStar="5" Name="王国魔法师" Quality="1" Race="1" SP="6" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>146</Skill1>
    <Skill2>76</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="就算再强大的人，都经不起定天钟的钟声所带来的冲击力，它的力量犹如大地般浑厚。" ID="278" MaxStar="5" Name="王国魔法师" Quality="4" Race="1" SP="4" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>146</Skill1>
    <Skill2>76</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="本是面很普通的盾，螭龙附在盾上后成为了一面神盾，持有了它，就能获得螭龙的庇护。" ID="279" MaxStar="5" Name="吟诗游人" Quality="5" Race="1" SP="6" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>146</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="这面铃铛具有催眠的作用，传说听到铃铛的声响后，剩下的人生就在睡梦中度过了。" ID="280" MaxStar="5" Name="吟诗游人" Quality="6" Race="1" SP="6" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>146</Skill1>
    <Skill2>168</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="死在万骨凶阵中的仙族的精元被凝聚成一把杖，握紧它的时候仿佛能听到死去仙族的哀嚎。" ID="281" MaxStar="5" Name="吟诗游人" Quality="1" Race="1" SP="4" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>146</Skill1>
    <Skill2>168</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="号称天下第一的暗器，以银制成，上用小篆字体雕出：“出必见血、空回不祥、急中之急、暗器之王。”" ID="282" MaxStar="5" Name="狂战士" Quality="4" Race="1" SP="8" Star="1">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>10</HP>
    <Mitac/>
    <Skill1>127</Skill1>
    <Skill2>74</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="上古神剑，没人知道它是何时何地出现的，也没人拥有过它。据说这把剑拥有斩断星河的力量。" ID="283" MaxStar="5" Name="狂战士" Quality="5" Race="1" SP="6" Star="2">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>10</HP>
    <Mitac/>
    <Skill1>127</Skill1>
    <Skill2>74</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="这面扇子触碰就很烫，扇一下就会卷起熊熊的烈火，火焰数日内都不会熄灭。" ID="284" MaxStar="5" Name="狂战士" Quality="6" Race="1" SP="6" Star="3">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>10</HP>
    <Mitac/>
    <Skill1>128</Skill1>
    <Skill2>74</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="北方教尊借助太极图炼化出来的宝物，据说攻击这面镜子的人都被自己杀死了。" ID="285" MaxStar="5" Name="魅魔" Quality="1" Race="2" SP="10" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>123</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="这条看起来普普通通的绳子让所有人都为之恐惧，至今没有人能够逃脱捆仙索的束缚。" ID="286" MaxStar="5" Name="魅魔" Quality="4" Race="2" SP="8" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>123</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="酿造了数万年的酒，只要一滴就能让任何人死而复生，不过鬼族好像对这个宝物并不关心。" ID="287" MaxStar="5" Name="魅魔" Quality="5" Race="2" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>123</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="吕公望所持的宝物，传说此物内藏不破璇玑。当攻击它的同时，便会受到镜中镜像的反击。" ID="288" MaxStar="5" Name="史莱姆王" Quality="6" Race="2" SP="8" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>123</Skill1>
    <Skill2>137</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="武林至尊，宝刀屠龙，号令天下，莫敢不从。" ID="289" MaxStar="5" Name="史莱姆王" Quality="1" Race="2" SP="8" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>123</Skill1>
    <Skill2>137</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="看起来很重，实际上却非常轻。但丝毫不影响它的防护能力。刀枪不入，想刺穿它几乎是不可能的。" ID="290" MaxStar="5" Name="史莱姆王" Quality="4" Race="2" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>123</Skill1>
    <Skill2>137</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="5" Description="白云飞给坐骑佩戴的铃铛，据说听到这个铃铛发出的声音时，坐骑能跑的更快。" ID="291" MaxStar="5" Name="无头骑士" Quality="5" Race="4" SP="8" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>142</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="5" Description="用菩提神树的枝条制作而成的盾牌。木质的盾牌不但重量十分轻盈，而且拥有着比钢铁更加坚硬的外皮。" ID="292" MaxStar="5" Name="无头骑士" Quality="6" Race="4" SP="8" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>142</Skill1>
    <Skill2>17</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="5" Description="龙族持有的神秘宝珠，可以令龙族功力大增，据说拥有七颗便会发生惊天动地的大事。" ID="293" MaxStar="5" Name="无头骑士" Quality="1" Race="4" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>142</Skill1>
    <Skill2>17</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="妖魂帝后遗失的头环，被一个凡人小女孩捡到，佩戴在自己头上后被噬灵，成为了鬼族的一员——镇魂。" ID="294" MaxStar="5" Name="女神官" Quality="4" Race="2" SP="6" Star="1">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>168</Skill1>
    <Skill2>76</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="本来是一枚普通的指环，被红龙神佩戴后竟拥有了龙息的能力。" ID="295" MaxStar="5" Name="女神官" Quality="5" Race="2" SP="4" Star="2">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>168</Skill1>
    <Skill2>76</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description=" 停泊在白银湖的神秘仙舟，心地善良的凡人可以乘坐它通往极乐世界，而作恶多端之人会被半路抛下，打入地狱。" ID="296" MaxStar="5" Name="女神官" Quality="6" Race="2" SP="4" Star="3">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>168</Skill1>
    <Skill2>77</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="干将莫邪无意中打造的一把斧头，由于威力太过强大，被掩埋于坠云峡中，后被牛头酋长获得，神器重现人间。" ID="297" MaxStar="5" Name="彩虹史莱姆" Quality="1" Race="3" SP="8" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>169</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description=" 阴司教主用无数魂魄炼化成的吸精珠，凡人一旦触碰，则精元全部被吸取，灰飞烟灭。" ID="298" MaxStar="5" Name="彩虹史莱姆" Quality="4" Race="3" SP="6" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>169</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="由火器世家“霹雳堂”制造的独门暗器，恐怖的威力使所有人都为之畏惧。" ID="299" MaxStar="5" Name="彩虹史莱姆" Quality="5" Race="3" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>169</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description=" “易有太极，是生两仪，两仪生四象，四象生八卦，八卦定吉凶，吉凶生大业。”" ID="300" MaxStar="5" Name="狮鹫" Quality="6" Race="3" SP="4" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="传说佩戴它的人 能够获得斗战胜佛的帮助 拥有排山倒海的力量。" ID="301" MaxStar="5" Name="狮鹫" Quality="1" Race="3" SP="8" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>127</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="“只觉得力量从经脉中源源不断的流出，仿佛全身的肌肉都要被充涨的炸裂开来。” ——佣兵 流光" ID="302" MaxStar="5" Name="狮鹫" Quality="4" Race="3" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>127</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="“借汝之躯，宿吾之魂；移形幻影，七窍洞开。”——《移魂咒》" ID="303" MaxStar="5" Name="狮鹫" Quality="5" Race="3" SP="6" Star="4">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>127</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="3" Description="“天地合一，与万物不二，人无我，法无我。”" ID="304" MaxStar="5" Name="地龙骑士" Quality="6" Race="1" SP="8" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="木中火，凡人燃木取火，是为人火。石中火，熔岩化石为火，是为地火。雷霆击空化火，是为天火。三昧燃尽，形神俱灭。 " ID="305" MaxStar="5" Name="地龙骑士" Quality="1" Race="1" SP="8" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>29</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="3" Description="慈航菩萨普度众生之仙法，九天之下，春风化雨。" ID="306" MaxStar="5" Name="地龙骑士" Quality="4" Race="1" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>29</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="鬼影沼泽每日正午时分便会升起青色鬼雾，吸入雾气之人，三日之内便会肝肠溃烂，生不如死。 " ID="307" MaxStar="5" Name="嗜血狼人" Quality="5" Race="4" SP="10" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>52</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="10" Description="六道者：天道，人间道，修罗道 畜生道，饿鬼道，地狱道。三界众生，皆归六道。 " ID="308" MaxStar="5" Name="嗜血狼人" Quality="6" Race="4" SP="10" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2>52</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="”勾魂夺魄，只存枯骨。“——掘墓鬼 夺魂 " ID="309" MaxStar="5" Name="嗜血狼人" Quality="1" Race="4" SP="8" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2>52</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="方才踏过鬼影沼泽，忽闻一声巨吼，士兵们就都如同吓破胆一般瘫坐在地上，满眼充斥着惊恐与绝望... " ID="310" MaxStar="5" Name="德拉古拉" Quality="4" Race="4" SP="10" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>144</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="“我会让你们知道什么是无尽的恐惧与绝望的！”——阎罗" ID="311" MaxStar="5" Name="德拉古拉" Quality="5" Race="4" SP="8" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>144</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="“剑锋所指，所向披靡，剑气所至，斩草除根。”——《紫青剑法》" ID="312" MaxStar="5" Name="德拉古拉" Quality="6" Race="4" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>144</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="“这甘露乃生命之树所赐，有治愈百疾，起死回生之神效。”——醉月" ID="313" MaxStar="5" Name="乌拉埃乌斯" Quality="1" Race="4" SP="8" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>90</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="10" Description="“姬轩辕！就算我输的一败涂地，也不会让你们这群家伙笑着回去！”——蚩尤" ID="314" MaxStar="5" Name="乌拉埃乌斯" Quality="4" Race="4" SP="8" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>90</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="“刚才还是艳阳晴空，瞬间就变得乌云密布，这想必将有不详之事发生。”——惊恐的士兵 " ID="315" MaxStar="5" Name="乌拉埃乌斯" Quality="5" Race="4" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>90</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="传说上古天空中有十个太阳日夜不断的炙烤着大地，大神后羿用落日神弓射落了九个太阳，只留下一个。此法乃重新召唤被射落的九个太阳的究极火之神功。" ID="316" MaxStar="5" Name="半人马酋长" Quality="6" Race="3" SP="10" Star="1">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>94</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="乾坤袋中藏乾坤，盗取乾坤归空空。 " ID="317" MaxStar="5" Name="半人马酋长" Quality="1" Race="3" SP="8" Star="2">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>94</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="这白银湖上盛开的冰莲乃从寒冰女的口中吞吐而出，剔透晶莹，寒气袭人。 " ID="318" MaxStar="5" Name="半人马酋长" Quality="4" Race="3" SP="8" Star="3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>19</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="“鼓声之后，只见将军单枪匹马冲进妖阵中厮杀出一条血路，我就知道这一仗我们一定能胜！”——英魂之地战役生还士兵 " ID="319" MaxStar="5" Name="深海领主" Quality="5" Race="2" SP="8" Star="1">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>136</Skill1>
    <Skill2>7</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="”毁天灭地，诸神降服！“——灭神咒咒文 " ID="320" MaxStar="5" Name="深海领主" Quality="6" Race="2" SP="8" Star="2">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>136</Skill1>
    <Skill2>7</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="“天地混沌如鸡子，盘古生其中，万八千岁，天地开辟，阳清为天，阴浊为地，盘古在其中。”——《三五历记》" ID="321" MaxStar="5" Name="深海领主" Quality="1" Race="2" SP="6" Star="3">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>136</Skill1>
    <Skill2>7</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="”只要打通七经八脉 ，便能爆发出无限的潜能。“——鬼谷子" ID="322" MaxStar="5" Name="娜迦女王" Quality="4" Race="3" SP="10" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2>4</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="天罗一出，百神聚灭，地网一现，万鬼无踪！ " ID="323" MaxStar="5" Name="娜迦女王" Quality="5" Race="3" SP="8" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2>4</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="使用从灵界怪龙的皮囊里提取出的毒汁与冰原寒铁浇铸而成的碧绿色毒箭。据说只有精灵巫医碧落才懂得如何提炼这种毒汁。" ID="324" MaxStar="5" Name="娜迦女王" Quality="6" Race="3" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2>4</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="这群愚蠢的妖魔啊，就让它们在这古老的密林深处腐朽溃烂吧!——精木长老 " ID="325" MaxStar="5" Name="熔岩巨兽" Quality="1" Race="3" SP="8" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>2</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="只一个早上，断肠崖山间，尸横遍地、血流成河... " ID="326" MaxStar="5" Name="熔岩巨兽" Quality="4" Race="3" SP="8" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>2</Skill1>
    <Skill2>2</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="“神鹰部队全都从空中坠落了下来，这究竟是怎么了？”——弩骑兵" ID="327" MaxStar="5" Name="熔岩巨兽" Quality="5" Race="3" SP="6" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>2</Skill1>
    <Skill2>2</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="”将军，我们已经行军了一天一夜了，可为何还是看不到这沼泽的尽头...“——执旗使 " ID="328" MaxStar="5" Name="骷髅王" Quality="6" Race="4" SP="6" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>44</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="冰之王耗尽元气所使用的绝技，曾用此招困住魔族大军七七四十九日之久，为仙族主力部队的集结争取了宝贵的时间。" ID="329" MaxStar="5" Name="骷髅王" Quality="1" Race="4" SP="4" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>44</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="”三界之物皆属万灵，此心诀可湮灭终生，慎用。“——逍遥剑仙" ID="330" MaxStar="5" Name="骷髅王" Quality="4" Race="4" SP="4" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>44</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="11" Description="“那些人仿佛都长出了翅膀一般...” ——惊诧的人族士兵 " ID="331" MaxStar="5" Name="天马骑士" Quality="5" Race="4" SP="8" Star="1">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="11" Description="此招为闪电之刃与坐骑雷电之角在同一时刻释放雷击触而发的雷电共鸣，其破坏力可以直接毁灭一支军队。" ID="332" MaxStar="5" Name="天马骑士" Quality="6" Race="4" SP="8" Star="2">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2>16</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="11" Description="”过了这座桥，你就再也不会感到痛苦了...&quot;——孟婆 " ID="333" MaxStar="5" Name="天马骑士" Quality="1" Race="4" SP="6" Star="3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2>16</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="3" Description="“天下同归而殊途，一致而百虑。”——《周易》 " ID="334" MaxStar="5" Name="魔龙骑士" Quality="4" Race="4" SP="8" Star="1">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="使武器和装备瞬间腐蚀生锈的咒术，再坚硬的钢铁也会变得如同朽木般脆弱。 " ID="335" MaxStar="5" Name="魔龙骑士" Quality="5" Race="4" SP="8" Star="2">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="3" Description="阵中藏有数千把问天枪的复制品，虽说是复制品，威力缺丝毫不低。" ID="336" MaxStar="5" Name="魔龙骑士" Quality="6" Race="4" SP="6" Star="3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="人族在战场中新培养的兵种，操纵阵法困住敌人的行动。" ID="337" MaxStar="5" Name="天翼者" Quality="1" Race="1" SP="4" Star="1">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>73</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description=" 掌教真人的弟子，具有一定的道术，能够召唤雷电之力。" ID="338" MaxStar="5" Name="天翼者" Quality="4" Race="1" SP="2" Star="2">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>73</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="在深山中经历千锤百炼的修炼，据说能靠单手劈开巨石。" ID="339" MaxStar="5" Name="天翼者" Quality="5" Race="1" SP="2" Star="3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>73</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description=" 善能疗治一切诸病。自无有病，见诸病人而於其前自服苦药，诸病人见是药师服苦药已，然后効服，各得除病。" ID="340" MaxStar="5" Name="火凤凰" Quality="6" Race="3" SP="8" Star="1">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>48</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="皇城中的精英部队，一般只有人族军队中的佼佼者才能加入。" ID="341" MaxStar="5" Name="火凤凰" Quality="1" Race="3" SP="6" Star="2">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>48</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="”飞马神将“训练出的骑兵，使用神机弩在战场中直取敌方将首，轻而易举。" ID="342" MaxStar="5" Name="火凤凰" Quality="4" Race="3" SP="4" Star="3">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>48</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="”即使是飞马神将训练出来的骑兵，都会对这样的军队怀有紧张感”——白云飞" ID="343" MaxStar="5" Name="精灵龙" Quality="5" Race="2" SP="10" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Mitac/>
    <Skill1>25</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="皇城十八卫之一，专职暗杀行动，步伐轻盈，身手敏捷。敌人往往还在睡梦中，就被杀死了。" ID="344" MaxStar="5" Name="精灵龙" Quality="6" Race="2" SP="8" Star="2">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Mitac/>
    <Skill1>25</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="皇城十八卫之一，人族中最擅长格斗技术的护卫军。" ID="345" MaxStar="5" Name="精灵龙" Quality="1" Race="2" SP="8" Star="3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Mitac/>
    <Skill1>25</Skill1>
    <Skill2>146</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="皇城十八卫之一，盾上镶有天龙纹，战斗力极其彪悍。" ID="346" MaxStar="5" Name="尸王" Quality="4" Race="4" SP="10" Star="1">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="道士的授业老师，钻研道法的精髓，拥有较为深奥的道法，使用拂尘召唤闪电攻击敌人。" ID="347" MaxStar="5" Name="尸王" Quality="5" Race="4" SP="10" Star="2">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description=" 经过长年累月的修炼，习得了一些雷电之力。能对敌人造成不俗的伤害。" ID="348" MaxStar="5" Name="尸王" Quality="6" Race="4" SP="8" Star="3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="他使用从神秘洞窟中开采出的白色玄铁打造而成的特制马掌可以让马儿日行千里而不知疲倦。 " ID="349" MaxStar="5" Name="水蛇座" Quality="1" Race="2" SP="2" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="被茅山道士操纵的士兵尸体，具有一定攻击力，往往能在战场中发挥巨大的作用。" ID="350" MaxStar="5" Name="水蛇座" Quality="4" Race="4" SP="10" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="因为战场的需要，”飞马神将“训练出执旗使，他们在战场中负责向士兵传达将军命令。" ID="351" MaxStar="5" Name="水蛇座" Quality="5" Race="4" SP="8" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2>143</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="被茅山道士操纵的将军尸体，攻击力更强，拥有多个便可扭转战局。" ID="352" MaxStar="5" Name="水蛇座" Quality="6" Race="4" SP="6" Star="4">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2>143</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="”这个阵法能给人带来无穷的力量“——神语 吕公望" ID="353" MaxStar="5" Name="佣兵剑士" Quality="1" Race="1" SP="4" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="白麒龙的幼体，据说要五百年才能变为成年白麒龙... " ID="354" MaxStar="5" Name="佣兵剑士" Quality="4" Race="1" SP="2" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="使用秘法的力量在战场中攻击和束缚敌人，对战斗有很大帮助。" ID="355" MaxStar="5" Name="佣兵剑士" Quality="5" Race="1" SP="2" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2>92</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="“飞马神将”训练出来防御型的骑兵，对盾牌的使用了如指掌。" ID="356" MaxStar="5" Name="掘墓者" Quality="6" Race="4" SP="8" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>44</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="百草氏之徒，曾追随百草氏尝遍世间百草。身怀武艺，常救师傅与危难之中。  " ID="357" MaxStar="5" Name="掘墓者" Quality="1" Race="4" SP="8" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>44</Skill1>
    <Skill2>50</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="身上流淌着战神的血脉，在战场上所向披靡，万夫莫敌。" ID="358" MaxStar="5" Name="掘墓者" Quality="4" Race="4" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>44</Skill1>
    <Skill2>50</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="5" Description="人族特别训练出禁法师，以达到与其他四族实力相当的水平。" ID="359" MaxStar="5" Name="屠夫" Quality="5" Race="4" SP="10" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>161</Skill1>
    <Skill2>74</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="5" Description=" 据说它的利爪足以将敌人的脊椎连根拔出..." ID="360" MaxStar="5" Name="屠夫" Quality="6" Race="4" SP="8" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>161</Skill1>
    <Skill2>74</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="5" Description="几乎灭绝的动物，被人族驯服后成为战场的强劲杀手，一口能将敌人一分为二。" ID="361" MaxStar="5" Name="屠夫" Quality="1" Race="4" SP="8" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>161</Skill1>
    <Skill2>75</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="阵中窜出的火焰仿佛能将天空都烧红了！" ID="362" MaxStar="5" Name="幽灵狼" Quality="4" Race="4" SP="2" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>50</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="炼器师的弟子，袖子中放有炼器师特制的草药。每当舞姬跳起舞来，甩出来的草药能够治疗周围受伤的士兵。" ID="363" MaxStar="5" Name="幽灵狼" Quality="5" Race="4" SP="6" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>50</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="骑兵世家“飞马神将”现任当家，坐骑是有“铁马”之称的“黑玉琉璃“。传说他是龙神将的血脉之一，所有坐骑都听从他的号令。" ID="364" MaxStar="5" Name="幽灵狼" Quality="6" Race="4" SP="4" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>50</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="机关大师的得意杰作，可以自动锁定敌人后发动连续攻击，破坏力惊人！ " ID="365" MaxStar="5" Name="幽灵狼" Quality="1" Race="4" SP="4" Star="4">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>50</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="皇城十八卫之一，王牌水军，居有翻江倒海的能力。 " ID="366" MaxStar="5" Name="魔法剑士" Quality="4" Race="1" SP="10" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2>2</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="铁骑统领手下的王牌骑兵队，每一个都全副武装，攻守兼备，很难找到能与之抗衡的敌人。" ID="367" MaxStar="5" Name="魔法剑士" Quality="5" Race="1" SP="10" Star="2">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2>2</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="跟随吕公望在凌云峰修仙的道人。参透天地之道后羽化升仙是他们的终极追求。 " ID="368" MaxStar="5" Name="魔法剑士" Quality="6" Race="1" SP="8" Star="3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2>2</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="人界比武大会的冠军，使用祖传的金刚断骨手，两招之内必废敌人武功。" ID="369" MaxStar="5" Name="格斗家" Quality="1" Race="1" SP="8" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>64</Skill1>
    <Skill2>18</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="被上古人皇所驯服的巨大古龙，被指派在天剑痕的顶峰守护着人族的秘宝... " ID="370" MaxStar="5" Name="格斗家" Quality="4" Race="1" SP="8" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>64</Skill1>
    <Skill2>18</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="师从剑术统领香雪，使用的剑法以轻盈迅捷为特色。 " ID="371" MaxStar="5" Name="格斗家" Quality="5" Race="1" SP="8" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>64</Skill1>
    <Skill2>19</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="据说此阵是由死去的人界秘龙的骨架摆放而成的。 " ID="372" MaxStar="5" Name="鬼武者" Quality="6" Race="1" SP="8" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>156</Skill1>
    <Skill2>18</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="隐匿于人界的龙族，据说常以人类的形态生活在白银湖边，拥有冰蓝色的眼睛。" ID="373" MaxStar="5" Name="鬼武者" Quality="1" Race="1" SP="8" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>156</Skill1>
    <Skill2>19</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="通体白色的巨龙，口中能吐出极寒的冷气。" ID="374" MaxStar="5" Name="鬼武者" Quality="4" Race="1" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>156</Skill1>
    <Skill2>19</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="翡翠之森产出的丛林之雾能够帮助翡翠之森里的居民和植物恢复生命力。" ID="375" MaxStar="5" Name="山贼" Quality="5" Race="1" SP="4" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>18</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="出生便怀有魔法的力量，由精木长老传授魔法的精髓后，魔法的威力更加强大了。" ID="376" MaxStar="5" Name="山贼" Quality="6" Race="1" SP="2" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>18</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="弓箭上沾着能够腐蚀护甲的花粉，对重甲目标有致命性的打击。" ID="377" MaxStar="5" Name="山贼" Quality="1" Race="1" SP="2" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>19</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="虽然还在成长期，但毕竟是绿龙神的孩子，能力非常出色。" ID="378" MaxStar="5" Name="圣骑士" Quality="4" Race="1" SP="8" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>58</Skill1>
    <Skill2>168</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="圣湖守护神创造出来保护圣湖的守卫，誓死保卫圣湖。" ID="379" MaxStar="5" Name="圣骑士" Quality="5" Race="1" SP="6" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>58</Skill1>
    <Skill2>168</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="平时化身为花朵担任翡翠之森的警戒工作，一旦有人踏进森林，守望者会第一时间告诉精木长老。" ID="380" MaxStar="5" Name="圣骑士" Quality="6" Race="1" SP="6" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>58</Skill1>
    <Skill2>169</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="箭上之毒是碧落配置的剧毒，中了剧毒射手的箭，是见不到第二天的太阳的。" ID="381" MaxStar="5" Name="牧师" Quality="1" Race="1" SP="8" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>168</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="巨大、愤怒、无情。" ID="382" MaxStar="5" Name="牧师" Quality="4" Race="1" SP="6" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>168</Skill1>
    <Skill2>168</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="善于在翡翠之森里布置各种各样的陷阱来组织敌人的入侵。" ID="383" MaxStar="5" Name="牧师" Quality="5" Race="1" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>168</Skill1>
    <Skill2>169</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="成年的蝶仙有的翅膀会变为彩色。" ID="384" MaxStar="5" Name="巨剑剑士" Quality="6" Race="1" SP="10" Star="1">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="默默的守护着翡翠之森，关心比他弱小的生物。怀有一颗慈悲的心。" ID="385" MaxStar="5" Name="巨剑剑士" Quality="1" Race="1" SP="8" Star="2">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="当敌人踏入翡翠之森，迷影斥候就潜伏在他的影子里，在最适合动手的时候，一击必杀。" ID="386" MaxStar="5" Name="巨剑剑士" Quality="4" Race="1" SP="6" Star="3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="居住在翡翠之森的深处，为了不把周围的植物冻住，而居住在洞穴里，足不出户。" ID="387" MaxStar="5" Name="冰霜巨龙" Quality="5" Race="1" SP="10" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>7</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="森林中的霸者，每次发怒都能造成大面积破坏与伤亡，是让森林之子们头痛的家伙。" ID="388" MaxStar="5" Name="冰霜巨龙" Quality="6" Race="1" SP="8" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>7</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="”行动敏捷，出手迅猛，面对敌人毫不留情。“——夏心" ID="389" MaxStar="5" Name="冰霜巨龙" Quality="1" Race="1" SP="8" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>7</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="体内怀有太阳的能量，能发出巨大的吼声震慑敌人，往往听到吼声后，敌人就会心神不宁。" ID="390" MaxStar="5" Name="毒龙" Quality="4" Race="2" SP="8" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2>149</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="“她们就像她们的母亲一样美丽，也像她们的母亲一样仁慈。“——精木长老" ID="391" MaxStar="5" Name="毒龙" Quality="5" Race="2" SP="6" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2>149</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="绿幼龙成长后的样子，更具力量和速度，毒性也更强。" ID="392" MaxStar="5" Name="毒龙" Quality="6" Race="2" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2>149</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="濒临灭绝的物种，现在只有在翡翠之森有机会看到。独角兽的血有着起死回生的神奇功效。" ID="393" MaxStar="5" Name="剧毒恶龙" Quality="1" Race="2" SP="10" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>69</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="被绿龙神赋予生命的花朵。奇怪的是，她居然能够召唤闪电。" ID="394" MaxStar="5" Name="剧毒恶龙" Quality="4" Race="2" SP="10" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>69</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="即使是强大的妖族，食妖草都能随意杀死，足见这个生物有多强大。" ID="395" MaxStar="5" Name="剧毒恶龙" Quality="5" Race="2" SP="8" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>69</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="对待翡翠之森的居民很仁慈，而对待外来的人则毫不客气。" ID="396" MaxStar="5" Name="天马" Quality="6" Race="3" SP="6" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>38</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="身怀着对翡翠之森的信仰，用自己的弓箭射杀所有来犯之人。" ID="397" MaxStar="5" Name="天马" Quality="1" Race="3" SP="4" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>38</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="神木弓箭大师传授了他们能够操控弓箭飞行轨迹的能力，从而准确无误的击中目标。" ID="398" MaxStar="5" Name="天马" Quality="4" Race="3" SP="4" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>38</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="“我们将为保卫这片神圣的森林而贡献自己的生命“——神木护卫" ID="399" MaxStar="5" Name="指挥官" Quality="5" Race="1" SP="4" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>38</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="3" Description="桃花仙子召唤的瘴气，拥有非常强的杀伤力，但很快便会消失的无影无踪。" ID="400" MaxStar="5" Name="指挥官" Quality="6" Race="1" SP="2" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>38</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="太阳神将自己一部分的灵魂分离在翡翠之森里，以保护翡翠之森。" ID="401" MaxStar="5" Name="指挥官" Quality="1" Race="1" SP="2" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>38</Skill1>
    <Skill2>165</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="月神分离自己一部分的灵魂，保护翡翠之森。同时传授自己部分的能力给她的女儿。" ID="402" MaxStar="5" Name="德鲁伊" Quality="4" Race="3" SP="8" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>153</Skill1>
    <Skill2>38</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="被梦境守护龙派遣去守护翡翠之森的岩石巨怪，是翡翠之森里强大的守护者。" ID="403" MaxStar="5" Name="德鲁伊" Quality="5" Race="3" SP="6" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>153</Skill1>
    <Skill2>38</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="仙界的龙在翡翠之森产下的孩子，长大后拥有不俗的战斗能力。" ID="404" MaxStar="5" Name="德鲁伊" Quality="6" Race="3" SP="4" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>153</Skill1>
    <Skill2>38</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="丛林之王的孩子，当丛林之王命令攻击敌人时，啸月银狼就会一拥而上，把敌人撕碎。" ID="405" MaxStar="5" Name="恶魔猎手" Quality="1" Race="2" SP="10" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>169</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="由于不堪妖族的骚扰，精族特别训练出的兵种，对妖族有灭绝性的打击。" ID="406" MaxStar="5" Name="恶魔猎手" Quality="4" Race="2" SP="8" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>169</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="百步穿杨，箭无虚发。其箭术能力当今天下无人能与之匹敌。" ID="407" MaxStar="5" Name="恶魔猎手" Quality="5" Race="2" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>169</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="凶悍的攻击力，坚固的防御力。铁背熊是所有敌人的梦魇。" ID="408" MaxStar="5" Name="丛林射手" Quality="6" Race="2" SP="6" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>149</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="这个巨大的生物出现在战场上就是敌人的噩梦，再生能力使它难以被杀死。" ID="409" MaxStar="5" Name="丛林射手" Quality="1" Race="2" SP="4" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>149</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="灵界守护龙派遣守护翡翠之森的守护者，周围散发着毒气，对翡翠之森的居民无害，但敌人会忍受不了。" ID="410" MaxStar="5" Name="丛林射手" Quality="4" Race="2" SP="4" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>150</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="被月神化身注入部分星痕之力，变的极具攻击力和破坏力。" ID="411" MaxStar="5" Name="精灵箭神" Quality="5" Race="2" SP="8" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>57</Skill1>
    <Skill2>51</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="绿龙神的孩子，负责守护翡翠之森里的灵界，数千年都不会出现一次。" ID="412" MaxStar="5" Name="精灵箭神" Quality="6" Race="2" SP="6" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>57</Skill1>
    <Skill2>51</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="吞食黄金的怪虫，它吐出的金丝，可以将敌人缠绕起来，而且越是挣扎越紧锁。很多凡人因贪恋金蚕王腹中黄金，而被它捉住，缠绕窒息而死。" ID="413" MaxStar="5" Name="精灵箭神" Quality="1" Race="2" SP="6" Star="3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>57</Skill1>
    <Skill2>51</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="栖息在妖界的沙土里 时不时会窜出来袭击猎物.." ID="414" MaxStar="5" Name="精灵游侠" Quality="4" Race="2" SP="8" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>155</Skill1>
    <Skill2>51</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="无数小妖化成的阵法，踏入阵中便会被小妖抓住，然后同归于尽。" ID="415" MaxStar="5" Name="精灵游侠" Quality="5" Race="2" SP="6" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>155</Skill1>
    <Skill2>51</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="妖族野兽的训化师，除了对手下的野兽之外，对妖族其他同伴漠不关心。" ID="416" MaxStar="5" Name="精灵游侠" Quality="6" Race="2" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>155</Skill1>
    <Skill2>51</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="象妖的力量无与伦比，巨大而粗壮的鼻子可以把一个敌人甩出数十米远。" ID="417" MaxStar="5" Name="王国术士" Quality="1" Race="1" SP="6" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>146</Skill1>
    <Skill2>166</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="妖界里比较常见的妖怪，手持大刀，刀刃上抹着剧毒，杀人不眨眼。" ID="418" MaxStar="5" Name="王国术士" Quality="4" Race="1" SP="4" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>146</Skill1>
    <Skill2>166</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="独眼巨人一族原生活在翡翠之森，但因作恶多端被驱逐出境，后成为妖族的一员，非常痛恨仙族。" ID="419" MaxStar="5" Name="王国术士" Quality="5" Race="1" SP="4" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>146</Skill1>
    <Skill2>167</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="前有眼，后有眼，八方通见；左也口，右也口，九口言论。神通广大，武力不凡。" ID="420" MaxStar="5" Name="矮人战士" Quality="6" Race="1" SP="4" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>4</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="传说成年的凤凰会幻化为倾国倾城的女子，可是千万不要过于的靠近她们，她们周身的幻火会把你化为焦土... " ID="421" MaxStar="5" Name="矮人战士" Quality="1" Race="1" SP="4" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>4</Skill1>
    <Skill2>18</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="又称大鹏金翅鸟，对仙族的弱点了如指掌，曾经只身一人大闹仙界。" ID="422" MaxStar="5" Name="矮人战士" Quality="4" Race="1" SP="2" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>4</Skill1>
    <Skill2>18</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="仙界的一只黄鼠狼下到妖界变化成了妖怪，具有一定的仙力，可以使用仙族的法术。" ID="423" MaxStar="5" Name="魔法骑士" Quality="5" Race="1" SP="6" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>17</Skill1>
    <Skill2>76</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="战斗前都会口吐飓风，把敌人的阵型吹散，然后冲入阵中，杀个痛快。" ID="424" MaxStar="5" Name="魔法骑士" Quality="6" Race="1" SP="4" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>17</Skill1>
    <Skill2>76</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="在妖界享有较高的地位，妖族的野兽见到她也会退避三分，她的丈夫是谁一直是个谜。" ID="425" MaxStar="5" Name="魔法骑士" Quality="1" Race="1" SP="4" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>17</Skill1>
    <Skill2>77</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="喜好吃人的恶妖，每吃一个人，他的力量就多一分。" ID="426" MaxStar="5" Name="军团长" Quality="4" Race="1" SP="12" Star="1">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>141</Skill1>
    <Skill2>29</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="栖息在妖界最炎热的地带，口吐烈火，灼烧敌人。" ID="427" MaxStar="5" Name="军团长" Quality="5" Race="1" SP="10" Star="2">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>141</Skill1>
    <Skill2>29</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="负责妖界夜晚的警戒工作，有敌人入侵时，则大声啼叫。 " ID="428" MaxStar="5" Name="军团长" Quality="6" Race="1" SP="8" Star="3">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>141</Skill1>
    <Skill2>29</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="美丽的蛇女身上流淌着女娲的血脉，生性善良，爱好和平。" ID="429" MaxStar="5" Name="魔导士" Quality="1" Race="1" SP="8" Star="1">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>77</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="半人半狮，也有一半的妖心和一半的人心，不过战斗起来就像野兽般强劲。" ID="430" MaxStar="5" Name="魔导士" Quality="4" Race="1" SP="6" Star="2">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>77</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="本是普通的凡人，为了追求永生，炼制各种各样的丹药，最后化人为妖。" ID="431" MaxStar="5" Name="魔导士" Quality="5" Race="1" SP="6" Star="3">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>77</Skill1>
    <Skill2>82</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="妖王召唤死去的九位妖族长老的元神制成此阵。站在阵中，所有妖族都会被死去的妖族长老强化肉身。" ID="432" MaxStar="5" Name="佣兵首领" Quality="6" Race="1" SP="8" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>19</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="由黄蜂幻化成精，特殊的外皮拥有短时间的隐形能力，只要被锋利的蛰针刺中，则命不久矣。" ID="433" MaxStar="5" Name="佣兵首领" Quality="1" Race="1" SP="6" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>19</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="黑寡妇在战斗时召唤出来的帮手，是妖族对抗飞行敌人的法宝。" ID="434" MaxStar="5" Name="佣兵首领" Quality="4" Race="1" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>19</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="身躯巨大的水龙。因为藏匿与海中，所以躲过了杀龙者的屠刀。" ID="435" MaxStar="5" Name="冰龙" Quality="5" Race="1" SP="8" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>6</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="“当我唤醒他的时候，我感觉到了整个妖界都为他的觉醒而震动”——妖王玄冰" ID="436" MaxStar="5" Name="冰龙" Quality="6" Race="1" SP="6" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>6</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="妖王玄冰需要凶猛的野兽冲锋陷阵，所以创造出了泣天兽。" ID="437" MaxStar="5" Name="冰龙" Quality="1" Race="1" SP="6" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>7</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="有些堕落的修道者过度追求火焰的力量，自我焚身，变成了赤火怪。" ID="438" MaxStar="5" Name="骨龙" Quality="4" Race="4" SP="8" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>52</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="千年狐妖会变成长相帅气的男人到人界诱惑年轻女子。将女子诱骗到无人的地方后，将女子扒皮抽筋饮血食肉。" ID="439" MaxStar="5" Name="骨龙" Quality="5" Race="4" SP="6" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>52</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="背上的巨翼金翅膀会发出强劲的黄金之箭矢，此箭会自动瞄准敌人跳动着的心脏。" ID="440" MaxStar="5" Name="骨龙" Quality="6" Race="4" SP="6" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>53</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="由无数被施以妖力的石块组成的阵法，敌人踏入阵中便会迷失方向。" ID="441" MaxStar="5" Name="死亡之翼" Quality="1" Race="4" SP="12" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>53</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="与鬼族定下契约的凡人，掌握了部分鬼族的力量，邪恶无比。" ID="442" MaxStar="5" Name="死亡之翼" Quality="4" Race="4" SP="10" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>53</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="鬼族大军里的主力军，常常作为先锋军突袭敌人。 " ID="443" MaxStar="5" Name="死亡之翼" Quality="5" Race="4" SP="10" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Mitac/>
    <Skill1>53</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="7" Description="狼王的座下骑兵，迅捷的动作，强大的力量使人族军队很头疼。" ID="444" MaxStar="5" Name="火元素" Quality="6" Race="1" SP="4" Star="1">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>177</Skill1>
    <Skill2>74</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="7" Description="传说中山泽的鬼怪。有“投诸四裔，以御魑魅”的记载。" ID="445" MaxStar="5" Name="火元素" Quality="1" Race="1" SP="2" Star="2">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>177</Skill1>
    <Skill2>74</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="7" Description="想彻底杀死食尸鬼是很难的，当它受伤的时候，它会通过食用尸体恢复生命力。" ID="446" MaxStar="5" Name="火元素" Quality="4" Race="1" SP="2" Star="3">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>48</Skill1>
    <Skill2>74</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="7" Description="”好战的个性，残忍的手段，山魈是一个把敌人的骨头都会嚼碎的杀手“——邪巫" ID="447" MaxStar="5" Name="掩体" Quality="5" Race="4" SP="2" Star="1">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>10</HP>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="7" Description="无数的孤魂野鬼凝聚在一起化身为的新鬼魂，邪恶的气息能让所有人都不寒而栗。" ID="448" MaxStar="5" Name="掩体" Quality="6" Race="4" SP="0" Star="2">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>10</HP>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="7" Description="”光是它那张狰狞恐怖的脸就能把敌人吓破胆“——钟馗" ID="449" MaxStar="5" Name="掩体" Quality="1" Race="4" SP="0" Star="3">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>10</HP>
    <Mitac/>
    <Skill1>161</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="7" Description="凡人看不到的幽灵，时常会对人施展各种咒术..." ID="450" MaxStar="5" Name="攻城锤" Quality="4" Race="3" SP="6" Star="1">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>123</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="7" Description="死去野兽灵魂汇聚而成的虚无生物。可以将体内的魂魄进行压缩后急速射出，穿过一切障碍，直击目标。" ID="451" MaxStar="5" Name="攻城锤" Quality="5" Race="3" SP="4" Star="2">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>123</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="7" Description="冤魂寄宿的墙壁，被惊扰时便会显露出狰狞的面容与哀怨的叫声。" ID="452" MaxStar="5" Name="攻城锤" Quality="6" Race="3" SP="4" Star="3">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>123</Skill1>
    <Skill2>5</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="7" Description="被妖魂帝后复活的幼龙，由于还在幼年期，还无法真正的飞行起来，战斗能力不是很强。" ID="453" MaxStar="5" Name="尸堆" Quality="1" Race="3" SP="10" Star="1">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>176</Skill1>
    <Skill2>5</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="7" Description="音女平常不言苟笑，与世无争。但有人想惹怒音女时，音女发出的音波会把周围的人的耳朵给震碎。" ID="454" MaxStar="5" Name="尸堆" Quality="4" Race="3" SP="8" Star="2">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>176</Skill1>
    <Skill2>5</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="7" Description="鬼影领主为了对抗仙族特别研究出来的阵法，对仙族有不小的限制作用。" ID="455" MaxStar="5" Name="尸堆" Quality="5" Race="3" SP="6" Star="3">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>176</Skill1>
    <Skill2>5</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="7" Description="吸血鬼之王，每个月的月圆之夜都要潜入人界吸干数人的鲜血以补充所需的能量。" ID="456" MaxStar="5" Name="墓碑" Quality="6" Race="4" SP="8" Star="1">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>162</Skill1>
    <Skill2>63</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="7" Description="栖息在永冻原的鬼族生物，鬼族通常利用它们来攻占坚固的城池。" ID="457" MaxStar="5" Name="墓碑" Quality="1" Race="4" SP="6" Star="2">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>162</Skill1>
    <Skill2>63</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="7" Description="血池鬼王通过自己的血池造出来的护卫，得到部分鬼王的能力，颇有战斗力。" ID="458" MaxStar="5" Name="墓碑" Quality="4" Race="4" SP="6" Star="3">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac/>
    <Skill1>162</Skill1>
    <Skill2>63</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="7" Description="灵力的操控大师，会使用灵力给自己张开保护网，所有人都无法伤害他。" ID="459" MaxStar="5" Name="沼泽" Quality="5" Race="4" SP="8" Star="1">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>41</Skill1>
    <Skill2>123</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="7" Description="死去的弓箭兵被鬼族复活后留作己用， 寒冰般的内心使得他们的弓箭准确无误。" ID="460" MaxStar="5" Name="沼泽" Quality="6" Race="4" SP="6" Star="2">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>41</Skill1>
    <Skill2>123</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="7" Description="永冻原里被冻死的凡人受到鬼族力量的影响，重新复活，来往的旅人多数死于它们之手。" ID="461" MaxStar="5" Name="沼泽" Quality="1" Race="4" SP="4" Star="3">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>41</Skill1>
    <Skill2>123</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="7" Description="被妖魂帝后复活的龙，它们飞行过的地方，花草树木都变成了黑色。" ID="462" MaxStar="5" Name="猎户座星空" Quality="4" Race="2" SP="6" Star="1">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>61</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="7" Description="这种疯狂的蝙蝠只要看到活着的生物便会一拥而上，血液是它们一生的渴求。 " ID="463" MaxStar="5" Name="猎户座星空" Quality="5" Race="2" SP="6" Star="2">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2>61</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="7" Description="“它从不追赶被它咬过的敌人，因为死人是跑不远的。”——九灵" ID="464" MaxStar="5" Name="猎户座星空" Quality="6" Race="2" SP="4" Star="3">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2>61</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="7" Description="妖魂帝后将镇魂看作自己的女儿一样喜爱。但所有人都不知道，她的真实身份其实是黑龙神的转世化身。" ID="465" MaxStar="5" Name="温泉" Quality="1" Race="4" SP="8" Star="1">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>169</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="7" Description="墓地的亡灵看守者，凡是想踏入墓穴窃取财宝的人都会被他撕成两半。 " ID="466" MaxStar="5" Name="温泉" Quality="4" Race="4" SP="6" Star="2">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>169</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="7" Description="在战乱中无数被无端杀害的女子的灵魂聚在一起，变成了鬼姬，复仇是她们解脱的唯一方式。 " ID="467" MaxStar="5" Name="温泉" Quality="5" Race="4" SP="6" Star="3">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>169</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="11" Description="死去的鬼族守护龙的骸骨亡灵，因为已经死去，所以更加无所畏惧。" ID="468" MaxStar="5" Name="地精炸弹区" Quality="6" Race="4" SP="4" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>175</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="11" Description="死前为人类君王的御前护卫，射术惊人百步穿杨。在一次与妖族的战斗中被同伴出卖，妖族抓住他后，将他挖心取肺，剥皮抽筋。现在无法平息的怨恨之意又将他那残破的躯体再次复活，一切只为了复仇。" ID="469" MaxStar="5" Name="地精炸弹区" Quality="1" Race="4" SP="2" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>175</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="11" Description="常驻在地狱的奈何桥边的使者。职责是确保所有前往投胎的鬼魂，都不会记得自己的前世和地狱里的一切。 " ID="470" MaxStar="5" Name="地精炸弹区" Quality="4" Race="4" SP="2" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>176</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="7" Description="镇魂使用通灵术召唤出来的强大鬼兽，以孤魂野鬼为食，负责保护镇魂。" ID="471" MaxStar="5" Name="战鼓" Quality="5" Race="1" SP="6" Star="1">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>59</Skill1>
    <Skill2>90</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="7" Description="黑龙神的孩子，负责保护鬼界的安全。体内怀有剑灵之气，能和父亲一样召唤强大的飞剑攻击敌人，目前在鬼界的最深处栖息。" ID="472" MaxStar="5" Name="战鼓" Quality="6" Race="1" SP="4" Star="2">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>59</Skill1>
    <Skill2>90</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="7" Description="龙生九子之一，出生之日周身便有仙气护体。" ID="473" MaxStar="5" Name="战鼓" Quality="1" Race="1" SP="2" Star="3">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>59</Skill1>
    <Skill2>90</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="龙生九子之一，是九子龙最勇敢的，喜欢冲入敌军直取上将首级。" ID="474" MaxStar="5" Name="埃阿斯之盾" Quality="4" Race="5" SP="10" Star="1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>19</Skill1>
    <Skill2>17</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="八仙之一，生性豁达，手中的扇子据说可以扇出强劲的风力，困住敌人。" ID="475" MaxStar="5" Name="埃阿斯之盾" Quality="5" Race="5" SP="8" Star="2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>19</Skill1>
    <Skill2>17</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="龙生九子之一，勇猛果敢。面对敌人展现出强大的战斗力，不畏牺牲。" ID="476" MaxStar="5" Name="埃阿斯之盾" Quality="6" Race="5" SP="6" Star="3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>19</Skill1>
    <Skill2>17</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="龙生九子之首，喜好音乐。能施放优美的音乐，让敌人如痴如醉。" ID="477" MaxStar="5" Name="美杜莎之盾" Quality="1" Race="5" SP="6" Star="1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>20</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="龙生九子之一，身似龙，雅好斯文。似龙形，排行老八，平生好文。" ID="478" MaxStar="5" Name="美杜莎之盾" Quality="4" Race="5" SP="4" Star="2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>20</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="计都的师弟，是仙族中比较阴狠的角色，以杀戮为乐趣。" ID="479" MaxStar="5" Name="美杜莎之盾" Quality="5" Race="5" SP="4" Star="3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>20</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="龙生九子之一。因为喜欢四处观望，被安排负责仙界的警戒工作，善于突然袭击。" ID="480" MaxStar="5" Name="霹雳权杖" Quality="6" Race="5" SP="6" Star="1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>83</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="红龙神之子，幼年的体型使得它的攻击力不是很出众，但能力遗传了红龙神。" ID="481" MaxStar="5" Name="霹雳权杖" Quality="1" Race="5" SP="4" Star="2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>83</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="五炁真君之一，姓浩空，讳维淳，字散融。掌管人间之火，被尊称为“火神”。" ID="482" MaxStar="5" Name="霹雳权杖" Quality="4" Race="5" SP="4" Star="3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>83</Skill1>
    <Skill2>77</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="玉皇大帝的特使，负责传达各种命令，因而受到人们的喜爱。" ID="483" MaxStar="5" Name="翅膀" Quality="5" Race="5" SP="4" Star="1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="四神兽之一，仙界北方的守护神兽。平时会化身为人形，吼叫的响声会让周围的人痛不欲生。" ID="484" MaxStar="5" Name="翅膀" Quality="6" Race="5" SP="2" Star="2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="四神兽之一，仙界东方的守护神兽。平时会化身为人形，龙头和头尾的力量势大力沉，厚厚的云层都会被一扫而空。" ID="485" MaxStar="5" Name="翅膀" Quality="1" Race="5" SP="2" Star="3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="统领仙界群兽，身上流淌着精族的血脉，非常喜爱动物。" ID="486" MaxStar="5" Name="恶魔翅膀" Quality="4" Race="1" SP="8" Star="1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2>175</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="专门收集荒山野岭的孤魂野鬼，再与之吸收或引渡是位亦正亦邪的仙人。" ID="487" MaxStar="5" Name="恶魔翅膀" Quality="5" Race="1" SP="6" Star="2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2>175</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="佛教四大菩萨之一，与观音、文殊、普贤一起，深受世人敬仰。" ID="488" MaxStar="5" Name="恶魔翅膀" Quality="6" Race="1" SP="6" Star="3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2>175</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="天性纯善，不喜富贵，却慕恋于仙道，最后成为八仙之一。" ID="489" MaxStar="5" Name="芝麻开门" Quality="1" Race="5" SP="8" Star="1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>60</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="13" Description="“两枚仙杏安天下，一条金棍定乾坤。风雷两翅开先辈，变化千端起后昆。眼似金铃通九地，发如紫草短三髡。秘传玄妙真仙诀，炼就金刚体不昏。” " ID="490" MaxStar="5" Name="芝麻开门" Quality="4" Race="5" SP="6" Star="2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>60</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="为给黄帝守夜的神灵。他们白天隐去，夜晚出现，因而叫做＂夜游神＂。" ID="491" MaxStar="5" Name="芝麻开门" Quality="5" Race="5" SP="6" Star="3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>60</Skill1>
    <Skill2>111</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="13" Description="红幼龙成长后的样子，更为健壮，更具攻击能力。" ID="492" MaxStar="5" Name="裂魂术" Quality="6" Race="5" SP="6" Star="1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>12</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="广寒宫的女主人，仙界最美的女仙，深受王母的喜爱。" ID="493" MaxStar="5" Name="裂魂术" Quality="1" Race="5" SP="4" Star="2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>12</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="13" Description="风袋中吹出的飓风能让所有敌人难以前进。" ID="494" MaxStar="5" Name="裂魂术" Quality="4" Race="5" SP="2" Star="3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>12</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="北方教尊大弟子，剑术绝世无双。" ID="495" MaxStar="5" Name="维京之怒" Quality="5" Race="4" SP="10" Star="1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>1</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="13" Description="五炁真君之一，名启垣，字积原。掌管人间之水，被尊称为“水神”。" ID="496" MaxStar="5" Name="维京之怒" Quality="6" Race="4" SP="8" Star="2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>1</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="平日笑容挂面的开心佛，习得大乘佛法的精髓，所有的法术攻击对他来说都是徒劳的。" ID="497" MaxStar="5" Name="维京之怒" Quality="1" Race="4" SP="6" Star="3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>1</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="13" Description="北方教尊的师弟，喜欢乘坐自己召唤的飞剑四处游历。" ID="498" MaxStar="5" Name="天火灭世" Quality="4" Race="5" SP="10" Star="1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>109</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="掌管仙界十万大军，武功颇为不俗。痴情的爱着嫦娥。" ID="499" MaxStar="5" Name="天火灭世" Quality="5" Race="5" SP="8" Star="2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>109</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="13" Description="仙界男仙的领导者。凡得道升仙者，要先拜东华帝君后拜群尊，在仙界的地位十分高。" ID="500" MaxStar="5" Name="天火灭世" Quality="6" Race="5" SP="6" Star="3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>109</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="四神兽之一，仙界南方的守护神兽。平时会化身为人形，战斗时使用火焰的力量攻击敌人和保护自己。" ID="501" MaxStar="5" Name="冥王意志" Quality="1" Race="3" SP="12" Star="1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>101</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="13" Description="掌管直符灵动九天界，主御群妖灵者，手执万神图，总御万星，尊原始符昭，其乃妖族大帝。" ID="502" MaxStar="5" Name="冥王意志" Quality="4" Race="3" SP="10" Star="2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>101</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="四神兽之一，仙界西方的守护神兽。平时会化身为人形，战斗时会使用寒冰的力量攻击敌人和保护自己。" ID="503" MaxStar="5" Name="冥王意志" Quality="5" Race="3" SP="8" Star="3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>101</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="" ID="504" MaxStar="5" Name="神圣驱魔师" Quality="1" Race="4" SP="6" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>11</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="" ID="505" MaxStar="5" Name="神圣驱魔师" Quality="1" Race="4" SP="4" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>11</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="" ID="506" MaxStar="5" Name="神圣驱魔师" Quality="1" Race="4" SP="2" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>11</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="" ID="507" MaxStar="5" Name="世界之蛇" Quality="1" Race="2" SP="18" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac>0</Mitac>
    <Skill1>15</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="8" Description="" ID="508" MaxStar="5" Name="世界之蛇" Quality="1" Race="2" SP="16" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac>0</Mitac>
    <Skill1>15</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="8" Description="" ID="509" MaxStar="5" Name="世界之蛇" Quality="1" Race="2" SP="14" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac>0</Mitac>
    <Skill1>15</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="9" Description="" ID="510" MaxStar="5" Name="德鲁伊" Quality="1" Race="4" SP="6" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>22</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="9" Description="" ID="511" MaxStar="5" Name="德鲁伊" Quality="1" Race="4" SP="4" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>22</Skill1>
    <Skill2>116</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="9" Description="" ID="512" MaxStar="5" Name="德鲁伊" Quality="1" Race="4" SP="4" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>22</Skill1>
    <Skill2>116</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="513" MaxStar="5" Name="女神的救赎" Quality="1" Race="5" SP="8" Star="1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>23</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="514" MaxStar="5" Name="女神的救赎" Quality="1" Race="5" SP="6" Star="2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>23</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="515" MaxStar="5" Name="女神的救赎" Quality="1" Race="5" SP="4" Star="3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>23</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="" ID="516" MaxStar="5" Name="托尔的铁手套" Quality="1" Race="5" SP="8" Star="1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>31</Skill1>
    <Skill2>91</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="" ID="517" MaxStar="5" Name="托尔的铁手套" Quality="1" Race="5" SP="6" Star="2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>31</Skill1>
    <Skill2>91</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="" ID="518" MaxStar="5" Name="托尔的铁手套" Quality="1" Race="5" SP="6" Star="3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>32</Skill1>
    <Skill2>91</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="519" MaxStar="5" Name="狂战杀戮" Quality="1" Race="1" SP="6" Star="1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>35</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="520" MaxStar="5" Name="狂战杀戮" Quality="1" Race="1" SP="4" Star="2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>35</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="521" MaxStar="5" Name="狂战杀戮" Quality="1" Race="1" SP="2" Star="3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>35</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="" ID="522" MaxStar="5" Name="太阳神的纹章" Quality="1" Race="5" SP="8" Star="1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>36</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="" ID="523" MaxStar="5" Name="太阳神的纹章" Quality="1" Race="5" SP="6" Star="2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>36</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="" ID="524" MaxStar="5" Name="太阳神的纹章" Quality="1" Race="5" SP="4" Star="3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>36</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="525" MaxStar="5" Name="美狄亚" Quality="1" Race="2" SP="10" Star="1">
    <AP>0</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>2</Mitac>
    <Skill1>37</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="526" MaxStar="5" Name="美狄亚" Quality="1" Race="2" SP="8" Star="2">
    <AP>0</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>2</Mitac>
    <Skill1>37</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="527" MaxStar="5" Name="美狄亚" Quality="1" Race="2" SP="6" Star="3">
    <AP>0</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>2</Mitac>
    <Skill1>37</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="528" MaxStar="5" Name="死亡颂歌" Quality="1" Race="5" SP="10" Star="1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>46</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="529" MaxStar="5" Name="死亡颂歌" Quality="1" Race="5" SP="8" Star="2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>46</Skill1>
    <Skill2>108</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="530" MaxStar="5" Name="死亡颂歌" Quality="1" Race="5" SP="8" Star="3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>46</Skill1>
    <Skill2>108</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="531" MaxStar="5" Name="希腊教皇" Quality="1" Race="2" SP="6" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>62</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="532" MaxStar="5" Name="希腊教皇" Quality="1" Race="2" SP="4" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>62</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="533" MaxStar="5" Name="希腊教皇" Quality="1" Race="2" SP="4" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>62</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="5" Description="" ID="534" MaxStar="5" Name="暗黑骑士" Quality="1" Race="3" SP="12" Star="1">
    <AP>2</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac>0</Mitac>
    <Skill1>71</Skill1>
    <Skill2>63</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="5" Description="" ID="535" MaxStar="5" Name="暗黑骑士" Quality="1" Race="3" SP="10" Star="2">
    <AP>2</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac>0</Mitac>
    <Skill1>71</Skill1>
    <Skill2>63</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="5" Description="" ID="536" MaxStar="5" Name="暗黑骑士" Quality="1" Race="3" SP="8" Star="3">
    <AP>2</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac>0</Mitac>
    <Skill1>71</Skill1>
    <Skill2>63</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="11" Description="" ID="537" MaxStar="5" Name="牛头人酋长" Quality="1" Race="4" SP="10" Star="1">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac>2</Mitac>
    <Skill1>72</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="11" Description="" ID="538" MaxStar="5" Name="牛头人酋长" Quality="1" Race="4" SP="8" Star="2">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac>2</Mitac>
    <Skill1>72</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="11" Description="" ID="539" MaxStar="5" Name="牛头人酋长" Quality="1" Race="4" SP="6" Star="3">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac>2</Mitac>
    <Skill1>72</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="540" MaxStar="5" Name="魔龙提丰" Quality="1" Race="4" SP="10" Star="1">
    <AP>2</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac>0</Mitac>
    <Skill1>85</Skill1>
    <Skill2>89</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="541" MaxStar="5" Name="魔龙提丰" Quality="1" Race="4" SP="8" Star="2">
    <AP>2</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac>0</Mitac>
    <Skill1>85</Skill1>
    <Skill2>89</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="542" MaxStar="5" Name="魔龙提丰" Quality="1" Race="4" SP="8" Star="3">
    <AP>3</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac>1</Mitac>
    <Skill1>85</Skill1>
    <Skill2>89</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="8" Description="" ID="543" MaxStar="5" Name="幼年火龙" Quality="1" Race="4" SP="8" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>86</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="" ID="544" MaxStar="5" Name="幼年火龙" Quality="1" Race="4" SP="6" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>86</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="" ID="545" MaxStar="5" Name="幼年火龙" Quality="1" Race="4" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>86</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="546" MaxStar="5" Name="步兵队长" Quality="1" Race="1" SP="8" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>91</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="547" MaxStar="5" Name="步兵队长" Quality="1" Race="1" SP="6" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>91</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="548" MaxStar="5" Name="步兵队长" Quality="1" Race="1" SP="6" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>91</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="" ID="549" MaxStar="5" Name="银之钥" Quality="1" Race="2" SP="8" Star="1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>119</Skill1>
    <Skill2>93</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="" ID="550" MaxStar="5" Name="银之钥" Quality="1" Race="2" SP="8" Star="2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>119</Skill1>
    <Skill2>62</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="" ID="551" MaxStar="5" Name="银之钥" Quality="1" Race="2" SP="6" Star="3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>119</Skill1>
    <Skill2>62</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="5" Description="" ID="552" MaxStar="5" Name="南瓜骑士" Quality="1" Race="3" SP="4" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>96</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="5" Description="" ID="553" MaxStar="5" Name="南瓜骑士" Quality="1" Race="3" SP="2" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>96</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="5" Description="" ID="554" MaxStar="5" Name="南瓜骑士" Quality="1" Race="3" SP="2" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>96</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="555" MaxStar="5" Name="炽天使加百列" Quality="1" Race="4" SP="8" Star="1">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac>0</Mitac>
    <Skill1>97</Skill1>
    <Skill2>52</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="556" MaxStar="5" Name="炽天使加百列" Quality="1" Race="4" SP="6" Star="2">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac>0</Mitac>
    <Skill1>97</Skill1>
    <Skill2>52</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="557" MaxStar="5" Name="炽天使加百列" Quality="1" Race="4" SP="6" Star="3">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac>0</Mitac>
    <Skill1>97</Skill1>
    <Skill2>52</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="558" MaxStar="5" Name="骑兵队长" Quality="1" Race="1" SP="6" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>99</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="559" MaxStar="5" Name="骑兵队长" Quality="1" Race="1" SP="4" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>99</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="560" MaxStar="5" Name="骑兵队长" Quality="1" Race="1" SP="4" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>99</Skill1>
    <Skill2>138</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="561" MaxStar="5" Name="海伦" Quality="1" Race="1" SP="8" Star="1">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>0</Mitac>
    <Skill1>100</Skill1>
    <Skill2>168</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>2</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="562" MaxStar="5" Name="海伦" Quality="1" Race="1" SP="8" Star="2">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>0</Mitac>
    <Skill1>100</Skill1>
    <Skill2>169</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>2</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="563" MaxStar="5" Name="海伦" Quality="1" Race="1" SP="6" Star="3">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac>0</Mitac>
    <Skill1>100</Skill1>
    <Skill2>169</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>2</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="564" MaxStar="5" Name="洛特" Quality="1" Race="3" SP="8" Star="1">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac>0</Mitac>
    <Skill1>139</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>2</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="565" MaxStar="5" Name="洛特" Quality="1" Race="3" SP="8" Star="2">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac>0</Mitac>
    <Skill1>139</Skill1>
    <Skill2>102</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>2</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="566" MaxStar="5" Name="洛特" Quality="1" Race="3" SP="6" Star="3">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac>0</Mitac>
    <Skill1>139</Skill1>
    <Skill2>102</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>2</Talisman>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="567" MaxStar="5" Name="浮空术" Quality="1" Race="5" SP="8" Star="1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>103</Skill1>
    <Skill2>105</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="568" MaxStar="5" Name="浮空术" Quality="1" Race="5" SP="6" Star="2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>103</Skill1>
    <Skill2>105</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="569" MaxStar="5" Name="浮空术" Quality="1" Race="5" SP="4" Star="3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>103</Skill1>
    <Skill2>105</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="570" MaxStar="5" Name="魔法闪光弹" Quality="1" Race="5" SP="6" Star="1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>104</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="571" MaxStar="5" Name="魔法闪光弹" Quality="1" Race="5" SP="4" Star="2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>104</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="572" MaxStar="5" Name="魔法闪光弹" Quality="1" Race="5" SP="4" Star="3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>104</Skill1>
    <Skill2>114</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="573" MaxStar="5" Name="战神呐喊" Quality="1" Race="5" SP="10" Star="1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>111</Skill1>
    <Skill2>105</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="574" MaxStar="5" Name="战神呐喊" Quality="1" Race="5" SP="8" Star="2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>111</Skill1>
    <Skill2>105</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="575" MaxStar="5" Name="战神呐喊" Quality="1" Race="5" SP="6" Star="3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>111</Skill1>
    <Skill2>105</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="576" MaxStar="5" Name="群体迟钝术" Quality="1" Race="5" SP="8" Star="1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>110</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="577" MaxStar="5" Name="群体迟钝术" Quality="1" Race="5" SP="6" Star="2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>110</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="578" MaxStar="5" Name="群体迟钝术" Quality="1" Race="5" SP="6" Star="3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>110</Skill1>
    <Skill2>115</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="" ID="579" MaxStar="5" Name="美杜莎" Quality="1" Race="4" SP="10" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>112</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="" ID="580" MaxStar="5" Name="美杜莎" Quality="1" Race="4" SP="8" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>112</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="" ID="581" MaxStar="5" Name="美杜莎" Quality="1" Race="4" SP="6" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Mitac/>
    <Skill1>112</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="582" MaxStar="5" Name="睡美人的呢喃" Quality="1" Race="2" SP="6" Star="1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>113</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="583" MaxStar="5" Name="睡美人的呢喃" Quality="1" Race="2" SP="4" Star="2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>113</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="584" MaxStar="5" Name="睡美人的呢喃" Quality="1" Race="2" SP="4" Star="3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>113</Skill1>
    <Skill2>105</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="585" MaxStar="5" Name="狂兽术" Quality="1" Race="3" SP="4" Star="1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>116</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="586" MaxStar="5" Name="狂兽术" Quality="1" Race="3" SP="2" Star="2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>116</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="587" MaxStar="5" Name="狂兽术" Quality="1" Race="3" SP="0" Star="3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>116</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="11" Description="" ID="588" MaxStar="5" Name="萨满" Quality="1" Race="4" SP="6" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>117</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="11" Description="" ID="589" MaxStar="5" Name="萨满" Quality="1" Race="4" SP="4" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>117</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="11" Description="" ID="590" MaxStar="5" Name="萨满" Quality="1" Race="4" SP="4" Star="3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>117</Skill1>
    <Skill2>22</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="591" MaxStar="5" Name="大力神拉克" Quality="1" Race="4" SP="12" Star="1">
    <AP>3</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac>1</Mitac>
    <Skill1>96</Skill1>
    <Skill2>118</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="592" MaxStar="5" Name="大力神拉克" Quality="1" Race="4" SP="10" Star="2">
    <AP>3</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac>1</Mitac>
    <Skill1>96</Skill1>
    <Skill2>118</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="593" MaxStar="5" Name="大力神拉克" Quality="1" Race="4" SP="8" Star="3">
    <AP>3</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac>1</Mitac>
    <Skill1>96</Skill1>
    <Skill2>118</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="7" Description="" ID="594" MaxStar="5" Name="地穴深渊" Quality="1" Race="3" SP="8" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>61</Skill1>
    <Skill2>10</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="7" Description="" ID="595" MaxStar="5" Name="地穴深渊" Quality="1" Race="3" SP="6" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>61</Skill1>
    <Skill2>10</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="7" Description="" ID="596" MaxStar="5" Name="地穴深渊" Quality="1" Race="3" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>61</Skill1>
    <Skill2>10</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="597" MaxStar="5" Name="众志成城" Quality="1" Race="5" SP="8" Star="1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>120</Skill1>
    <Skill2>125</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="598" MaxStar="5" Name="众志成城" Quality="1" Race="5" SP="6" Star="2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>120</Skill1>
    <Skill2>125</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="599" MaxStar="5" Name="众志成城" Quality="1" Race="5" SP="4" Star="3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>120</Skill1>
    <Skill2>125</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="5" Description="" ID="600" MaxStar="5" Name="杀人魔偶" Quality="1" Race="1" SP="6" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>126</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="5" Description="" ID="601" MaxStar="5" Name="杀人魔偶" Quality="1" Race="1" SP="4" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>126</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="5" Description="" ID="602" MaxStar="5" Name="杀人魔偶" Quality="1" Race="1" SP="2" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>126</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="" ID="603" MaxStar="5" Name="法老" Quality="1" Race="4" SP="10" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>129</Skill1>
    <Skill2>24</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="" ID="604" MaxStar="5" Name="法老" Quality="1" Race="4" SP="10" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac/>
    <Skill1>129</Skill1>
    <Skill2>24</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="" ID="605" MaxStar="5" Name="法老" Quality="1" Race="4" SP="8" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac/>
    <Skill1>129</Skill1>
    <Skill2>24</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="" ID="606" MaxStar="5" Name="懈寄生" Quality="1" Race="5" SP="2" Star="1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>130</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="" ID="607" MaxStar="5" Name="懈寄生" Quality="1" Race="5" SP="0" Star="2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>130</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="" ID="608" MaxStar="5" Name="懈寄生" Quality="1" Race="5" SP="0" Star="3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>131</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="609" MaxStar="5" Name="诸神的黄昏" Quality="1" Race="5" SP="20" Star="1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>133</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="610" MaxStar="5" Name="诸神的黄昏" Quality="1" Race="5" SP="18" Star="2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>133</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="611" MaxStar="5" Name="诸神的黄昏" Quality="1" Race="5" SP="16" Star="3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Mitac/>
    <Skill1>133</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="11" Description="" ID="612" MaxStar="5" Name="猎户座" Quality="1" Race="4" SP="6" Star="1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>153</Skill1>
    <Skill2>134</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="11" Description="" ID="613" MaxStar="5" Name="猎户座" Quality="1" Race="4" SP="4" Star="2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>153</Skill1>
    <Skill2>134</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="11" Description="" ID="614" MaxStar="5" Name="猎户座" Quality="1" Race="4" SP="4" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac/>
    <Skill1>153</Skill1>
    <Skill2>134</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="615" MaxStar="5" Name="战争女武神" Quality="1" Race="3" SP="10" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Mitac/>
    <Skill1>135</Skill1>
    <Skill2>74</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="616" MaxStar="5" Name="战争女武神" Quality="1" Race="3" SP="8" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Mitac/>
    <Skill1>135</Skill1>
    <Skill2>74</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="617" MaxStar="5" Name="战争女武神" Quality="1" Race="3" SP="6" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Mitac/>
    <Skill1>135</Skill1>
    <Skill2>74</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="618" MaxStar="5" Name="罗兰" Quality="1" Race="1" SP="10" Star="1">
    <AP>3</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac>2</Mitac>
    <Skill1>138</Skill1>
    <Skill2>98</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="619" MaxStar="5" Name="罗兰" Quality="1" Race="1" SP="8" Star="2">
    <AP>3</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac>2</Mitac>
    <Skill1>138</Skill1>
    <Skill2>98</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="620" MaxStar="5" Name="罗兰" Quality="1" Race="1" SP="6" Star="3">
    <AP>3</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac>2</Mitac>
    <Skill1>138</Skill1>
    <Skill2>98</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="621" MaxStar="5" Name="恶灵娃娃" Quality="1" Race="3" SP="4" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>145</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="622" MaxStar="5" Name="恶灵娃娃" Quality="1" Race="3" SP="2" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>145</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="623" MaxStar="5" Name="恶灵娃娃" Quality="1" Race="3" SP="2" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Mitac/>
    <Skill1>145</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="624" MaxStar="5" Name="黑武士" Quality="1" Race="3" SP="10" Star="1">
    <AP>3</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac>1</Mitac>
    <Skill1>147</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="625" MaxStar="5" Name="黑武士" Quality="1" Race="3" SP="8" Star="2">
    <AP>3</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac>1</Mitac>
    <Skill1>147</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="626" MaxStar="5" Name="黑武士" Quality="1" Race="3" SP="8" Star="3">
    <AP>3</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Mitac>1</Mitac>
    <Skill1>147</Skill1>
    <Skill2>52</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="627" MaxStar="5" Name="邪神洛基" Quality="1" Race="3" SP="10" Star="1">
    <AP>3</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac>2</Mitac>
    <Skill1>152</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="628" MaxStar="5" Name="邪神洛基" Quality="1" Race="3" SP="8" Star="2">
    <AP>3</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac>2</Mitac>
    <Skill1>152</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="629" MaxStar="5" Name="邪神洛基" Quality="1" Race="3" SP="6" Star="3">
    <AP>3</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac>2</Mitac>
    <Skill1>152</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="630" MaxStar="5" Name="河豚刺鱼" Quality="1" Race="2" SP="6" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>164</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="631" MaxStar="5" Name="河豚刺鱼" Quality="1" Race="2" SP="4" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>164</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="632" MaxStar="5" Name="河豚刺鱼" Quality="1" Race="2" SP="2" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>164</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="633" MaxStar="5" Name="路西法" Quality="1" Race="4" SP="10" Star="1">
    <AP>3</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac>2</Mitac>
    <Skill1>165</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="634" MaxStar="5" Name="路西法" Quality="1" Race="4" SP="8" Star="2">
    <AP>3</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac>2</Mitac>
    <Skill1>165</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="635" MaxStar="5" Name="路西法" Quality="1" Race="4" SP="6" Star="3">
    <AP>3</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Mitac>2</Mitac>
    <Skill1>165</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="636" MaxStar="5" Name="地精" Quality="1" Race="3" SP="6" Star="1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>172</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="637" MaxStar="5" Name="地精" Quality="1" Race="3" SP="4" Star="2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>172</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="638" MaxStar="5" Name="地精" Quality="1" Race="3" SP="2" Star="3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Mitac/>
    <Skill1>172</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <Talisman/>
  </Card>
</Cards>

		public static const DECKS_CONFIG:XML = <Decks>
  <Deck ID="1" />
  <Deck ID="2" />
  <Deck ID="3" />
  <Deck ID="4" />
  <Deck ID="5">
    <RequiredItem ID="13" Amount="2" />
  </Deck>
  <Deck ID="6">
    <RequiredItem ID="13" Amount="3" />
  </Deck>
  <Deck ID="7">
    <RequiredItem ID="13" Amount="4" />
  </Deck>
  <Deck ID="8">
    <RequiredItem ID="13" Amount="5" />
  </Deck>
  <Deck ID="9">
    <RequiredItem ID="13" Amount="6" />
  </Deck>
  <Deck ID="10">
    <RequiredItem ID="13" Amount="7" />
  </Deck>
  <Deck ID="11">
    <RequiredItem ID="13" Amount="8" />
  </Deck>
  <Deck ID="12">
    <RequiredItem ID="13" Amount="9" />
  </Deck>
  <Deck ID="13">
    <RequiredItem ID="13" Amount="10" />
  </Deck>
  <Deck ID="14">
    <RequiredItem ID="13" Amount="11" />
  </Deck>
  <Deck ID="15">
    <RequiredItem ID="13" Amount="12" />
  </Deck>
  <Deck ID="16">
    <RequiredItem ID="13" Amount="13" />
  </Deck>
  <Deck ID="17">
    <RequiredItem ID="13" Amount="14" />
  </Deck>
  <Deck ID="18">
    <RequiredItem ID="13" Amount="15" />
  </Deck>
  <Deck ID="19">
    <RequiredItem ID="13" Amount="16" />
  </Deck>
  <Deck ID="20">
    <RequiredItem ID="13" Amount="17" />
  </Deck>
</Decks>

		public static const ITEM_CONFIG:XML = <Items>
  <Item Category="1" Description="开启后随机获得4张卡牌 传说概率—— 魔神概率—— 史诗概率10%  普通概率90%  一星：90%  二星：10%  三星：—— 四星：——" Price="100" ID="1" Name="金币卡包" Usable="1" />
  <Item Category="1" Description="开启后随机获得4张卡牌 传说概率—— 魔神概率—— 史诗概率20%  普通概率80%  一星：80%  二星：20%  三星：—— 四星：——" Price="100" ID="2" Name="青铜卡包" Usable="1" />
  <Item Category="1" Description="开启后随机获得4张卡牌 传说概率—— 魔神概率10%  史诗概率30%  普通概率60%  一星：70%  二星：25%  三星：5%   四星：——" Price="100" ID="3" Name="白银卡包" Usable="1" />
  <Item Category="1" Description="开启后随机获得4张卡牌 传说概率10%  魔神概率20%  史诗概率30%  普通概率20%  一星：60%  二星：30%  三星：10%  四星：——" Price="100" ID="4" Name="黄金卡包" Usable="1" />
  <Item Category="1" Description="开启后随机获得4张卡牌 传说概率15%  魔神概率20%  史诗概率45%  普通概率20%  一星：20%  二星：50%  三星：15%  四星：5%" Price="100" ID="5" Name="钻石卡包" Usable="1" />
  <Item Category="2" Description="喇叭" Price="100" ID="6" Name="号角" Usable="0" />
  <Item Category="2" Description="广播" Price="100" ID="7" Name="奥拉尔号角" Usable="0" />
  <Item Category="2" Description="增加巴比伦塔挑战次数" Price="100" ID="8" Name="破魔匙" Usable="0" />
  <Item Category="2" Description="VIP时间一星期" Price="100" ID="9" Name="VIP周卡" Usable="1" />
  <Item Category="2" Description="VIP时间一个月" Price="100" ID="10" Name="VIP月卡" Usable="1" />
  <Item Category="2" Description="VIP时间一年" Price="100" ID="11" Name="VIP年卡" Usable="1" />
  <Item Category="2" Description="增加训练场一次挑战次数" Price="100" ID="12" Name="学院入场卷" Usable="1" />
  <Item Category="2" Description="解锁一个卡组槽位" Price="100" ID="13" Name="英雄之证" Usable="0" />
  <Item Category="2" Description="可以补上本星期空缺的签到" Price="100" ID="14" Name="补签卡" Usable="1" />
  <Item Category="2" Description="在战争学院的奖励获取时可以去掉一个自己不想要的道具" Price="100" ID="15" Name="金手指" Usable="0" />
  <Item Category="2" Description="XXX卡牌的合成公式，为合成必需品" Price="100" ID="16" Name="公式卷轴1" Usable="0" />
  <Item Category="2" Description="包裹扩容" Price="100" ID="17" Name="背包" Usable="1" />
  <Item Category="2" Description="8小时内玩家不得对你奴役" Price="100" ID="18" Name="免战牌" Usable="1" />
  <Item Category="2" Description="1小时内获得双倍经验" Price="100" ID="19" Name="双倍经验卡" Usable="1" />
  <Item Category="2" Description="1小时内获得双倍金币" Price="100" ID="20" Name="双倍金币卡" Usable="1" />
  <Item Category="2" Description="推出新卡的时候上架的卡包" Price="100" ID="21" Name="新卡卡包" Usable="1" />
  <Item Category="2" Description="24小时内玩家不得对你奴役" Price="100" ID="22" Name="超级免战牌" Usable="1" />
  <Item Category="2" Description="刷新酒馆卡牌" Price="100" ID="23" Name="招募令" Usable="1" />
  <Item Category="2" Description="1小时内获得双倍荣誉" Price="100" ID="24" Name="双倍荣誉卡" Usable="1" />
  <Item Category="2" Description="打开获得少量金币" Price="100" ID="25" Name="钱袋" Usable="1" />
  <Item Category="2" Description="打开获得大量金币" Price="100" ID="26" Name="大钱袋" Usable="1" />
  <Item Category="2" Description="打开获得少量荣誉" Price="100" ID="27" Name="奖章" Usable="1" />
  <Item Category="2" Description="打开获得大量荣誉" Price="100" ID="28" Name="勋章" Usable="1" />
  <Item Category="1" Description="开启后获得1张神通或者装备 传说概率——  魔神概率5%  史诗概率15%  普通概率80%  一星：75%  二星：20%  三星：5%  四星：——" Price="100" ID="29" Name="魔法装备卡包" Usable="1" />
  <Item Category="1" Description="开启后获得1张英雄卡       传说概率——  魔神概率5%  史诗概率15%  普通概率80%  一星：75%  二星：20%  三星：5%  四星：——" Price="100" ID="30" Name="英雄卡包" Usable="1" />
  <Item Category="1" Description="开启后获得2张佣兵卡       传说概率——  魔神概率5%  史诗概率15%  普通概率80%  一星：75%  二星：20%  三星：5%  四星：——" Price="100" ID="31" Name="佣兵卡包" Usable="1" />
  <Item Category="1" Description="开启后获得1张神通或者装备 传说概率5%   魔神概率20%  史诗概率45%  普通概率20%  一星：20%  二星：50%  三星：15%  四星：5%" Price="100" ID="32" Name="白金魔法装备卡包" Usable="1" />
  <Item Category="1" Description="开启后获得1张英雄卡       传说概率5%   魔神概率20%  史诗概率45%  普通概率20%  一星：20%  二星：50%  三星：15%  四星：5%" Price="100" ID="33" Name="白金英雄卡包" Usable="1" />
  <Item Category="1" Description="开启后获得2张佣兵卡       传说概率5%   魔神概率20%  史诗概率45%  普通概率20%  一星：20%  二星：50%  三星：15%  四星：5%" Price="100" ID="34" Name="白金佣兵卡包" Usable="1" />
  <Item Category="1" Description="开启后获得2张希腊卡       传说概率—— 魔神概率5%  史诗概率10%  普通概率85%  一星：77%  二星：20%  三星：3%  四星：——" Price="100" ID="35" Name="希腊卡包" Usable="1" />
  <Item Category="1" Description="开启后获得2张希腊卡       传说概率5%   魔神概率20%  史诗概率45%  普通概率20%  一星：20%  二星：50%  三星：15%  四星：5%" Price="100" ID="36" Name="白金希腊卡包" Usable="1" />
  <Item Category="1" Description="开启后获得2张北欧卡       传说概率—— 魔神概率5%  史诗概率10%  普通概率85%  一星：77%  二星：20%  三星：3%  四星：——" Price="100" ID="37" Name="北欧卡包" Usable="1" />
  <Item Category="1" Description="开启后获得2张北欧卡       传说概率5%   魔神概率20%  史诗概率45%  普通概率20%  一星：20%  二星：50%  三星：15%  四星：5%" Price="100" ID="38" Name="白金北欧卡包" Usable="1" />
  <Item Category="1" Description="开启后获得2张异界卡       传说概率—— 魔神概率5%  史诗概率10%  普通概率85%  一星：77%  二星：20%  三星：3%  四星：——" Price="100" ID="39" Name="异界卡包" Usable="1" />
  <Item Category="1" Description="开启后获得2张异界卡       传说概率5%   魔神概率20%  史诗概率45%  普通概率20%  一星：20%  二星：50%  三星：15%  四星：5%" Price="100" ID="40" Name="白金异界卡包" Usable="1" />
  <Item Category="1" Description="开启后获得2张人族卡       传说概率—— 魔神概率5%  史诗概率10%  普通概率85%  一星：77%  二星：20%  三星：3%  四星：——" Price="100" ID="41" Name="人族卡包" Usable="1" />
  <Item Category="1" Description="开启后获得2张人族卡       传说概率5%   魔神概率20%  史诗概率45%  普通概率20%  一星：20%  二星：50%  三星：15%  四星：5%" Price="100" ID="42" Name="白金人族卡包" Usable="1" />
</Items>

		public static const ERROR_MESSAGE:XML =	<Messages>
  <Message ID="1" Text="登录超时" />
  <Message ID="2" Text="用户不存在" />
  <Message ID="3" Text="参数异常" />
  <Message ID="4" Text="含有敏感词" />
  <Message ID="5" Text="卡组不存在" />
  <Message ID="6" Text="卡组已存在" />
  <Message ID="7" Text="卡牌不足" />
  <Message ID="8" Text="战斗记录不存在" />
  <Message ID="9" Text="金币不足" />
  <Message ID="10" Text="水晶不足" />
  <Message ID="11" Text="荣誉不足" />
  <Message ID="12" Text="道具不足" />
  <Message ID="13" Text="等级太高" />
  <Message ID="14" Text="等级太低" />
  <Message ID="20" Text="用户分享动态不存在" />
  <Message ID="21" Text="此物品不可出售" />
  <Message ID="22" Text="物品不存在" />
  <Message ID="23" Text="抽奖不存在" />
  <Message ID="24" Text="战斗模式错误" />
  <Message ID="100" Text="SNS授权错误" />
  <Message ID="101" Text="业务权限不足" />
  <Message ID="200" Text="好友不存在" />
  <Message ID="300" Text="必须先解救后再奴役" />
  <Message ID="301" Text="不能奴役自己" />
  <Message ID="302" Text="奴隶不属于你" />
  <Message ID="303" Text="奴隶营地已满" />
  <Message ID="304" Text="奴隶工作未完成，不能收获" />
  <Message ID="305" Text="奴隶没在工作，不能收获" />
  <Message ID="306" Text="不能解救自己的奴隶" />
  <Message ID="307" Text="奴隶不存在" />
  <Message ID="308" Text="奴隶处在保护期" />
  <Message ID="309" Text="剩余奴役次数不足" />
  <Message ID="310" Text="剩余工作次数不足" />
  <Message ID="311" Text="奴隶已经在工作，不能重复工作" />
  <Message ID="400" Text="训练剩余次数不足" />
  <Message ID="401" Text="今日额外增加的训练场次已达上限" />
  <Message ID="500" Text="酒馆刷新冷却时间还没到" />
  <Message ID="501" Text="酒馆招募栏未解锁" />
  <Message ID="502" Text="酒馆招募栏的卡牌已被招募" />
  <Message ID="600" Text="今天免费进入次数已经达到上限，可以使用破魔匙进入" />
  <Message ID="601" Text="今天进入次数已经达到上限，请明天再来" />
  <Message ID="602" Text="失败次数过多，必须先退回到塔外" />
  <Message ID="900" Text="客户端和服务端数据不同步" />
  <Message ID="1000" Text="未知错误" />
</Messages>

		public static const ACHV_CONFIG:XML = <Achievements>
  <Achievement ID="1" Name="成就1" Category="0" Order="1" Point="10" Total="5">
    <Desc>成就描述</Desc>
  </Achievement>
  <Achievement ID="2" Name="成就2" Category="0" Order="2" Point="10" Total="5">
    <Desc>成就描述</Desc>
  </Achievement>
  <Achievement ID="3" Name="成就3" Category="0" Order="3" Point="10" Total="5">
    <Desc>成就描述</Desc>
  </Achievement>
  <Achievement ID="4" Name="成就4" Category="0" Order="4" Point="10" Total="5">
    <Desc>成就描述</Desc>
  </Achievement>
  <Achievement ID="5" Name="成就5" Category="0" Order="5" Point="10" Total="5">
    <Desc>成就描述</Desc>
  </Achievement>
  <Achievement ID="6" Name="成就6" Category="0" Order="6" Point="10" Total="5">
    <Desc>成就描述</Desc>
  </Achievement>
  <Achievement ID="7" Name="成就7" Category="0" Order="7" Point="10" Total="5">
    <Desc>成就描述</Desc>
  </Achievement>
  <Achievement ID="8" Name="成就8" Category="0" Order="8" Point="10" Total="5">
    <Desc>成就描述</Desc>
  </Achievement>
  <Achievement ID="9" Name="成就9" Category="0" Order="9" Point="10" Total="5">
    <Desc>成就描述</Desc>
  </Achievement>
  <Achievement ID="10" Name="成就10" Category="0" Order="10" Point="10" Total="5">
    <Desc>成就描述</Desc>
  </Achievement>
  <Achievement ID="11" Name="成就11" Category="0" Order="11" Point="10" Total="5">
    <Desc>成就描述</Desc>
  </Achievement>
  <Achievement ID="12" Name="成就12" Category="0" Order="12" Point="10" Total="5">
    <Desc>成就描述</Desc>
  </Achievement>
  <Achievement ID="13" Name="成就13" Category="0" Order="13" Point="10" Total="5">
    <Desc>成就描述</Desc>
  </Achievement>
  <Achievement ID="14" Name="成就14" Category="0" Order="14" Point="10" Total="5">
    <Desc>成就描述</Desc>
  </Achievement>
  <Achievement ID="15" Name="成就15" Category="0" Order="15" Point="10" Total="5">
    <Desc>成就描述</Desc>
  </Achievement>
  <Achievement ID="16" Name="成就16" Category="0" Order="16" Point="10" Total="5">
    <Desc>成就描述</Desc>
  </Achievement>
  <Achievement ID="17" Name="成就17" Category="0" Order="17" Point="10" Total="5">
    <Desc>成就描述</Desc>
  </Achievement>
  <Achievement ID="18" Name="成就18" Category="0" Order="18" Point="10" Total="5">
    <Desc>成就描述</Desc>
  </Achievement>
  <Achievement ID="19" Name="成就19" Category="0" Order="19" Point="10" Total="5">
    <Desc>成就描述</Desc>
  </Achievement>
  <Achievement ID="20" Name="成就20" Category="0" Order="20" Point="10" Total="5">
    <Desc>成就描述</Desc>
  </Achievement>
</Achievements>

		public static const ACTIVITY_CONFIG:XML = <Activity xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <Objectives>
    <Objective ID="1" Title="每日登录（首次登录+20分）" Max="1" Point="5" Action="0" />
    <Objective ID="2" Title="挑战宿命之塔（每次进入挑战+20分）" Max="10" Point="20" Action="1" />
    <Objective ID="3" Title="挑战竞技场（每次进入挑战+20分）" Max="10" Point="20" Action="2" />
    <Objective ID="4" Title="战争学院训练（每次挑战+5分）" Max="10" Point="5" Action="3" />
    <Objective ID="5" Title="酒馆招募（每次刷新+20分）" Max="10" Point="20" Action="4" />
    <Objective ID="6" Title="进阶卡牌（每次进阶+20分）" Max="10" Point="20" Action="5" />
    <Objective ID="7" Title="聊天广播（每次使用任意号角+20)" Max="10" Point="20" Action="0" />
    <Objective ID="8" Title="奴役好友（每次奴役好友+10)" Max="10" Point="10" Action="7" />
    <Objective ID="9" Title="与好友切磋（每次挑战+10)" Max="10" Point="10" Action="7" />
    <Objective ID="10" Title="随机事件(每次开宝箱+10)" Max="10" Point="10" Action="7" />
    <Objective ID="11" Title="获得新卡牌(每次开卡包+20)" Max="10" Point="20" Action="0" />
    <Objective ID="12" Title="成功奴役收获(每次收获+20)" Max="10" Point="20" Action="6" />
  </Objectives>
  <Chests>
    <Chest ID="1">
      <Name>宝箱1</Name>
      <Description>宝箱描述</Description>
      <Point>50</Point>
      <Bonus>
        <Gold>100</Gold>
        <Honor>0</Honor>
        <Crystal>0</Crystal>
        <Exp>0</Exp>
        <Items />
        <Cards />
      </Bonus>
    </Chest>
    <Chest ID="2">
      <Name>宝箱2</Name>
      <Description>宝箱描述</Description>
      <Point>100</Point>
      <Bonus>
        <Gold>0</Gold>
        <Honor>100</Honor>
        <Crystal>0</Crystal>
        <Exp>0</Exp>
        <Items />
        <Cards />
      </Bonus>
    </Chest>
    <Chest ID="3">
      <Name>宝箱3</Name>
      <Description>宝箱描述</Description>
      <Point>150</Point>
      <Bonus>
        <Gold>0</Gold>
        <Honor>0</Honor>
        <Crystal>100</Crystal>
        <Exp>0</Exp>
        <Items />
        <Cards />
      </Bonus>
    </Chest>
    <Chest ID="4">
      <Name>宝箱4</Name>
      <Description>宝箱描述11111描述111111321312描述3gdfg rewdsds描述描述fdsfdsf</Description>
      <Point>200</Point>
      <Bonus>
        <Gold>0</Gold>
        <Honor>0</Honor>
        <Crystal>0</Crystal>
        <Exp>0</Exp>
        <Items />
        <Cards>
          <Card ID="2" Amount="1" />
        </Cards>
      </Bonus>
    </Chest>
    <Chest ID="5">
      <Name>宝箱5</Name>
      <Description>宝箱描述</Description>
      <Point>250</Point>
      <Bonus>
        <Gold>0</Gold>
        <Honor>0</Honor>
        <Crystal>0</Crystal>
        <Exp>0</Exp>
        <Items>
          <Item ID="3" Amount="2" />
        </Items>
        <Cards />
      </Bonus>
    </Chest>
    <Chest ID="6">
      <Name>宝箱6</Name>
      <Description>宝箱描述</Description>
      <Point>300</Point>
      <Bonus>
        <Gold>100</Gold>
        <Honor>0</Honor>
        <Crystal>0</Crystal>
        <Exp>0</Exp>
        <Items />
        <Cards />
      </Bonus>
    </Chest>
    <Chest ID="7">
      <Name>宝箱7</Name>
      <Description>宝箱描述</Description>
      <Point>350</Point>
      <Bonus>
        <Gold>100</Gold>
        <Honor>0</Honor>
        <Crystal>0</Crystal>
        <Exp>0</Exp>
        <Items />
        <Cards />
      </Bonus>
    </Chest>
    <Chest ID="8">
      <Name>宝箱8</Name>
      <Description>宝箱描述</Description>
      <Point>400</Point>
      <Bonus>
        <Gold>100</Gold>
        <Honor>0</Honor>
        <Crystal>0</Crystal>
        <Exp>0</Exp>
        <Items />
        <Cards />
      </Bonus>
    </Chest>
    <Chest ID="9">
      <Name>宝箱9</Name>
      <Description>宝箱描述</Description>
      <Point>450</Point>
      <Bonus>
        <Gold>100</Gold>
        <Honor>0</Honor>
        <Crystal>0</Crystal>
        <Exp>0</Exp>
        <Items />
        <Cards />
      </Bonus>
    </Chest>
    <Chest ID="10">
      <Name>宝箱10</Name>
      <Description>宝箱描述</Description>
      <Point>500</Point>
      <Bonus>
        <Gold>100</Gold>
        <Honor>0</Honor>
        <Crystal>0</Crystal>
        <Exp>0</Exp>
        <Items />
        <Cards />
      </Bonus>
    </Chest>
  </Chests>
</Activity>

		public static const SIGN_CONFIG:XML = <Attendance xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <Chests>
    <Chest ID="1">
      <Name>宝箱1</Name>
      <Description>宝箱描述</Description>
      <Day>1</Day>
    </Chest>
    <Chest ID="2">
      <Name>宝箱2</Name>
      <Description>宝箱描述</Description>
      <Day>2</Day>
    </Chest>
    <Chest ID="3">
      <Name>宝箱3</Name>
      <Description>宝箱描述</Description>
      <Day>3</Day>
    </Chest>
    <Chest ID="4">
      <Name>宝箱4</Name>
      <Description>宝箱描述</Description>
      <Day>4</Day>
    </Chest>
    <Chest ID="5">
      <Name>宝箱5</Name>
      <Description>宝箱描述</Description>
      <Day>5</Day>
    </Chest>
    <Chest ID="6">
      <Name>宝箱6</Name>
      <Description>宝箱描述</Description>
      <Day>6</Day>
    </Chest>
    <Chest ID="7">
      <Name>宝箱7</Name>
      <Description>宝箱描述</Description>
      <Day>7</Day>
    </Chest>
  </Chests>
</Attendance>

		public function ConfigXML()
		{
			return;
		} // end function
	}
}

