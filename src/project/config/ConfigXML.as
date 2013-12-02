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
	   time 11/11/2013 21:12:19
	 */
	public class ConfigXML extends Sprite
	{
		public static const LEVEL_CONFIG:XML = <Levels>
  <Level ID="1" Exp="0" />
  <Level ID="2" Exp="20" />
  <Level ID="3" Exp="60" />
  <Level ID="4" Exp="150" />
  <Level ID="5" Exp="310" />
  <Level ID="6" Exp="560" />
  <Level ID="7" Exp="920" />
  <Level ID="8" Exp="1410" />
  <Level ID="9" Exp="2050" />
  <Level ID="10" Exp="2860" />
  <Level ID="11" Exp="4110" />
  <Level ID="12" Exp="6270" />
  <Level ID="13" Exp="9700" />
  <Level ID="14" Exp="14820" />
  <Level ID="15" Exp="22110" />
  <Level ID="16" Exp="32110" />
  <Level ID="17" Exp="45420" />
  <Level ID="18" Exp="62700" />
  <Level ID="19" Exp="84670" />
  <Level ID="20" Exp="112110" />
  <Level ID="21" Exp="145860" />
  <Level ID="22" Exp="186820" />
  <Level ID="23" Exp="235950" />
  <Level ID="24" Exp="294270" />
  <Level ID="25" Exp="362860" />
  <Level ID="26" Exp="442860" />
  <Level ID="27" Exp="535470" />
  <Level ID="28" Exp="641950" />
  <Level ID="29" Exp="763620" />
  <Level ID="30" Exp="901860" />
  <Level ID="31" Exp="1058110" />
  <Level ID="32" Exp="1233870" />
  <Level ID="33" Exp="1430700" />
  <Level ID="34" Exp="1650220" />
  <Level ID="35" Exp="1894110" />
  <Level ID="36" Exp="2164110" />
  <Level ID="37" Exp="2462020" />
  <Level ID="38" Exp="2789700" />
  <Level ID="39" Exp="3149070" />
  <Level ID="40" Exp="3542110" />
  <Level ID="41" Exp="3970860" />
  <Level ID="42" Exp="4437420" />
  <Level ID="43" Exp="4943950" />
  <Level ID="44" Exp="5492670" />
  <Level ID="45" Exp="6085860" />
  <Level ID="46" Exp="6725860" />
  <Level ID="47" Exp="7415070" />
  <Level ID="48" Exp="8155950" />
  <Level ID="49" Exp="8951020" />
  <Level ID="50" Exp="9802860" />
  <Level ID="51" Exp="10714110" />
  <Level ID="52" Exp="11687470" />
  <Level ID="53" Exp="12725700" />
  <Level ID="54" Exp="13831620" />
  <Level ID="55" Exp="15008110" />
  <Level ID="56" Exp="16258110" />
  <Level ID="57" Exp="17584620" />
  <Level ID="58" Exp="18990700" />
  <Level ID="59" Exp="20479470" />
  <Level ID="60" Exp="22054110" />
  <Level ID="61" Exp="23717860" />
  <Level ID="62" Exp="25474020" />
  <Level ID="63" Exp="27325950" />
  <Level ID="64" Exp="29277070" />
  <Level ID="65" Exp="31330860" />
  <Level ID="66" Exp="33490860" />
  <Level ID="67" Exp="35760670" />
  <Level ID="68" Exp="38143950" />
  <Level ID="69" Exp="40644420" />
  <Level ID="70" Exp="43265860" />
  <Level ID="71" Exp="46012110" />
  <Level ID="72" Exp="48887070" />
  <Level ID="73" Exp="51894700" />
  <Level ID="74" Exp="55039020" />
  <Level ID="75" Exp="58324110" />
  <Level ID="76" Exp="61754110" />
  <Level ID="77" Exp="65333220" />
  <Level ID="78" Exp="69065700" />
  <Level ID="79" Exp="72955870" />
  <Level ID="80" Exp="77008110" />
  <Level ID="81" Exp="81226860" />
  <Level ID="82" Exp="85616620" />
  <Level ID="83" Exp="90181950" />
  <Level ID="84" Exp="94927470" />
  <Level ID="85" Exp="99857860" />
  <Level ID="86" Exp="104977860" />
  <Level ID="87" Exp="110292270" />
  <Level ID="88" Exp="115805950" />
  <Level ID="89" Exp="121523820" />
  <Level ID="90" Exp="127450860" />
  <Level ID="91" Exp="133592110" />
  <Level ID="92" Exp="139952670" />
  <Level ID="93" Exp="146537700" />
  <Level ID="94" Exp="153352420" />
  <Level ID="95" Exp="160402110" />
  <Level ID="96" Exp="167692110" />
  <Level ID="97" Exp="175227820" />
  <Level ID="98" Exp="183014700" />
  <Level ID="99" Exp="191058270" />
  <Level ID="100" Exp="199364110" />
</Levels>
		
		public static const VIP_CONFIG:XML = <Vip xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <Levels>
    <Level Exp="100" ID="1">
      <DialyBonus>
        <Gold>0</Gold>
        <Honor>0</Honor>
        <Crystal>0</Crystal>
        <Exp>0</Exp>
        <Items>
          <Item ID="1" Amount="1" />
          <Item ID="15" Amount="1" />
        </Items>
      </DialyBonus>
      <OnceBonus>
        <Gold>200000</Gold>
        <Honor>18000</Honor>
        <Crystal>0</Crystal>
        <Exp>0</Exp>
        <Items>
          <Item ID="51" Amount="5" />
          <Item ID="50" Amount="5" />
        </Items>
        <Cards>
          <Card ID="739" Amount="1" />
          <Card ID="555" Amount="1" />
          <Card ID="179" Amount="5" />
        </Cards>
      </OnceBonus>
    </Level>
    <Level Exp="1000" ID="2">
      <DialyBonus>
        <Gold>0</Gold>
        <Honor>0</Honor>
        <Crystal>0</Crystal>
        <Exp>0</Exp>
        <Items>
          <Item ID="1" Amount="1" />
          <Item ID="15" Amount="1" />
          <Item ID="12" Amount="1" />
        </Items>
      </DialyBonus>
      <OnceBonus>
        <Gold>250000</Gold>
        <Honor>25000</Honor>
        <Crystal>0</Crystal>
        <Exp>0</Exp>
        <Items>
          <Item ID="18" Amount="2" />
          <Item ID="95" Amount="2" />
          <Item ID="15" Amount="6" />
          <Item ID="12" Amount="5" />
        </Items>
        <Cards>
          <Card ID="159" Amount="1" />
          <Card ID="372" Amount="1" />
        </Cards>
      </OnceBonus>
    </Level>
    <Level Exp="5000" ID="3">
      <DialyBonus>
        <Gold>0</Gold>
        <Honor>0</Honor>
        <Crystal>0</Crystal>
        <Exp>0</Exp>
        <Items>
          <Item ID="1" Amount="1" />
          <Item ID="15" Amount="1" />
          <Item ID="12" Amount="1" />
          <Item ID="95" Amount="1" />
        </Items>
      </DialyBonus>
      <OnceBonus>
        <Gold>300000</Gold>
        <Honor>36000</Honor>
        <Crystal>0</Crystal>
        <Exp>0</Exp>
        <Items>
          <Item ID="23" Amount="3" />
          <Item ID="32" Amount="1" />
          <Item ID="33" Amount="1" />
          <Item ID="34" Amount="1" />
        </Items>
        <Cards>
          <Card ID="174" Amount="1" />
          <Card ID="754" Amount="1" />
        </Cards>
      </OnceBonus>
    </Level>
    <Level Exp="10000" ID="4">
      <DialyBonus>
        <Gold>0</Gold>
        <Honor>0</Honor>
        <Crystal>0</Crystal>
        <Exp>0</Exp>
        <Items>
          <Item ID="1" Amount="1" />
          <Item ID="15" Amount="1" />
          <Item ID="12" Amount="1" />
          <Item ID="95" Amount="1" />
          <Item ID="23" Amount="1" />
        </Items>
      </DialyBonus>
      <OnceBonus>
        <Gold>350000</Gold>
        <Honor>50000</Honor>
        <Crystal>0</Crystal>
        <Exp>0</Exp>
        <Items>
          <Item ID="51" Amount="10" />
          <Item ID="50" Amount="10" />
          <Item ID="96" Amount="1" />
          <Item ID="23" Amount="5" />
        </Items>
        <Cards>
          <Card ID="252" Amount="1" />
          <Card ID="579" Amount="1" />
        </Cards>
      </OnceBonus>
    </Level>
    <Level Exp="25000" ID="5">
      <DialyBonus>
        <Gold>0</Gold>
        <Honor>0</Honor>
        <Crystal>0</Crystal>
        <Exp>0</Exp>
        <Items>
          <Item ID="1" Amount="1" />
          <Item ID="15" Amount="1" />
          <Item ID="12" Amount="1" />
          <Item ID="95" Amount="1" />
          <Item ID="23" Amount="1" />
          <Item ID="8" Amount="1" />
        </Items>
      </DialyBonus>
      <OnceBonus>
        <Gold>450000</Gold>
        <Honor>70000</Honor>
        <Crystal>0</Crystal>
        <Exp>0</Exp>
        <Items>
          <Item ID="116" Amount="1" />
          <Item ID="51" Amount="15" />
          <Item ID="50" Amount="15" />
        </Items>
        <Cards>
          <Card ID="16" Amount="1" />
          <Card ID="980" Amount="1" />
        </Cards>
      </OnceBonus>
    </Level>
    <Level Exp="50000" ID="6">
      <DialyBonus>
        <Gold>0</Gold>
        <Honor>0</Honor>
        <Crystal>0</Crystal>
        <Exp>0</Exp>
        <Items>
          <Item ID="1" Amount="1" />
          <Item ID="15" Amount="1" />
          <Item ID="12" Amount="1" />
          <Item ID="95" Amount="1" />
          <Item ID="23" Amount="1" />
          <Item ID="8" Amount="1" />
          <Item ID="50" Amount="1" />
        </Items>
      </DialyBonus>
      <OnceBonus>
        <Gold>500000</Gold>
        <Honor>75000</Honor>
        <Crystal>0</Crystal>
        <Exp>0</Exp>
        <Items>
          <Item ID="5" Amount="1" />
          <Item ID="4" Amount="1" />
          <Item ID="3" Amount="1" />
        </Items>
        <Cards>
          <Card ID="766" Amount="1" />
          <Card ID="8" Amount="1" />
        </Cards>
      </OnceBonus>
    </Level>
    <Level Exp="100000" ID="7">
      <DialyBonus>
        <Gold>0</Gold>
        <Honor>0</Honor>
        <Crystal>0</Crystal>
        <Exp>0</Exp>
        <Items>
          <Item ID="1" Amount="1" />
          <Item ID="15" Amount="1" />
          <Item ID="12" Amount="1" />
          <Item ID="95" Amount="1" />
          <Item ID="23" Amount="1" />
          <Item ID="8" Amount="1" />
          <Item ID="50" Amount="5" />
          <Item ID="51" Amount="5" />
        </Items>
      </DialyBonus>
      <OnceBonus>
        <Gold>1000000</Gold>
        <Honor>150000</Honor>
        <Crystal>0</Crystal>
        <Exp>0</Exp>
        <Items>
          <Item ID="13" Amount="6" />
          <Item ID="15" Amount="20" />
          <Item ID="51" Amount="20" />
          <Item ID="50" Amount="20" />
          <Item ID="23" Amount="5" />
        </Items>
        <Cards>
          <Card ID="769" Amount="1" />
          <Card ID="627" Amount="1" />
        </Cards>
      </OnceBonus>
    </Level>
  </Levels>
</Vip>

		public static const SKILL_CONFIG:XML = <Skills>
  <Skill Description="对敌方战场上所有目标施放，使目标受到2点技能伤害，并有50%的概率被冰冻（下一回合无法行动）。" ID="1" Name="暴风雪Ⅱ" />
  <Skill Description="对敌方场上所有目标造成1点技能伤害。" ID="2" Name="爆炎术Ⅰ" />
  <Skill Description="对敌方场上所有目标造成2点技能伤害。" ID="3" Name="爆炎术Ⅱ" />
  <Skill Description="自身HP低于或等于2时增加3点攻击力。" ID="4" Name="不屈" />
  <Skill Description="离开战场时，降低对方2点信仰。" ID="5" Name="背信者Ⅱ" />
  <Skill Description="对敌方战场上随机目标施放，使目标受到1点技能伤害，并有50%的概率被冰冻（下一回合无法行动）。" ID="6" Name="冰弹Ⅰ" />
  <Skill Description="对敌方战场上随机目标施放，使目标受到2点技能伤害，并有50%的概率被冰冻（下一回合无法行动）。" ID="7" Name="冰弹Ⅱ" />
  <Skill Description="对敌方战场上随机目标施放，使目标受到3点技能伤害，并有50%的概率被冰冻（下一回合无法行动）。" ID="8" Name="冰弹Ⅲ" />
  <Skill Description="对敌方战场上随机目标施放，使目标受到4点技能伤害，并有50%的概率被冰冻（下一回合无法行动）。" ID="9" Name="冰弹Ⅳ" />
  <Skill Description="受到普通伤害时，最多承受1点伤害。" ID="10" Name="石皮肤" />
  <Skill Description="如果正面目标为“希腊神族”则对其直接秒杀。" ID="11" Name="驱魔师" />
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
  <Skill Description="一回合内，增加我方战场上2个目标各2点攻击力。" ID="33" Name="双人攻击UPⅠ" />
  <Skill Description="增加3点攻击力。" ID="34" Name="攻击UPⅢ" />
  <Skill Description="一回合内，增加我方战场上2个目标各3点攻击力。" ID="35" Name="双人攻击UPⅢ" />
  <Skill Description="将我方正面目标踢出战斗区至等待区。" ID="36" Name="暴风强踢" />
  <Skill Description="对敌方随机目标施放，使目标受到等同于墓地中卡牌数量的技能伤害。" ID="37" Name="亡灵意志" />
  <Skill Description="减少我方等待区任意单位2点等待。" ID="38" Name="风行Ⅱ" />
  <Skill Description="减少我方等待区任意单位4点等待。" ID="39" Name="风行Ⅳ" />
  <Skill Description="减少我方等待区任意单位6点等待。" ID="40" Name="风行Ⅵ" />
  <Skill Description="增加敌方等待区任意目标2点等待。" ID="41" Name="缓行Ⅱ" />
  <Skill Description="增加敌方等待区任意目标4点等待。" ID="42" Name="缓行Ⅳ" />
  <Skill Description="减少等待区我方任意单位3点等待。" ID="43" Name="风行Ⅲ" />
  <Skill Description="将1名我方单位复活到发牌堆。" ID="44" Name="轮回Ⅰ" />
  <Skill Description="将3名我方单位复活到发牌堆。" ID="45" Name="轮回Ⅲ" />
  <Skill Description="对地方战斗区目标直接秒杀。" ID="46" Name="即死" />
  <Skill Description="对敌方战场上随机目标施放，使目标受到1-2点技能伤害。" ID="47" Name="火球术Ⅱ" />
  <Skill Description="对敌方战场上随机目标施放，使目标受到1-4点技能伤害。" ID="48" Name="火球术Ⅳ" />
  <Skill Description="对敌方战场上随机目标施放，使目标受到1-5点技能伤害。" ID="49" Name="火球术Ⅴ" />
  <Skill Description="当对目标进行普通攻击并造成伤害时感染敌方，使其丧失1点攻击力和1点体力（受感染的目标无法被再次感染）。" ID="50" Name="病毒" />
  <Skill Description="当攻击目标为“近战”或“飞行”时，攻击力加倍。" ID="51" Name="必杀射击" />
  <Skill Description="使目标受到1点技能伤害，随后恢复与造成伤害相等的丢失HP。" ID="52" Name="饮血斩Ⅰ" />
  <Skill Description="使目标造成2点技能伤害，随后恢复与造成伤害相等的丢失HP。" ID="53" Name="饮血斩Ⅱ" />
  <Skill Description="使目标受到3点技能伤害，随后恢复与造成伤害相等的丢失HP。" ID="54" Name="饮血斩Ⅲ" />
  <Skill Description="对正面及其毗邻的敌方目标造成当前攻击力的普通伤害。" ID="55" Name="极光斩" />
  <Skill Description="当攻击目标为“射手”时，攻击力加倍。" ID="56" Name="奇袭" />
  <Skill Description="当在场上时，除自身外场上我方远程增加1点普通攻击力。" ID="57" Name="箭神祝福" />
  <Skill Description="当在战场上时，所有“近战”增加1点HP。" ID="58" Name="战士守护者Ⅰ" />
  <Skill Description="当在战场上时，所有“近战”增加2点HP。" ID="59" Name="战士守护者Ⅱ" />
  <Skill Description="战场上的全部装备立即进入墓地。" ID="60" Name="销毁" />
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
  <Skill Description="当在场上时，除自身外场上我方魔物增加1点普通攻击力。" ID="72" Name="魔王" />
  <Skill Description="正对面敌方目标死亡后，本场战斗永久增加2点普通攻击与2点HP。" ID="73" Name="鬼神Ⅱ" />
  <Skill Description="当被攻击且受到普通攻击时增加1点攻击力。" ID="74" Name="狂热Ⅰ" />
  <Skill Description="当被攻击且受到普通攻击时增加2点攻击力。" ID="75" Name="狂热Ⅱ" />
  <Skill Description="对敌方目标施放，使其受到1点技能伤害。" ID="76" Name="落雷Ⅰ" />
  <Skill Description="对敌方目标施放，使其受到2点技能伤害。" ID="77" Name="落雷Ⅱ" />
  <Skill Description="对敌方1-2个目标施放闪电，使目标受到2点技能伤害。" ID="78" Name="雷电术Ⅱ" />
  <Skill Description="对敌方目标施放，使其受到3点技能伤害。" ID="79" Name="落雷Ⅲ" />
  <Skill Description="对敌方1-2个目标施放闪电，使目标受到3点技能伤害。" ID="80" Name="雷电术Ⅲ" />
  <Skill Description="对敌方目标施放，使其受到4点技能伤害。" ID="81" Name="落雷Ⅳ" />
  <Skill Description="对敌方目标施放，使其受到1点技能伤害。且场上同名目标受到相同技能伤害。" ID="82" Name="狂雷天牢Ⅰ" />
  <Skill Description="对敌方目标施放，使其受到2点技能伤害。且场上同名目标受到相同技能伤害。" ID="83" Name="狂雷天牢Ⅱ" />
  <Skill Description="对敌方目标施放，使其受到3点技能伤害。且场上同名目标受到相同技能伤害。" ID="84" Name="狂雷天牢Ⅲ" />
  <Skill Description="当在场上时，除自身外场上我方龙族增加1点普通攻击力。" ID="85" Name="龙神附体" />
  <Skill Description="对敌方正面目标造成1点技能伤害，并对其造成诅咒效果。" ID="86" Name="龙之吐息Ⅰ" />
  <Skill Description="对敌方正面目标造成2点技能伤害，并对其造成诅咒效果。" ID="87" Name="龙之吐息Ⅱ" />
  <Skill Description="对敌方正面目标造成3点技能伤害，并对其造成诅咒效果。" ID="88" Name="龙之吐息Ⅲ" />
  <Skill Description="当在战场上时，所有“龙族”增加1点HP。" ID="89" Name="龙神守护者Ⅰ" />
  <Skill Description="不受到任何技能的伤害。" ID="90" Name="天神下凡" />
  <Skill Description="当在场上时，我方所有场上兵种增加1点普通攻击力。" ID="91" Name="战神祝福Ⅰ" />
  <Skill Description="当进入战场上时，降低我方1点信仰。" ID="92" Name="沉沦Ⅰ" />
  <Skill Description="当进入战场上时，降低我方2点信仰。" ID="93" Name="沉沦Ⅱ" />
  <Skill Description="对拥有“格挡”、“石肤术”、“泰坦附体”技能的目标造成三倍伤害" ID="94" Name="粉碎者" />
  <Skill Description="对拥有“天神下凡”和“魔法反弹”技能的敌方目标造成双倍伤害。" ID="95" Name="破魔者" />
  <Skill Description="如果正面目标为“地形”则对其直接秒杀。" ID="96" Name="地形破坏者" />
  <Skill Description="当在场上时，所有地形增加2点攻击力。" ID="97" Name="图腾Ⅱ" />
  <Skill Description="当在战场上时，所有“骑士”增加1点HP。" ID="98" Name="骑士守护者Ⅰ" />
  <Skill Description="当在战场上时，所有“骑士”增加3点HP。" ID="99" Name="骑士守护者Ⅲ" />
  <Skill Description="当在场上时，除自身外场上我方英雄增加3点普通攻击力。" ID="100" Name="瓦尔基里" />
  <Skill Description="当前回合内，我方战场上全部单位增加2点攻击力。" ID="101" Name="群体嗜血术Ⅱ" />
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
  <Skill Description="当有场上有友方希腊神族单位时，获得治愈术Ⅱ效果。" ID="134" Name="希腊盟友" />
  <Skill Description="当有场上有友方人族单位时，获得极光斩效果。" ID="135" Name="人族盟友" />
  <Skill Description="当有场上有异界神族单位时，获得龙之吐息Ⅰ效果。" ID="136" Name="异界盟友" />
  <Skill Description="当有场上有友方北欧神族单位时，攻击提升2。" ID="137" Name="北欧盟友" />
  <Skill Description="当在场上时，除自身外场上我方“骑士”增加1点普通攻击力。" ID="138" Name="冲锋Ⅰ" />
  <Skill Description="如果正面目标为“龙族”则对其直接秒杀。" ID="139" Name="屠龙者" />
  <Skill Description="感染敌方战场上所有目标，使目标丧失1点攻击力和1点体力（受感染的目标无法再次被感染）。" ID="140" Name="生化危机" />
  <Skill Description="战场上每有一个友军单位，自身增加1点攻击力。" ID="141" Name="战争之王" />
  <Skill Description="如果正面目标攻击力大于或等于3则对其造成三倍伤害。" ID="142" Name="勇者之魂" />
  <Skill Description="对敌方正面目标普通攻击时恢复1点丢失的HP。" ID="143" Name="吸血Ⅰ" />
  <Skill Description="对敌方正面目标普通攻击时恢复2点丢失的HP。" ID="144" Name="吸血Ⅱ" />
  <Skill Description="当攻击或受到普通攻击时，使攻击者或目标受到诅咒状态（每次行动结束后丢失1点HP）" ID="145" Name="诅咒" />
  <Skill Description="对敌方战场上随机目标施放，使目标有75%的概率睡眠（下一回合无法行动）。" ID="146" Name="睡眠术" />
  <Skill Description="当在场上时，除自身外场上我方近战增加1点物理攻击力。" ID="147" Name="战士之魂Ⅰ" />
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
  <Skill Description="对敌方战场上随机目标施放，使目标受到1-3点技能伤害。" ID="177" Name="火球术Ⅲ" />
  <Skill Description="对敌方战场上所有目标施放，使目标受到1点技能伤害，并有50%的概率被冰冻（下一回合无法行动）。" ID="178" Name="暴风雪Ⅰ" />
</Skills>

		public static const CARDS_CONFIG:XML = <Cards>
  <Card AttackMode="1" Class="1" Description="“十二圆桌骑士之一”，勇敢高洁，号称完美的骑士，在亚瑟王的带领下，正面对抗着泰坦。" ID="1" MaxStar="5" Name="盖文" Price="7140" Quality="4" Race="1" SP="10" Sort="543" Star="3" StarUpRate="0.3">
    <AP>3</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0001_1</Image>
    <Mitac>0</Mitac>
    <Skill1>58</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>639</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="“圣女贞德”法兰西最著名的女英雄，在战火席卷法兰西时，这位谜一样的少女突然出现挺身带领着他的佣兵们，赢得了一连串的胜利。" ID="2" MaxStar="5" Name="贞德" Price="7140" Quality="4" Race="1" SP="10" Sort="253" Star="3" StarUpRate="0.3">
    <AP>1</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0002</Image>
    <Mitac>0</Mitac>
    <Skill1>77</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>641</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="黎明女神和特洛伊王子之子，希腊最帅的美男子之一，坚强而勇敢，是在特洛伊之战中，唯一能与阿喀琉斯匹敌的人。" ID="3" MaxStar="5" Name="门农" Price="7140" Quality="4" Race="2" SP="8" Sort="436" Star="3" StarUpRate="0.3">
    <AP>3</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0003</Image>
    <Mitac>0</Mitac>
    <Skill1>18</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>643</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="彩虹女神伊里丝，人与神之间的沟通者，活泼可爱，身姿绚烂。" ID="4" MaxStar="5" Name="伊里丝" Price="7140" Quality="4" Race="2" SP="8" Sort="303" Star="3" StarUpRate="0.3">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0004</Image>
    <Mitac>2</Mitac>
    <Skill1>169</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>645</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="吸血伯爵德拉古拉之子，吸血鬼猎人，为了追杀他的父亲一直奔波。" ID="5" MaxStar="5" Name="阿鲁卡多" Price="7140" Quality="4" Race="3" SP="8" Sort="606" Star="3" StarUpRate="0.3">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0005_1</Image>
    <Mitac>1</Mitac>
    <Skill1>149</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>647</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="“瓦尔基里”里的特殊者，体内似乎藏着一股连主神奥丁都无法轻视的力量。" ID="6" MaxStar="5" Name="蕾娜丝" Price="7140" Quality="4" Race="3" SP="8" Sort="463" Star="3" StarUpRate="0.3">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0006</Image>
    <Mitac>1</Mitac>
    <Skill1>38</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>649</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="7" MaxStar="5" Name="宙斯 " Price="14640" Quality="5" Race="2" SP="6" Sort="609" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0007</Image>
    <Mitac>2</Mitac>
    <Skill1>76</Skill1>
    <Skill2>76</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>651</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="奥林匹斯十二主神之一，宙斯之女，也被认为是宙斯意志的化身，同时也是女战神和智慧女神。" ID="8" MaxStar="5" Name="雅典娜" Price="18000" Quality="6" Race="2" SP="10" Sort="963" Star="1" StarUpRate="0.5">
    <AP>1</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0008</Image>
    <Mitac>0</Mitac>
    <Skill1>25</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>653</StarCard>
    <StarRequiredGold>23700</StarRequiredGold>
    <StarRequiredHonor>2250</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="9" MaxStar="5" Name="赫拉" Price="14640" Quality="5" Race="2" SP="8" Sort="848" Star="3" StarUpRate="0.2">
    <AP>1</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0009</Image>
    <Mitac>0</Mitac>
    <Skill1>61</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>655</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="10" MaxStar="5" Name="战神阿瑞斯" Price="14640" Quality="5" Race="2" SP="8" Sort="623" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0010</Image>
    <Mitac>0</Mitac>
    <Skill1>28</Skill1>
    <Skill2>160</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>657</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="11" MaxStar="5" Name="普罗米修斯" Price="14640" Quality="5" Race="2" SP="8" Sort="739" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0011</Image>
    <Mitac>0</Mitac>
    <Skill1>2</Skill1>
    <Skill2>168</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>659</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="海神波塞冬，奥林匹斯十二主神之一，众神之王宙斯的哥哥，地位仅次于宙斯，拥有强大无匹的神力，但智慧却显得不足，思考问题总是很单纯。" ID="12" MaxStar="5" Name="波塞冬" Price="14640" Quality="5" Race="2" SP="10" Sort="900" Star="3" StarUpRate="0.2">
    <AP>0</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0012</Image>
    <Mitac>1</Mitac>
    <Skill1>178</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>661</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="13" MaxStar="5" Name="哈迪斯" Price="14640" Quality="5" Race="2" SP="8" Sort="856" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0013</Image>
    <Mitac>2</Mitac>
    <Skill1>44</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>663</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="14" MaxStar="5" Name="待定1" Price="14640" Quality="5" Race="2" SP="8" Sort="892" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0014</Image>
    <Mitac>1</Mitac>
    <Skill1>162</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>665</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="古不列颠最具传奇的国王，圆桌骑士的领导者，因为拔起石中剑而成为天选王者。后因为王后桂妮薇儿与挚友蓝斯洛特决裂。" ID="15" MaxStar="5" Name="亚瑟王" Price="23160" Quality="6" Race="1" SP="8" Sort="955" Star="3" StarUpRate="0.1">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0015</Image>
    <Mitac>0</Mitac>
    <Skill1>28</Skill1>
    <Skill2>94</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>667</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="法兰克国王，神圣罗马帝国开国皇帝。铁蹄踏遍欧罗巴，在天使的指引下，带领人们抵抗泰坦的入侵。" ID="16" MaxStar="5" Name="查理曼大帝" Price="18000" Quality="6" Race="1" SP="10" Sort="1044" Star="1" StarUpRate="0.5">
    <AP>2</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>9</HP>
    <Image>0016_1</Image>
    <Mitac>0</Mitac>
    <Skill1>147</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>669</StarCard>
    <StarRequiredGold>23700</StarRequiredGold>
    <StarRequiredHonor>2250</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="17" MaxStar="5" Name="珀尔修斯" Price="14640" Quality="5" Race="1" SP="10" Sort="741" Star="3" StarUpRate="0.2">
    <AP>3</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0017</Image>
    <Mitac>2</Mitac>
    <Skill1>24</Skill1>
    <Skill2>52</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="2" Description="北欧神话中最著名的人类英雄，屠龙勇者，尼伯龙根的指环拥有者，女武神布伦希尔德的爱人。却因为喝下了失忆药水而与其他女子结婚，被怒火中烧的布伦希尔德派人暗杀而死，最后知道真相的布伦希尔德痛苦万分，自杀身亡。" ID="18" MaxStar="5" Name="齐格弗里德" Price="23160" Quality="6" Race="3" SP="8" Sort="988" Star="3" StarUpRate="0.1">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0018</Image>
    <Mitac/>
    <Skill1>73</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>19</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="北欧神话中最著名的人类英雄，屠龙勇者，尼伯龙根的指环拥有者，女武神布伦希尔德的爱人。却因为喝下了失忆药水而与其他女子结婚，被怒火中烧的布伦希尔德派人暗杀而死，最后知道真相的布伦希尔德痛苦万分，自杀身亡。" ID="19" MaxStar="5" Name="齐格弗里德" Price="26160" Quality="6" Race="3" SP="8" Sort="989" Star="4" StarUpRate="0.05">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0018</Image>
    <Mitac/>
    <Skill1>73</Skill1>
    <Skill2>18</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>20</StarCard>
    <StarRequiredGold>36000</StarRequiredGold>
    <StarRequiredHonor>3450</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="北欧神话中最著名的人类英雄，屠龙勇者，尼伯龙根的指环拥有者，女武神布伦希尔德的爱人。却因为喝下了失忆药水而与其他女子结婚，被怒火中烧的布伦希尔德派人暗杀而死，最后知道真相的布伦希尔德痛苦万分，自杀身亡。" ID="20" MaxStar="5" Name="齐格弗里德" Price="29760" Quality="6" Race="3" SP="8" Sort="990" Star="5" StarUpRate="0">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0018</Image>
    <Mitac/>
    <Skill1>73</Skill1>
    <Skill2>19</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="21" MaxStar="5" Name="赫拉克勒斯" Price="14640" Quality="5" Race="2" SP="10" Sort="846" Star="3" StarUpRate="0.2">
    <AP>3</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0021</Image>
    <Mitac>0</Mitac>
    <Skill1>94</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>22</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="22" MaxStar="5" Name="赫拉克勒斯" Price="16500" Quality="5" Race="2" SP="10" Sort="847" Star="4" StarUpRate="0.08">
    <AP>3</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0021</Image>
    <Mitac>0</Mitac>
    <Skill1>94</Skill1>
    <Skill2>51</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>23</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="23" MaxStar="5" Name="赫拉克勒斯" Price="29760" Quality="6" Race="2" SP="8" Sort="1025" Star="5" StarUpRate="0">
    <AP>3</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0021</Image>
    <Mitac>0</Mitac>
    <Skill1>94</Skill1>
    <Skill2>51</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="24" MaxStar="5" Name="赫拉克勒斯" Price="26160" Quality="6" Race="2" SP="6" Sort="1024" Star="4" StarUpRate="0.05">
    <AP>3</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0021</Image>
    <Mitac>0</Mitac>
    <Skill1>94</Skill1>
    <Skill2>51</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>23</StarCard>
    <StarRequiredGold>36000</StarRequiredGold>
    <StarRequiredHonor>3450</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="25" MaxStar="5" Name="梅林" Price="14640" Quality="5" Race="1" SP="10" Sort="781" Star="3" StarUpRate="0.2">
    <AP>0</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0025</Image>
    <Mitac>2</Mitac>
    <Skill1>77</Skill1>
    <Skill2>82</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="亚瑟王的十二圆桌骑士中的传奇。强大无匹而且富有正义感，是亚瑟王最忠诚的左右手，但是因为暗恋皇后格尼薇儿而导致了圆桌骑士的内战。" ID="26" MaxStar="5" Name="兰斯洛特" Price="13140" Quality="5" Race="1" SP="8" Sort="806" Star="2" StarUpRate="0.4">
    <AP>3</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0026_1</Image>
    <Mitac>1</Mitac>
    <Skill1>56</Skill1>
    <Skill2>98</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>675</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="27" MaxStar="5" Name="犹大" Price="7140" Quality="4" Race="1" SP="10" Sort="278" Star="3" StarUpRate="0.3">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0027</Image>
    <Mitac>0</Mitac>
    <Skill1>146</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="28" MaxStar="5" Name="帕尔斯" Price="14640" Quality="5" Race="1" SP="10" Sort="746" Star="3" StarUpRate="0.2">
    <AP>3</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0028</Image>
    <Mitac>0</Mitac>
    <Skill1>18</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="29" MaxStar="5" Name="赫克托尔" Price="14640" Quality="5" Race="1" SP="8" Sort="851" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0029</Image>
    <Mitac>0</Mitac>
    <Skill1>29</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="30" MaxStar="5" Name="阿克琉斯" Price="14640" Quality="5" Race="1" SP="10" Sort="928" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0030</Image>
    <Mitac>0</Mitac>
    <Skill1>141</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="31" MaxStar="5" Name="游侠罗宾" Price="14640" Quality="5" Race="1" SP="8" Sort="630" Star="3" StarUpRate="0.2">
    <AP>3</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0031</Image>
    <Mitac>1</Mitac>
    <Skill1>51</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="32" MaxStar="5" Name="奥丁" Price="14640" Quality="5" Race="3" SP="12" Sort="923" Star="3" StarUpRate="0.2">
    <AP>3</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0032</Image>
    <Mitac>0</Mitac>
    <Skill1>10</Skill1>
    <Skill2>154</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="33" MaxStar="5" Name="雷神托尔" Price="14640" Quality="5" Race="3" SP="10" Sort="794" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0033</Image>
    <Mitac>0</Mitac>
    <Skill1>123</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="34" MaxStar="5" Name="爱神弗丽嘉" Price="7140" Quality="4" Race="3" SP="12" Sort="599" Star="3" StarUpRate="0.3">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0034</Image>
    <Mitac>0</Mitac>
    <Skill1>61</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="35" MaxStar="5" Name="布伦希尔德" Price="14640" Quality="5" Race="3" SP="8" Sort="897" Star="3" StarUpRate="0.2">
    <AP>3</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0035</Image>
    <Mitac>0</Mitac>
    <Skill1>175</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="36" MaxStar="5" Name="战神提尔" Price="14640" Quality="5" Race="3" SP="10" Sort="622" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0036</Image>
    <Mitac>0</Mitac>
    <Skill1>74</Skill1>
    <Skill2>4</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="37" MaxStar="5" Name="奥尔布达" Price="14640" Quality="5" Race="3" SP="10" Sort="921" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0037</Image>
    <Mitac>1</Mitac>
    <Skill1>127</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="38" MaxStar="5" Name="阿蒙" Price="7140" Quality="4" Race="4" SP="8" Sort="603" Star="3" StarUpRate="0.3">
    <AP>3</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0038</Image>
    <Mitac>1</Mitac>
    <Skill1>145</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="39" MaxStar="5" Name="奥西里斯神" Price="29760" Quality="6" Race="4" SP="8" Sort="1063" Star="5" StarUpRate="0">
    <AP>1</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0039</Image>
    <Mitac>1</Mitac>
    <Skill1>17</Skill1>
    <Skill2>44</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="40" MaxStar="5" Name="尼努尔塔神" Price="14640" Quality="5" Race="4" SP="8" Sort="752" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0040</Image>
    <Mitac>0</Mitac>
    <Skill1>56</Skill1>
    <Skill2>145</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="41" MaxStar="5" Name="湿婆" Price="14640" Quality="5" Race="4" SP="10" Sort="705" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0041</Image>
    <Mitac>1</Mitac>
    <Skill1>56</Skill1>
    <Skill2>10</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="42" MaxStar="5" Name="梵天" Price="14640" Quality="5" Race="4" SP="8" Sort="867" Star="3" StarUpRate="0.2">
    <AP>3</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0042</Image>
    <Mitac>0</Mitac>
    <Skill1>90</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="43" MaxStar="5" Name="吉祥天" Price="14640" Quality="5" Race="4" SP="10" Sort="838" Star="3" StarUpRate="0.2">
    <AP>1</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0043</Image>
    <Mitac>1</Mitac>
    <Skill1>129</Skill1>
    <Skill2>167</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="44" MaxStar="5" Name="毗湿奴" Price="14640" Quality="5" Race="4" SP="8" Sort="744" Star="3" StarUpRate="0.2">
    <AP>1</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0044</Image>
    <Mitac>1</Mitac>
    <Skill1>2</Skill1>
    <Skill2>145</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="45" MaxStar="5" Name="耶和华" Price="14640" Quality="5" Race="4" SP="10" Sort="640" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0045</Image>
    <Mitac>0</Mitac>
    <Skill1>21</Skill1>
    <Skill2>118</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="46" MaxStar="5" Name="圣母玛丽亚" Price="14640" Quality="5" Race="4" SP="12" Sort="713" Star="3" StarUpRate="0.2">
    <AP>0</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0046</Image>
    <Mitac>1</Mitac>
    <Skill1>7</Skill1>
    <Skill2>10</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="47" MaxStar="5" Name="撒旦" Price="14640" Quality="5" Race="4" SP="14" Sort="731" Star="3" StarUpRate="0.2">
    <AP>0</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0047</Image>
    <Mitac>1</Mitac>
    <Skill1>53</Skill1>
    <Skill2>24</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="48" MaxStar="5" Name="米迦勒" Price="14640" Quality="5" Race="4" SP="14" Sort="774" Star="3" StarUpRate="0.2">
    <AP>0</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0048</Image>
    <Mitac>0</Mitac>
    <Skill1>48</Skill1>
    <Skill2>145</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>2</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="49" MaxStar="5" Name="卡门普斯" Price="14640" Quality="5" Race="4" SP="10" Sort="816" Star="3" StarUpRate="0.2">
    <AP>3</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0049</Image>
    <Mitac>0</Mitac>
    <Skill1>86</Skill1>
    <Skill2>55</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="50" MaxStar="5" Name="怒神劳" Price="7140" Quality="4" Race="4" SP="8" Sort="402" Star="3" StarUpRate="0.3">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0050</Image>
    <Mitac>0</Mitac>
    <Skill1>72</Skill1>
    <Skill2>41</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman>2</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="51" MaxStar="5" Name="智神斯凯尔" Price="14640" Quality="5" Race="4" SP="8" Sort="616" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0051</Image>
    <Mitac>2</Mitac>
    <Skill1>169</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="3" Description="" ID="52" MaxStar="5" Name="王国骑士" Price="165" Quality="1" Race="1" SP="4" Sort="75" Star="3" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0052</Image>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>53</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="" ID="53" MaxStar="5" Name="王国骑士" Price="245" Quality="1" Race="1" SP="6" Sort="76" Star="4" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0052</Image>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>54</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="3" Description="" ID="54" MaxStar="5" Name="王国骑士" Price="345" Quality="1" Race="1" SP="4" Sort="78" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0052</Image>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="" ID="55" MaxStar="5" Name="王国骑士" Price="245" Quality="1" Race="1" SP="6" Sort="77" Star="4" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0052</Image>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>29</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>54</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="56" MaxStar="5" Name="重装士兵" Price="165" Quality="1" Race="1" SP="4" Sort="2" Star="3" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0056</Image>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>57</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="57" MaxStar="5" Name="重装士兵" Price="245" Quality="1" Race="1" SP="8" Sort="3" Star="4" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0056</Image>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>58</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="58" MaxStar="5" Name="重装士兵" Price="345" Quality="1" Race="1" SP="6" Sort="5" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0056</Image>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="59" MaxStar="5" Name="重装士兵" Price="245" Quality="1" Race="1" SP="6" Sort="4" Star="4" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0056</Image>
    <Mitac/>
    <Skill1>29</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>58</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="有着移动城堡的称号，骑兵全身以及坐骑都裹着厚重装甲，配备极长的长枪，配置一个重装骑士的资金抵得上一队的轻步兵。重装骑士在具有极高防御力的同时，兼具破坏力与速度，作为战场上的大杀器而存在。" ID="60" MaxStar="5" Name="重装甲骑士" Price="14640" Quality="5" Race="1" SP="10" Sort="613" Star="3" StarUpRate="0.2">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0060</Image>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>61</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="有着移动城堡的称号，骑兵全身以及坐骑都裹着厚重装甲，配备极长的长枪，配置一个重装骑士的资金抵得上一队的轻步兵。重装骑士在具有极高防御力的同时，兼具破坏力与速度，作为战场上的大杀器而存在。" ID="61" MaxStar="5" Name="重装甲骑士" Price="16500" Quality="5" Race="1" SP="8" Sort="614" Star="4" StarUpRate="0.08">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0060</Image>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>62</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="有着移动城堡的称号，骑兵全身以及坐骑都裹着厚重装甲，配备极长的长枪，配置一个重装骑士的资金抵得上一队的轻步兵。重装骑士在具有极高防御力的同时，兼具破坏力与速度，作为战场上的大杀器而存在。" ID="62" MaxStar="5" Name="重装甲骑士" Price="18720" Quality="5" Race="1" SP="8" Sort="615" Star="5" StarUpRate="0">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0060</Image>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>29</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="5" Description="人类死亡后，由于某种原因而滞留在世界上的灵体，幽灵通常没有固定的形体，一般用肉眼是看不见的。" ID="63" MaxStar="5" Name="幽灵" Price="165" Quality="1" Race="4" SP="6" Sort="23" Star="3" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0063</Image>
    <Mitac/>
    <Skill1>50</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>64</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="5" Description="人类死亡后，由于某种原因而滞留在世界上的灵体，幽灵通常没有固定的形体，一般用肉眼是看不见的。" ID="64" MaxStar="5" Name="幽灵" Price="245" Quality="1" Race="4" SP="4" Sort="24" Star="4" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0063</Image>
    <Mitac/>
    <Skill1>50</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>65</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="5" Description="人类死亡后，由于某种原因而滞留在世界上的灵体，幽灵通常没有固定的形体，一般用肉眼是看不见的。" ID="65" MaxStar="5" Name="幽灵" Price="345" Quality="1" Race="4" SP="4" Sort="25" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0063</Image>
    <Mitac/>
    <Skill1>50</Skill1>
    <Skill2>24</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="居住在迷雾之森，伞帽带着尖刺，生性狡猾，会偷袭过往的旅人。" ID="66" MaxStar="5" Name="刺蘑菇" Price="105" Quality="1" Race="2" SP="6" Sort="215" Star="2" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0066</Image>
    <Mitac/>
    <Skill1>50</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>67</StarCard>
    <StarRequiredGold>600</StarRequiredGold>
    <StarRequiredHonor>175</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="居住在迷雾之森，伞帽带着尖刺，生性狡猾，会偷袭过往的旅人。" ID="67" MaxStar="5" Name="刺蘑菇" Price="165" Quality="1" Race="2" SP="4" Sort="216" Star="3" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0066</Image>
    <Mitac/>
    <Skill1>50</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>68</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="居住在迷雾之森，伞帽带着尖刺，生性狡猾，会偷袭过往的旅人。" ID="68" MaxStar="5" Name="刺蘑菇" Price="245" Quality="1" Race="2" SP="6" Sort="217" Star="4" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0066</Image>
    <Mitac/>
    <Skill1>50</Skill1>
    <Skill2>66</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>69</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="居住在迷雾之森，伞帽带着尖刺，生性狡猾，会偷袭过往的旅人。" ID="69" MaxStar="5" Name="刺蘑菇" Price="345" Quality="1" Race="2" SP="4" Sort="218" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0066</Image>
    <Mitac/>
    <Skill1>50</Skill1>
    <Skill2>66</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="70" MaxStar="5" Name="树妖" Price="165" Quality="1" Race="1" SP="10" Sort="87" Star="3" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0070</Image>
    <Mitac/>
    <Skill1>169</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>71</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="71" MaxStar="5" Name="树妖" Price="245" Quality="1" Race="1" SP="8" Sort="88" Star="4" StarUpRate="0.3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0070</Image>
    <Mitac/>
    <Skill1>169</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>72</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="72" MaxStar="5" Name="树妖" Price="345" Quality="1" Race="1" SP="6" Sort="89" Star="5" StarUpRate="0">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0070</Image>
    <Mitac/>
    <Skill1>169</Skill1>
    <Skill2>24</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="哥布林这种生物非常胆小，其中勇敢的则成为哥布林战士，担负起保卫家园的责任。" ID="73" MaxStar="5" Name="哥布林战士" Price="105" Quality="1" Race="3" SP="4" Sort="183" Star="2" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0073</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>74</StarCard>
    <StarRequiredGold>600</StarRequiredGold>
    <StarRequiredHonor>175</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="哥布林这种生物非常胆小，其中勇敢的则成为哥布林战士，担负起保卫家园的责任。" ID="74" MaxStar="5" Name="哥布林战士" Price="165" Quality="1" Race="3" SP="4" Sort="184" Star="3" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0073</Image>
    <Mitac/>
    <Skill1>174</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>830</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="哥布林这种生物非常胆小，其中勇敢的则成为哥布林战士，担负起保卫家园的责任。" ID="75" MaxStar="5" Name="哥布林战士" Price="345" Quality="1" Race="3" SP="2" Sort="186" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0073</Image>
    <Mitac/>
    <Skill1>175</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="隐藏在沙漠中，吞噬所有踏足死亡禁地的生物，身形巨大，在沙漠里移动非常迅速。" ID="76" MaxStar="5" Name="沙虫" Price="165" Quality="1" Race="2" SP="6" Sort="111" Star="3" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0076</Image>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>77</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="隐藏在沙漠中，吞噬所有踏足死亡禁地的生物，身形巨大，在沙漠里移动非常迅速。" ID="77" MaxStar="5" Name="沙虫" Price="245" Quality="1" Race="2" SP="6" Sort="112" Star="4" StarUpRate="0.3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0076</Image>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>78</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="隐藏在沙漠中，吞噬所有踏足死亡禁地的生物，身形巨大，在沙漠里移动非常迅速。" ID="78" MaxStar="5" Name="沙虫" Price="345" Quality="1" Race="2" SP="4" Sort="113" Star="5" StarUpRate="0">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0076</Image>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="一般哥布林这种低级生物是不会使用魔法的，但总有一些例外，这种收到火精灵眷顾的哥布林称为火焰哥布林，能使用一些火魔法。" ID="79" MaxStar="5" Name="火焰哥布林" Price="165" Quality="1" Race="2" SP="8" Sort="164" Star="3" StarUpRate="0.5">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0079</Image>
    <Mitac/>
    <Skill1>2</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>80</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="一般哥布林这种低级生物是不会使用魔法的，但总有一些例外，这种收到火精灵眷顾的哥布林称为火焰哥布林，能使用一些火魔法。" ID="80" MaxStar="5" Name="火焰哥布林" Price="245" Quality="1" Race="2" SP="6" Sort="165" Star="4" StarUpRate="0.3">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0079</Image>
    <Mitac/>
    <Skill1>2</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>81</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="一般哥布林这种低级生物是不会使用魔法的，但总有一些例外，这种收到火精灵眷顾的哥布林称为火焰哥布林，能使用一些火魔法。" ID="81" MaxStar="5" Name="火焰哥布林" Price="345" Quality="1" Race="2" SP="6" Sort="166" Star="5" StarUpRate="0">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0079</Image>
    <Mitac/>
    <Skill1>2</Skill1>
    <Skill2>47</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="身型远远超过正常的甲虫，外壳坚硬,据说是因为迷雾之森的原因。" ID="82" MaxStar="5" Name="巨甲虫" Price="165" Quality="1" Race="2" SP="6" Sort="159" Star="3" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0082</Image>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>83</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="身型远远超过正常的甲虫，外壳坚硬,据说是因为迷雾之森的原因。" ID="83" MaxStar="5" Name="巨甲虫" Price="245" Quality="1" Race="2" SP="4" Sort="160" Star="4" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0082</Image>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>84</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="身型远远超过正常的甲虫，外壳坚硬,据说是因为迷雾之森的原因。" ID="84" MaxStar="5" Name="巨甲虫" Price="345" Quality="1" Race="2" SP="2" Sort="161" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0082</Image>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2>160</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="寄宿在花中的女妖。妖娆美丽，一般来说越美丽的东西越危险，但是据很多冒险者说，他们在森林里迷路的时候都受到过花妖的帮助。" ID="85" MaxStar="5" Name="花妖" Price="75" Quality="1" Race="2" SP="4" Sort="167" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0085</Image>
    <Mitac/>
    <Skill1>168</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>837</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="寄宿在花中的女妖。妖娆美丽，一般来说越美丽的东西越危险，但是据很多冒险者说，他们在森林里迷路的时候都受到过花妖的帮助。" ID="86" MaxStar="5" Name="花妖" Price="165" Quality="1" Race="2" SP="6" Sort="169" Star="3" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0085</Image>
    <Mitac/>
    <Skill1>169</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>87</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="寄宿在花中的女妖。妖娆美丽，一般来说越美丽的东西越危险，但是据很多冒险者说，他们在森林里迷路的时候都受到过花妖的帮助。" ID="87" MaxStar="5" Name="花妖" Price="245" Quality="1" Race="2" SP="6" Sort="170" Star="4" StarUpRate="0.3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0085</Image>
    <Mitac/>
    <Skill1>169</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>88</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="寄宿在花中的女妖。妖娆美丽，一般来说越美丽的东西越危险，但是据很多冒险者说，他们在森林里迷路的时候都受到过花妖的帮助。" ID="88" MaxStar="5" Name="花妖" Price="345" Quality="1" Race="2" SP="6" Sort="171" Star="5" StarUpRate="0">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0085</Image>
    <Mitac/>
    <Skill1>169</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="89" MaxStar="5" Name="盗贼" Price="245" Quality="1" Race="1" SP="6" Sort="209" Star="4" StarUpRate="0.3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0089</Image>
    <Mitac/>
    <Skill1>60</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>90</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="90" MaxStar="5" Name="盗贼" Price="345" Quality="1" Race="1" SP="4" Sort="210" Star="5" StarUpRate="0">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0089</Image>
    <Mitac/>
    <Skill1>60</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="91" MaxStar="5" Name="盗贼" Price="8010" Quality="4" Race="1" SP="4" Sort="573" Star="4" StarUpRate="0.1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0089</Image>
    <Mitac/>
    <Skill1>60</Skill1>
    <Skill2>155</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>90</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="如果你在沙漠里水饮用殆尽，而要去喝仙人掌的水分的时候，请看清楚点，万一误伤这种有自我意识的仙人掌，下场是很悲惨的。" ID="92" MaxStar="5" Name="仙人掌" Price="165" Quality="1" Race="3" SP="8" Sort="60" Star="3" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0092</Image>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>93</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="如果你在沙漠里水饮用殆尽，而要去喝仙人掌的水分的时候，请看清楚点，万一误伤这种有自我意识的仙人掌，下场是很悲惨的。" ID="93" MaxStar="5" Name="仙人掌" Price="245" Quality="1" Race="3" SP="6" Sort="61" Star="4" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0092</Image>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>94</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="如果你在沙漠里水饮用殆尽，而要去喝仙人掌的水分的时候，请看清楚点，万一误伤这种有自我意识的仙人掌，下场是很悲惨的。" ID="94" MaxStar="5" Name="仙人掌" Price="345" Quality="1" Race="3" SP="6" Sort="62" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0092</Image>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2>18</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="" ID="95" MaxStar="5" Name="稻草人" Price="165" Quality="1" Race="1" SP="4" Sort="207" Star="3" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0095</Image>
    <Mitac/>
    <Skill1>41</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>96</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="3" Description="" ID="96" MaxStar="5" Name="稻草人" Price="8010" Quality="4" Race="1" SP="2" Sort="571" Star="4" StarUpRate="0.1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0095</Image>
    <Mitac/>
    <Skill1>41</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>97</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="" ID="97" MaxStar="5" Name="稻草人" Price="9090" Quality="4" Race="1" SP="2" Sort="572" Star="5" StarUpRate="0">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0095</Image>
    <Mitac/>
    <Skill1>41</Skill1>
    <Skill2>146</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="" ID="98" MaxStar="5" Name="食人花" Price="165" Quality="1" Race="2" SP="6" Sort="100" Star="3" StarUpRate="0.5">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0098</Image>
    <Mitac/>
    <Skill1>73</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>99</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="" ID="99" MaxStar="5" Name="食人花" Price="245" Quality="1" Race="2" SP="6" Sort="101" Star="4" StarUpRate="0.3">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0098</Image>
    <Mitac/>
    <Skill1>73</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>100</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="" ID="100" MaxStar="5" Name="食人花" Price="9090" Quality="4" Race="2" SP="4" Sort="354" Star="5" StarUpRate="0">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0098</Image>
    <Mitac/>
    <Skill1>73</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="纷争女神厄里斯，阿瑞斯的妹妹，因为珀琉斯婚礼没有邀请她，厄里斯利用“送给最美丽的女人”的金苹果引发了特洛伊战争。" ID="101" MaxStar="5" Name="厄里斯" Price="6450" Quality="4" Race="2" SP="6" Sort="553" Star="2" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0101_1</Image>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>67</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>102</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="纷争女神厄里斯，阿瑞斯的妹妹，因为珀琉斯婚礼没有邀请她，厄里斯利用“送给最美丽的女人”的金苹果引发了特洛伊战争。" ID="102" MaxStar="5" Name="厄里斯" Price="7140" Quality="4" Race="2" SP="6" Sort="554" Star="3" StarUpRate="0.3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0101_1</Image>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>68</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>103</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="纷争女神厄里斯，阿瑞斯的妹妹，因为珀琉斯婚礼没有邀请她，厄里斯利用“送给最美丽的女人”的金苹果引发了特洛伊战争。" ID="103" MaxStar="5" Name="厄里斯" Price="8010" Quality="4" Race="2" SP="4" Sort="555" Star="4" StarUpRate="0.1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0101_1</Image>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>68</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>847</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="野生蛮牛体型巨大，犄角粗而尖呈弧形。在迷雾之森中，几乎没有生物能对它造成伤害。" ID="104" MaxStar="5" Name="野生蛮牛" Price="165" Quality="1" Race="2" SP="6" Sort="49" Star="3" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0104</Image>
    <Mitac/>
    <Skill1>127</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>105</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="野生蛮牛体型巨大，犄角粗而尖呈弧形。在迷雾之森中，几乎没有生物能对它造成伤害。" ID="105" MaxStar="5" Name="野生蛮牛" Price="245" Quality="1" Race="2" SP="6" Sort="50" Star="4" StarUpRate="0.3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0104</Image>
    <Mitac/>
    <Skill1>127</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>106</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="野生蛮牛体型巨大，犄角粗而尖呈弧形。在迷雾之森中，几乎没有生物能对它造成伤害。" ID="106" MaxStar="5" Name="野生蛮牛" Price="345" Quality="1" Race="2" SP="6" Sort="51" Star="5" StarUpRate="0">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0104</Image>
    <Mitac/>
    <Skill1>128</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="10" Description="一般哥布林这种低级生物是不会使用魔法的，但总有一些例外，这种收到冰精灵眷顾的哥布林称为冰霜哥布林，能使用一些冰魔法。" ID="107" MaxStar="5" Name="冰霜哥布林" Price="165" Quality="1" Race="4" SP="8" Sort="233" Star="3" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0107</Image>
    <Mitac/>
    <Skill1>149</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>108</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="10" Description="一般哥布林这种低级生物是不会使用魔法的，但总有一些例外，这种收到冰精灵眷顾的哥布林称为冰霜哥布林，能使用一些冰魔法。" ID="108" MaxStar="5" Name="冰霜哥布林" Price="245" Quality="1" Race="4" SP="8" Sort="234" Star="4" StarUpRate="0.3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0107</Image>
    <Mitac/>
    <Skill1>149</Skill1>
    <Skill2>6</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>109</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="10" Description="一般哥布林这种低级生物是不会使用魔法的，但总有一些例外，这种收到冰精灵眷顾的哥布林称为冰霜哥布林，能使用一些冰魔法。" ID="109" MaxStar="5" Name="冰霜哥布林" Price="345" Quality="1" Race="4" SP="6" Sort="235" Star="5" StarUpRate="0">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0107</Image>
    <Mitac/>
    <Skill1>149</Skill1>
    <Skill2>6</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="" ID="110" MaxStar="5" Name="娜迦射手" Price="7140" Quality="4" Race="2" SP="8" Sort="409" Star="3" StarUpRate="0.3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0110</Image>
    <Mitac/>
    <Skill1>64</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>111</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="" ID="111" MaxStar="5" Name="娜迦射手" Price="16500" Quality="5" Race="2" SP="8" Sort="760" Star="4" StarUpRate="0.08">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0110</Image>
    <Mitac/>
    <Skill1>64</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>112</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="" ID="112" MaxStar="5" Name="娜迦射手" Price="18720" Quality="5" Race="2" SP="6" Sort="761" Star="5" StarUpRate="0">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0110</Image>
    <Mitac/>
    <Skill1>64</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="居住深海之中，拥有剃刀般锋利的巨钳。不仅如此，当巨钳合拢时，甚至能砸穿巨型船只。" ID="113" MaxStar="5" Name="巨钳龙虾" Price="165" Quality="1" Race="3" SP="4" Sort="154" Star="3" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0113</Image>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>114</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="居住深海之中，拥有剃刀般锋利的巨钳。不仅如此，当巨钳合拢时，甚至能砸穿巨型船只。" ID="114" MaxStar="5" Name="巨钳龙虾" Price="245" Quality="1" Race="3" SP="4" Sort="155" Star="4" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0113</Image>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2>154</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>115</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="居住深海之中，拥有剃刀般锋利的巨钳。不仅如此，当巨钳合拢时，甚至能砸穿巨型船只。" ID="115" MaxStar="5" Name="巨钳龙虾" Price="345" Quality="1" Race="3" SP="2" Sort="156" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0113</Image>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2>154</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="" ID="116" MaxStar="5" Name="金属史莱姆" Price="7140" Quality="4" Race="2" SP="14" Sort="507" Star="3" StarUpRate="0.3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>12</HP>
    <Image>0116</Image>
    <Mitac/>
    <Skill1>142</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>117</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="" ID="117" MaxStar="5" Name="金属史莱姆" Price="16500" Quality="5" Race="2" SP="14" Sort="825" Star="4" StarUpRate="0.08">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>12</HP>
    <Image>0116</Image>
    <Mitac/>
    <Skill1>162</Skill1>
    <Skill2>142</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>118</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="" ID="118" MaxStar="5" Name="金属史莱姆" Price="18720" Quality="5" Race="2" SP="12" Sort="826" Star="5" StarUpRate="0">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>12</HP>
    <Image>0116</Image>
    <Mitac/>
    <Skill1>162</Skill1>
    <Skill2>142</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="一种直立行走的邪恶亚人类生物，有传说是食人魔的分支。" ID="119" MaxStar="5" Name="巨魔" Price="7140" Quality="4" Race="1" SP="8" Sort="496" Star="3" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0119</Image>
    <Mitac/>
    <Skill1>150</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>120</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="一种直立行走的邪恶亚人类生物，有传说是食人魔的分支。" ID="120" MaxStar="5" Name="巨魔" Price="8010" Quality="4" Race="1" SP="8" Sort="497" Star="4" StarUpRate="0.1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0119</Image>
    <Mitac/>
    <Skill1>150</Skill1>
    <Skill2>155</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>121</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="一种直立行走的邪恶亚人类生物，有传说是食人魔的分支。" ID="121" MaxStar="5" Name="巨魔" Price="9090" Quality="4" Race="1" SP="6" Sort="498" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0119</Image>
    <Mitac/>
    <Skill1>150</Skill1>
    <Skill2>155</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="" ID="122" MaxStar="5" Name="木乃伊" Price="7140" Quality="4" Race="3" SP="6" Sort="415" Star="3" StarUpRate="0.3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0122</Image>
    <Mitac/>
    <Skill1>24</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>123</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="" ID="123" MaxStar="5" Name="木乃伊" Price="8010" Quality="4" Race="3" SP="6" Sort="416" Star="4" StarUpRate="0.1">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0122</Image>
    <Mitac/>
    <Skill1>24</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>124</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="" ID="124" MaxStar="5" Name="木乃伊" Price="9090" Quality="4" Race="3" SP="4" Sort="417" Star="5" StarUpRate="0">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0122</Image>
    <Mitac/>
    <Skill1>24</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="125" MaxStar="5" Name="勇者" Price="165" Quality="1" Race="1" SP="8" Sort="32" Star="3" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0125</Image>
    <Mitac/>
    <Skill1>16</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>126</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="126" MaxStar="5" Name="勇者" Price="245" Quality="1" Race="1" SP="8" Sort="33" Star="4" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0125</Image>
    <Mitac/>
    <Skill1>16</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>127</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="127" MaxStar="5" Name="勇者" Price="9090" Quality="4" Race="1" SP="6" Sort="282" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0125</Image>
    <Mitac/>
    <Skill1>16</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="" ID="128" MaxStar="5" Name="幼年毒龙" Price="165" Quality="1" Race="2" SP="4" Sort="18" Star="3" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0128</Image>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>129</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="" ID="129" MaxStar="5" Name="幼年毒龙" Price="245" Quality="1" Race="2" SP="2" Sort="19" Star="4" StarUpRate="0.3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0128</Image>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>130</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="" ID="130" MaxStar="5" Name="幼年毒龙" Price="9090" Quality="4" Race="2" SP="2" Sort="271" Star="5" StarUpRate="0">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0128</Image>
    <Mitac/>
    <Skill1>68</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="在洞穴中游荡的蝙蝠，靠吸食血液为生。" ID="131" MaxStar="5" Name="吸血蝠" Price="165" Quality="1" Race="4" SP="6" Sort="65" Star="3" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0131</Image>
    <Mitac/>
    <Skill1>143</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>132</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="在洞穴中游荡的蝙蝠，靠吸食血液为生。" ID="132" MaxStar="5" Name="吸血蝠" Price="245" Quality="1" Race="4" SP="6" Sort="66" Star="4" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0131</Image>
    <Mitac/>
    <Skill1>143</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>133</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="在洞穴中游荡的蝙蝠，靠吸食血液为生。" ID="133" MaxStar="5" Name="吸血蝠" Price="345" Quality="1" Race="4" SP="4" Sort="67" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0131</Image>
    <Mitac/>
    <Skill1>143</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="134" MaxStar="5" Name="佣兵战士" Price="165" Quality="1" Race="1" SP="4" Sort="35" Star="3" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0134</Image>
    <Mitac/>
    <Skill1>18</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>135</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="135" MaxStar="5" Name="佣兵战士" Price="245" Quality="1" Race="1" SP="4" Sort="36" Star="4" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0134</Image>
    <Mitac/>
    <Skill1>19</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>136</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="136" MaxStar="5" Name="佣兵战士" Price="9090" Quality="4" Race="1" SP="2" Sort="286" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>1</HP>
    <Image>0134</Image>
    <Mitac/>
    <Skill1>19</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="137" MaxStar="5" Name="佣兵战士" Price="16500" Quality="5" Race="1" SP="0" Sort="633" Star="4" StarUpRate="0.08">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>1</HP>
    <Image>0134</Image>
    <Mitac/>
    <Skill1>19</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>136</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="" ID="138" MaxStar="5" Name="佣兵法师" Price="165" Quality="1" Race="1" SP="8" Sort="44" Star="3" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0138</Image>
    <Mitac/>
    <Skill1>76</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>139</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="" ID="139" MaxStar="5" Name="佣兵法师" Price="245" Quality="1" Race="1" SP="6" Sort="45" Star="4" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0138</Image>
    <Mitac/>
    <Skill1>76</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>140</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="" ID="140" MaxStar="5" Name="佣兵法师" Price="9090" Quality="4" Race="1" SP="6" Sort="292" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0138</Image>
    <Mitac/>
    <Skill1>77</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="" ID="141" MaxStar="5" Name="佣兵射手" Price="165" Quality="1" Race="2" SP="2" Sort="39" Star="3" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0141</Image>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>142</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="" ID="142" MaxStar="5" Name="佣兵射手" Price="245" Quality="1" Race="2" SP="0" Sort="40" Star="4" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0141</Image>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>143</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="" ID="143" MaxStar="5" Name="佣兵射手" Price="9090" Quality="4" Race="2" SP="0" Sort="289" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0141</Image>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>149</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="守卫王国的士兵，从预备士兵到正式加入编制，通常要经过三至五年的洗礼，一般成为王国士兵就代表你已经是一个优秀的战士。" ID="144" MaxStar="5" Name="王国士兵" Price="165" Quality="1" Race="1" SP="8" Sort="71" Star="3" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0144</Image>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2>18</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>145</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="守卫王国的士兵，从预备士兵到正式加入编制，通常要经过三至五年的洗礼，一般成为王国士兵就代表你已经是一个优秀的战士。" ID="145" MaxStar="5" Name="王国士兵" Price="245" Quality="1" Race="1" SP="6" Sort="72" Star="4" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0144</Image>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2>18</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>146</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="守卫王国的士兵，从预备士兵到正式加入编制，通常要经过三至五年的洗礼，一般成为王国士兵就代表你已经是一个优秀的战士。" ID="146" MaxStar="5" Name="王国士兵" Price="345" Quality="1" Race="1" SP="6" Sort="73" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0144</Image>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2>19</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="荒野中的霸主，荒野巨蟒一般有两层鳞片，刀剑难伤，而且体形巨大，且移动迅速，不过比较害怕魔法。" ID="147" MaxStar="5" Name="荒野巨蟒" Price="7140" Quality="4" Race="3" SP="8" Sort="517" Star="3" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0147</Image>
    <Mitac/>
    <Skill1>156</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>148</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="荒野中的霸主，荒野巨蟒一般有两层鳞片，刀剑难伤，而且体形巨大，且移动迅速，不过比较害怕魔法。" ID="148" MaxStar="5" Name="荒野巨蟒" Price="8010" Quality="4" Race="3" SP="8" Sort="518" Star="4" StarUpRate="0.1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0147</Image>
    <Mitac/>
    <Skill1>156</Skill1>
    <Skill2>16</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>149</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="荒野中的霸主，荒野巨蟒一般有两层鳞片，刀剑难伤，而且体形巨大，且移动迅速，不过比较害怕魔法。" ID="149" MaxStar="5" Name="荒野巨蟒" Price="9090" Quality="4" Race="3" SP="6" Sort="519" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0147</Image>
    <Mitac/>
    <Skill1>156</Skill1>
    <Skill2>16</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="幽暗林中栖息着的豹子，比起普通豹子，暗影猎豹杀伤力成几何倍数增加，并且它的獠牙带有感染性病毒。" ID="150" MaxStar="5" Name="暗影猎豹" Price="165" Quality="1" Race="4" SP="6" Sort="243" Star="3" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0150</Image>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>151</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="幽暗林中栖息着的豹子，比起普通豹子，暗影猎豹杀伤力成几何倍数增加，并且它的獠牙带有感染性病毒。" ID="151" MaxStar="5" Name="暗影猎豹" Price="245" Quality="1" Race="4" SP="6" Sort="244" Star="4" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0150</Image>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>50</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>152</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="幽暗林中栖息着的豹子，比起普通豹子，暗影猎豹杀伤力成几何倍数增加，并且它的獠牙带有感染性病毒。" ID="152" MaxStar="5" Name="暗影猎豹" Price="345" Quality="1" Race="4" SP="4" Sort="245" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0150</Image>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>50</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="波塞冬的卫士，负责海皇宫殿附近的巡逻任务。" ID="153" MaxStar="5" Name="海马守卫" Price="165" Quality="1" Race="2" SP="6" Sort="179" Star="3" StarUpRate="0.5">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0153</Image>
    <Mitac/>
    <Skill1>122</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>154</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="波塞冬的卫士，负责海皇宫殿附近的巡逻任务。" ID="154" MaxStar="5" Name="海马守卫" Price="245" Quality="1" Race="2" SP="4" Sort="180" Star="4" StarUpRate="0.3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0153</Image>
    <Mitac/>
    <Skill1>122</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>155</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="波塞冬的卫士，负责海皇宫殿附近的巡逻任务。" ID="155" MaxStar="5" Name="海马守卫" Price="345" Quality="1" Race="2" SP="4" Sort="181" Star="5" StarUpRate="0">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0153</Image>
    <Mitac/>
    <Skill1>122</Skill1>
    <Skill2>62</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="西伯利亚海域深处的怪物，智商极高，会袭击过往船只。" ID="156" MaxStar="5" Name="水母怪" Price="165" Quality="1" Race="3" SP="8" Sort="83" Star="3" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0156</Image>
    <Mitac/>
    <Skill1>149</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>157</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="西伯利亚海域深处的怪物，智商极高，会袭击过往船只。" ID="157" MaxStar="5" Name="水母怪" Price="245" Quality="1" Race="3" SP="6" Sort="84" Star="4" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0156</Image>
    <Mitac/>
    <Skill1>149</Skill1>
    <Skill2>24</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>158</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="西伯利亚海域深处的怪物，智商极高，会袭击过往船只。" ID="158" MaxStar="5" Name="水母怪" Price="345" Quality="1" Race="3" SP="6" Sort="85" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0156</Image>
    <Mitac/>
    <Skill1>150</Skill1>
    <Skill2>24</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="深海巨鲨是鲨鱼中最稀少且最神秘的鲨鱼之一。头部庞大嘴巴张力惊人，细牙成须状，对养分的吸收极快，能通过进食快速回复体力。" ID="159" MaxStar="5" Name="深海巨鲨" Price="7140" Quality="4" Race="1" SP="10" Sort="368" Star="3" StarUpRate="0.3">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0159</Image>
    <Mitac/>
    <Skill1>53</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>160</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="深海巨鲨是鲨鱼中最稀少且最神秘的鲨鱼之一。头部庞大嘴巴张力惊人，细牙成须状，对养分的吸收极快，能通过进食快速回复体力。" ID="160" MaxStar="5" Name="深海巨鲨" Price="8010" Quality="4" Race="1" SP="8" Sort="369" Star="4" StarUpRate="0.1">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0159</Image>
    <Mitac/>
    <Skill1>53</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>161</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="深海巨鲨是鲨鱼中最稀少且最神秘的鲨鱼之一。头部庞大嘴巴张力惊人，细牙成须状，对养分的吸收极快，能通过进食快速回复体力。" ID="161" MaxStar="5" Name="深海巨鲨" Price="9090" Quality="4" Race="1" SP="6" Sort="370" Star="5" StarUpRate="0">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0159</Image>
    <Mitac/>
    <Skill1>53</Skill1>
    <Skill2>143</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="162" MaxStar="5" Name="雷精灵" Price="165" Quality="1" Race="2" SP="4" Sort="135" Star="3" StarUpRate="0.5">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0162</Image>
    <Mitac/>
    <Skill1>82</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>163</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="163" MaxStar="5" Name="雷精灵" Price="8010" Quality="4" Race="2" SP="4" Sort="466" Star="4" StarUpRate="0.1">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0162</Image>
    <Mitac/>
    <Skill1>83</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>164</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="164" MaxStar="5" Name="雷精灵" Price="9090" Quality="4" Race="2" SP="2" Sort="467" Star="5" StarUpRate="0">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0162</Image>
    <Mitac/>
    <Skill1>83</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="165" MaxStar="5" Name="懒惰雪人" Price="165" Quality="1" Race="3" SP="8" Sort="138" Star="3" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0165</Image>
    <Mitac/>
    <Skill1>41</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>166</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="166" MaxStar="5" Name="懒惰雪人" Price="8010" Quality="4" Race="3" SP="8" Sort="468" Star="4" StarUpRate="0.1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0165</Image>
    <Mitac/>
    <Skill1>41</Skill1>
    <Skill2>6</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>167</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="167" MaxStar="5" Name="懒惰雪人" Price="9090" Quality="4" Race="3" SP="6" Sort="469" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0165</Image>
    <Mitac/>
    <Skill1>41</Skill1>
    <Skill2>6</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="10" Description="自然女神的分身，通常保持人类的样子，喜好和平，但如果有人妄图破坏森林，则会展现出令人畏惧的一面。" ID="168" MaxStar="5" Name="森林仙女" Price="7140" Quality="4" Race="4" SP="8" Sort="379" Star="3" StarUpRate="0.3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0168</Image>
    <Mitac/>
    <Skill1>168</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>169</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="10" Description="自然女神的分身，通常保持人类的样子，喜好和平，但如果有人妄图破坏森林，则会展现出令人畏惧的一面。" ID="169" MaxStar="5" Name="森林仙女" Price="8010" Quality="4" Race="4" SP="8" Sort="380" Star="4" StarUpRate="0.1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0168</Image>
    <Mitac/>
    <Skill1>168</Skill1>
    <Skill2>168</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>170</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="10" Description="自然女神的分身，通常保持人类的样子，喜好和平，但如果有人妄图破坏森林，则会展现出令人畏惧的一面。" ID="170" MaxStar="5" Name="森林仙女" Price="9090" Quality="4" Race="4" SP="6" Sort="381" Star="5" StarUpRate="0">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0168</Image>
    <Mitac/>
    <Skill1>168</Skill1>
    <Skill2>168</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="171" MaxStar="5" Name="忧伤雪人" Price="165" Quality="1" Race="2" SP="6" Sort="28" Star="3" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0171</Image>
    <Mitac/>
    <Skill1>122</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>172</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="172" MaxStar="5" Name="忧伤雪人" Price="245" Quality="1" Race="2" SP="4" Sort="29" Star="4" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0171</Image>
    <Mitac/>
    <Skill1>122</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>173</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="173" MaxStar="5" Name="忧伤雪人" Price="9090" Quality="4" Race="2" SP="4" Sort="281" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0171</Image>
    <Mitac/>
    <Skill1>123</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="英吉利海峡的母狮，抛弃贵族小姐的身份，带领着数百海盗纵横英吉利海峡。她头上戴的鲜艳头巾，令海峡的水手望之而逃。" ID="174" MaxStar="5" Name="贝利维夫人" Price="14640" Quality="5" Race="4" SP="8" Sort="914" Star="3" StarUpRate="0.2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0174</Image>
    <Mitac/>
    <Skill1>52</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>175</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="英吉利海峡的母狮，抛弃贵族小姐的身份，带领着数百海盗纵横英吉利海峡。她头上戴的鲜艳头巾，令海峡的水手望之而逃。" ID="175" MaxStar="5" Name="贝利维夫人" Price="16500" Quality="5" Race="4" SP="6" Sort="915" Star="4" StarUpRate="0.08">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0174</Image>
    <Mitac/>
    <Skill1>53</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>176</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="英吉利海峡的母狮，抛弃贵族小姐的身份，带领着数百海盗纵横英吉利海峡。她头上戴的鲜艳头巾，令海峡的水手望之而逃。" ID="176" MaxStar="5" Name="贝利维夫人" Price="18720" Quality="5" Race="4" SP="6" Sort="916" Star="5" StarUpRate="0">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0174</Image>
    <Mitac/>
    <Skill1>53</Skill1>
    <Skill2>55</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="9" Description="娜迦海妖的分支之一，不同于一般娜迦，飓风女妖身上没有鳞片，更接近于人类，善于控制气流。" ID="177" MaxStar="5" Name="飓风女妖" Price="165" Quality="1" Race="4" SP="6" Sort="149" Star="3" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0177</Image>
    <Mitac/>
    <Skill1>38</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>178</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="9" Description="娜迦海妖的分支之一，不同于一般娜迦，飓风女妖身上没有鳞片，更接近于人类，善于控制气流。" ID="178" MaxStar="5" Name="飓风女妖" Price="245" Quality="1" Race="4" SP="4" Sort="150" Star="4" StarUpRate="0.3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0177</Image>
    <Mitac/>
    <Skill1>38</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>179</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="9" Description="娜迦海妖的分支之一，不同于一般娜迦，飓风女妖身上没有鳞片，更接近于人类，善于控制气流。" ID="179" MaxStar="5" Name="飓风女妖" Price="345" Quality="1" Race="4" SP="4" Sort="151" Star="5" StarUpRate="0">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0177</Image>
    <Mitac/>
    <Skill1>38</Skill1>
    <Skill2>22</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="180" MaxStar="5" Name="骷髅战士" Price="7140" Quality="4" Race="4" SP="8" Sort="481" Star="3" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0180</Image>
    <Mitac/>
    <Skill1>161</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>181</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="181" MaxStar="5" Name="骷髅战士" Price="8010" Quality="4" Race="4" SP="6" Sort="482" Star="4" StarUpRate="0.1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0180</Image>
    <Mitac/>
    <Skill1>161</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>182</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="182" MaxStar="5" Name="骷髅战士" Price="18720" Quality="5" Race="4" SP="6" Sort="812" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0180</Image>
    <Mitac/>
    <Skill1>161</Skill1>
    <Skill2>29</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="183" MaxStar="5" Name="食尸鬼" Price="165" Quality="1" Race="4" SP="6" Sort="97" Star="3" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0183</Image>
    <Mitac/>
    <Skill1>73</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>184</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="184" MaxStar="5" Name="食尸鬼" Price="8010" Quality="4" Race="4" SP="6" Sort="352" Star="4" StarUpRate="0.1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0183</Image>
    <Mitac/>
    <Skill1>73</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>185</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="185" MaxStar="5" Name="食尸鬼" Price="9090" Quality="4" Race="4" SP="4" Sort="353" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0183</Image>
    <Mitac/>
    <Skill1>73</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="" ID="186" MaxStar="5" Name="骷髅射手" Price="7140" Quality="4" Race="4" SP="8" Sort="487" Star="3" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0186</Image>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>187</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="" ID="187" MaxStar="5" Name="骷髅射手" Price="8010" Quality="4" Race="4" SP="6" Sort="488" Star="4" StarUpRate="0.1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0186</Image>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>188</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="" ID="188" MaxStar="5" Name="骷髅射手" Price="18720" Quality="5" Race="4" SP="4" Sort="814" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0186</Image>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="" ID="189" MaxStar="5" Name="重弩手" Price="165" Quality="1" Race="1" SP="8" Sort="8" Star="3" StarUpRate="0.5">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0189</Image>
    <Mitac/>
    <Skill1>64</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>190</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="" ID="190" MaxStar="5" Name="重弩手" Price="245" Quality="1" Race="1" SP="6" Sort="9" Star="4" StarUpRate="0.3">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0189</Image>
    <Mitac/>
    <Skill1>64</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>191</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="" ID="191" MaxStar="5" Name="重弩手" Price="9090" Quality="4" Race="1" SP="4" Sort="247" Star="5" StarUpRate="0">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0189</Image>
    <Mitac/>
    <Skill1>64</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="11" Description="" ID="192" MaxStar="5" Name="窥视之眼" Price="7140" Quality="4" Race="4" SP="4" Sort="472" Star="3" StarUpRate="0.3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0192</Image>
    <Mitac/>
    <Skill1>146</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>193</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="11" Description="" ID="193" MaxStar="5" Name="窥视之眼" Price="8010" Quality="4" Race="4" SP="2" Sort="473" Star="4" StarUpRate="0.1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0192</Image>
    <Mitac/>
    <Skill1>146</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>194</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="11" Description="" ID="194" MaxStar="5" Name="窥视之眼" Price="9090" Quality="4" Race="4" SP="0" Sort="474" Star="5" StarUpRate="0">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0192</Image>
    <Mitac/>
    <Skill1>146</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="不死族，人类死后肉体腐烂，骨骼存留，被亡灵法师召唤，如果生前精于剑技，即成为骷髅剑士。" ID="195" MaxStar="5" Name="骷髅剑士" Price="165" Quality="1" Race="4" SP="8" Sort="143" Star="3" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0195</Image>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>196</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="不死族，人类死后肉体腐烂，骨骼存留，被亡灵法师召唤，如果生前精于剑技，即成为骷髅剑士。" ID="196" MaxStar="5" Name="骷髅剑士" Price="245" Quality="1" Race="4" SP="6" Sort="144" Star="4" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0195</Image>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>197</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="不死族，人类死后肉体腐烂，骨骼存留，被亡灵法师召唤，如果生前精于剑技，即成为骷髅剑士。" ID="197" MaxStar="5" Name="骷髅剑士" Price="345" Quality="1" Race="4" SP="4" Sort="145" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0195</Image>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="11" Description="" ID="198" MaxStar="5" Name="忍者猫" Price="7140" Quality="4" Race="4" SP="8" Sort="383" Star="3" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0198</Image>
    <Mitac/>
    <Skill1>149</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>199</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="11" Description="" ID="199" MaxStar="5" Name="忍者猫" Price="8010" Quality="4" Race="4" SP="8" Sort="384" Star="4" StarUpRate="0.1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0198</Image>
    <Mitac/>
    <Skill1>149</Skill1>
    <Skill2>24</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>200</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="11" Description="" ID="200" MaxStar="5" Name="忍者猫" Price="18720" Quality="5" Race="4" SP="6" Sort="737" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0198</Image>
    <Mitac/>
    <Skill1>149</Skill1>
    <Skill2>24</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="" ID="201" MaxStar="5" Name="石巨人" Price="7140" Quality="4" Race="2" SP="8" Sort="357" Star="3" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0201</Image>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>202</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="" ID="202" MaxStar="5" Name="石巨人" Price="8010" Quality="4" Race="2" SP="8" Sort="358" Star="4" StarUpRate="0.1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0201</Image>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>146</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>203</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="" ID="203" MaxStar="5" Name="石巨人" Price="18720" Quality="5" Race="2" SP="6" Sort="703" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0201</Image>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>146</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="" ID="204" MaxStar="5" Name="白猎鹰" Price="7140" Quality="4" Race="1" SP="8" Sort="594" Star="3" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0204</Image>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>205</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="" ID="205" MaxStar="5" Name="白猎鹰" Price="8010" Quality="4" Race="1" SP="6" Sort="595" Star="4" StarUpRate="0.1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0204</Image>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>206</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="" ID="206" MaxStar="5" Name="白猎鹰" Price="18720" Quality="5" Race="1" SP="6" Sort="919" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0204</Image>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2>29</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="身体充斥着火焰能量的猴子，来自于熔岩洞窟，但是似乎这种猴子不懂得如何控制强大的力量，经常伤及无辜。" ID="207" MaxStar="5" Name="爆炎猴" Price="165" Quality="1" Race="3" SP="8" Sort="238" Star="3" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0207</Image>
    <Mitac/>
    <Skill1>2</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>208</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="身体充斥着火焰能量的猴子，来自于熔岩洞窟，但是似乎这种猴子不懂得如何控制强大的力量，经常伤及无辜。" ID="208" MaxStar="5" Name="爆炎猴" Price="245" Quality="1" Race="3" SP="6" Sort="239" Star="4" StarUpRate="0.3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0207</Image>
    <Mitac/>
    <Skill1>2</Skill1>
    <Skill2>174</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>209</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="身体充斥着火焰能量的猴子，来自于熔岩洞窟，但是似乎这种猴子不懂得如何控制强大的力量，经常伤及无辜。" ID="209" MaxStar="5" Name="爆炎猴" Price="345" Quality="1" Race="3" SP="6" Sort="240" Star="5" StarUpRate="0">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0207</Image>
    <Mitac/>
    <Skill1>2</Skill1>
    <Skill2>175</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="隐居在北极冰渊雪山之巅的冰龙的幼崽。这种上古时期就存在的传说生物拥有近乎永恒的生命和强大的魔法能力。幼年期的冰龙就已经拥有十分惊人的魔法能力。" ID="210" MaxStar="5" Name="幼年冰龙" Price="7140" Quality="4" Race="1" SP="6" Sort="274" Star="3" StarUpRate="0.3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0210</Image>
    <Mitac/>
    <Skill1>6</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>211</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="隐居在北极冰渊雪山之巅的冰龙的幼崽。这种上古时期就存在的传说生物拥有近乎永恒的生命和强大的魔法能力。幼年期的冰龙就已经拥有十分惊人的魔法能力。" ID="211" MaxStar="5" Name="幼年冰龙" Price="8010" Quality="4" Race="1" SP="6" Sort="275" Star="4" StarUpRate="0.1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0210</Image>
    <Mitac/>
    <Skill1>6</Skill1>
    <Skill2>86</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>212</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="隐居在北极冰渊雪山之巅的冰龙的幼崽。这种上古时期就存在的传说生物拥有近乎永恒的生命和强大的魔法能力。幼年期的冰龙就已经拥有十分惊人的魔法能力。" ID="212" MaxStar="5" Name="幼年冰龙" Price="9090" Quality="4" Race="1" SP="4" Sort="276" Star="5" StarUpRate="0">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0210</Image>
    <Mitac/>
    <Skill1>6</Skill1>
    <Skill2>86</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="11" Description="少年旺达为了复活心爱的少女，偷了族里的神器“往昔之剑”，带着因诅咒而被夺去灵魂的少女的遗体，前往边陲的“往昔大地”，与各种强大的石像战斗，最后作为复活少女的交换条件，将自己的灵魂寄居在石像之中。" ID="213" MaxStar="5" Name="石像旺达" Price="14640" Quality="5" Race="4" SP="10" Sort="699" Star="3" StarUpRate="0.2">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0213</Image>
    <Mitac/>
    <Skill1>10</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>214</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="11" Description="少年旺达为了复活心爱的少女，偷了族里的神器“往昔之剑”，带着因诅咒而被夺去灵魂的少女的遗体，前往边陲的“往昔大地”，与各种强大的石像战斗，最后作为复活少女的交换条件，将自己的灵魂寄居在石像之中。" ID="214" MaxStar="5" Name="石像旺达" Price="16500" Quality="5" Race="4" SP="10" Sort="700" Star="4" StarUpRate="0.08">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0213</Image>
    <Mitac/>
    <Skill1>10</Skill1>
    <Skill2>56</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>215</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="11" Description="少年旺达为了复活心爱的少女，偷了族里的神器“往昔之剑”，带着因诅咒而被夺去灵魂的少女的遗体，前往边陲的“往昔大地”，与各种强大的石像战斗，最后作为复活少女的交换条件，将自己的灵魂寄居在石像之中。" ID="215" MaxStar="5" Name="石像旺达" Price="18720" Quality="5" Race="4" SP="8" Sort="701" Star="5" StarUpRate="0">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0213</Image>
    <Mitac/>
    <Skill1>10</Skill1>
    <Skill2>56</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="北极冰原海岸冰原特有的巨熊，双目赤红，行走时不断有雪块从身上掉下，落之不竭。" ID="216" MaxStar="5" Name="冰原雪熊" Price="7140" Quality="4" Race="3" SP="8" Sort="587" Star="3" StarUpRate="0.3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0216</Image>
    <Mitac/>
    <Skill1>4</Skill1>
    <Skill2>127</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>217</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="北极冰原海岸冰原特有的巨熊，双目赤红，行走时不断有雪块从身上掉下，落之不竭。" ID="217" MaxStar="5" Name="冰原雪熊" Price="8010" Quality="4" Race="3" SP="6" Sort="588" Star="4" StarUpRate="0.1">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0216</Image>
    <Mitac/>
    <Skill1>4</Skill1>
    <Skill2>127</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>218</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="北极冰原海岸冰原特有的巨熊，双目赤红，行走时不断有雪块从身上掉下，落之不竭。" ID="218" MaxStar="5" Name="冰原雪熊" Price="9090" Quality="4" Race="3" SP="6" Sort="589" Star="5" StarUpRate="0">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0216</Image>
    <Mitac/>
    <Skill1>4</Skill1>
    <Skill2>128</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="219" MaxStar="5" Name="海盗船长" Price="7140" Quality="4" Race="3" SP="8" Sort="533" Star="3" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0219</Image>
    <Mitac/>
    <Skill1>74</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>220</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="220" MaxStar="5" Name="海盗船长" Price="16500" Quality="5" Race="3" SP="8" Sort="854" Star="4" StarUpRate="0.08">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0219</Image>
    <Mitac/>
    <Skill1>74</Skill1>
    <Skill2>95</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>221</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="221" MaxStar="5" Name="海盗船长" Price="18720" Quality="5" Race="3" SP="6" Sort="855" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0219</Image>
    <Mitac/>
    <Skill1>74</Skill1>
    <Skill2>95</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="222" MaxStar="5" Name="冰原雪狼" Price="7140" Quality="4" Race="2" SP="6" Sort="590" Star="3" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0222</Image>
    <Mitac/>
    <Skill1>156</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>223</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="223" MaxStar="5" Name="冰原雪狼" Price="8010" Quality="4" Race="2" SP="6" Sort="591" Star="4" StarUpRate="0.1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0222</Image>
    <Mitac/>
    <Skill1>156</Skill1>
    <Skill2>56</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>224</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="224" MaxStar="5" Name="冰原雪狼" Price="18720" Quality="5" Race="2" SP="4" Sort="903" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0222</Image>
    <Mitac/>
    <Skill1>156</Skill1>
    <Skill2>56</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="225" MaxStar="5" Name="娜迦战士" Price="165" Quality="1" Race="2" SP="8" Sort="119" Star="3" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0225</Image>
    <Mitac/>
    <Skill1>149</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>226</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="226" MaxStar="5" Name="娜迦战士" Price="8010" Quality="4" Race="2" SP="6" Sort="406" Star="4" StarUpRate="0.1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0225</Image>
    <Mitac/>
    <Skill1>149</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>227</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="227" MaxStar="5" Name="娜迦战士" Price="18720" Quality="5" Race="2" SP="6" Sort="759" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0225</Image>
    <Mitac/>
    <Skill1>149</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="雪山峡谷中的巨型人猿，传说是北欧原始泰坦的后裔。" ID="228" MaxStar="5" Name="雪人王" Price="7140" Quality="4" Race="2" SP="8" Sort="309" Star="3" StarUpRate="0.3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0228</Image>
    <Mitac/>
    <Skill1>127</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>229</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="雪山峡谷中的巨型人猿，传说是北欧原始泰坦的后裔。" ID="229" MaxStar="5" Name="雪人王" Price="8010" Quality="4" Race="2" SP="6" Sort="310" Star="4" StarUpRate="0.1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0228</Image>
    <Mitac/>
    <Skill1>127</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>230</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="雪山峡谷中的巨型人猿，传说是北欧原始泰坦的后裔。" ID="230" MaxStar="5" Name="雪人王" Price="9090" Quality="4" Race="2" SP="4" Sort="311" Star="5" StarUpRate="0">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0228</Image>
    <Mitac/>
    <Skill1>127</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="各国公主、奥丁之女以及那些发誓侍神的处女战士之中的被神选中者成为女武神瓦尔基里，她们赐予战死的勇士最后一吻而后把他们带往英灵殿。冰霜女武神为北极之地战死勇士的引领者。" ID="231" MaxStar="5" Name="冰霜女武神" Price="14640" Quality="5" Race="3" SP="8" Sort="906" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0231</Image>
    <Mitac/>
    <Skill1>6</Skill1>
    <Skill2>4</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>232</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="各国公主、奥丁之女以及那些发誓侍神的处女战士之中的被神选中者成为女武神瓦尔基里，她们赐予战死的勇士最后一吻而后把他们带往英灵殿。冰霜女武神为北极之地战死勇士的引领者。" ID="232" MaxStar="5" Name="冰霜女武神" Price="16500" Quality="5" Race="3" SP="6" Sort="907" Star="4" StarUpRate="0.08">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0231</Image>
    <Mitac/>
    <Skill1>6</Skill1>
    <Skill2>4</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>233</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="各国公主、奥丁之女以及那些发誓侍神的处女战士之中的被神选中者成为女武神瓦尔基里，她们赐予战死的勇士最后一吻而后把他们带往英灵殿。冰霜女武神为北极之地战死勇士的引领者。" ID="233" MaxStar="5" Name="冰霜女武神" Price="18720" Quality="5" Race="3" SP="6" Sort="908" Star="5" StarUpRate="0">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0231</Image>
    <Mitac/>
    <Skill1>7</Skill1>
    <Skill2>4</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="王国军队中的高阶战士，通常作为队长，剑术精湛，通常有自己的特技，以一敌十。" ID="234" MaxStar="5" Name="王国剑士" Price="7140" Quality="4" Race="1" SP="10" Sort="324" Star="3" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0234</Image>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>235</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="王国军队中的高阶战士，通常作为队长，剑术精湛，通常有自己的特技，以一敌十。" ID="235" MaxStar="5" Name="王国剑士" Price="8010" Quality="4" Race="1" SP="8" Sort="325" Star="4" StarUpRate="0.1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0234</Image>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>236</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="王国军队中的高阶战士，通常作为队长，剑术精湛，通常有自己的特技，以一敌十。" ID="236" MaxStar="5" Name="王国剑士" Price="9090" Quality="4" Race="1" SP="8" Sort="326" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0234</Image>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2>149</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="外形似皎洁的骏马，额前有一螺旋角，雷刃独角兽的角为蓝紫色，能发动雷系魔法，讨厌生人，但是喜爱处女。" ID="237" MaxStar="5" Name="雷刃独角兽" Price="14640" Quality="5" Race="1" SP="8" Sort="797" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0237</Image>
    <Mitac/>
    <Skill1>77</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>238</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="外形似皎洁的骏马，额前有一螺旋角，雷刃独角兽的角为蓝紫色，能发动雷系魔法，讨厌生人，但是喜爱处女。" ID="238" MaxStar="5" Name="雷刃独角兽" Price="16500" Quality="5" Race="1" SP="8" Sort="798" Star="4" StarUpRate="0.08">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0237</Image>
    <Mitac/>
    <Skill1>78</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>239</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="外形似皎洁的骏马，额前有一螺旋角，雷刃独角兽的角为蓝紫色，能发动雷系魔法，讨厌生人，但是喜爱处女。" ID="239" MaxStar="5" Name="雷刃独角兽" Price="18720" Quality="5" Race="1" SP="6" Sort="799" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0237</Image>
    <Mitac/>
    <Skill1>78</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="" ID="240" MaxStar="5" Name="石像鬼" Price="7140" Quality="4" Race="2" SP="8" Sort="355" Star="3" StarUpRate="0.3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0240</Image>
    <Mitac/>
    <Skill1>17</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>241</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="" ID="241" MaxStar="5" Name="石像鬼" Price="8010" Quality="4" Race="2" SP="6" Sort="356" Star="4" StarUpRate="0.1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0240</Image>
    <Mitac/>
    <Skill1>17</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>242</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="" ID="242" MaxStar="5" Name="石像鬼" Price="18720" Quality="5" Race="2" SP="6" Sort="702" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0240</Image>
    <Mitac/>
    <Skill1>17</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="5" Description="" ID="243" MaxStar="5" Name="骷髅法师" Price="165" Quality="1" Race="4" SP="4" Sort="146" Star="3" StarUpRate="0.5">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0243</Image>
    <Mitac/>
    <Skill1>24</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>244</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="5" Description="" ID="244" MaxStar="5" Name="骷髅法师" Price="8010" Quality="4" Race="4" SP="2" Sort="489" Star="4" StarUpRate="0.1">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0243</Image>
    <Mitac/>
    <Skill1>24</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>245</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="5" Description="" ID="245" MaxStar="5" Name="骷髅法师" Price="9090" Quality="4" Race="4" SP="2" Sort="490" Star="5" StarUpRate="0">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0243</Image>
    <Mitac/>
    <Skill1>24</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="11" Description="聚居于火山口的恶魔，手持钢叉，背升双翼，低级魔鬼。" ID="246" MaxStar="5" Name="赤炎小恶魔" Price="165" Quality="1" Race="4" SP="4" Sort="226" Star="3" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0246</Image>
    <Mitac/>
    <Skill1>175</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>247</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="11" Description="聚居于火山口的恶魔，手持钢叉，背升双翼，低级魔鬼。" ID="247" MaxStar="5" Name="赤炎小恶魔" Price="245" Quality="1" Race="4" SP="4" Sort="227" Star="4" StarUpRate="0.3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0246</Image>
    <Mitac/>
    <Skill1>175</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>248</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="11" Description="聚居于火山口的恶魔，手持钢叉，背升双翼，低级魔鬼。" ID="248" MaxStar="5" Name="赤炎小恶魔" Price="345" Quality="1" Race="4" SP="2" Sort="228" Star="5" StarUpRate="0">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0246</Image>
    <Mitac/>
    <Skill1>175</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="精灵之森中的恶魔，被它手上血色镰切开的伤口无法愈合。" ID="249" MaxStar="5" Name="嗜血螳螂" Price="7140" Quality="4" Race="3" SP="10" Sort="347" Star="3" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0249</Image>
    <Mitac/>
    <Skill1>64</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>250</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="精灵之森中的恶魔，被它手上血色镰切开的伤口无法愈合。" ID="250" MaxStar="5" Name="嗜血螳螂" Price="8010" Quality="4" Race="3" SP="8" Sort="348" Star="4" StarUpRate="0.1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0249</Image>
    <Mitac/>
    <Skill1>64</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>251</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="精灵之森中的恶魔，被它手上血色镰切开的伤口无法愈合。" ID="251" MaxStar="5" Name="嗜血螳螂" Price="9090" Quality="4" Race="3" SP="6" Sort="349" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0249</Image>
    <Mitac/>
    <Skill1>64</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="众神之王宙斯的化身之一。宙斯贪恋腓尼基公主欧罗巴的美色，变成白牛，欺骗欧罗巴骑上他之后，带之远走。" ID="252" MaxStar="5" Name="金牛座" Price="14640" Quality="5" Race="4" SP="8" Sort="829" Star="3" StarUpRate="0.2">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0252</Image>
    <Mitac/>
    <Skill1>128</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>253</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="众神之王宙斯的化身之一。宙斯贪恋腓尼基公主欧罗巴的美色，变成白牛，欺骗欧罗巴骑上他之后，带之远走。" ID="253" MaxStar="5" Name="金牛座" Price="16500" Quality="5" Race="4" SP="8" Sort="830" Star="4" StarUpRate="0.08">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0252</Image>
    <Mitac/>
    <Skill1>128</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>254</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="众神之王宙斯的化身之一。宙斯贪恋腓尼基公主欧罗巴的美色，变成白牛，欺骗欧罗巴骑上他之后，带之远走。" ID="254" MaxStar="5" Name="金牛座" Price="18720" Quality="5" Race="4" SP="6" Sort="831" Star="5" StarUpRate="0">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0252</Image>
    <Mitac/>
    <Skill1>128</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="" ID="255" MaxStar="5" Name="火枪手" Price="7140" Quality="4" Race="2" SP="6" Sort="513" Star="3" StarUpRate="0.3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0255</Image>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>256</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="" ID="256" MaxStar="5" Name="火枪手" Price="8010" Quality="4" Race="2" SP="6" Sort="514" Star="4" StarUpRate="0.1">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0255</Image>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>257</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="" ID="257" MaxStar="5" Name="火枪手" Price="18720" Quality="5" Race="2" SP="4" Sort="839" Star="5" StarUpRate="0">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0255</Image>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="中世纪炼金术盛行时诞生的怪物，有着铠甲外壳以及剧毒尾针。" ID="258" MaxStar="5" Name="生化毒蝎" Price="14640" Quality="5" Race="4" SP="12" Sort="716" Star="3" StarUpRate="0.2">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0258</Image>
    <Mitac/>
    <Skill1>161</Skill1>
    <Skill2>50</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>259</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="中世纪炼金术盛行时诞生的怪物，有着铠甲外壳以及剧毒尾针。" ID="259" MaxStar="5" Name="生化毒蝎" Price="16500" Quality="5" Race="4" SP="10" Sort="717" Star="4" StarUpRate="0.08">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0258</Image>
    <Mitac/>
    <Skill1>161</Skill1>
    <Skill2>50</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>260</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="中世纪炼金术盛行时诞生的怪物，有着铠甲外壳以及剧毒尾针。" ID="260" MaxStar="5" Name="生化毒蝎" Price="18720" Quality="5" Race="4" SP="8" Sort="718" Star="5" StarUpRate="0">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0258</Image>
    <Mitac/>
    <Skill1>161</Skill1>
    <Skill2>50</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="史莱姆的一种，全身有着近千度的高温，于其他史莱姆温顺的性格不同，火焰史莱姆非常的狂野。" ID="261" MaxStar="5" Name="火焰史莱姆" Price="7140" Quality="4" Race="3" SP="8" Sort="510" Star="3" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0261</Image>
    <Mitac/>
    <Skill1>47</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>262</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="史莱姆的一种，全身有着近千度的高温，于其他史莱姆温顺的性格不同，火焰史莱姆非常的狂野。" ID="262" MaxStar="5" Name="火焰史莱姆" Price="8010" Quality="4" Race="3" SP="8" Sort="511" Star="4" StarUpRate="0.1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0261</Image>
    <Mitac/>
    <Skill1>47</Skill1>
    <Skill2>18</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>263</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="史莱姆的一种，全身有着近千度的高温，于其他史莱姆温顺的性格不同，火焰史莱姆非常的狂野。" ID="263" MaxStar="5" Name="火焰史莱姆" Price="9090" Quality="4" Race="3" SP="6" Sort="512" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0261</Image>
    <Mitac/>
    <Skill1>47</Skill1>
    <Skill2>18</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="264" MaxStar="5" Name="恶魔史莱姆" Price="7140" Quality="4" Race="3" SP="10" Sort="550" Star="3" StarUpRate="0.3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0264</Image>
    <Mitac/>
    <Skill1>161</Skill1>
    <Skill2>95</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>265</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="265" MaxStar="5" Name="恶魔史莱姆" Price="16500" Quality="5" Race="3" SP="8" Sort="869" Star="4" StarUpRate="0.08">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0264</Image>
    <Mitac/>
    <Skill1>161</Skill1>
    <Skill2>95</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>266</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="266" MaxStar="5" Name="恶魔史莱姆" Price="18720" Quality="5" Race="3" SP="6" Sort="870" Star="5" StarUpRate="0">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0264</Image>
    <Mitac/>
    <Skill1>161</Skill1>
    <Skill2>95</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="" ID="267" MaxStar="5" Name="大魔导师" Price="165" Quality="1" Race="1" SP="6" Sort="212" Star="3" StarUpRate="0.5">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0267</Image>
    <Mitac/>
    <Skill1>83</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>268</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="" ID="268" MaxStar="5" Name="大魔导师" Price="8010" Quality="4" Race="1" SP="4" Sort="574" Star="4" StarUpRate="0.1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0267</Image>
    <Mitac/>
    <Skill1>83</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>269</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="" ID="269" MaxStar="5" Name="大魔导师" Price="18720" Quality="5" Race="1" SP="4" Sort="894" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0267</Image>
    <Mitac/>
    <Skill1>83</Skill1>
    <Skill2>17</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="沙盗，掠夺过往商人以探寻沙漠秘宝为生。" ID="270" MaxStar="5" Name="沙漠掠夺者" Price="165" Quality="1" Race="3" SP="4" Sort="106" Star="3" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0270</Image>
    <Mitac/>
    <Skill1>155</Skill1>
    <Skill2>147</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>271</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="沙盗，掠夺过往商人以探寻沙漠秘宝为生。" ID="271" MaxStar="5" Name="沙漠掠夺者" Price="245" Quality="1" Race="3" SP="2" Sort="107" Star="4" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0270</Image>
    <Mitac/>
    <Skill1>155</Skill1>
    <Skill2>147</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>272</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="沙盗，掠夺过往商人以探寻沙漠秘宝为生。" ID="272" MaxStar="5" Name="沙漠掠夺者" Price="345" Quality="1" Race="3" SP="2" Sort="108" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0270</Image>
    <Mitac/>
    <Skill1>156</Skill1>
    <Skill2>147</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="迷雾之森中的致命黄蜂，被蜇到即死，剧毒无比。" ID="273" MaxStar="5" Name="致命毒蜂" Price="165" Quality="1" Race="3" SP="6" Sort="12" Star="3" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0273</Image>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>274</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="迷雾之森中的致命黄蜂，被蜇到即死，剧毒无比。" ID="274" MaxStar="5" Name="致命毒蜂" Price="245" Quality="1" Race="3" SP="4" Sort="13" Star="4" StarUpRate="0.3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0273</Image>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>275</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="迷雾之森中的致命黄蜂，被蜇到即死，剧毒无比。" ID="275" MaxStar="5" Name="致命毒蜂" Price="345" Quality="1" Race="3" SP="2" Sort="14" Star="5" StarUpRate="0">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0273</Image>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="法师象牙塔派遣到军队中的魔法师，有着强大的魔法能力。" ID="276" MaxStar="5" Name="王国魔法师" Price="7140" Quality="4" Race="1" SP="8" Sort="319" Star="3" StarUpRate="0.3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0276</Image>
    <Mitac/>
    <Skill1>146</Skill1>
    <Skill2>76</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>277</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="法师象牙塔派遣到军队中的魔法师，有着强大的魔法能力。" ID="277" MaxStar="5" Name="王国魔法师" Price="8010" Quality="4" Race="1" SP="6" Sort="320" Star="4" StarUpRate="0.1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0276</Image>
    <Mitac/>
    <Skill1>146</Skill1>
    <Skill2>76</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>278</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="法师象牙塔派遣到军队中的魔法师，有着强大的魔法能力。" ID="278" MaxStar="5" Name="王国魔法师" Price="9090" Quality="4" Race="1" SP="4" Sort="321" Star="5" StarUpRate="0">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0276</Image>
    <Mitac/>
    <Skill1>146</Skill1>
    <Skill2>76</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="" ID="279" MaxStar="5" Name="吟诗游人" Price="165" Quality="1" Race="1" SP="6" Sort="46" Star="3" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0279</Image>
    <Mitac/>
    <Skill1>146</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>280</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="" ID="280" MaxStar="5" Name="吟诗游人" Price="8010" Quality="4" Race="1" SP="6" Sort="299" Star="4" StarUpRate="0.1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0279</Image>
    <Mitac/>
    <Skill1>146</Skill1>
    <Skill2>168</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>281</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="" ID="281" MaxStar="5" Name="吟诗游人" Price="9090" Quality="4" Race="1" SP="4" Sort="300" Star="5" StarUpRate="0">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0279</Image>
    <Mitac/>
    <Skill1>146</Skill1>
    <Skill2>168</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="282" MaxStar="5" Name="狂战士" Price="7140" Quality="4" Race="1" SP="8" Sort="475" Star="3" StarUpRate="0.3">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>10</HP>
    <Image>0282</Image>
    <Mitac/>
    <Skill1>127</Skill1>
    <Skill2>74</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>283</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="283" MaxStar="5" Name="狂战士" Price="16500" Quality="5" Race="1" SP="6" Sort="810" Star="4" StarUpRate="0.08">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>10</HP>
    <Image>0282</Image>
    <Mitac/>
    <Skill1>127</Skill1>
    <Skill2>74</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>284</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="284" MaxStar="5" Name="狂战士" Price="29760" Quality="6" Race="1" SP="6" Sort="1010" Star="5" StarUpRate="0">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>10</HP>
    <Image>0282</Image>
    <Mitac/>
    <Skill1>128</Skill1>
    <Skill2>74</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="希腊传说中的恶灵，长着一对恶魔翅膀，妖冶的美貌能魅惑男子，同时具有操纵恶灵的能力。" ID="285" MaxStar="5" Name="魅魔" Price="165" Quality="1" Race="2" SP="10" Sort="124" Star="3" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0285</Image>
    <Mitac/>
    <Skill1>123</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>286</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="希腊传说中的恶灵，长着一对恶魔翅膀，妖冶的美貌能魅惑男子，同时具有操纵恶灵的能力。" ID="286" MaxStar="5" Name="魅魔" Price="245" Quality="1" Race="2" SP="8" Sort="125" Star="4" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0285</Image>
    <Mitac/>
    <Skill1>123</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>287</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="希腊传说中的恶灵，长着一对恶魔翅膀，妖冶的美貌能魅惑男子，同时具有操纵恶灵的能力。" ID="287" MaxStar="5" Name="魅魔" Price="345" Quality="1" Race="2" SP="6" Sort="126" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0285</Image>
    <Mitac/>
    <Skill1>123</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="" ID="288" MaxStar="5" Name="史莱姆王" Price="7140" Quality="4" Race="2" SP="8" Sort="350" Star="3" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0288</Image>
    <Mitac/>
    <Skill1>123</Skill1>
    <Skill2>137</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>289</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="" ID="289" MaxStar="5" Name="史莱姆王" Price="8010" Quality="4" Race="2" SP="8" Sort="351" Star="4" StarUpRate="0.1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0288</Image>
    <Mitac/>
    <Skill1>123</Skill1>
    <Skill2>137</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>290</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="" ID="290" MaxStar="5" Name="史莱姆王" Price="18720" Quality="5" Race="2" SP="6" Sort="691" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0288</Image>
    <Mitac/>
    <Skill1>123</Skill1>
    <Skill2>137</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="5" Description="" ID="291" MaxStar="5" Name="无头骑士" Price="7140" Quality="4" Race="4" SP="8" Sort="312" Star="3" StarUpRate="0.3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0291</Image>
    <Mitac/>
    <Skill1>142</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>292</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="5" Description="" ID="292" MaxStar="5" Name="无头骑士" Price="16500" Quality="5" Race="4" SP="8" Sort="655" Star="4" StarUpRate="0.08">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0291</Image>
    <Mitac/>
    <Skill1>142</Skill1>
    <Skill2>17</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>293</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="5" Description="" ID="293" MaxStar="5" Name="无头骑士" Price="29760" Quality="6" Race="4" SP="6" Sort="973" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0291</Image>
    <Mitac/>
    <Skill1>142</Skill1>
    <Skill2>17</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="教会的神职者，有天分的女性信徒会被教会收留，培养成为女神官，精通白魔法。" ID="294" MaxStar="5" Name="女神官" Price="7140" Quality="4" Race="2" SP="6" Sort="397" Star="3" StarUpRate="0.3">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0294</Image>
    <Mitac/>
    <Skill1>168</Skill1>
    <Skill2>76</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>295</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="教会的神职者，有天分的女性信徒会被教会收留，培养成为女神官，精通白魔法。" ID="295" MaxStar="5" Name="女神官" Price="8010" Quality="4" Race="2" SP="4" Sort="398" Star="4" StarUpRate="0.1">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0294</Image>
    <Mitac/>
    <Skill1>168</Skill1>
    <Skill2>76</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>296</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="教会的神职者，有天分的女性信徒会被教会收留，培养成为女神官，精通白魔法。" ID="296" MaxStar="5" Name="女神官" Price="9090" Quality="4" Race="2" SP="4" Sort="399" Star="5" StarUpRate="0">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0294</Image>
    <Mitac/>
    <Skill1>168</Skill1>
    <Skill2>77</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="史莱姆的一种，通常是高阶女祭司的宠物，本身体质极其适合当白魔法的媒介，自身也会回复魔法。" ID="297" MaxStar="5" Name="彩虹史莱姆" Price="7140" Quality="4" Race="3" SP="8" Sort="581" Star="3" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0297_1</Image>
    <Mitac/>
    <Skill1>169</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>298</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="史莱姆的一种，通常是高阶女祭司的宠物，本身体质极其适合当白魔法的媒介，自身也会回复魔法。" ID="298" MaxStar="5" Name="彩虹史莱姆" Price="8010" Quality="4" Race="3" SP="6" Sort="582" Star="4" StarUpRate="0.1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0297_1</Image>
    <Mitac/>
    <Skill1>169</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>299</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="史莱姆的一种，通常是高阶女祭司的宠物，本身体质极其适合当白魔法的媒介，自身也会回复魔法。" ID="299" MaxStar="5" Name="彩虹史莱姆" Price="9090" Quality="4" Race="3" SP="6" Sort="583" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0297_1</Image>
    <Mitac/>
    <Skill1>169</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="300" MaxStar="5" Name="狮鹫" Price="6000" Quality="4" Race="3" SP="4" Sort="359" Star="1" StarUpRate="0.7">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0300</Image>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>301</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="301" MaxStar="5" Name="狮鹫" Price="13140" Quality="5" Race="3" SP="8" Sort="706" Star="2" StarUpRate="0.4">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0300</Image>
    <Mitac/>
    <Skill1>127</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>302</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="302" MaxStar="5" Name="狮鹫" Price="14640" Quality="5" Race="3" SP="6" Sort="707" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0300</Image>
    <Mitac/>
    <Skill1>127</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>303</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="303" MaxStar="5" Name="狮鹫" Price="26160" Quality="6" Race="3" SP="6" Sort="983" Star="4" StarUpRate="0.05">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0300</Image>
    <Mitac/>
    <Skill1>127</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>36000</StarRequiredGold>
    <StarRequiredHonor>3450</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="3" Description="" ID="304" MaxStar="5" Name="地龙骑士" Price="6000" Quality="4" Race="1" SP="8" Sort="560" Star="1" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0304</Image>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>305</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="" ID="305" MaxStar="5" Name="地龙骑士" Price="13140" Quality="5" Race="1" SP="8" Sort="888" Star="2" StarUpRate="0.4">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0304</Image>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>29</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>306</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="3" Description="" ID="306" MaxStar="5" Name="地龙骑士" Price="14640" Quality="5" Race="1" SP="6" Sort="889" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0304</Image>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>29</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="体内隐藏疯狂之血，平时是普通人类，到了月圆之夜变身为狼人，嗜血狂暴。" ID="307" MaxStar="5" Name="嗜血狼人" Price="14640" Quality="5" Race="4" SP="8" Sort="687" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0307</Image>
    <Mitac/>
    <Skill1>144</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>308</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="体内隐藏疯狂之血，平时是普通人类，到了月圆之夜变身为狼人，嗜血狂暴。" ID="308" MaxStar="5" Name="嗜血狼人" Price="16500" Quality="5" Race="4" SP="8" Sort="688" Star="4" StarUpRate="0.08">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0307</Image>
    <Mitac/>
    <Skill1>128</Skill1>
    <Skill2>144</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>309</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="体内隐藏疯狂之血，平时是普通人类，到了月圆之夜变身为狼人，嗜血狂暴。" ID="309" MaxStar="5" Name="嗜血狼人" Price="18720" Quality="5" Race="4" SP="8" Sort="689" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0307</Image>
    <Mitac/>
    <Skill1>128</Skill1>
    <Skill2>144</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="瓦拉基亚公国的伯爵，骁勇善战，屡次击败奥斯曼帝国的入侵，但为人残暴，死后吸收人间的阴暗面精神，将其转化成黑暗力量，并以此肆虐人间。" ID="310" MaxStar="5" Name="德拉古拉" Price="7140" Quality="4" Race="4" SP="10" Sort="568" Star="3" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0310</Image>
    <Mitac/>
    <Skill1>144</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>311</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="瓦拉基亚公国的伯爵，骁勇善战，屡次击败奥斯曼帝国的入侵，但为人残暴，死后吸收人间的阴暗面精神，将其转化成黑暗力量，并以此肆虐人间。" ID="311" MaxStar="5" Name="德拉古拉" Price="8010" Quality="4" Race="4" SP="8" Sort="569" Star="4" StarUpRate="0.1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0310</Image>
    <Mitac/>
    <Skill1>144</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>312</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="瓦拉基亚公国的伯爵，骁勇善战，屡次击败奥斯曼帝国的入侵，但为人残暴，死后吸收人间的阴暗面精神，将其转化成黑暗力量，并以此肆虐人间。" ID="312" MaxStar="5" Name="德拉古拉" Price="9090" Quality="4" Race="4" SP="6" Sort="570" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0310</Image>
    <Mitac/>
    <Skill1>144</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="" ID="313" MaxStar="5" Name="乌拉埃乌斯" Price="7140" Quality="4" Race="4" SP="8" Sort="313" Star="3" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0313</Image>
    <Mitac/>
    <Skill1>90</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>314</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="10" Description="" ID="314" MaxStar="5" Name="乌拉埃乌斯" Price="16500" Quality="5" Race="4" SP="8" Sort="656" Star="4" StarUpRate="0.08">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0313</Image>
    <Mitac/>
    <Skill1>90</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>315</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="" ID="315" MaxStar="5" Name="乌拉埃乌斯" Price="29760" Quality="6" Race="4" SP="6" Sort="974" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0313</Image>
    <Mitac/>
    <Skill1>90</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="316" MaxStar="5" Name="半人马酋长" Price="14640" Quality="5" Race="3" SP="10" Sort="917" Star="3" StarUpRate="0.2">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0316</Image>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>94</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>317</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="317" MaxStar="5" Name="半人马酋长" Price="16500" Quality="5" Race="3" SP="8" Sort="918" Star="4" StarUpRate="0.08">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0316</Image>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>94</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>318</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="318" MaxStar="5" Name="半人马酋长" Price="29760" Quality="6" Race="3" SP="8" Sort="1056" Star="5" StarUpRate="0">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0316</Image>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>19</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="" ID="319" MaxStar="5" Name="深海领主" Price="7140" Quality="4" Race="2" SP="8" Sort="365" Star="3" StarUpRate="0.3">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0319</Image>
    <Mitac/>
    <Skill1>136</Skill1>
    <Skill2>7</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>320</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="" ID="320" MaxStar="5" Name="深海领主" Price="16500" Quality="5" Race="2" SP="8" Sort="723" Star="4" StarUpRate="0.08">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0319</Image>
    <Mitac/>
    <Skill1>136</Skill1>
    <Skill2>7</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>321</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="" ID="321" MaxStar="5" Name="深海领主" Price="18720" Quality="5" Race="2" SP="6" Sort="724" Star="5" StarUpRate="0">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0319</Image>
    <Mitac/>
    <Skill1>136</Skill1>
    <Skill2>7</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="322" MaxStar="5" Name="娜迦女王" Price="7140" Quality="4" Race="3" SP="10" Sort="410" Star="3" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0322</Image>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2>4</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>323</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="323" MaxStar="5" Name="娜迦女王" Price="16500" Quality="5" Race="3" SP="8" Sort="762" Star="4" StarUpRate="0.08">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0322</Image>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2>4</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>324</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="324" MaxStar="5" Name="娜迦女王" Price="29760" Quality="6" Race="3" SP="6" Sort="999" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0322</Image>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2>4</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="熔岩火山地核能量产生的精神体附着于火山石块之上而诞生的强大生物。" ID="325" MaxStar="5" Name="熔岩巨兽" Price="14640" Quality="5" Race="3" SP="8" Sort="734" Star="3" StarUpRate="0.2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0325</Image>
    <Mitac/>
    <Skill1>2</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>326</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="熔岩火山地核能量产生的精神体附着于火山石块之上而诞生的强大生物。" ID="326" MaxStar="5" Name="熔岩巨兽" Price="16500" Quality="5" Race="3" SP="8" Sort="735" Star="4" StarUpRate="0.08">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0325</Image>
    <Mitac/>
    <Skill1>2</Skill1>
    <Skill2>2</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>327</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="熔岩火山地核能量产生的精神体附着于火山石块之上而诞生的强大生物。" ID="327" MaxStar="5" Name="熔岩巨兽" Price="18720" Quality="5" Race="3" SP="6" Sort="736" Star="5" StarUpRate="0">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0325</Image>
    <Mitac/>
    <Skill1>2</Skill1>
    <Skill2>2</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="328" MaxStar="5" Name="骷髅王" Price="7140" Quality="4" Race="4" SP="6" Sort="483" Star="3" StarUpRate="0.3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0328</Image>
    <Mitac/>
    <Skill1>44</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>329</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="329" MaxStar="5" Name="骷髅王" Price="8010" Quality="4" Race="4" SP="4" Sort="484" Star="4" StarUpRate="0.1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0328</Image>
    <Mitac/>
    <Skill1>44</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>330</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="330" MaxStar="5" Name="骷髅王" Price="18720" Quality="5" Race="4" SP="4" Sort="813" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0328</Image>
    <Mitac/>
    <Skill1>44</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="11" Description="" ID="331" MaxStar="5" Name="天马骑士" Price="7140" Quality="4" Race="4" SP="8" Sort="333" Star="3" StarUpRate="0.3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0331</Image>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>332</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="11" Description="" ID="332" MaxStar="5" Name="天马骑士" Price="16500" Quality="5" Race="4" SP="8" Sort="671" Star="4" StarUpRate="0.08">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0331</Image>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2>16</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>333</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="11" Description="" ID="333" MaxStar="5" Name="天马骑士" Price="18720" Quality="5" Race="4" SP="6" Sort="672" Star="5" StarUpRate="0">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0331</Image>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2>16</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="3" Description="" ID="334" MaxStar="5" Name="魔龙骑士" Price="7140" Quality="4" Race="4" SP="8" Sort="419" Star="3" StarUpRate="0.3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0334</Image>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>335</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="" ID="335" MaxStar="5" Name="魔龙骑士" Price="16500" Quality="5" Race="4" SP="8" Sort="766" Star="4" StarUpRate="0.08">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0334</Image>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>336</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="3" Description="" ID="336" MaxStar="5" Name="魔龙骑士" Price="18720" Quality="5" Race="4" SP="6" Sort="767" Star="5" StarUpRate="0">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0334</Image>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="" ID="337" MaxStar="5" Name="天翼者" Price="7140" Quality="4" Race="1" SP="4" Sort="332" Star="3" StarUpRate="0.3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0337</Image>
    <Mitac/>
    <Skill1>73</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>338</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="" ID="338" MaxStar="5" Name="天翼者" Price="16500" Quality="5" Race="1" SP="2" Sort="670" Star="4" StarUpRate="0.08">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0337</Image>
    <Mitac/>
    <Skill1>73</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>339</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="" ID="339" MaxStar="5" Name="天翼者" Price="29760" Quality="6" Race="1" SP="2" Sort="978" Star="5" StarUpRate="0">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0337</Image>
    <Mitac/>
    <Skill1>73</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="南方守护圣兽，吞噬恶龙而生，不死不灭的存在，能涅槃重生。" ID="340" MaxStar="5" Name="火凤凰" Price="12000" Quality="5" Race="3" SP="8" Sort="840" Star="1" StarUpRate="0.6">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0340</Image>
    <Mitac/>
    <Skill1>48</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>341</StarCard>
    <StarRequiredGold>11400</StarRequiredGold>
    <StarRequiredHonor>1100</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="南方守护圣兽，吞噬恶龙而生，不死不灭的存在，能涅槃重生。" ID="341" MaxStar="5" Name="火凤凰" Price="13140" Quality="5" Race="3" SP="6" Sort="841" Star="2" StarUpRate="0.4">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0340</Image>
    <Mitac/>
    <Skill1>48</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>342</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="南方守护圣兽，吞噬恶龙而生，不死不灭的存在，能涅槃重生。" ID="342" MaxStar="5" Name="火凤凰" Price="14640" Quality="5" Race="3" SP="4" Sort="842" Star="3" StarUpRate="0.2">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0340</Image>
    <Mitac/>
    <Skill1>48</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>952</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="" ID="343" MaxStar="5" Name="精灵龙" Price="6000" Quality="4" Race="2" SP="10" Sort="502" Star="1" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0343</Image>
    <Mitac/>
    <Skill1>25</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>344</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="" ID="344" MaxStar="5" Name="精灵龙" Price="13140" Quality="5" Race="2" SP="8" Sort="823" Star="2" StarUpRate="0.4">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0343</Image>
    <Mitac/>
    <Skill1>25</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>345</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="" ID="345" MaxStar="5" Name="精灵龙" Price="23160" Quality="6" Race="2" SP="8" Sort="1018" Star="3" StarUpRate="0.1">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0343</Image>
    <Mitac/>
    <Skill1>25</Skill1>
    <Skill2>146</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="" ID="346" MaxStar="5" Name="尸王" Price="6000" Quality="4" Race="4" SP="10" Sort="360" Star="1" StarUpRate="0.7">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0346</Image>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>347</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="" ID="347" MaxStar="5" Name="尸王" Price="13140" Quality="5" Race="4" SP="10" Sort="708" Star="2" StarUpRate="0.4">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0346</Image>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>348</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="" ID="348" MaxStar="5" Name="尸王" Price="14640" Quality="5" Race="4" SP="8" Sort="709" Star="3" StarUpRate="0.2">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0346</Image>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="" ID="349" MaxStar="5" Name="水蛇座" Price="75" Quality="1" Race="2" SP="2" Sort="80" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0349</Image>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>350</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="" ID="350" MaxStar="5" Name="水蛇座" Price="6450" Quality="4" Race="2" SP="10" Sort="344" Star="2" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0349</Image>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>351</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="" ID="351" MaxStar="5" Name="水蛇座" Price="14640" Quality="5" Race="2" SP="8" Sort="683" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0349</Image>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2>143</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>352</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="" ID="352" MaxStar="5" Name="水蛇座" Price="16500" Quality="5" Race="2" SP="6" Sort="684" Star="4" StarUpRate="0.08">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0349</Image>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2>143</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="353" MaxStar="5" Name="佣兵剑士" Price="75" Quality="1" Race="1" SP="4" Sort="41" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0353</Image>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>354</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="354" MaxStar="5" Name="佣兵剑士" Price="6450" Quality="4" Race="1" SP="2" Sort="290" Star="2" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0353</Image>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>355</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="355" MaxStar="5" Name="佣兵剑士" Price="7140" Quality="4" Race="1" SP="2" Sort="291" Star="3" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0353</Image>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2>92</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="356" MaxStar="5" Name="掘墓者" Price="6000" Quality="4" Race="4" SP="8" Sort="492" Star="1" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0356</Image>
    <Mitac/>
    <Skill1>44</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>357</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="357" MaxStar="5" Name="掘墓者" Price="13140" Quality="5" Race="4" SP="8" Sort="818" Star="2" StarUpRate="0.4">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0356</Image>
    <Mitac/>
    <Skill1>44</Skill1>
    <Skill2>50</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>358</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="358" MaxStar="5" Name="掘墓者" Price="14640" Quality="5" Race="4" SP="6" Sort="819" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0356</Image>
    <Mitac/>
    <Skill1>44</Skill1>
    <Skill2>50</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="5" Description="" ID="359" MaxStar="5" Name="屠夫" Price="6000" Quality="4" Race="4" SP="10" Sort="327" Star="1" StarUpRate="0.7">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0359</Image>
    <Mitac/>
    <Skill1>161</Skill1>
    <Skill2>74</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>360</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="5" Description="" ID="360" MaxStar="5" Name="屠夫" Price="6450" Quality="4" Race="4" SP="8" Sort="328" Star="2" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0359</Image>
    <Mitac/>
    <Skill1>161</Skill1>
    <Skill2>74</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>361</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="5" Description="" ID="361" MaxStar="5" Name="屠夫" Price="14640" Quality="5" Race="4" SP="8" Sort="669" Star="3" StarUpRate="0.2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0359</Image>
    <Mitac/>
    <Skill1>161</Skill1>
    <Skill2>75</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="" ID="362" MaxStar="5" Name="幽灵狼" Price="75" Quality="1" Race="4" SP="2" Sort="20" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0362</Image>
    <Mitac/>
    <Skill1>50</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>363</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="" ID="363" MaxStar="5" Name="幽灵狼" Price="6450" Quality="4" Race="4" SP="6" Sort="279" Star="2" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0362</Image>
    <Mitac/>
    <Skill1>50</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>364</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="" ID="364" MaxStar="5" Name="幽灵狼" Price="7140" Quality="4" Race="4" SP="4" Sort="280" Star="3" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0362</Image>
    <Mitac/>
    <Skill1>50</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>365</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="" ID="365" MaxStar="5" Name="幽灵狼" Price="16500" Quality="5" Race="4" SP="4" Sort="632" Star="4" StarUpRate="0.08">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0362</Image>
    <Mitac/>
    <Skill1>50</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="366" MaxStar="5" Name="魔法剑士" Price="6000" Quality="4" Race="1" SP="10" Sort="429" Star="1" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0366</Image>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2>2</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>367</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="367" MaxStar="5" Name="魔法剑士" Price="13140" Quality="5" Race="1" SP="10" Sort="770" Star="2" StarUpRate="0.4">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0366</Image>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2>2</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>368</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="368" MaxStar="5" Name="魔法剑士" Price="23160" Quality="6" Race="1" SP="8" Sort="1000" Star="3" StarUpRate="0.1">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0366</Image>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2>2</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="死亡使者是盗贼对本职业里最顶级强者的称呼，比起盗贼的偷窃暗杀，死亡使者有着超级强大的近身战斗能力，他们能迅速而且毫无声息的接近对方给予致命一击后进行正面击杀。" ID="369" MaxStar="5" Name="死亡使者" Price="13140" Quality="5" Race="1" SP="8" Sort="679" Star="2" StarUpRate="0.4">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0369</Image>
    <Mitac/>
    <Skill1>64</Skill1>
    <Skill2>18</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>370</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="死亡使者是盗贼对本职业里最顶级强者的称呼，比起盗贼的偷窃暗杀，死亡使者有着超级强大的近身战斗能力，他们能迅速而且毫无声息的接近对方给予致命一击后进行正面击杀。" ID="370" MaxStar="5" Name="死亡使者" Price="14640" Quality="5" Race="1" SP="8" Sort="680" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0369</Image>
    <Mitac/>
    <Skill1>64</Skill1>
    <Skill2>18</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>371</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="死亡使者是盗贼对本职业里最顶级强者的称呼，比起盗贼的偷窃暗杀，死亡使者有着超级强大的近身战斗能力，他们能迅速而且毫无声息的接近对方给予致命一击后进行正面击杀。" ID="371" MaxStar="5" Name="死亡使者" Price="16500" Quality="5" Race="1" SP="8" Sort="681" Star="4" StarUpRate="0.08">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0369</Image>
    <Mitac/>
    <Skill1>64</Skill1>
    <Skill2>19</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>955</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="异界而来的东方武士，拥有隐藏着鬼神力量的左手，带着面具，没人知道他的真面目。" ID="372" MaxStar="5" Name="鬼武者" Price="13140" Quality="5" Race="1" SP="8" Sort="859" Star="2" StarUpRate="0.4">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0372</Image>
    <Mitac/>
    <Skill1>156</Skill1>
    <Skill2>18</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>373</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="异界而来的东方武士，拥有隐藏着鬼神力量的左手，带着面具，没人知道他的真面目。" ID="373" MaxStar="5" Name="鬼武者" Price="14640" Quality="5" Race="1" SP="8" Sort="860" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0372</Image>
    <Mitac/>
    <Skill1>156</Skill1>
    <Skill2>19</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>374</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="异界而来的东方武士，拥有隐藏着鬼神力量的左手，带着面具，没人知道他的真面目。" ID="374" MaxStar="5" Name="鬼武者" Price="16500" Quality="5" Race="1" SP="6" Sort="861" Star="4" StarUpRate="0.08">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0372</Image>
    <Mitac/>
    <Skill1>156</Skill1>
    <Skill2>19</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>957</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="受迷雾之森感染，而变得嗜血的猫类，由于同时变得智商极高，所以善于偷袭，令人防不胜防。" ID="375" MaxStar="5" Name="猫妖" Price="165" Quality="1" Race="1" SP="6" Sort="129" Star="3" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0375</Image>
    <Mitac/>
    <Skill1>18</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>376</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="受迷雾之森感染，而变得嗜血的猫类，由于同时变得智商极高，所以善于偷袭，令人防不胜防。" ID="376" MaxStar="5" Name="猫妖" Price="245" Quality="1" Race="1" SP="4" Sort="130" Star="4" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0375</Image>
    <Mitac/>
    <Skill1>18</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>377</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="受迷雾之森感染，而变得嗜血的猫类，由于同时变得智商极高，所以善于偷袭，令人防不胜防。" ID="377" MaxStar="5" Name="猫妖" Price="345" Quality="1" Race="1" SP="2" Sort="131" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0375</Image>
    <Mitac/>
    <Skill1>19</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="378" MaxStar="5" Name="圣骑士" Price="75" Quality="1" Race="1" SP="8" Sort="102" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0378</Image>
    <Mitac/>
    <Skill1>58</Skill1>
    <Skill2>168</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>379</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="379" MaxStar="5" Name="圣骑士" Price="6450" Quality="4" Race="1" SP="6" Sort="363" Star="2" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0378</Image>
    <Mitac/>
    <Skill1>58</Skill1>
    <Skill2>168</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>380</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="380" MaxStar="5" Name="圣骑士" Price="14640" Quality="5" Race="1" SP="6" Sort="711" Star="3" StarUpRate="0.2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0378</Image>
    <Mitac/>
    <Skill1>58</Skill1>
    <Skill2>169</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="381" MaxStar="5" Name="牧师" Price="75" Quality="1" Race="1" SP="8" Sort="120" Star="1" StarUpRate="0.9">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0381</Image>
    <Mitac/>
    <Skill1>168</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>382</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="382" MaxStar="5" Name="牧师" Price="6450" Quality="4" Race="1" SP="6" Sort="413" Star="2" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0381</Image>
    <Mitac/>
    <Skill1>168</Skill1>
    <Skill2>168</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>383</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="383" MaxStar="5" Name="牧师" Price="14640" Quality="5" Race="1" SP="6" Sort="764" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0381</Image>
    <Mitac/>
    <Skill1>168</Skill1>
    <Skill2>169</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="384" MaxStar="5" Name="巨剑剑士" Price="6000" Quality="4" Race="1" SP="10" Sort="499" Star="1" StarUpRate="0.7">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0384</Image>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>385</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="385" MaxStar="5" Name="巨剑剑士" Price="13140" Quality="5" Race="1" SP="8" Sort="821" Star="2" StarUpRate="0.4">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0384</Image>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>386</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="386" MaxStar="5" Name="巨剑剑士" Price="23160" Quality="6" Race="1" SP="6" Sort="1014" Star="3" StarUpRate="0.1">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0384</Image>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="" ID="387" MaxStar="5" Name="冰霜巨龙" Price="12000" Quality="5" Race="1" SP="10" Sort="909" Star="1" StarUpRate="0.6">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0387</Image>
    <Mitac/>
    <Skill1>7</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>388</StarCard>
    <StarRequiredGold>11400</StarRequiredGold>
    <StarRequiredHonor>1100</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="" ID="388" MaxStar="5" Name="冰霜巨龙" Price="13140" Quality="5" Race="1" SP="8" Sort="910" Star="2" StarUpRate="0.4">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0387</Image>
    <Mitac/>
    <Skill1>7</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>389</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="" ID="389" MaxStar="5" Name="冰霜巨龙" Price="23160" Quality="6" Race="1" SP="8" Sort="1050" Star="3" StarUpRate="0.1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0387</Image>
    <Mitac/>
    <Skill1>7</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="" ID="390" MaxStar="5" Name="毒龙" Price="6000" Quality="4" Race="2" SP="8" Sort="557" Star="1" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0390</Image>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2>149</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>391</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="" ID="391" MaxStar="5" Name="毒龙" Price="13140" Quality="5" Race="2" SP="6" Sort="880" Star="2" StarUpRate="0.4">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0390</Image>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2>149</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>392</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="" ID="392" MaxStar="5" Name="毒龙" Price="14640" Quality="5" Race="2" SP="6" Sort="881" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0390</Image>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2>149</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="" ID="393" MaxStar="5" Name="剧毒恶龙" Price="6000" Quality="4" Race="2" SP="10" Sort="493" Star="1" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0393</Image>
    <Mitac/>
    <Skill1>69</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>394</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="" ID="394" MaxStar="5" Name="剧毒恶龙" Price="13140" Quality="5" Race="2" SP="10" Sort="820" Star="2" StarUpRate="0.4">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0393</Image>
    <Mitac/>
    <Skill1>69</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>395</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="" ID="395" MaxStar="5" Name="剧毒恶龙" Price="23160" Quality="6" Race="2" SP="8" Sort="1013" Star="3" StarUpRate="0.1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0393</Image>
    <Mitac/>
    <Skill1>69</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="396" MaxStar="5" Name="天马" Price="75" Quality="1" Race="3" SP="6" Sort="79" Star="1" StarUpRate="0.9">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0396</Image>
    <Mitac/>
    <Skill1>38</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>397</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="397" MaxStar="5" Name="天马" Price="6450" Quality="4" Race="3" SP="4" Sort="334" Star="2" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0396</Image>
    <Mitac/>
    <Skill1>38</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>398</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="398" MaxStar="5" Name="天马" Price="14640" Quality="5" Race="3" SP="4" Sort="673" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0396</Image>
    <Mitac/>
    <Skill1>38</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="" ID="399" MaxStar="5" Name="指挥官" Price="75" Quality="1" Race="1" SP="4" Sort="15" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0399</Image>
    <Mitac/>
    <Skill1>38</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>400</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="3" Description="" ID="400" MaxStar="5" Name="指挥官" Price="6450" Quality="4" Race="1" SP="2" Sort="249" Star="2" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0399</Image>
    <Mitac/>
    <Skill1>38</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>401</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="" ID="401" MaxStar="5" Name="指挥官" Price="7140" Quality="4" Race="1" SP="2" Sort="250" Star="3" StarUpRate="0.3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0399</Image>
    <Mitac/>
    <Skill1>38</Skill1>
    <Skill2>165</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="402" MaxStar="5" Name="德鲁伊" Price="75" Quality="1" Race="3" SP="8" Sort="201" Star="1" StarUpRate="0.9">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0402</Image>
    <Mitac/>
    <Skill1>153</Skill1>
    <Skill2>38</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>403</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="403" MaxStar="5" Name="德鲁伊" Price="6450" Quality="4" Race="3" SP="6" Sort="562" Star="2" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0402</Image>
    <Mitac/>
    <Skill1>153</Skill1>
    <Skill2>38</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>404</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="404" MaxStar="5" Name="德鲁伊" Price="7140" Quality="4" Race="3" SP="4" Sort="563" Star="3" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0402</Image>
    <Mitac/>
    <Skill1>153</Skill1>
    <Skill2>38</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>511</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="与恶魔力量签订契约的精灵，但是发现了恶魔最终的目标是精灵后，最后为了保卫族人而不惜撕毁契约开始猎杀恶魔。" ID="405" MaxStar="5" Name="恶魔猎手" Price="20370" Quality="6" Race="2" SP="10" Sort="1038" Star="2" StarUpRate="0.3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0405</Image>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>169</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>406</StarCard>
    <StarRequiredGold>27900</StarRequiredGold>
    <StarRequiredHonor>2650</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="与恶魔力量签订契约的精灵，但是发现了恶魔最终的目标是精灵后，最后为了保卫族人而不惜撕毁契约开始猎杀恶魔。" ID="406" MaxStar="5" Name="恶魔猎手" Price="23160" Quality="6" Race="2" SP="8" Sort="1039" Star="3" StarUpRate="0.1">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0405</Image>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>169</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>407</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="与恶魔力量签订契约的精灵，但是发现了恶魔最终的目标是精灵后，最后为了保卫族人而不惜撕毁契约开始猎杀恶魔。" ID="407" MaxStar="5" Name="恶魔猎手" Price="26160" Quality="6" Race="2" SP="6" Sort="1040" Star="4" StarUpRate="0.05">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0405</Image>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>169</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>963</StarCard>
    <StarRequiredGold>36000</StarRequiredGold>
    <StarRequiredHonor>3450</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="" ID="408" MaxStar="5" Name="丛林射手" Price="75" Quality="1" Race="2" SP="6" Sort="213" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0408</Image>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>149</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>409</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="" ID="409" MaxStar="5" Name="丛林射手" Price="6450" Quality="4" Race="2" SP="4" Sort="577" Star="2" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0408</Image>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>149</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>410</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="" ID="410" MaxStar="5" Name="丛林射手" Price="7140" Quality="4" Race="2" SP="4" Sort="578" Star="3" StarUpRate="0.3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0408</Image>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>150</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="" ID="411" MaxStar="5" Name="精灵箭神" Price="6000" Quality="4" Race="2" SP="8" Sort="503" Star="1" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0411</Image>
    <Mitac/>
    <Skill1>57</Skill1>
    <Skill2>51</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>412</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="" ID="412" MaxStar="5" Name="精灵箭神" Price="6450" Quality="4" Race="2" SP="6" Sort="504" Star="2" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0411</Image>
    <Mitac/>
    <Skill1>57</Skill1>
    <Skill2>51</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>413</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="" ID="413" MaxStar="5" Name="精灵箭神" Price="14640" Quality="5" Race="2" SP="6" Sort="824" Star="3" StarUpRate="0.2">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0411</Image>
    <Mitac/>
    <Skill1>57</Skill1>
    <Skill2>51</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="" ID="414" MaxStar="5" Name="精灵游侠" Price="6000" Quality="4" Race="2" SP="8" Sort="500" Star="1" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0414</Image>
    <Mitac/>
    <Skill1>155</Skill1>
    <Skill2>51</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>415</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="" ID="415" MaxStar="5" Name="精灵游侠" Price="6450" Quality="4" Race="2" SP="6" Sort="501" Star="2" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0414</Image>
    <Mitac/>
    <Skill1>155</Skill1>
    <Skill2>51</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>416</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="" ID="416" MaxStar="5" Name="精灵游侠" Price="14640" Quality="5" Race="2" SP="6" Sort="822" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0414</Image>
    <Mitac/>
    <Skill1>155</Skill1>
    <Skill2>51</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="" ID="417" MaxStar="5" Name="王国术士" Price="75" Quality="1" Race="1" SP="6" Sort="68" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0417</Image>
    <Mitac/>
    <Skill1>146</Skill1>
    <Skill2>166</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>418</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="" ID="418" MaxStar="5" Name="王国术士" Price="6450" Quality="4" Race="1" SP="4" Sort="315" Star="2" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0417</Image>
    <Mitac/>
    <Skill1>146</Skill1>
    <Skill2>166</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>419</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="" ID="419" MaxStar="5" Name="王国术士" Price="7140" Quality="4" Race="1" SP="4" Sort="316" Star="3" StarUpRate="0.3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0417</Image>
    <Mitac/>
    <Skill1>146</Skill1>
    <Skill2>167</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="420" MaxStar="5" Name="矮人战士" Price="75" Quality="1" Race="1" SP="4" Sort="246" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0420</Image>
    <Mitac/>
    <Skill1>4</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>421</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="421" MaxStar="5" Name="矮人战士" Price="6450" Quality="4" Race="1" SP="4" Sort="600" Star="2" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0420</Image>
    <Mitac/>
    <Skill1>4</Skill1>
    <Skill2>18</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>422</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="422" MaxStar="5" Name="矮人战士" Price="7140" Quality="4" Race="1" SP="2" Sort="601" Star="3" StarUpRate="0.3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0420</Image>
    <Mitac/>
    <Skill1>4</Skill1>
    <Skill2>18</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="423" MaxStar="5" Name="魔法骑士" Price="6000" Quality="4" Race="1" SP="6" Sort="427" Star="1" StarUpRate="0.7">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0423</Image>
    <Mitac/>
    <Skill1>17</Skill1>
    <Skill2>76</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>424</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="424" MaxStar="5" Name="魔法骑士" Price="6450" Quality="4" Race="1" SP="4" Sort="428" Star="2" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0423</Image>
    <Mitac/>
    <Skill1>17</Skill1>
    <Skill2>76</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>425</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="425" MaxStar="5" Name="魔法骑士" Price="14640" Quality="5" Race="1" SP="4" Sort="769" Star="3" StarUpRate="0.2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0423</Image>
    <Mitac/>
    <Skill1>17</Skill1>
    <Skill2>77</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="426" MaxStar="5" Name="军团长" Price="6000" Quality="4" Race="1" SP="12" Sort="491" Star="1" StarUpRate="0.7">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0426</Image>
    <Mitac/>
    <Skill1>141</Skill1>
    <Skill2>29</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>427</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="427" MaxStar="5" Name="军团长" Price="13140" Quality="5" Race="1" SP="10" Sort="817" Star="2" StarUpRate="0.4">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0426</Image>
    <Mitac/>
    <Skill1>141</Skill1>
    <Skill2>29</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>428</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="428" MaxStar="5" Name="军团长" Price="23160" Quality="6" Race="1" SP="8" Sort="1012" Star="3" StarUpRate="0.1">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0426</Image>
    <Mitac/>
    <Skill1>141</Skill1>
    <Skill2>29</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="" ID="429" MaxStar="5" Name="魔导士" Price="6000" Quality="4" Race="1" SP="8" Sort="430" Star="1" StarUpRate="0.7">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0429</Image>
    <Mitac/>
    <Skill1>77</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>430</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="" ID="430" MaxStar="5" Name="魔导士" Price="6450" Quality="4" Race="1" SP="6" Sort="431" Star="2" StarUpRate="0.5">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0429</Image>
    <Mitac/>
    <Skill1>77</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>431</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="" ID="431" MaxStar="5" Name="魔导士" Price="14640" Quality="5" Race="1" SP="6" Sort="771" Star="3" StarUpRate="0.2">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0429</Image>
    <Mitac/>
    <Skill1>77</Skill1>
    <Skill2>82</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="432" MaxStar="5" Name="佣兵首领" Price="6000" Quality="4" Race="1" SP="0" Sort="287" Star="1" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>1</HP>
    <Image>0432</Image>
    <Mitac/>
    <Skill1>19</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>433</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="433" MaxStar="5" Name="佣兵首领" Price="6450" Quality="4" Race="1" SP="8" Sort="288" Star="2" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0432</Image>
    <Mitac/>
    <Skill1>19</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>434</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="434" MaxStar="5" Name="佣兵首领" Price="14640" Quality="5" Race="1" SP="8" Sort="634" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0432</Image>
    <Mitac/>
    <Skill1>19</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="" ID="435" MaxStar="5" Name="冰龙" Price="6000" Quality="4" Race="1" SP="8" Sort="592" Star="1" StarUpRate="0.7">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0435</Image>
    <Mitac/>
    <Skill1>6</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>436</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="" ID="436" MaxStar="5" Name="冰龙" Price="6450" Quality="4" Race="1" SP="6" Sort="593" Star="2" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0435</Image>
    <Mitac/>
    <Skill1>6</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>437</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="" ID="437" MaxStar="5" Name="冰龙" Price="14640" Quality="5" Race="1" SP="6" Sort="911" Star="3" StarUpRate="0.2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0435</Image>
    <Mitac/>
    <Skill1>7</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="" ID="438" MaxStar="5" Name="骨龙" Price="6000" Quality="4" Race="4" SP="8" Sort="537" Star="1" StarUpRate="0.7">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0438</Image>
    <Mitac/>
    <Skill1>52</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>439</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="" ID="439" MaxStar="5" Name="骨龙" Price="6450" Quality="4" Race="4" SP="6" Sort="538" Star="2" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0438</Image>
    <Mitac/>
    <Skill1>52</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>440</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="" ID="440" MaxStar="5" Name="骨龙" Price="14640" Quality="5" Race="4" SP="6" Sort="863" Star="3" StarUpRate="0.2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0438</Image>
    <Mitac/>
    <Skill1>53</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="" ID="441" MaxStar="5" Name="死亡之翼" Price="6000" Quality="4" Race="4" SP="12" Sort="336" Star="1" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0441</Image>
    <Mitac/>
    <Skill1>53</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>442</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="" ID="442" MaxStar="5" Name="死亡之翼" Price="13140" Quality="5" Race="4" SP="10" Sort="676" Star="2" StarUpRate="0.4">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0441</Image>
    <Mitac/>
    <Skill1>53</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>443</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="" ID="443" MaxStar="5" Name="死亡之翼" Price="23160" Quality="6" Race="4" SP="10" Sort="979" Star="3" StarUpRate="0.1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0441</Image>
    <Mitac/>
    <Skill1>53</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="7" Description="位于北极冰渊附近的熔岩洞穴，火龙王巴哈姆特诞生之地。经常有大规模的岩浆喷发，传说下面还封印着炎之精灵。" ID="444" MaxStar="5" Name="龙炎洞窟" Price="7140" Quality="4" Race="1" SP="4" Sort="450" Star="3" StarUpRate="0.3">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0444</Image>
    <Mitac/>
    <Skill1>177</Skill1>
    <Skill2>74</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>445</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="7" Description="位于北极冰渊附近的熔岩洞穴，火龙王巴哈姆特诞生之地。经常有大规模的岩浆喷发，传说下面还封印着炎之精灵。" ID="445" MaxStar="5" Name="龙炎洞窟" Price="8010" Quality="4" Race="1" SP="2" Sort="451" Star="4" StarUpRate="0.1">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0444</Image>
    <Mitac/>
    <Skill1>177</Skill1>
    <Skill2>74</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>446</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="7" Description="位于北极冰渊附近的熔岩洞穴，火龙王巴哈姆特诞生之地。经常有大规模的岩浆喷发，传说下面还封印着炎之精灵。" ID="446" MaxStar="5" Name="龙炎洞窟" Price="9090" Quality="4" Race="1" SP="2" Sort="452" Star="5" StarUpRate="0">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0444</Image>
    <Mitac/>
    <Skill1>48</Skill1>
    <Skill2>74</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="7" Description="" ID="447" MaxStar="5" Name="掩体" Price="75" Quality="1" Race="4" SP="2" Sort="52" Star="1" StarUpRate="0.9">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>10</HP>
    <Image>0447</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>448</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="7" Description="" ID="448" MaxStar="5" Name="掩体" Price="6450" Quality="4" Race="4" SP="0" Sort="306" Star="2" StarUpRate="0.5">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>10</HP>
    <Image>0447</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>449</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="7" Description="" ID="449" MaxStar="5" Name="掩体" Price="14640" Quality="5" Race="4" SP="0" Sort="641" Star="3" StarUpRate="0.2">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>10</HP>
    <Image>0447</Image>
    <Mitac/>
    <Skill1>161</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="7" Description="" ID="450" MaxStar="5" Name="攻城锤" Price="6000" Quality="4" Race="3" SP="6" Sort="539" Star="1" StarUpRate="0.7">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0450</Image>
    <Mitac/>
    <Skill1>123</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>451</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="7" Description="" ID="451" MaxStar="5" Name="攻城锤" Price="6450" Quality="4" Race="3" SP="4" Sort="540" Star="2" StarUpRate="0.5">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0450</Image>
    <Mitac/>
    <Skill1>123</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>452</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="7" Description="" ID="452" MaxStar="5" Name="攻城锤" Price="14640" Quality="5" Race="3" SP="4" Sort="864" Star="3" StarUpRate="0.2">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0450</Image>
    <Mitac/>
    <Skill1>123</Skill1>
    <Skill2>5</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="7" Description="" ID="453" MaxStar="5" Name="尸堆" Price="6000" Quality="4" Race="3" SP="10" Sort="361" Star="1" StarUpRate="0.7">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0453</Image>
    <Mitac/>
    <Skill1>176</Skill1>
    <Skill2>5</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>454</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="7" Description="" ID="454" MaxStar="5" Name="尸堆" Price="6450" Quality="4" Race="3" SP="8" Sort="362" Star="2" StarUpRate="0.5">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0453</Image>
    <Mitac/>
    <Skill1>176</Skill1>
    <Skill2>5</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>455</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="7" Description="" ID="455" MaxStar="5" Name="尸堆" Price="14640" Quality="5" Race="3" SP="6" Sort="710" Star="3" StarUpRate="0.2">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0453</Image>
    <Mitac/>
    <Skill1>176</Skill1>
    <Skill2>5</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="7" Description="" ID="456" MaxStar="5" Name="墓碑" Price="6000" Quality="4" Race="4" SP="8" Sort="411" Star="1" StarUpRate="0.7">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0456</Image>
    <Mitac/>
    <Skill1>162</Skill1>
    <Skill2>63</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>457</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="7" Description="" ID="457" MaxStar="5" Name="墓碑" Price="6450" Quality="4" Race="4" SP="6" Sort="412" Star="2" StarUpRate="0.5">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0456</Image>
    <Mitac/>
    <Skill1>162</Skill1>
    <Skill2>63</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>458</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="7" Description="" ID="458" MaxStar="5" Name="墓碑" Price="14640" Quality="5" Race="4" SP="6" Sort="763" Star="3" StarUpRate="0.2">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0456</Image>
    <Mitac/>
    <Skill1>162</Skill1>
    <Skill2>63</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="7" Description="" ID="459" MaxStar="5" Name="沼泽" Price="6000" Quality="4" Race="4" SP="8" Sort="256" Star="1" StarUpRate="0.7">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0459</Image>
    <Mitac/>
    <Skill1>41</Skill1>
    <Skill2>123</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>460</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="7" Description="" ID="460" MaxStar="5" Name="沼泽" Price="6450" Quality="4" Race="4" SP="6" Sort="257" Star="2" StarUpRate="0.5">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0459</Image>
    <Mitac/>
    <Skill1>41</Skill1>
    <Skill2>123</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>461</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="7" Description="" ID="461" MaxStar="5" Name="沼泽" Price="14640" Quality="5" Race="4" SP="4" Sort="618" Star="3" StarUpRate="0.2">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0459</Image>
    <Mitac/>
    <Skill1>41</Skill1>
    <Skill2>123</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="7" Description="" ID="462" MaxStar="5" Name="猎户座星空" Price="6000" Quality="4" Race="2" SP="6" Sort="458" Star="1" StarUpRate="0.7">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0462</Image>
    <Mitac/>
    <Skill1>61</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>463</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="7" Description="" ID="463" MaxStar="5" Name="猎户座星空" Price="13140" Quality="5" Race="2" SP="6" Sort="791" Star="2" StarUpRate="0.4">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0462</Image>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2>61</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>464</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="7" Description="" ID="464" MaxStar="5" Name="猎户座星空" Price="14640" Quality="5" Race="2" SP="4" Sort="792" Star="3" StarUpRate="0.2">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0462</Image>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2>61</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="7" Description="世界之巅喜马拉雅山脉有着世界上极端寒冷的气候，它下面却深埋着温度极高的熔岩地核。在这样的神迹下蕴育而成的温泉。雪山女神帕尔瓦蒂曾将自己深浸其中，最终用令诸神震惊的苦行打动了湿婆的心。" ID="465" MaxStar="5" Name="喜马拉雅温泉" Price="14640" Quality="5" Race="4" SP="8" Sort="647" Star="3" StarUpRate="0.2">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0465</Image>
    <Mitac/>
    <Skill1>169</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>466</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="7" Description="世界之巅喜马拉雅山脉有着世界上极端寒冷的气候，它下面却深埋着温度极高的熔岩地核。在这样的神迹下蕴育而成的温泉。雪山女神帕尔瓦蒂曾将自己深浸其中，最终用令诸神震惊的苦行打动了湿婆的心。" ID="466" MaxStar="5" Name="喜马拉雅温泉" Price="16500" Quality="5" Race="4" SP="6" Sort="648" Star="4" StarUpRate="0.08">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0465</Image>
    <Mitac/>
    <Skill1>169</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>467</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="7" Description="世界之巅喜马拉雅山脉有着世界上极端寒冷的气候，它下面却深埋着温度极高的熔岩地核。在这样的神迹下蕴育而成的温泉。雪山女神帕尔瓦蒂曾将自己深浸其中，最终用令诸神震惊的苦行打动了湿婆的心。" ID="467" MaxStar="5" Name="喜马拉雅温泉" Price="18720" Quality="5" Race="4" SP="6" Sort="649" Star="5" StarUpRate="0">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0465</Image>
    <Mitac/>
    <Skill1>170</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="11" Description="" ID="468" MaxStar="5" Name="地精炸弹区" Price="75" Quality="1" Race="4" SP="4" Sort="197" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0468</Image>
    <Mitac/>
    <Skill1>175</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>469</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="11" Description="" ID="469" MaxStar="5" Name="地精炸弹区" Price="105" Quality="1" Race="4" SP="2" Sort="198" Star="2" StarUpRate="0.7">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0468</Image>
    <Mitac/>
    <Skill1>175</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>470</StarCard>
    <StarRequiredGold>600</StarRequiredGold>
    <StarRequiredHonor>175</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="11" Description="" ID="470" MaxStar="5" Name="地精炸弹区" Price="165" Quality="1" Race="4" SP="2" Sort="199" Star="3" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0468</Image>
    <Mitac/>
    <Skill1>176</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="7" Description="" ID="471" MaxStar="5" Name="战鼓" Price="6000" Quality="4" Race="1" SP="6" Sort="264" Star="1" StarUpRate="0.7">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0471</Image>
    <Mitac/>
    <Skill1>59</Skill1>
    <Skill2>90</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>472</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="7" Description="" ID="472" MaxStar="5" Name="战鼓" Price="6450" Quality="4" Race="1" SP="4" Sort="265" Star="2" StarUpRate="0.5">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0471</Image>
    <Mitac/>
    <Skill1>59</Skill1>
    <Skill2>90</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>473</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="7" Description="" ID="473" MaxStar="5" Name="战鼓" Price="14640" Quality="5" Race="1" SP="2" Sort="625" Star="3" StarUpRate="0.2">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0471</Image>
    <Mitac/>
    <Skill1>59</Skill1>
    <Skill2>90</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="北欧神器，世界诞生之初就存在的保卫人类世界的四神器之一。" ID="474" MaxStar="5" Name="龙之宝玉奥普" Price="14640" Quality="5" Race="5" SP="12" Sort="788" Star="3" StarUpRate="0.2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0474</Image>
    <Mitac/>
    <Skill1>19</Skill1>
    <Skill2>17</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>475</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="北欧神器，世界诞生之初就存在的保卫人类世界的四神器之一。" ID="475" MaxStar="5" Name="龙之宝玉奥普" Price="16500" Quality="5" Race="5" SP="10" Sort="789" Star="4" StarUpRate="0.08">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0474</Image>
    <Mitac/>
    <Skill1>19</Skill1>
    <Skill2>17</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>476</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="北欧神器，世界诞生之初就存在的保卫人类世界的四神器之一。" ID="476" MaxStar="5" Name="龙之宝玉奥普" Price="18720" Quality="5" Race="5" SP="8" Sort="790" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0474</Image>
    <Mitac/>
    <Skill1>19</Skill1>
    <Skill2>17</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="克苏鲁神话中的神器，由第六代女王所拥有，传说这面镜子能够反映出人心灵的真实，也能够召唤魔物以及制造分身。" ID="477" MaxStar="5" Name="妮特莉丝之镜" Price="14640" Quality="5" Race="5" SP="6" Sort="755" Star="3" StarUpRate="0.2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0477</Image>
    <Mitac/>
    <Skill1>20</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>478</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="克苏鲁神话中的神器，由第六代女王所拥有，传说这面镜子能够反映出人心灵的真实，也能够召唤魔物以及制造分身。" ID="478" MaxStar="5" Name="妮特莉丝之镜" Price="16500" Quality="5" Race="5" SP="4" Sort="756" Star="4" StarUpRate="0.08">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0477</Image>
    <Mitac/>
    <Skill1>20</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>479</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="克苏鲁神话中的神器，由第六代女王所拥有，传说这面镜子能够反映出人心灵的真实，也能够召唤魔物以及制造分身。" ID="479" MaxStar="5" Name="妮特莉丝之镜" Price="18720" Quality="5" Race="5" SP="4" Sort="757" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0477</Image>
    <Mitac/>
    <Skill1>20</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="宙斯的武器，一端能喷出火，另一端能放出闪电。在宙斯想用的时候，天马派格萨斯就会将他送到，众神的意志的象征。" ID="480" MaxStar="5" Name="霹雳权杖" Price="7140" Quality="4" Race="5" SP="6" Sort="392" Star="3" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0480</Image>
    <Mitac/>
    <Skill1>83</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>481</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="宙斯的武器，一端能喷出火，另一端能放出闪电。在宙斯想用的时候，天马派格萨斯就会将他送到，众神的意志的象征。" ID="481" MaxStar="5" Name="霹雳权杖" Price="8010" Quality="4" Race="5" SP="4" Sort="393" Star="4" StarUpRate="0.1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0480</Image>
    <Mitac/>
    <Skill1>83</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>482</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="宙斯的武器，一端能喷出火，另一端能放出闪电。在宙斯想用的时候，天马派格萨斯就会将他送到，众神的意志的象征。" ID="482" MaxStar="5" Name="霹雳权杖" Price="9090" Quality="4" Race="5" SP="4" Sort="394" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0480</Image>
    <Mitac/>
    <Skill1>83</Skill1>
    <Skill2>77</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="天使的翅膀，凡人带上能自由翱翔。" ID="483" MaxStar="5" Name="翅膀" Price="165" Quality="1" Race="5" SP="4" Sort="221" Star="3" StarUpRate="0.5">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0483</Image>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>484</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="天使的翅膀，凡人带上能自由翱翔。" ID="484" MaxStar="5" Name="翅膀" Price="245" Quality="1" Race="5" SP="2" Sort="222" Star="4" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0483</Image>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>485</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="天使的翅膀，凡人带上能自由翱翔。" ID="485" MaxStar="5" Name="翅膀" Price="345" Quality="1" Race="5" SP="2" Sort="223" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0483</Image>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="486" MaxStar="5" Name="恶魔翅膀" Price="7140" Quality="4" Race="1" SP="8" Sort="551" Star="3" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0486</Image>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2>174</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>487</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="" ID="487" MaxStar="5" Name="恶魔翅膀" Price="16500" Quality="5" Race="1" SP="6" Sort="871" Star="4" StarUpRate="0.08">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0486</Image>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2>174</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>488</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="488" MaxStar="5" Name="恶魔翅膀" Price="29760" Quality="6" Race="1" SP="6" Sort="1042" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0486</Image>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2>175</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="诸神为止战而施放强大的神力，将战场上所有的物品装备都席卷粉碎。" ID="489" MaxStar="5" Name="粉碎狂潮" Price="165" Quality="1" Race="5" SP="8" Sort="189" Star="3" StarUpRate="0.5">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0489</Image>
    <Mitac/>
    <Skill1>60</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>490</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="13" Description="诸神为止战而施放强大的神力，将战场上所有的物品装备都席卷粉碎。" ID="490" MaxStar="5" Name="粉碎狂潮" Price="245" Quality="1" Race="5" SP="6" Sort="190" Star="4" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0489</Image>
    <Mitac/>
    <Skill1>60</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>491</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="诸神为止战而施放强大的神力，将战场上所有的物品装备都席卷粉碎。" ID="491" MaxStar="5" Name="粉碎狂潮" Price="345" Quality="1" Race="5" SP="6" Sort="191" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0489</Image>
    <Mitac/>
    <Skill1>60</Skill1>
    <Skill2>111</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="13" Description="欲毁肉身，先斩灵魂。高阶精神魔法的一种，用精神力直接劈开灵魂，使对象死亡。记载有这种魔法力量的卷轴极其昂贵。" ID="492" MaxStar="5" Name="裂魂术" Price="7140" Quality="4" Race="5" SP="6" Sort="455" Star="3" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0492</Image>
    <Mitac/>
    <Skill1>12</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>493</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="欲毁肉身，先斩灵魂。高阶精神魔法的一种，用精神力直接劈开灵魂，使对象死亡。记载有这种魔法力量的卷轴极其昂贵。" ID="493" MaxStar="5" Name="裂魂术" Price="8010" Quality="4" Race="5" SP="4" Sort="456" Star="4" StarUpRate="0.1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0492</Image>
    <Mitac/>
    <Skill1>12</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>494</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="13" Description="欲毁肉身，先斩灵魂。高阶精神魔法的一种，用精神力直接劈开灵魂，使对象死亡。记载有这种魔法力量的卷轴极其昂贵。" ID="494" MaxStar="5" Name="裂魂术" Price="9090" Quality="4" Race="5" SP="2" Sort="457" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0492</Image>
    <Mitac/>
    <Skill1>12</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="495" MaxStar="5" Name="维京之怒" Price="7140" Quality="4" Race="4" SP="10" Sort="314" Star="3" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0495</Image>
    <Mitac/>
    <Skill1>1</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>496</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="13" Description="" ID="496" MaxStar="5" Name="维京之怒" Price="16500" Quality="5" Race="4" SP="8" Sort="657" Star="4" StarUpRate="0.08">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0495</Image>
    <Mitac/>
    <Skill1>1</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>497</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="497" MaxStar="5" Name="维京之怒" Price="18720" Quality="5" Race="4" SP="6" Sort="658" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0495</Image>
    <Mitac/>
    <Skill1>1</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="13" Description="" ID="498" MaxStar="5" Name="天火灭世" Price="7140" Quality="4" Race="5" SP="10" Sort="335" Star="3" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0498</Image>
    <Mitac/>
    <Skill1>109</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>499</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="499" MaxStar="5" Name="天火灭世" Price="16500" Quality="5" Race="5" SP="8" Sort="674" Star="4" StarUpRate="0.08">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0498</Image>
    <Mitac/>
    <Skill1>109</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>500</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="13" Description="" ID="500" MaxStar="5" Name="天火灭世" Price="18720" Quality="5" Race="5" SP="6" Sort="675" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0498</Image>
    <Mitac/>
    <Skill1>109</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="501" MaxStar="5" Name="冥王意志" Price="7140" Quality="4" Race="3" SP="12" Sort="432" Star="3" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0501</Image>
    <Mitac/>
    <Skill1>101</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>502</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="13" Description="" ID="502" MaxStar="5" Name="冥王意志" Price="8010" Quality="4" Race="3" SP="10" Sort="433" Star="4" StarUpRate="0.1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0501</Image>
    <Mitac/>
    <Skill1>101</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>503</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="503" MaxStar="5" Name="冥王意志" Price="18720" Quality="5" Race="3" SP="8" Sort="772" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0501</Image>
    <Mitac/>
    <Skill1>101</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="" ID="504" MaxStar="5" Name="神圣驱魔师" Price="165" Quality="1" Race="1" SP="6" Sort="103" Star="3" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0504</Image>
    <Mitac/>
    <Skill1>11</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>505</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="" ID="505" MaxStar="5" Name="神圣驱魔师" Price="8010" Quality="4" Race="1" SP="4" Sort="364" Star="4" StarUpRate="0.1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0504</Image>
    <Mitac/>
    <Skill1>11</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>506</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="" ID="506" MaxStar="5" Name="神圣驱魔师" Price="18720" Quality="5" Race="1" SP="2" Sort="719" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0504</Image>
    <Mitac/>
    <Skill1>11</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="8" Description="" ID="507" MaxStar="5" Name="世界之蛇" Price="14640" Quality="5" Race="2" SP="18" Sort="690" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0507</Image>
    <Mitac>0</Mitac>
    <Skill1>15</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>508</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="8" Description="" ID="508" MaxStar="5" Name="世界之蛇" Price="26160" Quality="6" Race="2" SP="16" Sort="980" Star="4" StarUpRate="0.05">
    <AP>2</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0507</Image>
    <Mitac>0</Mitac>
    <Skill1>15</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>509</StarCard>
    <StarRequiredGold>36000</StarRequiredGold>
    <StarRequiredHonor>3450</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="8" Description="" ID="509" MaxStar="5" Name="世界之蛇" Price="29760" Quality="6" Race="2" SP="14" Sort="981" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0507</Image>
    <Mitac>0</Mitac>
    <Skill1>15</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="9" Description="" ID="510" MaxStar="5" Name="德鲁伊" Price="165" Quality="1" Race="4" SP="6" Sort="204" Star="3" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0402</Image>
    <Mitac/>
    <Skill1>22</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>511</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="9" Description="" ID="511" MaxStar="5" Name="德鲁伊" Price="8010" Quality="4" Race="4" SP="4" Sort="564" Star="4" StarUpRate="0.1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0402</Image>
    <Mitac/>
    <Skill1>22</Skill1>
    <Skill2>116</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>512</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="9" Description="" ID="512" MaxStar="5" Name="德鲁伊" Price="9090" Quality="4" Race="4" SP="4" Sort="565" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0402</Image>
    <Mitac/>
    <Skill1>22</Skill1>
    <Skill2>116</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="513" MaxStar="5" Name="女神的救赎" Price="165" Quality="1" Race="5" SP="8" Sort="117" Star="3" StarUpRate="0.5">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0513</Image>
    <Mitac/>
    <Skill1>23</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>514</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="514" MaxStar="5" Name="女神的救赎" Price="8010" Quality="4" Race="5" SP="6" Sort="400" Star="4" StarUpRate="0.1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0513</Image>
    <Mitac/>
    <Skill1>23</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>515</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="515" MaxStar="5" Name="女神的救赎" Price="18720" Quality="5" Race="5" SP="4" Sort="748" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0513</Image>
    <Mitac/>
    <Skill1>23</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="雷神托尔所拥有的装备，带上它就能拥有无与伦比的神力。" ID="516" MaxStar="5" Name="托尔的铁手套" Price="14640" Quality="5" Race="5" SP="8" Sort="666" Star="3" StarUpRate="0.2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0516</Image>
    <Mitac/>
    <Skill1>31</Skill1>
    <Skill2>91</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>517</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="雷神托尔所拥有的装备，带上它就能拥有无与伦比的神力。" ID="517" MaxStar="5" Name="托尔的铁手套" Price="16500" Quality="5" Race="5" SP="6" Sort="667" Star="4" StarUpRate="0.08">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0516</Image>
    <Mitac/>
    <Skill1>31</Skill1>
    <Skill2>91</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>518</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="雷神托尔所拥有的装备，带上它就能拥有无与伦比的神力。" ID="518" MaxStar="5" Name="托尔的铁手套" Price="18720" Quality="5" Race="5" SP="6" Sort="668" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0516</Image>
    <Mitac/>
    <Skill1>32</Skill1>
    <Skill2>91</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="519" MaxStar="5" Name="狂战杀戮" Price="165" Quality="1" Race="1" SP="6" Sort="139" Star="3" StarUpRate="0.5">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0519</Image>
    <Mitac/>
    <Skill1>35</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>520</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="520" MaxStar="5" Name="狂战杀戮" Price="8010" Quality="4" Race="1" SP="4" Sort="476" Star="4" StarUpRate="0.1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0519</Image>
    <Mitac/>
    <Skill1>35</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>521</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="521" MaxStar="5" Name="狂战杀戮" Price="18720" Quality="5" Race="1" SP="2" Sort="811" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0519</Image>
    <Mitac/>
    <Skill1>35</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="巴比伦诸神中的风暴之神同时也是战神和军神的尼努尔塔所拥有的护腿,带有尼努尔塔的神力,穿戴者能掌握暴风将人间的一切席卷殆尽。" ID="522" MaxStar="5" Name="尼努尔塔之力" Price="23160" Quality="6" Race="5" SP="8" Sort="995" Star="3" StarUpRate="0.1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0522</Image>
    <Mitac/>
    <Skill1>36</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>523</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="巴比伦诸神中的风暴之神同时也是战神和军神的尼努尔塔所拥有的护腿,带有尼努尔塔的神力,穿戴者能掌握暴风将人间的一切席卷殆尽。" ID="523" MaxStar="5" Name="尼努尔塔之力" Price="26160" Quality="6" Race="5" SP="6" Sort="996" Star="4" StarUpRate="0.05">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0522</Image>
    <Mitac/>
    <Skill1>36</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>524</StarCard>
    <StarRequiredGold>36000</StarRequiredGold>
    <StarRequiredHonor>3450</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="巴比伦诸神中的风暴之神同时也是战神和军神的尼努尔塔所拥有的护腿,带有尼努尔塔的神力,穿戴者能掌握暴风将人间的一切席卷殆尽。" ID="524" MaxStar="5" Name="尼努尔塔之力" Price="29760" Quality="6" Race="5" SP="4" Sort="997" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0522</Image>
    <Mitac/>
    <Skill1>36</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="1" Description="复仇女神，帮助英雄伊阿宋取得金羊毛后与之结婚，但因为丈夫后来的移情别恋而杀死了自己的两个儿子以及伊阿宋的新欢后逃走。" ID="525" MaxStar="5" Name="美狄亚" Price="7140" Quality="4" Race="2" SP="10" Sort="441" Star="3" StarUpRate="0.3">
    <AP>0</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0525_1</Image>
    <Mitac>2</Mitac>
    <Skill1>37</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>526</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="复仇女神，帮助英雄伊阿宋取得金羊毛后与之结婚，但因为丈夫后来的移情别恋而杀死了自己的两个儿子以及伊阿宋的新欢后逃走。" ID="526" MaxStar="5" Name="美狄亚" Price="8010" Quality="4" Race="2" SP="8" Sort="442" Star="4" StarUpRate="0.1">
    <AP>0</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0525_1</Image>
    <Mitac>2</Mitac>
    <Skill1>37</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>527</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="复仇女神，帮助英雄伊阿宋取得金羊毛后与之结婚，但因为丈夫后来的移情别恋而杀死了自己的两个儿子以及伊阿宋的新欢后逃走。" ID="527" MaxStar="5" Name="美狄亚" Price="9090" Quality="4" Race="2" SP="6" Sort="443" Star="5" StarUpRate="0">
    <AP>0</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0525_1</Image>
    <Mitac>2</Mitac>
    <Skill1>37</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="528" MaxStar="5" Name="死亡颂歌" Price="7140" Quality="4" Race="5" SP="10" Sort="337" Star="3" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0528</Image>
    <Mitac/>
    <Skill1>46</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>529</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="529" MaxStar="5" Name="死亡颂歌" Price="8010" Quality="4" Race="5" SP="8" Sort="338" Star="4" StarUpRate="0.1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0528</Image>
    <Mitac/>
    <Skill1>46</Skill1>
    <Skill2>108</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>530</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="530" MaxStar="5" Name="死亡颂歌" Price="18720" Quality="5" Race="5" SP="8" Sort="677" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0528</Image>
    <Mitac/>
    <Skill1>46</Skill1>
    <Skill2>108</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="奥林匹斯山众神的人间代理人，政教一体的希腊帝国真正的君主，也称为教宗" ID="531" MaxStar="5" Name="希腊教皇" Price="14640" Quality="5" Race="2" SP="8" Sort="652" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0531</Image>
    <Mitac/>
    <Skill1>62</Skill1>
    <Skill2>95</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>532</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="奥林匹斯山众神的人间代理人，政教一体的希腊帝国真正的君主，也称为教宗" ID="532" MaxStar="5" Name="希腊教皇" Price="16500" Quality="5" Race="2" SP="6" Sort="653" Star="4" StarUpRate="0.08">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0531</Image>
    <Mitac/>
    <Skill1>62</Skill1>
    <Skill2>95</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>533</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="奥林匹斯山众神的人间代理人，政教一体的希腊帝国真正的君主，也称为教宗" ID="533" MaxStar="5" Name="希腊教皇" Price="18720" Quality="5" Race="2" SP="4" Sort="654" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0531</Image>
    <Mitac/>
    <Skill1>62</Skill1>
    <Skill2>95</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="5" Description="" ID="534" MaxStar="5" Name="暗黑骑士" Price="7140" Quality="4" Race="3" SP="12" Sort="596" Star="3" StarUpRate="0.3">
    <AP>2</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0534</Image>
    <Mitac>0</Mitac>
    <Skill1>71</Skill1>
    <Skill2>63</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>535</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="5" Description="" ID="535" MaxStar="5" Name="暗黑骑士" Price="8010" Quality="4" Race="3" SP="10" Sort="597" Star="4" StarUpRate="0.1">
    <AP>2</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0534</Image>
    <Mitac>0</Mitac>
    <Skill1>71</Skill1>
    <Skill2>63</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>536</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="5" Description="" ID="536" MaxStar="5" Name="暗黑骑士" Price="18720" Quality="5" Race="3" SP="8" Sort="924" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0534</Image>
    <Mitac>0</Mitac>
    <Skill1>71</Skill1>
    <Skill2>63</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="11" Description="" ID="537" MaxStar="5" Name="牛头人酋长" Price="7140" Quality="4" Race="4" SP="10" Sort="403" Star="3" StarUpRate="0.3">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0537</Image>
    <Mitac>2</Mitac>
    <Skill1>72</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>538</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="11" Description="" ID="538" MaxStar="5" Name="牛头人酋长" Price="8010" Quality="4" Race="4" SP="8" Sort="404" Star="4" StarUpRate="0.1">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0537</Image>
    <Mitac>2</Mitac>
    <Skill1>72</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>539</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="11" Description="" ID="539" MaxStar="5" Name="牛头人酋长" Price="18720" Quality="5" Race="4" SP="6" Sort="750" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0537</Image>
    <Mitac>2</Mitac>
    <Skill1>72</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="540" MaxStar="5" Name="魔龙提丰" Price="165" Quality="1" Race="4" SP="10" Sort="121" Star="3" StarUpRate="0.5">
    <AP>2</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0540</Image>
    <Mitac>0</Mitac>
    <Skill1>85</Skill1>
    <Skill2>89</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>541</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="541" MaxStar="5" Name="魔龙提丰" Price="8010" Quality="4" Race="4" SP="8" Sort="418" Star="4" StarUpRate="0.1">
    <AP>2</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0540</Image>
    <Mitac>0</Mitac>
    <Skill1>85</Skill1>
    <Skill2>89</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>542</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="542" MaxStar="5" Name="魔龙提丰" Price="18720" Quality="5" Race="4" SP="8" Sort="765" Star="5" StarUpRate="0">
    <AP>3</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0540</Image>
    <Mitac>1</Mitac>
    <Skill1>85</Skill1>
    <Skill2>89</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="8" Description="传说龙炎洞窟是由火龙王巴哈姆特的龙息而形成，曾有人目睹过火龙从中飞出，关于洞窟内部有龙存在的传说从来没有停止过流传，而如今幼年火龙的出现证明了这种传闻的真实。" ID="543" MaxStar="5" Name="幼年火龙" Price="7140" Quality="4" Race="4" SP="8" Sort="268" Star="3" StarUpRate="0.3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0543</Image>
    <Mitac/>
    <Skill1>86</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>544</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="传说龙炎洞窟是由火龙王巴哈姆特的龙息而形成，曾有人目睹过火龙从中飞出，关于洞窟内部有龙存在的传说从来没有停止过流传，而如今幼年火龙的出现证明了这种传闻的真实。" ID="544" MaxStar="5" Name="幼年火龙" Price="8010" Quality="4" Race="4" SP="6" Sort="269" Star="4" StarUpRate="0.1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0543</Image>
    <Mitac/>
    <Skill1>86</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>545</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="传说龙炎洞窟是由火龙王巴哈姆特的龙息而形成，曾有人目睹过火龙从中飞出，关于洞窟内部有龙存在的传说从来没有停止过流传，而如今幼年火龙的出现证明了这种传闻的真实。" ID="545" MaxStar="5" Name="幼年火龙" Price="9090" Quality="4" Race="4" SP="6" Sort="270" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0543</Image>
    <Mitac/>
    <Skill1>86</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="546" MaxStar="5" Name="步兵队长" Price="75" Quality="1" Race="1" SP="8" Sort="229" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0546</Image>
    <Mitac/>
    <Skill1>91</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>547</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="547" MaxStar="5" Name="步兵队长" Price="105" Quality="1" Race="1" SP="6" Sort="230" Star="2" StarUpRate="0.7">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0546</Image>
    <Mitac/>
    <Skill1>91</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>548</StarCard>
    <StarRequiredGold>600</StarRequiredGold>
    <StarRequiredHonor>175</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="548" MaxStar="5" Name="步兵队长" Price="7140" Quality="4" Race="1" SP="6" Sort="584" Star="3" StarUpRate="0.3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0546</Image>
    <Mitac/>
    <Skill1>91</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="" ID="549" MaxStar="5" Name="银之钥" Price="6000" Quality="4" Race="2" SP="8" Sort="298" Star="1" StarUpRate="0.7">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0549</Image>
    <Mitac/>
    <Skill1>119</Skill1>
    <Skill2>93</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>550</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="" ID="550" MaxStar="5" Name="银之钥" Price="13140" Quality="5" Race="2" SP="8" Sort="635" Star="2" StarUpRate="0.4">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0549</Image>
    <Mitac/>
    <Skill1>119</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>551</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="" ID="551" MaxStar="5" Name="银之钥" Price="23160" Quality="6" Race="2" SP="8" Sort="951" Star="3" StarUpRate="0.1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0549</Image>
    <Mitac/>
    <Skill1>119</Skill1>
    <Skill2>62</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="5" Description="" ID="552" MaxStar="5" Name="南瓜骑士" Price="75" Quality="1" Race="3" SP="4" Sort="118" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0552</Image>
    <Mitac/>
    <Skill1>96</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>553</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="5" Description="" ID="553" MaxStar="5" Name="南瓜骑士" Price="6450" Quality="4" Race="3" SP="2" Sort="405" Star="2" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0552</Image>
    <Mitac/>
    <Skill1>96</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>554</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="5" Description="" ID="554" MaxStar="5" Name="南瓜骑士" Price="14640" Quality="5" Race="3" SP="2" Sort="758" Star="3" StarUpRate="0.2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0552</Image>
    <Mitac/>
    <Skill1>96</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="1" Description="加百列本为炽天使，但因在惩罚人类的问题上与上帝意见相左，激怒上帝，而被贬入大天界。" ID="555" MaxStar="5" Name="加百列" Price="12000" Quality="5" Race="4" SP="12" Sort="832" Star="1" StarUpRate="0.6">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0555</Image>
    <Mitac>0</Mitac>
    <Skill1>21</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>556</StarCard>
    <StarRequiredGold>11400</StarRequiredGold>
    <StarRequiredHonor>1100</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="加百列本为炽天使，但因在惩罚人类的问题上与上帝意见相左，激怒上帝，而被贬入大天界。" ID="556" MaxStar="5" Name="加百列" Price="13140" Quality="5" Race="4" SP="10" Sort="833" Star="2" StarUpRate="0.4">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0555</Image>
    <Mitac>0</Mitac>
    <Skill1>21</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>557</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="加百列本为炽天使，但因在惩罚人类的问题上与上帝意见相左，激怒上帝，而被贬入大天界。" ID="557" MaxStar="5" Name="加百列" Price="14640" Quality="5" Race="4" SP="10" Sort="834" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0555</Image>
    <Mitac>0</Mitac>
    <Skill1>21</Skill1>
    <Skill2>52</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>986</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="558" MaxStar="5" Name="骑兵队长" Price="75" Quality="1" Race="1" SP="6" Sort="116" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0558</Image>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2>52</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>559</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="559" MaxStar="5" Name="骑兵队长" Price="6450" Quality="4" Race="1" SP="4" Sort="387" Star="2" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0558</Image>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2>52</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>560</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="560" MaxStar="5" Name="骑兵队长" Price="7140" Quality="4" Race="1" SP="4" Sort="388" Star="3" StarUpRate="0.3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0558</Image>
    <Mitac/>
    <Skill1>99</Skill1>
    <Skill2>138</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="561" MaxStar="5" Name="海伦" Price="6000" Quality="4" Race="1" SP="8" Sort="531" Star="1" StarUpRate="0.7">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0561</Image>
    <Mitac>0</Mitac>
    <Skill1>100</Skill1>
    <Skill2>168</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>562</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman>2</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="562" MaxStar="5" Name="海伦" Price="6450" Quality="4" Race="1" SP="8" Sort="532" Star="2" StarUpRate="0.5">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0561</Image>
    <Mitac>0</Mitac>
    <Skill1>100</Skill1>
    <Skill2>169</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>563</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman>2</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="563" MaxStar="5" Name="海伦" Price="14640" Quality="5" Race="1" SP="6" Sort="853" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0561</Image>
    <Mitac>0</Mitac>
    <Skill1>100</Skill1>
    <Skill2>169</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>2</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="564" MaxStar="5" Name="洛特" Price="6000" Quality="4" Race="3" SP="8" Sort="444" Star="1" StarUpRate="0.7">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0564</Image>
    <Mitac>0</Mitac>
    <Skill1>139</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>565</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman>2</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="565" MaxStar="5" Name="洛特" Price="13140" Quality="5" Race="3" SP="8" Sort="782" Star="2" StarUpRate="0.4">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0564</Image>
    <Mitac>0</Mitac>
    <Skill1>139</Skill1>
    <Skill2>102</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>566</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman>2</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="566" MaxStar="5" Name="洛特" Price="23160" Quality="6" Race="3" SP="6" Sort="1003" Star="3" StarUpRate="0.1">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0564</Image>
    <Mitac>0</Mitac>
    <Skill1>139</Skill1>
    <Skill2>102</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman>2</Talisman>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="567" MaxStar="5" Name="浮空术" Price="6000" Quality="4" Race="5" SP="8" Sort="546" Star="1" StarUpRate="0.7">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0567</Image>
    <Mitac/>
    <Skill1>103</Skill1>
    <Skill2>105</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>568</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="568" MaxStar="5" Name="浮空术" Price="6450" Quality="4" Race="5" SP="6" Sort="547" Star="2" StarUpRate="0.5">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0567</Image>
    <Mitac/>
    <Skill1>103</Skill1>
    <Skill2>105</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>569</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="569" MaxStar="5" Name="浮空术" Price="14640" Quality="5" Race="5" SP="4" Sort="865" Star="3" StarUpRate="0.2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0567</Image>
    <Mitac/>
    <Skill1>103</Skill1>
    <Skill2>105</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="570" MaxStar="5" Name="魔法闪光弹" Price="6000" Quality="4" Race="5" SP="6" Sort="425" Star="1" StarUpRate="0.7">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0570</Image>
    <Mitac/>
    <Skill1>104</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>571</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="571" MaxStar="5" Name="魔法闪光弹" Price="6450" Quality="4" Race="5" SP="4" Sort="426" Star="2" StarUpRate="0.5">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0570</Image>
    <Mitac/>
    <Skill1>104</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>572</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="572" MaxStar="5" Name="魔法闪光弹" Price="14640" Quality="5" Race="5" SP="4" Sort="768" Star="3" StarUpRate="0.2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0570</Image>
    <Mitac/>
    <Skill1>104</Skill1>
    <Skill2>114</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="战神玛尔斯的怒吼，能让战士无畏恐惧，力量倍增。" ID="573" MaxStar="5" Name="战神呐喊" Price="7140" Quality="4" Race="5" SP="10" Sort="261" Star="3" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0573</Image>
    <Mitac/>
    <Skill1>111</Skill1>
    <Skill2>105</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>574</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="战神玛尔斯的怒吼，能让战士无畏恐惧，力量倍增。" ID="574" MaxStar="5" Name="战神呐喊" Price="8010" Quality="4" Race="5" SP="8" Sort="262" Star="4" StarUpRate="0.1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0573</Image>
    <Mitac/>
    <Skill1>111</Skill1>
    <Skill2>105</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>575</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="战神玛尔斯的怒吼，能让战士无畏恐惧，力量倍增。" ID="575" MaxStar="5" Name="战神呐喊" Price="9090" Quality="4" Race="5" SP="6" Sort="263" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0573</Image>
    <Mitac/>
    <Skill1>111</Skill1>
    <Skill2>105</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="576" MaxStar="5" Name="群体迟钝术" Price="7140" Quality="4" Race="5" SP="8" Sort="385" Star="3" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0576</Image>
    <Mitac/>
    <Skill1>110</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>577</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="577" MaxStar="5" Name="群体迟钝术" Price="8010" Quality="4" Race="5" SP="6" Sort="386" Star="4" StarUpRate="0.1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0576</Image>
    <Mitac/>
    <Skill1>110</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>578</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="578" MaxStar="5" Name="群体迟钝术" Price="18720" Quality="5" Race="5" SP="6" Sort="738" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0576</Image>
    <Mitac/>
    <Skill1>110</Skill1>
    <Skill2>115</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="10" Description="曾是美丽的少女，因说自己比雅典娜还要美而激怒了雅典娜，把她变成了拥有石化之眼的蛇发女妖，任何人只要看她一眼，立刻变成石头。后被珀尔修斯斩下头颅。" ID="579" MaxStar="5" Name="美杜莎之颅" Price="14640" Quality="5" Race="4" SP="10" Sort="777" Star="3" StarUpRate="0.2">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0579</Image>
    <Mitac/>
    <Skill1>112</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>580</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="10" Description="曾是美丽的少女，因说自己比雅典娜还要美而激怒了雅典娜，把她变成了拥有石化之眼的蛇发女妖，任何人只要看她一眼，立刻变成石头。后被珀尔修斯斩下头颅。" ID="580" MaxStar="5" Name="美杜莎之颅" Price="16500" Quality="5" Race="4" SP="8" Sort="778" Star="4" StarUpRate="0.08">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0579</Image>
    <Mitac/>
    <Skill1>112</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>581</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="10" Description="曾是美丽的少女，因说自己比雅典娜还要美而激怒了雅典娜，把她变成了拥有石化之眼的蛇发女妖，任何人只要看她一眼，立刻变成石头。后被珀尔修斯斩下头颅。" ID="581" MaxStar="5" Name="美杜莎之颅" Price="18720" Quality="5" Race="4" SP="6" Sort="779" Star="5" StarUpRate="0">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0579</Image>
    <Mitac/>
    <Skill1>112</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="神话中沉睡的少女，只有当被命运选中的王子亲吻她的时候才会苏醒，睡美人的呢喃则会使人一同进入昏睡。" ID="582" MaxStar="5" Name="睡美人的呢喃" Price="7140" Quality="4" Race="2" SP="6" Sort="341" Star="3" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0582</Image>
    <Mitac/>
    <Skill1>113</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>583</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="神话中沉睡的少女，只有当被命运选中的王子亲吻她的时候才会苏醒，睡美人的呢喃则会使人一同进入昏睡。" ID="583" MaxStar="5" Name="睡美人的呢喃" Price="8010" Quality="4" Race="2" SP="4" Sort="342" Star="4" StarUpRate="0.1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0582</Image>
    <Mitac/>
    <Skill1>113</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>584</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="神话中沉睡的少女，只有当被命运选中的王子亲吻她的时候才会苏醒，睡美人的呢喃则会使人一同进入昏睡。" ID="584" MaxStar="5" Name="睡美人的呢喃" Price="9090" Quality="4" Race="2" SP="4" Sort="343" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0582</Image>
    <Mitac/>
    <Skill1>113</Skill1>
    <Skill2>105</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="585" MaxStar="5" Name="狂兽术" Price="165" Quality="1" Race="3" SP="4" Sort="140" Star="3" StarUpRate="0.5">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0585</Image>
    <Mitac/>
    <Skill1>116</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>586</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="586" MaxStar="5" Name="狂兽术" Price="8010" Quality="4" Race="3" SP="2" Sort="477" Star="4" StarUpRate="0.1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0585</Image>
    <Mitac/>
    <Skill1>116</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>587</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="" ID="587" MaxStar="5" Name="狂兽术" Price="9090" Quality="4" Race="3" SP="0" Sort="478" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0585</Image>
    <Mitac/>
    <Skill1>116</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="9" Description="" ID="588" MaxStar="5" Name="萨满" Price="165" Quality="1" Race="4" SP="6" Sort="115" Star="3" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0588</Image>
    <Mitac/>
    <Skill1>117</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>589</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="9" Description="" ID="589" MaxStar="5" Name="萨满" Price="8010" Quality="4" Race="4" SP="4" Sort="382" Star="4" StarUpRate="0.1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0588</Image>
    <Mitac/>
    <Skill1>117</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>590</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="9" Description="" ID="590" MaxStar="5" Name="萨满" Price="18720" Quality="5" Race="4" SP="4" Sort="729" Star="5" StarUpRate="0">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0588</Image>
    <Mitac/>
    <Skill1>117</Skill1>
    <Skill2>22</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="591" MaxStar="5" Name="大力神拉克" Price="7140" Quality="4" Race="4" SP="12" Sort="575" Star="3" StarUpRate="0.3">
    <AP>3</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0591</Image>
    <Mitac>1</Mitac>
    <Skill1>96</Skill1>
    <Skill2>118</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>592</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="592" MaxStar="5" Name="大力神拉克" Price="8010" Quality="4" Race="4" SP="10" Sort="576" Star="4" StarUpRate="0.1">
    <AP>3</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0591</Image>
    <Mitac>1</Mitac>
    <Skill1>96</Skill1>
    <Skill2>118</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>593</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="593" MaxStar="5" Name="大力神拉克" Price="18720" Quality="5" Race="4" SP="8" Sort="895" Star="5" StarUpRate="0">
    <AP>3</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0591</Image>
    <Mitac>1</Mitac>
    <Skill1>96</Skill1>
    <Skill2>118</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="7" Description="" ID="594" MaxStar="5" Name="地穴深渊" Price="7140" Quality="4" Race="3" SP="8" Sort="558" Star="3" StarUpRate="0.3">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0594</Image>
    <Mitac/>
    <Skill1>61</Skill1>
    <Skill2>10</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>595</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="7" Description="" ID="595" MaxStar="5" Name="地穴深渊" Price="8010" Quality="4" Race="3" SP="6" Sort="559" Star="4" StarUpRate="0.1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0594</Image>
    <Mitac/>
    <Skill1>61</Skill1>
    <Skill2>10</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>596</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="7" Description="" ID="596" MaxStar="5" Name="地穴深渊" Price="18720" Quality="5" Race="3" SP="6" Sort="887" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0594</Image>
    <Mitac/>
    <Skill1>61</Skill1>
    <Skill2>10</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="宣扬自己的教义，让对方的信徒加入我们。" ID="597" MaxStar="5" Name="信仰掠夺" Price="165" Quality="1" Race="5" SP="8" Sort="55" Star="3" StarUpRate="0.5">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0597</Image>
    <Mitac/>
    <Skill1>120</Skill1>
    <Skill2>125</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>598</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="宣扬自己的教义，让对方的信徒加入我们。" ID="598" MaxStar="5" Name="信仰掠夺" Price="245" Quality="1" Race="5" SP="6" Sort="56" Star="4" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0597</Image>
    <Mitac/>
    <Skill1>120</Skill1>
    <Skill2>125</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>599</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="宣扬自己的教义，让对方的信徒加入我们。" ID="599" MaxStar="5" Name="信仰掠夺" Price="345" Quality="1" Race="5" SP="4" Sort="57" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0597</Image>
    <Mitac/>
    <Skill1>120</Skill1>
    <Skill2>125</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="600" MaxStar="5" Name="杀人魔偶" Price="165" Quality="1" Race="4" SP="6" Sort="114" Star="3" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0600</Image>
    <Mitac/>
    <Skill1>126</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>601</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="601" MaxStar="5" Name="杀人魔偶" Price="8010" Quality="4" Race="4" SP="4" Sort="376" Star="4" StarUpRate="0.1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0600</Image>
    <Mitac/>
    <Skill1>126</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>602</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="602" MaxStar="5" Name="杀人魔偶" Price="18720" Quality="5" Race="4" SP="2" Sort="725" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0600</Image>
    <Mitac/>
    <Skill1>126</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="" ID="603" MaxStar="5" Name="法老" Price="7140" Quality="4" Race="4" SP="10" Sort="548" Star="3" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0603</Image>
    <Mitac/>
    <Skill1>129</Skill1>
    <Skill2>24</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>604</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="" ID="604" MaxStar="5" Name="法老" Price="8010" Quality="4" Race="4" SP="10" Sort="549" Star="4" StarUpRate="0.1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0603</Image>
    <Mitac/>
    <Skill1>129</Skill1>
    <Skill2>24</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>605</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="" ID="605" MaxStar="5" Name="法老" Price="18720" Quality="5" Race="4" SP="8" Sort="868" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0603</Image>
    <Mitac/>
    <Skill1>129</Skill1>
    <Skill2>24</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="弗丽嘉要求世界上的一切向她发誓，保证它们永不伤害她儿子巴德尔，只有弱小的檞寄生没有被要求。洛基唆使黑暗之神将檞寄生投向巴德尔，将他杀死。" ID="606" MaxStar="5" Name="槲寄生" Price="7140" Quality="4" Race="5" SP="2" Sort="522" Star="3" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0606</Image>
    <Mitac/>
    <Skill1>130</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>607</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="弗丽嘉要求世界上的一切向她发誓，保证它们永不伤害她儿子巴德尔，只有弱小的檞寄生没有被要求。洛基唆使黑暗之神将檞寄生投向巴德尔，将他杀死。" ID="607" MaxStar="5" Name="槲寄生" Price="8010" Quality="4" Race="5" SP="0" Sort="523" Star="4" StarUpRate="0.1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0606</Image>
    <Mitac/>
    <Skill1>130</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>608</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="弗丽嘉要求世界上的一切向她发誓，保证它们永不伤害她儿子巴德尔，只有弱小的檞寄生没有被要求。洛基唆使黑暗之神将檞寄生投向巴德尔，将他杀死。" ID="608" MaxStar="5" Name="槲寄生" Price="9090" Quality="4" Race="5" SP="0" Sort="524" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0606</Image>
    <Mitac/>
    <Skill1>131</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="神话的最终章。以光明之神巴尔德之死拉开帷幕，洛基带领泰坦与众神同归于尽，世界崩坏归于虚无而拉下帷幕的终极挽歌。浩劫毁灭了世界，却也毁灭了邪恶，随着世界树的重生，幸存者将用他们无畏的生命开拓出新的美好世界。" ID="609" MaxStar="5" Name="诸神的黄昏" Price="23160" Quality="6" Race="5" SP="20" Sort="936" Star="3" StarUpRate="0.1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0609</Image>
    <Mitac/>
    <Skill1>133</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>610</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="神话的最终章。以光明之神巴尔德之死拉开帷幕，洛基带领泰坦与众神同归于尽，世界崩坏归于虚无而拉下帷幕的终极挽歌。浩劫毁灭了世界，却也毁灭了邪恶，随着世界树的重生，幸存者将用他们无畏的生命开拓出新的美好世界。" ID="610" MaxStar="5" Name="诸神的黄昏" Price="26160" Quality="6" Race="5" SP="18" Sort="937" Star="4" StarUpRate="0.05">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0609</Image>
    <Mitac/>
    <Skill1>133</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>611</StarCard>
    <StarRequiredGold>36000</StarRequiredGold>
    <StarRequiredHonor>3450</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="神话的最终章。以光明之神巴尔德之死拉开帷幕，洛基带领泰坦与众神同归于尽，世界崩坏归于虚无而拉下帷幕的终极挽歌。浩劫毁灭了世界，却也毁灭了邪恶，随着世界树的重生，幸存者将用他们无畏的生命开拓出新的美好世界。" ID="611" MaxStar="5" Name="诸神的黄昏" Price="29760" Quality="6" Race="5" SP="16" Sort="938" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0609</Image>
    <Mitac/>
    <Skill1>133</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="11" Description="" ID="612" MaxStar="5" Name="猎户座" Price="165" Quality="1" Race="4" SP="6" Sort="132" Star="3" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0612</Image>
    <Mitac/>
    <Skill1>153</Skill1>
    <Skill2>134</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>613</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="11" Description="" ID="613" MaxStar="5" Name="猎户座" Price="8010" Quality="4" Race="4" SP="4" Sort="459" Star="4" StarUpRate="0.1">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0612</Image>
    <Mitac/>
    <Skill1>153</Skill1>
    <Skill2>134</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>614</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="11" Description="" ID="614" MaxStar="5" Name="猎户座" Price="9090" Quality="4" Race="4" SP="4" Sort="460" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0612</Image>
    <Mitac/>
    <Skill1>153</Skill1>
    <Skill2>134</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="615" MaxStar="5" Name="战争女武神" Price="7140" Quality="4" Race="3" SP="10" Sort="258" Star="3" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0615</Image>
    <Mitac/>
    <Skill1>135</Skill1>
    <Skill2>74</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>616</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="616" MaxStar="5" Name="战争女武神" Price="16500" Quality="5" Race="3" SP="8" Sort="619" Star="4" StarUpRate="0.08">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0615</Image>
    <Mitac/>
    <Skill1>135</Skill1>
    <Skill2>74</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>617</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="617" MaxStar="5" Name="战争女武神" Price="18720" Quality="5" Race="3" SP="6" Sort="620" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0615</Image>
    <Mitac/>
    <Skill1>135</Skill1>
    <Skill2>74</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="618" MaxStar="5" Name="罗兰" Price="7140" Quality="4" Race="1" SP="10" Sort="445" Star="3" StarUpRate="0.3">
    <AP>3</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0618</Image>
    <Mitac>2</Mitac>
    <Skill1>138</Skill1>
    <Skill2>98</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>619</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="619" MaxStar="5" Name="罗兰" Price="8010" Quality="4" Race="1" SP="8" Sort="446" Star="4" StarUpRate="0.1">
    <AP>3</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0618</Image>
    <Mitac>2</Mitac>
    <Skill1>138</Skill1>
    <Skill2>98</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>620</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="620" MaxStar="5" Name="罗兰" Price="18720" Quality="5" Race="1" SP="6" Sort="783" Star="5" StarUpRate="0">
    <AP>3</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0618</Image>
    <Mitac>2</Mitac>
    <Skill1>138</Skill1>
    <Skill2>98</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="2" Description="被亡灵法师或者黑暗法师召唤小孩腐烂尸体而复活的不死生物，没有强大的物理伤害能力，但擅长精神攻击。" ID="621" MaxStar="5" Name="恶灵娃娃" Price="165" Quality="1" Race="3" SP="4" Sort="194" Star="3" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0621_1</Image>
    <Mitac/>
    <Skill1>145</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>622</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="被亡灵法师或者黑暗法师召唤小孩腐烂尸体而复活的不死生物，没有强大的物理伤害能力，但擅长精神攻击。" ID="622" MaxStar="5" Name="恶灵娃娃" Price="245" Quality="1" Race="3" SP="2" Sort="195" Star="4" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0621_1</Image>
    <Mitac/>
    <Skill1>145</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>623</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="被亡灵法师或者黑暗法师召唤小孩腐烂尸体而复活的不死生物，没有强大的物理伤害能力，但擅长精神攻击。" ID="623" MaxStar="5" Name="恶灵娃娃" Price="345" Quality="1" Race="3" SP="2" Sort="196" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0621_1</Image>
    <Mitac/>
    <Skill1>145</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="624" MaxStar="5" Name="黑武士" Price="7140" Quality="4" Race="3" SP="10" Sort="525" Star="3" StarUpRate="0.3">
    <AP>3</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0624</Image>
    <Mitac>1</Mitac>
    <Skill1>147</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>625</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="625" MaxStar="5" Name="黑武士" Price="16500" Quality="5" Race="3" SP="8" Sort="845" Star="4" StarUpRate="0.08">
    <AP>3</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0624</Image>
    <Mitac>1</Mitac>
    <Skill1>147</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>626</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="626" MaxStar="5" Name="黑武士" Price="29760" Quality="6" Race="3" SP="8" Sort="1023" Star="5" StarUpRate="0">
    <AP>3</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0624</Image>
    <Mitac>1</Mitac>
    <Skill1>147</Skill1>
    <Skill2>52</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="北欧主神之一，狡猾聪明，在杀死光明之神巴德尔后，众神的忍耐到了极限视他为邪神而驱逐出金宫。随后洛基与希腊大地女神盖亚发动了诸神之战。" ID="627" MaxStar="5" Name="邪神洛基" Price="23160" Quality="6" Race="3" SP="10" Sort="970" Star="3" StarUpRate="0.1">
    <AP>3</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0627</Image>
    <Mitac>2</Mitac>
    <Skill1>152</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>628</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="北欧主神之一，狡猾聪明，在杀死光明之神巴德尔后，众神的忍耐到了极限视他为邪神而驱逐出金宫。随后洛基与希腊大地女神盖亚发动了诸神之战。" ID="628" MaxStar="5" Name="邪神洛基" Price="26160" Quality="6" Race="3" SP="8" Sort="971" Star="4" StarUpRate="0.05">
    <AP>3</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0627</Image>
    <Mitac>2</Mitac>
    <Skill1>152</Skill1>
    <Skill2>37</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>629</StarCard>
    <StarRequiredGold>36000</StarRequiredGold>
    <StarRequiredHonor>3450</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="北欧主神之一，狡猾聪明，在杀死光明之神巴德尔后，众神的忍耐到了极限视他为邪神而驱逐出金宫。随后洛基与希腊大地女神盖亚发动了诸神之战。" ID="629" MaxStar="5" Name="邪神洛基" Price="29760" Quality="6" Race="3" SP="6" Sort="972" Star="5" StarUpRate="0">
    <AP>3</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0627</Image>
    <Mitac>2</Mitac>
    <Skill1>152</Skill1>
    <Skill2>37</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="2" Description="雅典附近流域里的怪鱼，能将自己鼓胀成球状发射刺针。" ID="630" MaxStar="5" Name="河豚刺鱼" Price="165" Quality="1" Race="2" SP="6" Sort="174" Star="3" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0630</Image>
    <Mitac/>
    <Skill1>164</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>631</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="雅典附近流域里的怪鱼，能将自己鼓胀成球状发射刺针。" ID="631" MaxStar="5" Name="河豚刺鱼" Price="245" Quality="1" Race="2" SP="4" Sort="175" Star="4" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0630</Image>
    <Mitac/>
    <Skill1>164</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>632</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="雅典附近流域里的怪鱼，能将自己鼓胀成球状发射刺针。" ID="632" MaxStar="5" Name="河豚刺鱼" Price="345" Quality="1" Race="2" SP="2" Sort="176" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0630</Image>
    <Mitac/>
    <Skill1>164</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="633" MaxStar="5" Name="路西法" Price="7140" Quality="4" Race="4" SP="10" Sort="447" Star="3" StarUpRate="0.3">
    <AP>3</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0633</Image>
    <Mitac>2</Mitac>
    <Skill1>165</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>634</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="634" MaxStar="5" Name="路西法" Price="16500" Quality="5" Race="4" SP="8" Sort="784" Star="4" StarUpRate="0.08">
    <AP>3</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0633</Image>
    <Mitac>2</Mitac>
    <Skill1>165</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>635</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="635" MaxStar="5" Name="路西法" Price="18720" Quality="5" Race="4" SP="6" Sort="785" Star="5" StarUpRate="0">
    <AP>3</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0633</Image>
    <Mitac>2</Mitac>
    <Skill1>165</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="636" MaxStar="5" Name="地精" Price="165" Quality="1" Race="3" SP="6" Sort="200" Star="3" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0636</Image>
    <Mitac/>
    <Skill1>172</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>637</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="637" MaxStar="5" Name="地精" Price="8010" Quality="4" Race="3" SP="4" Sort="561" Star="4" StarUpRate="0.1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0636</Image>
    <Mitac/>
    <Skill1>172</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>638</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="638" MaxStar="5" Name="地精" Price="18720" Quality="5" Race="3" SP="2" Sort="890" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0636</Image>
    <Mitac/>
    <Skill1>172</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="1" Description="“十二圆桌骑士之一”，勇敢高洁，号称完美的骑士，在亚瑟王的带领下，正面对抗着泰坦。" ID="639" MaxStar="5" Name="盖文" Price="8010" Quality="4" Race="1" SP="8" Sort="544" Star="4" StarUpRate="0.1">
    <AP>3</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0001_1</Image>
    <Mitac>0</Mitac>
    <Skill1>58</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>640</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="“十二圆桌骑士之一”，勇敢高洁，号称完美的骑士，在亚瑟王的带领下，正面对抗着泰坦。" ID="640" MaxStar="5" Name="盖文" Price="9090" Quality="4" Race="1" SP="8" Sort="545" Star="5" StarUpRate="0">
    <AP>3</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0001_1</Image>
    <Mitac>0</Mitac>
    <Skill1>59</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="“圣女贞德”法兰西最著名的女英雄，在战火席卷法兰西时，这位谜一样的少女突然出现挺身带领着他的佣兵们，赢得了一连串的胜利。" ID="641" MaxStar="5" Name="贞德" Price="8010" Quality="4" Race="1" SP="8" Sort="254" Star="4" StarUpRate="0.1">
    <AP>1</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0002</Image>
    <Mitac>0</Mitac>
    <Skill1>77</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>642</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="“圣女贞德”法兰西最著名的女英雄，在战火席卷法兰西时，这位谜一样的少女突然出现挺身带领着他的佣兵们，赢得了一连串的胜利。" ID="642" MaxStar="5" Name="贞德" Price="9090" Quality="4" Race="1" SP="8" Sort="255" Star="5" StarUpRate="0">
    <AP>1</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0002</Image>
    <Mitac>0</Mitac>
    <Skill1>83</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="黎明女神和特洛伊王子之子，希腊最帅的美男子之一，坚强而勇敢，是在特洛伊之战中，唯一能与阿喀琉斯匹敌的人。" ID="643" MaxStar="5" Name="门农" Price="8010" Quality="4" Race="2" SP="6" Sort="437" Star="4" StarUpRate="0.1">
    <AP>3</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0003</Image>
    <Mitac>0</Mitac>
    <Skill1>18</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>644</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="黎明女神和特洛伊王子之子，希腊最帅的美男子之一，坚强而勇敢，是在特洛伊之战中，唯一能与阿喀琉斯匹敌的人。" ID="644" MaxStar="5" Name="门农" Price="9090" Quality="4" Race="2" SP="6" Sort="438" Star="5" StarUpRate="0">
    <AP>3</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0003</Image>
    <Mitac>0</Mitac>
    <Skill1>19</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="彩虹女神伊里丝，人与神之间的沟通者，活泼可爱，身姿绚烂。" ID="645" MaxStar="5" Name="伊里丝" Price="8010" Quality="4" Race="2" SP="6" Sort="304" Star="4" StarUpRate="0.1">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0004</Image>
    <Mitac>2</Mitac>
    <Skill1>169</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>646</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="彩虹女神伊里丝，人与神之间的沟通者，活泼可爱，身姿绚烂。" ID="646" MaxStar="5" Name="伊里丝" Price="9090" Quality="4" Race="2" SP="6" Sort="305" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0004</Image>
    <Mitac>2</Mitac>
    <Skill1>169</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="吸血伯爵德拉古拉之子，吸血鬼猎人，以猎杀他的父亲吸血伯爵为毕生目标。" ID="647" MaxStar="5" Name="阿鲁卡多" Price="8010" Quality="4" Race="3" SP="6" Sort="607" Star="4" StarUpRate="0.1">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0005_1</Image>
    <Mitac>1</Mitac>
    <Skill1>149</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>648</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="吸血伯爵德拉古拉之子，吸血鬼猎人，以猎杀他的父亲吸血伯爵为毕生目标。" ID="648" MaxStar="5" Name="阿鲁卡多" Price="9090" Quality="4" Race="3" SP="6" Sort="608" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0005_1</Image>
    <Mitac>1</Mitac>
    <Skill1>150</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="“瓦尔基里”里的特殊者，体内似乎藏着一股连主神奥丁都无法轻视的力量。" ID="649" MaxStar="5" Name="蕾娜丝" Price="8010" Quality="4" Race="3" SP="6" Sort="464" Star="4" StarUpRate="0.1">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0006</Image>
    <Mitac>1</Mitac>
    <Skill1>38</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>650</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="“瓦尔基里”里的特殊者，体内似乎藏着一股连主神奥丁都无法轻视的力量。" ID="650" MaxStar="5" Name="蕾娜丝" Price="9090" Quality="4" Race="3" SP="6" Sort="465" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0006</Image>
    <Mitac>1</Mitac>
    <Skill1>38</Skill1>
    <Skill2>154</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="651" MaxStar="5" Name="宙斯 " Price="16500" Quality="5" Race="2" SP="6" Sort="610" Star="4" StarUpRate="0.08">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0007</Image>
    <Mitac>2</Mitac>
    <Skill1>76</Skill1>
    <Skill2>76</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>652</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="652" MaxStar="5" Name="宙斯 " Price="29760" Quality="6" Race="2" SP="6" Sort="939" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0007</Image>
    <Mitac>2</Mitac>
    <Skill1>76</Skill1>
    <Skill2>83</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="奥林匹斯十二主神之一，宙斯之女，也被认为是宙斯意志的化身，同时也是女战神和智慧女神。" ID="653" MaxStar="5" Name="雅典娜" Price="20370" Quality="6" Race="2" SP="8" Sort="964" Star="2" StarUpRate="0.3">
    <AP>1</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0008</Image>
    <Mitac>0</Mitac>
    <Skill1>25</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>654</StarCard>
    <StarRequiredGold>27900</StarRequiredGold>
    <StarRequiredHonor>2650</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="奥林匹斯十二主神之一，宙斯之女，也被认为是宙斯意志的化身，同时也是女战神和智慧女神。" ID="654" MaxStar="5" Name="雅典娜" Price="23160" Quality="6" Race="2" SP="8" Sort="965" Star="3" StarUpRate="0.1">
    <AP>2</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0008</Image>
    <Mitac>0</Mitac>
    <Skill1>25</Skill1>
    <Skill2>83</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>1006</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="655" MaxStar="5" Name="赫拉" Price="16500" Quality="5" Race="2" SP="8" Sort="849" Star="4" StarUpRate="0.08">
    <AP>2</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0009</Image>
    <Mitac>0</Mitac>
    <Skill1>61</Skill1>
    <Skill2>128</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>656</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="656" MaxStar="5" Name="赫拉" Price="29760" Quality="6" Race="2" SP="6" Sort="1026" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0009</Image>
    <Mitac/>
    <Skill1>61</Skill1>
    <Skill2>128</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="657" MaxStar="5" Name="战神阿瑞斯" Price="16500" Quality="5" Race="2" SP="6" Sort="624" Star="4" StarUpRate="0.08">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0010</Image>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2>160</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>658</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="658" MaxStar="5" Name="战神阿瑞斯" Price="29760" Quality="6" Race="2" SP="8" Sort="941" Star="5" StarUpRate="0">
    <AP>3</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0010</Image>
    <Mitac>0</Mitac>
    <Skill1>28</Skill1>
    <Skill2>160</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman>2</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="659" MaxStar="5" Name="普罗米修斯" Price="16500" Quality="5" Race="2" SP="10" Sort="740" Star="4" StarUpRate="0.08">
    <AP>1</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0011</Image>
    <Mitac>1</Mitac>
    <Skill1>2</Skill1>
    <Skill2>168</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>660</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="660" MaxStar="5" Name="普罗米修斯" Price="29760" Quality="6" Race="2" SP="8" Sort="991" Star="5" StarUpRate="0">
    <AP>1</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0011</Image>
    <Mitac>1</Mitac>
    <Skill1>2</Skill1>
    <Skill2>168</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="海神波塞冬，奥林匹斯十二主神之一，众神之王宙斯的哥哥，地位仅次于宙斯，拥有强大无匹的神力，但智慧却显得不足，思考问题总是很单纯。" ID="661" MaxStar="5" Name="波塞冬" Price="16500" Quality="5" Race="2" SP="10" Sort="901" Star="4" StarUpRate="0.08">
    <AP>0</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0012</Image>
    <Mitac>1</Mitac>
    <Skill1>178</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>662</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="海神波塞冬，奥林匹斯十二主神之一，众神之王宙斯的哥哥，地位仅次于宙斯，拥有强大无匹的神力，但智慧却显得不足，思考问题总是很单纯。" ID="662" MaxStar="5" Name="波塞冬" Price="18720" Quality="5" Race="2" SP="8" Sort="902" Star="5" StarUpRate="0">
    <AP>0</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0012</Image>
    <Mitac>1</Mitac>
    <Skill1>178</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="663" MaxStar="5" Name="哈迪斯" Price="16500" Quality="5" Race="2" SP="6" Sort="857" Star="4" StarUpRate="0.08">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0013</Image>
    <Mitac>2</Mitac>
    <Skill1>44</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>664</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="664" MaxStar="5" Name="哈迪斯" Price="29760" Quality="6" Race="2" SP="6" Sort="1035" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0013</Image>
    <Mitac>2</Mitac>
    <Skill1>44</Skill1>
    <Skill2>71</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="665" MaxStar="5" Name="待定1" Price="16500" Quality="5" Race="2" SP="6" Sort="893" Star="4" StarUpRate="0.08">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0014</Image>
    <Mitac>1</Mitac>
    <Skill1>162</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>666</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="666" MaxStar="5" Name="待定1" Price="29760" Quality="6" Race="2" SP="8" Sort="1043" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0014</Image>
    <Mitac>1</Mitac>
    <Skill1>162</Skill1>
    <Skill2>168</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="古不列颠最具传奇的国王，圆桌骑士的领导者，因为拔起石中剑而成为天选王者。后因为王后桂妮薇儿与挚友蓝斯洛特决裂。" ID="667" MaxStar="5" Name="亚瑟王" Price="26160" Quality="6" Race="1" SP="8" Sort="956" Star="4" StarUpRate="0.05">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0015</Image>
    <Mitac>0</Mitac>
    <Skill1>29</Skill1>
    <Skill2>94</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>668</StarCard>
    <StarRequiredGold>36000</StarRequiredGold>
    <StarRequiredHonor>3450</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="古不列颠最具传奇的国王，圆桌骑士的领导者，因为拔起石中剑而成为天选王者。后因为王后桂妮薇儿与挚友蓝斯洛特决裂。" ID="668" MaxStar="5" Name="亚瑟王" Price="29760" Quality="6" Race="1" SP="6" Sort="957" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0015</Image>
    <Mitac>0</Mitac>
    <Skill1>29</Skill1>
    <Skill2>94</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="法兰克国王，神圣罗马帝国开国皇帝。铁蹄踏遍欧罗巴，在天使的指引下，带领人们抵抗泰坦的入侵。" ID="669" MaxStar="5" Name="查理曼大帝" Price="20370" Quality="6" Race="1" SP="8" Sort="1045" Star="2" StarUpRate="0.3">
    <AP>2</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>9</HP>
    <Image>0016_1</Image>
    <Mitac>0</Mitac>
    <Skill1>147</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>670</StarCard>
    <StarRequiredGold>27900</StarRequiredGold>
    <StarRequiredHonor>2650</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="法兰克国王，神圣罗马帝国开国皇帝。铁蹄踏遍欧罗巴，在天使的指引下，带领人们抵抗泰坦的入侵。" ID="670" MaxStar="5" Name="查理曼大帝" Price="23160" Quality="6" Race="1" SP="8" Sort="1046" Star="3" StarUpRate="0.1">
    <AP>2</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>9</HP>
    <Image>0016_1</Image>
    <Mitac>0</Mitac>
    <Skill1>147</Skill1>
    <Skill2>91</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>1008</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="671" MaxStar="5" Name="珀尔修斯" Price="6450" Quality="4" Race="1" SP="8" Sort="389" Star="2" StarUpRate="0.5">
    <AP>3</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0017</Image>
    <Mitac>2</Mitac>
    <Skill1>24</Skill1>
    <Skill2>52</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>17</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="672" MaxStar="5" Name="珀尔修斯" Price="14640" Quality="5" Race="1" SP="8" Sort="742" Star="3" StarUpRate="0.2">
    <AP>3</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0017</Image>
    <Mitac>2</Mitac>
    <Skill1>24</Skill1>
    <Skill2>53</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="673" MaxStar="5" Name="梅林" Price="13140" Quality="5" Race="1" SP="8" Sort="780" Star="2" StarUpRate="0.4">
    <AP>0</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0025</Image>
    <Mitac>2</Mitac>
    <Skill1>77</Skill1>
    <Skill2>82</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>25</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="674" MaxStar="5" Name="梅林" Price="23160" Quality="6" Race="1" SP="8" Sort="1002" Star="3" StarUpRate="0.1">
    <AP>0</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0025</Image>
    <Mitac>2</Mitac>
    <Skill1>77</Skill1>
    <Skill2>82</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="亚瑟王的十二圆桌骑士中的传奇。强大无匹而且富有正义感，是亚瑟王最忠诚的左右手，但是因为暗恋皇后格尼薇儿而导致了圆桌骑士的内战。" ID="675" MaxStar="5" Name="兰斯洛特" Price="14640" Quality="5" Race="1" SP="6" Sort="807" Star="3" StarUpRate="0.2">
    <AP>3</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0026_1</Image>
    <Mitac>1</Mitac>
    <Skill1>56</Skill1>
    <Skill2>98</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>676</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="亚瑟王的十二圆桌骑士中的传奇。强大无匹而且富有正义感，是亚瑟王最忠诚的左右手，但是因为暗恋皇后格尼薇儿而导致了圆桌骑士的内战。" ID="676" MaxStar="5" Name="兰斯洛特" Price="16500" Quality="5" Race="1" SP="6" Sort="808" Star="4" StarUpRate="0.08">
    <AP>3</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0026_1</Image>
    <Mitac>1</Mitac>
    <Skill1>56</Skill1>
    <Skill2>99</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>1010</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="677" MaxStar="5" Name="犹大" Price="6450" Quality="4" Race="1" SP="8" Sort="277" Star="2" StarUpRate="0.5">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0027</Image>
    <Mitac>0</Mitac>
    <Skill1>146</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>27</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="678" MaxStar="5" Name="犹大" Price="14640" Quality="5" Race="1" SP="8" Sort="631" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0027</Image>
    <Mitac>0</Mitac>
    <Skill1>146</Skill1>
    <Skill2>24</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="679" MaxStar="5" Name="帕尔斯" Price="13140" Quality="5" Race="1" SP="8" Sort="745" Star="2" StarUpRate="0.4">
    <AP>3</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0028</Image>
    <Mitac>0</Mitac>
    <Skill1>18</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>28</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="680" MaxStar="5" Name="帕尔斯" Price="14640" Quality="5" Race="1" SP="8" Sort="747" Star="3" StarUpRate="0.2">
    <AP>3</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0028</Image>
    <Mitac>0</Mitac>
    <Skill1>19</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="681" MaxStar="5" Name="赫克托尔" Price="13140" Quality="5" Race="1" SP="6" Sort="850" Star="2" StarUpRate="0.4">
    <AP>2</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0029</Image>
    <Mitac>0</Mitac>
    <Skill1>29</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>29</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="682" MaxStar="5" Name="赫克托尔" Price="14640" Quality="5" Race="1" SP="6" Sort="852" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0029</Image>
    <Mitac>0</Mitac>
    <Skill1>29</Skill1>
    <Skill2>58</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="683" MaxStar="5" Name="阿克琉斯" Price="13140" Quality="5" Race="1" SP="8" Sort="927" Star="2" StarUpRate="0.4">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0030</Image>
    <Mitac>0</Mitac>
    <Skill1>141</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>30</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="684" MaxStar="5" Name="阿克琉斯" Price="23160" Quality="6" Race="1" SP="8" Sort="1075" Star="3" StarUpRate="0.1">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0030</Image>
    <Mitac>0</Mitac>
    <Skill1>141</Skill1>
    <Skill2>10</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="685" MaxStar="5" Name="游侠罗宾" Price="13140" Quality="5" Race="1" SP="6" Sort="629" Star="2" StarUpRate="0.4">
    <AP>3</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0031</Image>
    <Mitac>1</Mitac>
    <Skill1>51</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>31</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="686" MaxStar="5" Name="游侠罗宾" Price="23160" Quality="6" Race="1" SP="6" Sort="947" Star="3" StarUpRate="0.1">
    <AP>3</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0031</Image>
    <Mitac>1</Mitac>
    <Skill1>51</Skill1>
    <Skill2>155</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="687" MaxStar="5" Name="奥丁" Price="13140" Quality="5" Race="3" SP="10" Sort="922" Star="2" StarUpRate="0.4">
    <AP>3</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0032</Image>
    <Mitac>0</Mitac>
    <Skill1>10</Skill1>
    <Skill2>154</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>32</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="688" MaxStar="5" Name="奥丁" Price="23160" Quality="6" Race="3" SP="8" Sort="1069" Star="3" StarUpRate="0.1">
    <AP>3</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0032</Image>
    <Mitac>0</Mitac>
    <Skill1>10</Skill1>
    <Skill2>154</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="689" MaxStar="5" Name="雷神托尔" Price="13140" Quality="5" Race="3" SP="8" Sort="793" Star="2" StarUpRate="0.4">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0033</Image>
    <Mitac>0</Mitac>
    <Skill1>123</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>33</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="690" MaxStar="5" Name="雷神托尔" Price="23160" Quality="6" Race="3" SP="8" Sort="1009" Star="3" StarUpRate="0.1">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0033</Image>
    <Mitac>0</Mitac>
    <Skill1>123</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="691" MaxStar="5" Name="爱神弗丽嘉" Price="6450" Quality="4" Race="3" SP="10" Sort="598" Star="2" StarUpRate="0.5">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0034</Image>
    <Mitac>0</Mitac>
    <Skill1>61</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>34</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="692" MaxStar="5" Name="爱神弗丽嘉" Price="14640" Quality="5" Race="3" SP="10" Sort="925" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0034</Image>
    <Mitac>0</Mitac>
    <Skill1>61</Skill1>
    <Skill2>168</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="693" MaxStar="5" Name="布伦希尔德" Price="13140" Quality="5" Race="3" SP="6" Sort="896" Star="2" StarUpRate="0.4">
    <AP>3</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0035</Image>
    <Mitac>0</Mitac>
    <Skill1>175</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>35</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="694" MaxStar="5" Name="布伦希尔德" Price="23160" Quality="6" Race="3" SP="6" Sort="1049" Star="3" StarUpRate="0.1">
    <AP>3</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0035</Image>
    <Mitac>0</Mitac>
    <Skill1>175</Skill1>
    <Skill2>58</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="695" MaxStar="5" Name="战神提尔" Price="13140" Quality="5" Race="3" SP="8" Sort="621" Star="2" StarUpRate="0.4">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0036</Image>
    <Mitac>0</Mitac>
    <Skill1>74</Skill1>
    <Skill2>4</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>36</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="696" MaxStar="5" Name="战神提尔" Price="23160" Quality="6" Race="3" SP="8" Sort="940" Star="3" StarUpRate="0.1">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0036</Image>
    <Mitac>0</Mitac>
    <Skill1>75</Skill1>
    <Skill2>4</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="697" MaxStar="5" Name="奥尔布达" Price="13140" Quality="5" Race="3" SP="8" Sort="920" Star="2" StarUpRate="0.4">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0037</Image>
    <Mitac>1</Mitac>
    <Skill1>127</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>37</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="698" MaxStar="5" Name="奥尔布达" Price="23160" Quality="6" Race="3" SP="8" Sort="1068" Star="3" StarUpRate="0.1">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0037</Image>
    <Mitac>1</Mitac>
    <Skill1>128</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="699" MaxStar="5" Name="阿蒙" Price="6450" Quality="4" Race="4" SP="6" Sort="602" Star="2" StarUpRate="0.5">
    <AP>3</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0038</Image>
    <Mitac>1</Mitac>
    <Skill1>145</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>38</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="700" MaxStar="5" Name="阿蒙" Price="14640" Quality="5" Race="4" SP="6" Sort="926" Star="3" StarUpRate="0.2">
    <AP>3</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0038</Image>
    <Mitac>1</Mitac>
    <Skill1>145</Skill1>
    <Skill2>72</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="701" MaxStar="5" Name="奥西里斯神" Price="26160" Quality="6" Race="4" SP="6" Sort="1062" Star="4" StarUpRate="0.05">
    <AP>1</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0039</Image>
    <Mitac>1</Mitac>
    <Skill1>17</Skill1>
    <Skill2>44</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>39</StarCard>
    <StarRequiredGold>36000</StarRequiredGold>
    <StarRequiredHonor>3450</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="702" MaxStar="5" Name="奥西里斯神" Price="29760" Quality="6" Race="4" SP="6" Sort="1064" Star="5" StarUpRate="0">
    <AP>1</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0039</Image>
    <Mitac>1</Mitac>
    <Skill1>17</Skill1>
    <Skill2>44</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="703" MaxStar="5" Name="尼努尔塔神" Price="13140" Quality="5" Race="4" SP="6" Sort="751" Star="2" StarUpRate="0.4">
    <AP>2</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0040</Image>
    <Mitac>0</Mitac>
    <Skill1>56</Skill1>
    <Skill2>145</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>40</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="704" MaxStar="5" Name="尼努尔塔神" Price="23160" Quality="6" Race="4" SP="6" Sort="998" Star="3" StarUpRate="0.1">
    <AP>2</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0040</Image>
    <Mitac>0</Mitac>
    <Skill1>56</Skill1>
    <Skill2>145</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="705" MaxStar="5" Name="湿婆" Price="13140" Quality="5" Race="4" SP="8" Sort="704" Star="2" StarUpRate="0.4">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0041</Image>
    <Mitac>1</Mitac>
    <Skill1>56</Skill1>
    <Skill2>10</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>41</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="706" MaxStar="5" Name="湿婆" Price="23160" Quality="6" Race="4" SP="6" Sort="982" Star="3" StarUpRate="0.1">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0041</Image>
    <Mitac>1</Mitac>
    <Skill1>56</Skill1>
    <Skill2>10</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="707" MaxStar="5" Name="梵天" Price="13140" Quality="5" Race="4" SP="8" Sort="866" Star="2" StarUpRate="0.4">
    <AP>3</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0042</Image>
    <Mitac>0</Mitac>
    <Skill1>90</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>42</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="708" MaxStar="5" Name="梵天" Price="23160" Quality="6" Race="4" SP="8" Sort="1036" Star="3" StarUpRate="0.1">
    <AP>3</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0042</Image>
    <Mitac>0</Mitac>
    <Skill1>90</Skill1>
    <Skill2>174</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="709" MaxStar="5" Name="吉祥天" Price="13140" Quality="5" Race="4" SP="8" Sort="837" Star="2" StarUpRate="0.4">
    <AP>1</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0043</Image>
    <Mitac>1</Mitac>
    <Skill1>129</Skill1>
    <Skill2>167</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>43</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="710" MaxStar="5" Name="吉祥天" Price="23160" Quality="6" Race="4" SP="8" Sort="1022" Star="3" StarUpRate="0.1">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0043</Image>
    <Mitac>1</Mitac>
    <Skill1>129</Skill1>
    <Skill2>167</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="711" MaxStar="5" Name="毗湿奴" Price="13140" Quality="5" Race="4" SP="6" Sort="743" Star="2" StarUpRate="0.4">
    <AP>1</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0044</Image>
    <Mitac>1</Mitac>
    <Skill1>2</Skill1>
    <Skill2>145</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>44</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="712" MaxStar="5" Name="毗湿奴" Price="23160" Quality="6" Race="4" SP="6" Sort="992" Star="3" StarUpRate="0.1">
    <AP>1</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0044</Image>
    <Mitac>1</Mitac>
    <Skill1>3</Skill1>
    <Skill2>145</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="713" MaxStar="5" Name="耶和华" Price="13140" Quality="5" Race="4" SP="8" Sort="639" Star="2" StarUpRate="0.4">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0045</Image>
    <Mitac>0</Mitac>
    <Skill1>21</Skill1>
    <Skill2>118</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>45</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="714" MaxStar="5" Name="耶和华" Price="23160" Quality="6" Race="4" SP="8" Sort="952" Star="3" StarUpRate="0.1">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0045</Image>
    <Mitac>0</Mitac>
    <Skill1>21</Skill1>
    <Skill2>118</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="715" MaxStar="5" Name="圣母玛丽亚" Price="13140" Quality="5" Race="4" SP="10" Sort="712" Star="2" StarUpRate="0.4">
    <AP>0</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0046</Image>
    <Mitac>1</Mitac>
    <Skill1>7</Skill1>
    <Skill2>10</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>46</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="716" MaxStar="5" Name="圣母玛丽亚" Price="23160" Quality="6" Race="4" SP="8" Sort="984" Star="3" StarUpRate="0.1">
    <AP>0</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0046</Image>
    <Mitac>1</Mitac>
    <Skill1>7</Skill1>
    <Skill2>10</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="717" MaxStar="5" Name="撒旦" Price="13140" Quality="5" Race="4" SP="12" Sort="730" Star="2" StarUpRate="0.4">
    <AP>0</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0047</Image>
    <Mitac>1</Mitac>
    <Skill1>53</Skill1>
    <Skill2>24</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>47</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="718" MaxStar="5" Name="撒旦" Price="23160" Quality="6" Race="4" SP="10" Sort="985" Star="3" StarUpRate="0.1">
    <AP>0</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0047</Image>
    <Mitac>1</Mitac>
    <Skill1>53</Skill1>
    <Skill2>24</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="719" MaxStar="5" Name="米迦勒" Price="13140" Quality="5" Race="4" SP="12" Sort="773" Star="2" StarUpRate="0.4">
    <AP>0</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0048</Image>
    <Mitac>0</Mitac>
    <Skill1>48</Skill1>
    <Skill2>145</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>48</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman>2</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="720" MaxStar="5" Name="米迦勒" Price="23160" Quality="6" Race="4" SP="10" Sort="1001" Star="3" StarUpRate="0.1">
    <AP>0</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0048</Image>
    <Mitac>0</Mitac>
    <Skill1>48</Skill1>
    <Skill2>145</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman>2</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="721" MaxStar="5" Name="卡门普斯" Price="13140" Quality="5" Race="4" SP="10" Sort="815" Star="2" StarUpRate="0.4">
    <AP>3</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0049</Image>
    <Mitac>0</Mitac>
    <Skill1>86</Skill1>
    <Skill2>55</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>49</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="722" MaxStar="5" Name="卡门普斯" Price="23160" Quality="6" Race="4" SP="8" Sort="1011" Star="3" StarUpRate="0.1">
    <AP>3</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0049</Image>
    <Mitac>0</Mitac>
    <Skill1>86</Skill1>
    <Skill2>55</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="723" MaxStar="5" Name="怒神劳" Price="6450" Quality="4" Race="4" SP="6" Sort="401" Star="2" StarUpRate="0.5">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0050</Image>
    <Mitac>0</Mitac>
    <Skill1>72</Skill1>
    <Skill2>41</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>50</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman>2</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="" ID="724" MaxStar="5" Name="怒神劳" Price="14640" Quality="5" Race="4" SP="6" Sort="749" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0050</Image>
    <Mitac>0</Mitac>
    <Skill1>72</Skill1>
    <Skill2>41</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>2</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="725" MaxStar="5" Name="智神斯凯尔" Price="6450" Quality="4" Race="4" SP="6" Sort="248" Star="2" StarUpRate="0.5">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0051</Image>
    <Mitac>2</Mitac>
    <Skill1>169</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>51</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="726" MaxStar="5" Name="智神斯凯尔" Price="14640" Quality="5" Race="4" SP="6" Sort="617" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0051</Image>
    <Mitac>2</Mitac>
    <Skill1>169</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="12" Description="编织命运之弓，被这把弓瞄准的时候，你的命运已经决定了。" ID="727" MaxStar="5" Name="魔弓编织者" Price="7140" Quality="4" Race="5" SP="4" Sort="422" Star="3" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0727</Image>
    <Mitac/>
    <Skill1>31</Skill1>
    <Skill2>51</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>728</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="编织命运之弓，被这把弓瞄准的时候，你的命运已经决定了。" ID="728" MaxStar="5" Name="魔弓编织者" Price="8010" Quality="4" Race="5" SP="2" Sort="423" Star="4" StarUpRate="0.1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0727</Image>
    <Mitac/>
    <Skill1>31</Skill1>
    <Skill2>51</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>729</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="编织命运之弓，被这把弓瞄准的时候，你的命运已经决定了。" ID="729" MaxStar="5" Name="魔弓编织者" Price="9090" Quality="4" Race="5" SP="2" Sort="424" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0727</Image>
    <Mitac/>
    <Skill1>32</Skill1>
    <Skill2>51</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="730" MaxStar="5" Name="天之弓" Price="7140" Quality="4" Race="5" SP="10" Sort="329" Star="3" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0730</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>731</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="731" MaxStar="5" Name="天之弓" Price="8010" Quality="4" Race="5" SP="10" Sort="330" Star="4" StarUpRate="0.1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0730</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>732</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="732" MaxStar="5" Name="天之弓" Price="9090" Quality="4" Race="5" SP="10" Sort="331" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0730</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="733" MaxStar="5" Name="贯穿之枪" Price="7140" Quality="4" Race="5" SP="10" Sort="534" Star="3" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0733</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>734</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="734" MaxStar="5" Name="贯穿之枪" Price="8010" Quality="4" Race="5" SP="10" Sort="535" Star="4" StarUpRate="0.1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0733</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>735</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="735" MaxStar="5" Name="贯穿之枪" Price="9090" Quality="4" Race="5" SP="10" Sort="536" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0733</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="736" MaxStar="5" Name="待定2" Price="7140" Quality="4" Race="5" SP="10" Sort="283" Star="3" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0736</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>737</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="737" MaxStar="5" Name="待定2" Price="8010" Quality="4" Race="5" SP="10" Sort="284" Star="4" StarUpRate="0.1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0736</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>738</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="738" MaxStar="5" Name="待定2" Price="9090" Quality="4" Race="5" SP="10" Sort="285" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0736</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="传说中，这把枪只要给敌人造成一个微小的伤口，就能进入敌人的体内并分裂出30个倒钩棘刺，只能切开受害者的肉才能把它取出来。" ID="739" MaxStar="5" Name="蛇腹之枪" Price="7140" Quality="4" Race="5" SP="6" Sort="373" Star="3" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0739</Image>
    <Mitac/>
    <Skill1>34</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>740</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="传说中，这把枪只要给敌人造成一个微小的伤口，就能进入敌人的体内并分裂出30个倒钩棘刺，只能切开受害者的肉才能把它取出来。" ID="740" MaxStar="5" Name="蛇腹之枪" Price="8010" Quality="4" Race="5" SP="4" Sort="374" Star="4" StarUpRate="0.1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0739</Image>
    <Mitac/>
    <Skill1>34</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>741</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="传说中，这把枪只要给敌人造成一个微小的伤口，就能进入敌人的体内并分裂出30个倒钩棘刺，只能切开受害者的肉才能把它取出来。" ID="741" MaxStar="5" Name="蛇腹之枪" Price="9090" Quality="4" Race="5" SP="2" Sort="375" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0739</Image>
    <Mitac/>
    <Skill1>34</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="742" MaxStar="5" Name="神怒宝剑" Price="14640" Quality="5" Race="5" SP="10" Sort="720" Star="3" StarUpRate="0.2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0742</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>743</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="743" MaxStar="5" Name="神怒宝剑" Price="16500" Quality="5" Race="5" SP="10" Sort="721" Star="4" StarUpRate="0.08">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0742</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>744</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="744" MaxStar="5" Name="神怒宝剑" Price="18720" Quality="5" Race="5" SP="10" Sort="722" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0742</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="745" MaxStar="5" Name="杀戮者" Price="14640" Quality="5" Race="5" SP="10" Sort="726" Star="3" StarUpRate="0.2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0745</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>746</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="746" MaxStar="5" Name="杀戮者" Price="16500" Quality="5" Race="5" SP="10" Sort="727" Star="4" StarUpRate="0.08">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0745</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>747</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="747" MaxStar="5" Name="杀戮者" Price="18720" Quality="5" Race="5" SP="10" Sort="728" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0745</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="748" MaxStar="5" Name="断钢剑" Price="14640" Quality="5" Race="5" SP="10" Sort="872" Star="3" StarUpRate="0.2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0748</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>749</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="749" MaxStar="5" Name="断钢剑" Price="16500" Quality="5" Race="5" SP="10" Sort="873" Star="4" StarUpRate="0.08">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0748</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>750</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="750" MaxStar="5" Name="断钢剑" Price="18720" Quality="5" Race="5" SP="10" Sort="874" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0748</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="751" MaxStar="5" Name="先锋之枪" Price="14640" Quality="5" Race="5" SP="10" Sort="642" Star="3" StarUpRate="0.2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0751</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>752</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="752" MaxStar="5" Name="先锋之枪" Price="16500" Quality="5" Race="5" SP="10" Sort="643" Star="4" StarUpRate="0.08">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0751</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>753</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="753" MaxStar="5" Name="先锋之枪" Price="18720" Quality="5" Race="5" SP="10" Sort="644" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0751</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="传说中唯一伤害过神之子的武器，该枪也因刺伤耶稣的战士之名而命名，此枪又被称为“命运之枪”或“圣枪”。" ID="754" MaxStar="5" Name="朗基奴斯之枪" Price="14640" Quality="5" Race="5" SP="6" Sort="802" Star="3" StarUpRate="0.2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0754</Image>
    <Mitac/>
    <Skill1>53</Skill1>
    <Skill2>92</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>755</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="传说中唯一伤害过神之子的武器，该枪也因刺伤耶稣的战士之名而命名，此枪又被称为“命运之枪”或“圣枪”。" ID="755" MaxStar="5" Name="朗基奴斯之枪" Price="16500" Quality="5" Race="5" SP="4" Sort="803" Star="4" StarUpRate="0.08">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0754</Image>
    <Mitac/>
    <Skill1>53</Skill1>
    <Skill2>92</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>756</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="传说中唯一伤害过神之子的武器，该枪也因刺伤耶稣的战士之名而命名，此枪又被称为“命运之枪”或“圣枪”。" ID="756" MaxStar="5" Name="朗基奴斯之枪" Price="18720" Quality="5" Race="5" SP="4" Sort="804" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0754</Image>
    <Mitac/>
    <Skill1>53</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="757" MaxStar="5" Name="银槲之剑" Price="12000" Quality="5" Race="5" SP="10" Sort="636" Star="1" StarUpRate="0.6">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0757</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>758</StarCard>
    <StarRequiredGold>11400</StarRequiredGold>
    <StarRequiredHonor>1100</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="758" MaxStar="5" Name="银槲之剑" Price="13140" Quality="5" Race="5" SP="10" Sort="637" Star="2" StarUpRate="0.4">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0757</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>759</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="759" MaxStar="5" Name="银槲之剑" Price="14640" Quality="5" Race="5" SP="10" Sort="638" Star="3" StarUpRate="0.2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0757</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="王权的象征，天命之剑。“凡能自石台上拔出此剑者，即为天命之王”。最后由亚瑟王将其拔出。" ID="760" MaxStar="5" Name="石中剑" Price="14640" Quality="5" Race="5" SP="10" Sort="694" Star="3" StarUpRate="0.2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0760</Image>
    <Mitac/>
    <Skill1>131</Skill1>
    <Skill2>32</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>761</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="王权的象征，天命之剑。“凡能自石台上拔出此剑者，即为天命之王”。最后由亚瑟王将其拔出。" ID="761" MaxStar="5" Name="石中剑" Price="16500" Quality="5" Race="5" SP="8" Sort="695" Star="4" StarUpRate="0.08">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0760</Image>
    <Mitac/>
    <Skill1>131</Skill1>
    <Skill2>32</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>762</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="王权的象征，天命之剑。“凡能自石台上拔出此剑者，即为天命之王”。最后由亚瑟王将其拔出。" ID="762" MaxStar="5" Name="石中剑" Price="18720" Quality="5" Race="5" SP="6" Sort="696" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0760</Image>
    <Mitac/>
    <Skill1>132</Skill1>
    <Skill2>34</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="763" MaxStar="5" Name="斩裂剑" Price="12000" Quality="5" Race="5" SP="10" Sort="626" Star="1" StarUpRate="0.6">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0763</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>764</StarCard>
    <StarRequiredGold>11400</StarRequiredGold>
    <StarRequiredHonor>1100</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="764" MaxStar="5" Name="斩裂剑" Price="13140" Quality="5" Race="5" SP="10" Sort="627" Star="2" StarUpRate="0.4">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0763</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>765</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="765" MaxStar="5" Name="斩裂剑" Price="14640" Quality="5" Race="5" SP="10" Sort="628" Star="3" StarUpRate="0.2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0763</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="珀尔修斯杀死了美杜莎，之后把头颅交给雅典娜，雅典娜把它固定在宙斯送她的神盾之上，也称美杜莎之盾，希腊最强神器之一。" ID="766" MaxStar="5" Name="雅典娜之盾" Price="23160" Quality="6" Race="5" SP="8" Sort="960" Star="3" StarUpRate="0.1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0766</Image>
    <Mitac/>
    <Skill1>90</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>767</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="珀尔修斯杀死了美杜莎，之后把头颅交给雅典娜，雅典娜把它固定在宙斯送她的神盾之上，也称美杜莎之盾，希腊最强神器之一。" ID="767" MaxStar="5" Name="雅典娜之盾" Price="26160" Quality="6" Race="5" SP="6" Sort="961" Star="4" StarUpRate="0.05">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0766</Image>
    <Mitac/>
    <Skill1>90</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>768</StarCard>
    <StarRequiredGold>36000</StarRequiredGold>
    <StarRequiredHonor>3450</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="珀尔修斯杀死了美杜莎，之后把头颅交给雅典娜，雅典娜把它固定在宙斯送她的神盾之上，也称美杜莎之盾，希腊最强神器之一。" ID="768" MaxStar="5" Name="雅典娜之盾" Price="29760" Quality="6" Race="5" SP="4" Sort="962" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0766</Image>
    <Mitac/>
    <Skill1>90</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="吉尔伽美什乌鲁克王所有之武器，巴比伦的创世神话，意为“在诸天之上”。" ID="769" MaxStar="5" Name="斩裂世界" Price="20370" Quality="6" Race="5" SP="10" Sort="943" Star="2" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0769</Image>
    <Mitac/>
    <Skill1>108</Skill1>
    <Skill2>148</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>770</StarCard>
    <StarRequiredGold>27900</StarRequiredGold>
    <StarRequiredHonor>2650</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="吉尔伽美什乌鲁克王所有之武器，巴比伦的创世神话，意为“在诸天之上”。" ID="770" MaxStar="5" Name="斩裂世界" Price="23160" Quality="6" Race="5" SP="8" Sort="944" Star="3" StarUpRate="0.1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0769</Image>
    <Mitac/>
    <Skill1>108</Skill1>
    <Skill2>148</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>771</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="吉尔伽美什乌鲁克王所有之武器，巴比伦的创世神话，意为“在诸天之上”。" ID="771" MaxStar="5" Name="斩裂世界" Price="26160" Quality="6" Race="5" SP="8" Sort="945" Star="4" StarUpRate="0.05">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0769</Image>
    <Mitac/>
    <Skill1>108</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1022</StarCard>
    <StarRequiredGold>36000</StarRequiredGold>
    <StarRequiredHonor>3450</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="772" MaxStar="5" Name="金苹果" Price="18000" Quality="6" Race="5" SP="10" Sort="1019" Star="1" StarUpRate="0.5">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0772</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>773</StarCard>
    <StarRequiredGold>23700</StarRequiredGold>
    <StarRequiredHonor>2250</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="773" MaxStar="5" Name="金苹果" Price="20370" Quality="6" Race="5" SP="10" Sort="1020" Star="2" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0772</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>774</StarCard>
    <StarRequiredGold>27900</StarRequiredGold>
    <StarRequiredHonor>2650</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="774" MaxStar="5" Name="金苹果" Price="23160" Quality="6" Race="5" SP="10" Sort="1021" Star="3" StarUpRate="0.1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0772</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="775" MaxStar="5" Name="王者之剑" Price="18000" Quality="6" Race="5" SP="10" Sort="975" Star="1" StarUpRate="0.5">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0775</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>776</StarCard>
    <StarRequiredGold>23700</StarRequiredGold>
    <StarRequiredHonor>2250</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="776" MaxStar="5" Name="王者之剑" Price="20370" Quality="6" Race="5" SP="10" Sort="976" Star="2" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0775</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>777</StarCard>
    <StarRequiredGold>27900</StarRequiredGold>
    <StarRequiredHonor>2650</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="777" MaxStar="5" Name="王者之剑" Price="23160" Quality="6" Race="5" SP="10" Sort="977" Star="3" StarUpRate="0.1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0775</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="778" MaxStar="5" Name="幽兰黛儿" Price="18000" Quality="6" Race="5" SP="10" Sort="948" Star="1" StarUpRate="0.5">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0778</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>779</StarCard>
    <StarRequiredGold>23700</StarRequiredGold>
    <StarRequiredHonor>2250</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="779" MaxStar="5" Name="幽兰黛儿" Price="20370" Quality="6" Race="5" SP="10" Sort="949" Star="2" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0778</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>780</StarCard>
    <StarRequiredGold>27900</StarRequiredGold>
    <StarRequiredHonor>2650</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="780" MaxStar="5" Name="幽兰黛儿" Price="23160" Quality="6" Race="5" SP="10" Sort="950" Star="3" StarUpRate="0.1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0778</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="781" MaxStar="5" Name="八足神马" Price="18000" Quality="6" Race="5" SP="10" Sort="1057" Star="1" StarUpRate="0.5">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0781</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>782</StarCard>
    <StarRequiredGold>23700</StarRequiredGold>
    <StarRequiredHonor>2250</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="782" MaxStar="5" Name="八足神马" Price="20370" Quality="6" Race="5" SP="10" Sort="1058" Star="2" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0781</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>783</StarCard>
    <StarRequiredGold>27900</StarRequiredGold>
    <StarRequiredHonor>2650</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="783" MaxStar="5" Name="八足神马" Price="23160" Quality="6" Race="5" SP="10" Sort="1059" Star="3" StarUpRate="0.1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0781</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="784" MaxStar="5" Name="纠缠者" Price="18000" Quality="6" Race="5" SP="10" Sort="1015" Star="1" StarUpRate="0.5">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0784</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>785</StarCard>
    <StarRequiredGold>23700</StarRequiredGold>
    <StarRequiredHonor>2250</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="785" MaxStar="5" Name="纠缠者" Price="20370" Quality="6" Race="5" SP="10" Sort="1016" Star="2" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0784</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>786</StarCard>
    <StarRequiredGold>27900</StarRequiredGold>
    <StarRequiredHonor>2650</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="786" MaxStar="5" Name="纠缠者" Price="23160" Quality="6" Race="5" SP="10" Sort="1017" Star="3" StarUpRate="0.1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0784</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="787" MaxStar="5" Name="海姆达尔号角" Price="18000" Quality="6" Race="5" SP="10" Sort="1027" Star="1" StarUpRate="0.5">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0787</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>788</StarCard>
    <StarRequiredGold>23700</StarRequiredGold>
    <StarRequiredHonor>2250</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="788" MaxStar="5" Name="海姆达尔号角" Price="20370" Quality="6" Race="5" SP="10" Sort="1031" Star="2" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0787</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>789</StarCard>
    <StarRequiredGold>27900</StarRequiredGold>
    <StarRequiredHonor>2650</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="789" MaxStar="5" Name="海姆达尔号角" Price="23160" Quality="6" Race="5" SP="10" Sort="1033" Star="3" StarUpRate="0.1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0787</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="790" MaxStar="5" Name="奥西里斯的天平" Price="18000" Quality="6" Race="5" SP="10" Sort="1065" Star="1" StarUpRate="0.5">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0790</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>791</StarCard>
    <StarRequiredGold>23700</StarRequiredGold>
    <StarRequiredHonor>2250</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="791" MaxStar="5" Name="奥西里斯的天平" Price="20370" Quality="6" Race="5" SP="10" Sort="1066" Star="2" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0790</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>792</StarCard>
    <StarRequiredGold>27900</StarRequiredGold>
    <StarRequiredHonor>2650</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="792" MaxStar="5" Name="奥西里斯的天平" Price="23160" Quality="6" Race="5" SP="10" Sort="1067" Star="3" StarUpRate="0.1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0790</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="793" MaxStar="5" Name="海姆达尔号角" Price="18000" Quality="6" Race="5" SP="10" Sort="1028" Star="1" StarUpRate="0.5">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0787</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>788</StarCard>
    <StarRequiredGold>23700</StarRequiredGold>
    <StarRequiredHonor>2250</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="794" MaxStar="5" Name="海姆达尔号角" Price="20370" Quality="6" Race="5" SP="10" Sort="1032" Star="2" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0787</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>789</StarCard>
    <StarRequiredGold>27900</StarRequiredGold>
    <StarRequiredHonor>2650</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="795" MaxStar="5" Name="海姆达尔号角" Price="23160" Quality="6" Race="5" SP="10" Sort="1034" Star="3" StarUpRate="0.1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0787</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="海王波塞冬的武器，具有驾驭风浪的力量，能召唤潮汐。" ID="796" MaxStar="5" Name="海王三叉戟" Price="7140" Quality="4" Race="5" SP="4" Sort="528" Star="3" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0796</Image>
    <Mitac/>
    <Skill1>31</Skill1>
    <Skill2>66</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>797</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="海王波塞冬的武器，具有驾驭风浪的力量，能召唤潮汐。" ID="797" MaxStar="5" Name="海王三叉戟" Price="8010" Quality="4" Race="5" SP="2" Sort="529" Star="4" StarUpRate="0.1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0796</Image>
    <Mitac/>
    <Skill1>31</Skill1>
    <Skill2>66</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>798</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="海王波塞冬的武器，具有驾驭风浪的力量，能召唤潮汐。" ID="798" MaxStar="5" Name="海王三叉戟" Price="9090" Quality="4" Race="5" SP="2" Sort="530" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0796</Image>
    <Mitac/>
    <Skill1>31</Skill1>
    <Skill2>67</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="凯尔特神鲁格制造之剑。被这把剑指着咽喉时任何人都无法说谎，因此称为应答者。此外剑制造的伤痕无法治愈，而且能自动斩杀敌人后飞回。" ID="799" MaxStar="5" Name="应答者" Price="7140" Quality="4" Race="5" SP="6" Sort="295" Star="3" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0799</Image>
    <Mitac/>
    <Skill1>31</Skill1>
    <Skill2>50</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>800</StarCard>
    <StarRequiredGold>8700</StarRequiredGold>
    <StarRequiredHonor>835</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="凯尔特神鲁格制造之剑。被这把剑指着咽喉时任何人都无法说谎，因此称为应答者。此外剑制造的伤痕无法治愈，而且能自动斩杀敌人后飞回。" ID="800" MaxStar="5" Name="应答者" Price="8010" Quality="4" Race="5" SP="4" Sort="296" Star="4" StarUpRate="0.1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0799</Image>
    <Mitac/>
    <Skill1>31</Skill1>
    <Skill2>50</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>801</StarCard>
    <StarRequiredGold>10800</StarRequiredGold>
    <StarRequiredHonor>1035</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="凯尔特神鲁格制造之剑。被这把剑指着咽喉时任何人都无法说谎，因此称为应答者。此外剑制造的伤痕无法治愈，而且能自动斩杀敌人后飞回。" ID="801" MaxStar="5" Name="应答者" Price="9090" Quality="4" Race="5" SP="4" Sort="297" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0799</Image>
    <Mitac/>
    <Skill1>32</Skill1>
    <Skill2>50</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="刻耳柏洛斯，由厄喀德那和堤丰所生，希腊神话中的地狱看门犬。有三个头，口吐毒涎，长着龙尾。" ID="802" MaxStar="5" Name="地狱三头犬" Price="14640" Quality="5" Race="2" SP="8" Sort="884" Star="3" StarUpRate="0.2">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0802</Image>
    <Mitac/>
    <Skill1>75</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>803</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="刻耳柏洛斯，由厄喀德那和堤丰所生，希腊神话中的地狱看门犬。有三个头，口吐毒涎，长着龙尾。" ID="803" MaxStar="5" Name="地狱三头犬" Price="16500" Quality="5" Race="2" SP="8" Sort="885" Star="4" StarUpRate="0.08">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0802</Image>
    <Mitac/>
    <Skill1>75</Skill1>
    <Skill2>10</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>804</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="刻耳柏洛斯，由厄喀德那和堤丰所生，希腊神话中的地狱看门犬。有三个头，口吐毒涎，长着龙尾。" ID="804" MaxStar="5" Name="地狱三头犬" Price="18720" Quality="5" Race="2" SP="6" Sort="886" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0802</Image>
    <Mitac/>
    <Skill1>75</Skill1>
    <Skill2>10</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="1" Description="“十二圆桌骑士之一”，勇敢高洁，号称完美的骑士，在亚瑟王的带领下，正面对抗着泰坦。" ID="805" MaxStar="5" Name="盖文" Price="6000" Quality="4" Race="1" SP="10" Sort="541" Star="1" StarUpRate="0.7">
    <AP>3</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0001_1</Image>
    <Mitac>0</Mitac>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>806</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="“十二圆桌骑士之一”，勇敢高洁，号称完美的骑士，在亚瑟王的带领下，正面对抗着泰坦。" ID="806" MaxStar="5" Name="盖文" Price="6450" Quality="4" Race="1" SP="10" Sort="542" Star="2" StarUpRate="0.5">
    <AP>3</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0001_1</Image>
    <Mitac>0</Mitac>
    <Skill1>58</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="“圣女贞德”法兰西最著名的女英雄，在战火席卷法兰西时，这位谜一样的少女突然出现挺身带领着他的佣兵们，赢得了一连串的胜利。" ID="807" MaxStar="5" Name="贞德" Price="6000" Quality="4" Race="1" SP="10" Sort="251" Star="1" StarUpRate="0.7">
    <AP>1</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0002</Image>
    <Mitac>0</Mitac>
    <Skill1>77</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>808</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="“圣女贞德”法兰西最著名的女英雄，在战火席卷法兰西时，这位谜一样的少女突然出现挺身带领着他的佣兵们，赢得了一连串的胜利。" ID="808" MaxStar="5" Name="贞德" Price="6450" Quality="4" Race="1" SP="10" Sort="252" Star="2" StarUpRate="0.5">
    <AP>1</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0002</Image>
    <Mitac>0</Mitac>
    <Skill1>77</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>2</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="黎明女神和特洛伊王子之子，希腊最帅的美男子之一，坚强而勇敢，是在特洛伊之战中，唯一能与阿喀琉斯匹敌的人。" ID="809" MaxStar="5" Name="门农" Price="6000" Quality="4" Race="2" SP="8" Sort="434" Star="1" StarUpRate="0.7">
    <AP>3</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0003</Image>
    <Mitac>0</Mitac>
    <Skill1>18</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>810</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="黎明女神和特洛伊王子之子，希腊最帅的美男子之一，坚强而勇敢，是在特洛伊之战中，唯一能与阿喀琉斯匹敌的人。" ID="810" MaxStar="5" Name="门农" Price="6450" Quality="4" Race="2" SP="8" Sort="435" Star="2" StarUpRate="0.5">
    <AP>3</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0003</Image>
    <Mitac>0</Mitac>
    <Skill1>18</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>3</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="彩虹女神伊里丝，人与神之间的沟通者，活泼可爱，身姿绚烂。" ID="811" MaxStar="5" Name="伊里丝" Price="6000" Quality="4" Race="2" SP="8" Sort="301" Star="1" StarUpRate="0.7">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0004</Image>
    <Mitac>2</Mitac>
    <Skill1>169</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>812</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="彩虹女神伊里丝，人与神之间的沟通者，活泼可爱，身姿绚烂。" ID="812" MaxStar="5" Name="伊里丝" Price="6450" Quality="4" Race="2" SP="8" Sort="302" Star="2" StarUpRate="0.5">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0004</Image>
    <Mitac>2</Mitac>
    <Skill1>169</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>4</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="吸血伯爵德拉古拉之子，吸血鬼猎人，为了追杀他的父亲一直奔波。" ID="813" MaxStar="5" Name="阿鲁卡多" Price="6000" Quality="4" Race="3" SP="8" Sort="604" Star="1" StarUpRate="0.7">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0005_1</Image>
    <Mitac>1</Mitac>
    <Skill1>149</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>814</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="吸血伯爵德拉古拉之子，吸血鬼猎人，为了追杀他的父亲一直奔波。" ID="814" MaxStar="5" Name="阿鲁卡多" Price="6450" Quality="4" Race="3" SP="8" Sort="605" Star="2" StarUpRate="0.5">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0005_1</Image>
    <Mitac>1</Mitac>
    <Skill1>149</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>5</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="“瓦尔基里”里的特殊者，体内似乎藏着一股连主神奥丁都无法轻视的力量。" ID="815" MaxStar="5" Name="蕾娜丝" Price="6000" Quality="4" Race="3" SP="8" Sort="461" Star="1" StarUpRate="0.7">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0006</Image>
    <Mitac>1</Mitac>
    <Skill1>38</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>816</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="“瓦尔基里”里的特殊者，体内似乎藏着一股连主神奥丁都无法轻视的力量。" ID="816" MaxStar="5" Name="蕾娜丝" Price="6450" Quality="4" Race="3" SP="8" Sort="462" Star="2" StarUpRate="0.5">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0006</Image>
    <Mitac>1</Mitac>
    <Skill1>38</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>6</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="817" MaxStar="5" Name="待定1" Price="12000" Quality="5" Race="2" SP="8" Sort="891" Star="1" StarUpRate="0.6">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0014</Image>
    <Mitac>1</Mitac>
    <Skill1>162</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>11400</StarRequiredGold>
    <StarRequiredHonor>1100</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="亚瑟王的十二圆桌骑士中的传奇。强大无匹而且富有正义感，是亚瑟王最忠诚的左右手，但是因为暗恋皇后格尼薇儿而导致了圆桌骑士的内战。" ID="818" MaxStar="5" Name="兰斯洛特" Price="12000" Quality="5" Race="1" SP="8" Sort="805" Star="1" StarUpRate="0.6">
    <AP>3</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0026_1</Image>
    <Mitac>1</Mitac>
    <Skill1>56</Skill1>
    <Skill2>98</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>26</StarCard>
    <StarRequiredGold>11400</StarRequiredGold>
    <StarRequiredHonor>1100</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="819" MaxStar="5" Name="奥西里斯神" Price="18000" Quality="6" Race="4" SP="10" Sort="1060" Star="1" StarUpRate="0.5">
    <AP>1</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0039</Image>
    <Mitac>1</Mitac>
    <Skill1>17</Skill1>
    <Skill2>44</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>820</StarCard>
    <StarRequiredGold>23700</StarRequiredGold>
    <StarRequiredHonor>2250</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="" ID="820" MaxStar="5" Name="奥西里斯神" Price="20370" Quality="6" Race="4" SP="10" Sort="1061" Star="2" StarUpRate="0.3">
    <AP>1</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0039</Image>
    <Mitac>1</Mitac>
    <Skill1>17</Skill1>
    <Skill2>44</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>27900</StarRequiredGold>
    <StarRequiredHonor>2650</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="3" Description="" ID="821" MaxStar="5" Name="王国骑士" Price="75" Quality="1" Race="1" SP="4" Sort="74" Star="1" StarUpRate="0.9">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0052</Image>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="822" MaxStar="5" Name="重装士兵" Price="75" Quality="1" Race="1" SP="4" Sort="1" Star="1" StarUpRate="0.9">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0056</Image>
    <Mitac/>
    <Skill1>29</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="有着移动城堡的称号，骑兵全身以及坐骑都裹着厚重装甲，配备极长的长枪，配置一个重装骑士的资金抵得上一队的轻步兵。重装骑士在具有极高防御力的同时，兼具破坏力与速度，作为战场上的大杀器而存在。" ID="823" MaxStar="5" Name="重装甲骑士" Price="12000" Quality="5" Race="1" SP="10" Sort="611" Star="1" StarUpRate="0.6">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0060</Image>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>824</StarCard>
    <StarRequiredGold>11400</StarRequiredGold>
    <StarRequiredHonor>1100</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="有着移动城堡的称号，骑兵全身以及坐骑都裹着厚重装甲，配备极长的长枪，配置一个重装骑士的资金抵得上一队的轻步兵。重装骑士在具有极高防御力的同时，兼具破坏力与速度，作为战场上的大杀器而存在。" ID="824" MaxStar="5" Name="重装甲骑士" Price="13140" Quality="5" Race="1" SP="10" Sort="612" Star="2" StarUpRate="0.4">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0060</Image>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>60</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="5" Description="人类死亡后，由于某种原因而滞留在世界上的灵体，幽灵通常没有固定的形体，一般用肉眼是看不见的。" ID="825" MaxStar="5" Name="幽灵" Price="75" Quality="1" Race="4" SP="6" Sort="21" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0063</Image>
    <Mitac/>
    <Skill1>50</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>826</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="5" Description="人类死亡后，由于某种原因而滞留在世界上的灵体，幽灵通常没有固定的形体，一般用肉眼是看不见的。" ID="826" MaxStar="5" Name="幽灵" Price="105" Quality="1" Race="4" SP="6" Sort="22" Star="2" StarUpRate="0.7">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0063</Image>
    <Mitac/>
    <Skill1>50</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>63</StarCard>
    <StarRequiredGold>600</StarRequiredGold>
    <StarRequiredHonor>175</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="居住在迷雾之森，伞帽带着尖刺，生性狡猾，会偷袭过往的旅人。" ID="827" MaxStar="5" Name="刺蘑菇" Price="75" Quality="1" Race="2" SP="6" Sort="214" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0066</Image>
    <Mitac/>
    <Skill1>50</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>66</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="828" MaxStar="5" Name="树妖" Price="75" Quality="1" Race="1" SP="10" Sort="86" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0070</Image>
    <Mitac/>
    <Skill1>169</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="哥布林这种生物非常胆小，其中勇敢的则成为哥布林战士，担负起保卫家园的责任。" ID="829" MaxStar="5" Name="哥布林战士" Price="75" Quality="1" Race="3" SP="4" Sort="182" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0073</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>73</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="哥布林这种生物非常胆小，其中勇敢的则成为哥布林战士，担负起保卫家园的责任。" ID="830" MaxStar="5" Name="哥布林战士" Price="245" Quality="1" Race="3" SP="2" Sort="185" Star="4" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0073</Image>
    <Mitac/>
    <Skill1>174</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>75</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="隐藏在沙漠中，吞噬所有踏足死亡禁地的生物，身形巨大，在沙漠里移动非常迅速。" ID="831" MaxStar="5" Name="沙虫" Price="75" Quality="1" Race="2" SP="8" Sort="109" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0076</Image>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>832</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="隐藏在沙漠中，吞噬所有踏足死亡禁地的生物，身形巨大，在沙漠里移动非常迅速。" ID="832" MaxStar="5" Name="沙虫" Price="105" Quality="1" Race="2" SP="6" Sort="110" Star="2" StarUpRate="0.7">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0076</Image>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>76</StarCard>
    <StarRequiredGold>600</StarRequiredGold>
    <StarRequiredHonor>175</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="一般哥布林这种低级生物是不会使用魔法的，但总有一些例外，这种收到火精灵眷顾的哥布林称为火焰哥布林，能使用一些火魔法。" ID="833" MaxStar="5" Name="火焰哥布林" Price="75" Quality="1" Race="2" SP="10" Sort="162" Star="1" StarUpRate="0.9">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0079</Image>
    <Mitac/>
    <Skill1>2</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>834</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="一般哥布林这种低级生物是不会使用魔法的，但总有一些例外，这种收到火精灵眷顾的哥布林称为火焰哥布林，能使用一些火魔法。" ID="834" MaxStar="5" Name="火焰哥布林" Price="105" Quality="1" Race="2" SP="10" Sort="163" Star="2" StarUpRate="0.7">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0079</Image>
    <Mitac/>
    <Skill1>2</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>79</StarCard>
    <StarRequiredGold>600</StarRequiredGold>
    <StarRequiredHonor>175</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="身型远远超过正常的甲虫，外壳坚硬,据说是因为迷雾之森的原因。" ID="835" MaxStar="5" Name="巨甲虫" Price="75" Quality="1" Race="2" SP="6" Sort="157" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0082</Image>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>836</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="身型远远超过正常的甲虫，外壳坚硬,据说是因为迷雾之森的原因。" ID="836" MaxStar="5" Name="巨甲虫" Price="105" Quality="1" Race="2" SP="6" Sort="158" Star="2" StarUpRate="0.7">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0082</Image>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>82</StarCard>
    <StarRequiredGold>600</StarRequiredGold>
    <StarRequiredHonor>175</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="寄宿在花中的女妖。妖娆美丽，一般来说越美丽的东西越危险，但是据很多冒险者说，他们在森林里迷路的时候都受到过花妖的帮助。" ID="837" MaxStar="5" Name="花妖" Price="105" Quality="1" Race="2" SP="4" Sort="168" Star="2" StarUpRate="0.7">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0085</Image>
    <Mitac/>
    <Skill1>168</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>86</StarCard>
    <StarRequiredGold>600</StarRequiredGold>
    <StarRequiredHonor>175</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="838" MaxStar="5" Name="盗贼" Price="75" Quality="1" Race="1" SP="6" Sort="208" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0089</Image>
    <Mitac/>
    <Skill1>60</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="839" MaxStar="5" Name="盗贼" Price="345" Quality="1" Race="1" SP="4" Sort="211" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0089</Image>
    <Mitac/>
    <Skill1>60</Skill1>
    <Skill2>155</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="如果你在沙漠里水饮用殆尽，而要去喝仙人掌的水分的时候，请看清楚点，万一误伤这种有自我意识的仙人掌，下场是很悲惨的。" ID="840" MaxStar="5" Name="仙人掌" Price="75" Quality="1" Race="3" SP="8" Sort="58" Star="1" StarUpRate="0.9">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0092</Image>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>841</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="如果你在沙漠里水饮用殆尽，而要去喝仙人掌的水分的时候，请看清楚点，万一误伤这种有自我意识的仙人掌，下场是很悲惨的。" ID="841" MaxStar="5" Name="仙人掌" Price="105" Quality="1" Race="3" SP="8" Sort="59" Star="2" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0092</Image>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>92</StarCard>
    <StarRequiredGold>600</StarRequiredGold>
    <StarRequiredHonor>175</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="" ID="842" MaxStar="5" Name="稻草人" Price="75" Quality="1" Race="1" SP="6" Sort="205" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0095</Image>
    <Mitac/>
    <Skill1>41</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="" ID="843" MaxStar="5" Name="稻草人" Price="75" Quality="1" Race="1" SP="6" Sort="206" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0095</Image>
    <Mitac/>
    <Skill1>41</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="" ID="844" MaxStar="5" Name="食人花" Price="75" Quality="1" Race="2" SP="8" Sort="98" Star="1" StarUpRate="0.9">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0098</Image>
    <Mitac/>
    <Skill1>73</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="" ID="845" MaxStar="5" Name="食人花" Price="75" Quality="1" Race="2" SP="8" Sort="99" Star="1" StarUpRate="0.9">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0098</Image>
    <Mitac/>
    <Skill1>73</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="纷争女神厄里斯，阿瑞斯的妹妹，因为珀琉斯婚礼没有邀请她，厄里斯利用“送给最美丽的女人”的金苹果引发了特洛伊战争。" ID="846" MaxStar="5" Name="厄里斯" Price="6000" Quality="4" Race="2" SP="6" Sort="552" Star="1" StarUpRate="0.7">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0101_1</Image>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>101</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="纷争女神厄里斯，阿瑞斯的妹妹，因为珀琉斯婚礼没有邀请她，厄里斯利用“送给最美丽的女人”的金苹果引发了特洛伊战争。" ID="847" MaxStar="5" Name="厄里斯" Price="9090" Quality="4" Race="2" SP="4" Sort="556" Star="5" StarUpRate="0">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0101_1</Image>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>68</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="野生蛮牛体型巨大，犄角粗而尖呈弧形。在迷雾之森中，几乎没有生物能对它造成伤害。" ID="848" MaxStar="5" Name="野生蛮牛" Price="75" Quality="1" Race="2" SP="8" Sort="47" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0104</Image>
    <Mitac/>
    <Skill1>127</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>849</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="野生蛮牛体型巨大，犄角粗而尖呈弧形。在迷雾之森中，几乎没有生物能对它造成伤害。" ID="849" MaxStar="5" Name="野生蛮牛" Price="105" Quality="1" Race="2" SP="8" Sort="48" Star="2" StarUpRate="0.7">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0104</Image>
    <Mitac/>
    <Skill1>127</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>104</StarCard>
    <StarRequiredGold>600</StarRequiredGold>
    <StarRequiredHonor>175</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="10" Description="一般哥布林这种低级生物是不会使用魔法的，但总有一些例外，这种收到冰精灵眷顾的哥布林称为冰霜哥布林，能使用一些冰魔法。" ID="850" MaxStar="5" Name="冰霜哥布林" Price="75" Quality="1" Race="4" SP="10" Sort="231" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0107</Image>
    <Mitac/>
    <Skill1>149</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>851</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="10" Description="一般哥布林这种低级生物是不会使用魔法的，但总有一些例外，这种收到冰精灵眷顾的哥布林称为冰霜哥布林，能使用一些冰魔法。" ID="851" MaxStar="5" Name="冰霜哥布林" Price="105" Quality="1" Race="4" SP="8" Sort="232" Star="2" StarUpRate="0.7">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0107</Image>
    <Mitac/>
    <Skill1>149</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>107</StarCard>
    <StarRequiredGold>600</StarRequiredGold>
    <StarRequiredHonor>175</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="" ID="852" MaxStar="5" Name="娜迦射手" Price="6000" Quality="4" Race="2" SP="10" Sort="407" Star="1" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0110</Image>
    <Mitac/>
    <Skill1>64</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="" ID="853" MaxStar="5" Name="娜迦射手" Price="6000" Quality="4" Race="2" SP="8" Sort="408" Star="1" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0110</Image>
    <Mitac/>
    <Skill1>64</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="居住深海之中，拥有剃刀般锋利的巨钳。不仅如此，当巨钳合拢时，甚至能砸穿巨型船只。" ID="854" MaxStar="5" Name="巨钳龙虾" Price="75" Quality="1" Race="3" SP="6" Sort="152" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0113</Image>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>855</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="居住深海之中，拥有剃刀般锋利的巨钳。不仅如此，当巨钳合拢时，甚至能砸穿巨型船只。" ID="855" MaxStar="5" Name="巨钳龙虾" Price="105" Quality="1" Race="3" SP="4" Sort="153" Star="2" StarUpRate="0.7">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0113</Image>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>113</StarCard>
    <StarRequiredGold>600</StarRequiredGold>
    <StarRequiredHonor>175</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="" ID="856" MaxStar="5" Name="金属史莱姆" Price="6000" Quality="4" Race="2" SP="14" Sort="505" Star="1" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>11</HP>
    <Image>0116</Image>
    <Mitac/>
    <Skill1>142</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="" ID="857" MaxStar="5" Name="金属史莱姆" Price="6000" Quality="4" Race="2" SP="14" Sort="506" Star="1" StarUpRate="0.7">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>11</HP>
    <Image>0116</Image>
    <Mitac/>
    <Skill1>142</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="一种直立行走的邪恶亚人类生物，有传说是食人魔的分支。" ID="858" MaxStar="5" Name="巨魔" Price="6000" Quality="4" Race="1" SP="12" Sort="494" Star="1" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0119</Image>
    <Mitac/>
    <Skill1>150</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>859</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="一种直立行走的邪恶亚人类生物，有传说是食人魔的分支。" ID="859" MaxStar="5" Name="巨魔" Price="6450" Quality="4" Race="1" SP="10" Sort="495" Star="2" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0119</Image>
    <Mitac/>
    <Skill1>150</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>119</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="" ID="860" MaxStar="5" Name="木乃伊" Price="6000" Quality="4" Race="3" SP="6" Sort="414" Star="1" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0122</Image>
    <Mitac/>
    <Skill1>24</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="861" MaxStar="5" Name="勇者" Price="75" Quality="1" Race="1" SP="8" Sort="30" Star="1" StarUpRate="0.9">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0125</Image>
    <Mitac/>
    <Skill1>16</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="862" MaxStar="5" Name="勇者" Price="75" Quality="1" Race="1" SP="7" Sort="31" Star="1" StarUpRate="0.9">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0125</Image>
    <Mitac/>
    <Skill1>16</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="" ID="863" MaxStar="5" Name="幼年毒龙" Price="75" Quality="1" Race="2" SP="4" Sort="16" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0128</Image>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="" ID="864" MaxStar="5" Name="幼年毒龙" Price="75" Quality="1" Race="2" SP="3" Sort="17" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0128</Image>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="在洞穴中游荡的蝙蝠，靠吸食血液为生。" ID="865" MaxStar="5" Name="吸血蝠" Price="75" Quality="1" Race="4" SP="6" Sort="63" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0131</Image>
    <Mitac/>
    <Skill1>143</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>866</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="在洞穴中游荡的蝙蝠，靠吸食血液为生。" ID="866" MaxStar="5" Name="吸血蝠" Price="105" Quality="1" Race="4" SP="6" Sort="64" Star="2" StarUpRate="0.7">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0131</Image>
    <Mitac/>
    <Skill1>143</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>131</StarCard>
    <StarRequiredGold>600</StarRequiredGold>
    <StarRequiredHonor>175</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="867" MaxStar="5" Name="佣兵战士" Price="75" Quality="1" Race="1" SP="4" Sort="34" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0134</Image>
    <Mitac/>
    <Skill1>18</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="" ID="868" MaxStar="5" Name="佣兵法师" Price="75" Quality="1" Race="1" SP="8" Sort="42" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0138</Image>
    <Mitac/>
    <Skill1>76</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="" ID="869" MaxStar="5" Name="佣兵法师" Price="75" Quality="1" Race="1" SP="7" Sort="43" Star="1" StarUpRate="0.9">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0138</Image>
    <Mitac/>
    <Skill1>76</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="" ID="870" MaxStar="5" Name="佣兵射手" Price="75" Quality="1" Race="2" SP="2" Sort="37" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0141</Image>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="" ID="871" MaxStar="5" Name="佣兵射手" Price="75" Quality="1" Race="2" SP="0" Sort="38" Star="1" StarUpRate="0.9">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0141</Image>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>149</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="守卫王国的士兵，从预备士兵到正式加入编制，通常要经过三至五年的洗礼，一般成为王国士兵就代表你已经是一个优秀的战士。" ID="872" MaxStar="5" Name="王国士兵" Price="75" Quality="1" Race="1" SP="10" Sort="69" Star="1" StarUpRate="0.9">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0144</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>873</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="守卫王国的士兵，从预备士兵到正式加入编制，通常要经过三至五年的洗礼，一般成为王国士兵就代表你已经是一个优秀的战士。" ID="873" MaxStar="5" Name="王国士兵" Price="105" Quality="1" Race="1" SP="8" Sort="70" Star="2" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0144</Image>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>144</StarCard>
    <StarRequiredGold>600</StarRequiredGold>
    <StarRequiredHonor>175</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="荒野中的霸主，荒野巨蟒一般有两层鳞片，刀剑难伤，而且体形巨大，且移动迅速，不过比较害怕魔法。" ID="874" MaxStar="5" Name="荒野巨蟒" Price="6000" Quality="4" Race="3" SP="10" Sort="515" Star="1" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0147</Image>
    <Mitac/>
    <Skill1>156</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>875</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="荒野中的霸主，荒野巨蟒一般有两层鳞片，刀剑难伤，而且体形巨大，且移动迅速，不过比较害怕魔法。" ID="875" MaxStar="5" Name="荒野巨蟒" Price="6450" Quality="4" Race="3" SP="10" Sort="516" Star="2" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0147</Image>
    <Mitac/>
    <Skill1>156</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>147</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="幽暗林中栖息着的豹子，比起普通豹子，暗影猎豹杀伤力成几何倍数增加，并且它的獠牙带有感染性病毒。" ID="876" MaxStar="5" Name="暗影猎豹" Price="75" Quality="1" Race="4" SP="8" Sort="241" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0150</Image>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>877</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="幽暗林中栖息着的豹子，比起普通豹子，暗影猎豹杀伤力成几何倍数增加，并且它的獠牙带有感染性病毒。" ID="877" MaxStar="5" Name="暗影猎豹" Price="105" Quality="1" Race="4" SP="8" Sort="242" Star="2" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0150</Image>
    <Mitac/>
    <Skill1>56</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>150</StarCard>
    <StarRequiredGold>600</StarRequiredGold>
    <StarRequiredHonor>175</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="波塞冬的卫士，负责海皇宫殿附近的巡逻任务。" ID="878" MaxStar="5" Name="海马守卫" Price="75" Quality="1" Race="2" SP="8" Sort="177" Star="1" StarUpRate="0.9">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0153</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>879</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="波塞冬的卫士，负责海皇宫殿附近的巡逻任务。" ID="879" MaxStar="5" Name="海马守卫" Price="105" Quality="1" Race="2" SP="8" Sort="178" Star="2" StarUpRate="0.7">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0153</Image>
    <Mitac/>
    <Skill1>122</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>153</StarCard>
    <StarRequiredGold>600</StarRequiredGold>
    <StarRequiredHonor>175</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="西伯利亚海域深处的怪物，智商极高，会袭击过往船只。" ID="880" MaxStar="5" Name="水母怪" Price="75" Quality="1" Race="3" SP="8" Sort="81" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0156</Image>
    <Mitac/>
    <Skill1>149</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>881</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="西伯利亚海域深处的怪物，智商极高，会袭击过往船只。" ID="881" MaxStar="5" Name="水母怪" Price="105" Quality="1" Race="3" SP="8" Sort="82" Star="2" StarUpRate="0.7">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0156</Image>
    <Mitac/>
    <Skill1>149</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>156</StarCard>
    <StarRequiredGold>600</StarRequiredGold>
    <StarRequiredHonor>175</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="深海巨鲨是鲨鱼中最稀少且最神秘的鲨鱼之一。头部庞大嘴巴张力惊人，细牙成须状，对养分的吸收极快，能通过进食快速回复体力。" ID="882" MaxStar="5" Name="深海巨鲨" Price="6000" Quality="4" Race="1" SP="12" Sort="366" Star="1" StarUpRate="0.7">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0159</Image>
    <Mitac/>
    <Skill1>53</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>883</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="深海巨鲨是鲨鱼中最稀少且最神秘的鲨鱼之一。头部庞大嘴巴张力惊人，细牙成须状，对养分的吸收极快，能通过进食快速回复体力。" ID="883" MaxStar="5" Name="深海巨鲨" Price="6450" Quality="4" Race="1" SP="10" Sort="367" Star="2" StarUpRate="0.5">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0159</Image>
    <Mitac/>
    <Skill1>53</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>159</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="884" MaxStar="5" Name="雷精灵" Price="75" Quality="1" Race="2" SP="4" Sort="133" Star="1" StarUpRate="0.9">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0162</Image>
    <Mitac/>
    <Skill1>82</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="885" MaxStar="5" Name="雷精灵" Price="75" Quality="1" Race="2" SP="3" Sort="134" Star="1" StarUpRate="0.9">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0162</Image>
    <Mitac/>
    <Skill1>83</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="886" MaxStar="5" Name="懒惰雪人" Price="75" Quality="1" Race="3" SP="8" Sort="136" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0165</Image>
    <Mitac/>
    <Skill1>41</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="887" MaxStar="5" Name="懒惰雪人" Price="75" Quality="1" Race="3" SP="8" Sort="137" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0165</Image>
    <Mitac/>
    <Skill1>41</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="10" Description="自然女神的分身，通常保持人类的样子，喜好和平，但如果有人妄图破坏森林，则会展现出令人畏惧的一面。" ID="888" MaxStar="5" Name="森林仙女" Price="6000" Quality="4" Race="4" SP="8" Sort="377" Star="1" StarUpRate="0.7">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0168</Image>
    <Mitac/>
    <Skill1>168</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>889</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="10" Description="自然女神的分身，通常保持人类的样子，喜好和平，但如果有人妄图破坏森林，则会展现出令人畏惧的一面。" ID="889" MaxStar="5" Name="森林仙女" Price="6450" Quality="4" Race="4" SP="8" Sort="378" Star="2" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0168</Image>
    <Mitac/>
    <Skill1>168</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>168</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="890" MaxStar="5" Name="忧伤雪人" Price="75" Quality="1" Race="2" SP="6" Sort="26" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0171</Image>
    <Mitac/>
    <Skill1>122</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="891" MaxStar="5" Name="忧伤雪人" Price="75" Quality="1" Race="2" SP="5" Sort="27" Star="1" StarUpRate="0.9">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0171</Image>
    <Mitac/>
    <Skill1>122</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="英吉利海峡的母狮，抛弃贵族小姐的身份，带领着数百海盗纵横英吉利海峡。她头上戴的鲜艳头巾，令海峡的水手望之而逃。" ID="892" MaxStar="5" Name="贝利维夫人" Price="12000" Quality="5" Race="4" SP="8" Sort="912" Star="1" StarUpRate="0.6">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0174</Image>
    <Mitac/>
    <Skill1>52</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>893</StarCard>
    <StarRequiredGold>11400</StarRequiredGold>
    <StarRequiredHonor>1100</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="英吉利海峡的母狮，抛弃贵族小姐的身份，带领着数百海盗纵横英吉利海峡。她头上戴的鲜艳头巾，令海峡的水手望之而逃。" ID="893" MaxStar="5" Name="贝利维夫人" Price="13140" Quality="5" Race="4" SP="8" Sort="913" Star="2" StarUpRate="0.4">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0174</Image>
    <Mitac/>
    <Skill1>52</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>174</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="9" Description="娜迦海妖的分支之一，不同于一般娜迦，飓风女妖身上没有鳞片，更接近于人类，善于控制气流。" ID="894" MaxStar="5" Name="飓风女妖" Price="75" Quality="1" Race="4" SP="6" Sort="147" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0177</Image>
    <Mitac/>
    <Skill1>38</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>895</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="9" Description="娜迦海妖的分支之一，不同于一般娜迦，飓风女妖身上没有鳞片，更接近于人类，善于控制气流。" ID="895" MaxStar="5" Name="飓风女妖" Price="105" Quality="1" Race="4" SP="6" Sort="148" Star="2" StarUpRate="0.7">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0177</Image>
    <Mitac/>
    <Skill1>38</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>177</StarCard>
    <StarRequiredGold>600</StarRequiredGold>
    <StarRequiredHonor>175</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="896" MaxStar="5" Name="骷髅战士" Price="6000" Quality="4" Race="4" SP="8" Sort="479" Star="1" StarUpRate="0.7">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0180</Image>
    <Mitac/>
    <Skill1>161</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="897" MaxStar="5" Name="骷髅战士" Price="6000" Quality="4" Race="4" SP="8" Sort="480" Star="1" StarUpRate="0.7">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0180</Image>
    <Mitac/>
    <Skill1>161</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="898" MaxStar="5" Name="食尸鬼" Price="75" Quality="1" Race="4" SP="6" Sort="95" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0183</Image>
    <Mitac/>
    <Skill1>73</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="" ID="899" MaxStar="5" Name="食尸鬼" Price="75" Quality="1" Race="4" SP="5" Sort="96" Star="1" StarUpRate="0.9">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0183</Image>
    <Mitac/>
    <Skill1>73</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="" ID="900" MaxStar="5" Name="骷髅射手" Price="6000" Quality="4" Race="4" SP="6" Sort="485" Star="1" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0186</Image>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="" ID="901" MaxStar="5" Name="骷髅射手" Price="6000" Quality="4" Race="4" SP="5" Sort="486" Star="1" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0186</Image>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="" ID="902" MaxStar="5" Name="重弩手" Price="75" Quality="1" Race="1" SP="8" Sort="6" Star="1" StarUpRate="0.9">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0189</Image>
    <Mitac/>
    <Skill1>64</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="" ID="903" MaxStar="5" Name="重弩手" Price="75" Quality="1" Race="1" SP="5" Sort="7" Star="1" StarUpRate="0.9">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0189</Image>
    <Mitac/>
    <Skill1>64</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="11" Description="" ID="904" MaxStar="5" Name="窥视之眼" Price="6000" Quality="4" Race="4" SP="4" Sort="470" Star="1" StarUpRate="0.7">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0192</Image>
    <Mitac/>
    <Skill1>146</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="11" Description="" ID="905" MaxStar="5" Name="窥视之眼" Price="6000" Quality="4" Race="4" SP="1" Sort="471" Star="1" StarUpRate="0.7">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0192</Image>
    <Mitac/>
    <Skill1>146</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="不死族，人类死后肉体腐烂，骨骼存留，被亡灵法师召唤，如果生前精于剑技，即成为骷髅剑士。" ID="906" MaxStar="5" Name="骷髅剑士" Price="75" Quality="1" Race="4" SP="8" Sort="141" Star="1" StarUpRate="0.9">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0195</Image>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>907</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="不死族，人类死后肉体腐烂，骨骼存留，被亡灵法师召唤，如果生前精于剑技，即成为骷髅剑士。" ID="907" MaxStar="5" Name="骷髅剑士" Price="105" Quality="1" Race="4" SP="8" Sort="142" Star="2" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0195</Image>
    <Mitac/>
    <Skill1>28</Skill1>
    <Skill2>64</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>195</StarCard>
    <StarRequiredGold>600</StarRequiredGold>
    <StarRequiredHonor>175</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="身体充斥着火焰能量的猴子，来自于熔岩洞窟，但是似乎这种猴子不懂得如何控制强大的力量，经常伤及无辜。" ID="908" MaxStar="5" Name="爆炎猴" Price="75" Quality="1" Race="3" SP="8" Sort="236" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0207</Image>
    <Mitac/>
    <Skill1>2</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>909</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="身体充斥着火焰能量的猴子，来自于熔岩洞窟，但是似乎这种猴子不懂得如何控制强大的力量，经常伤及无辜。" ID="909" MaxStar="5" Name="爆炎猴" Price="105" Quality="1" Race="3" SP="8" Sort="237" Star="2" StarUpRate="0.7">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0207</Image>
    <Mitac/>
    <Skill1>2</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>207</StarCard>
    <StarRequiredGold>600</StarRequiredGold>
    <StarRequiredHonor>175</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="隐居在北极冰渊雪山之巅的冰龙的幼崽。这种上古时期就存在的传说生物拥有近乎永恒的生命和强大的魔法能力。幼年期的冰龙就已经拥有十分惊人的魔法能力。" ID="910" MaxStar="5" Name="幼年冰龙" Price="6000" Quality="4" Race="1" SP="6" Sort="272" Star="1" StarUpRate="0.7">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0210</Image>
    <Mitac/>
    <Skill1>6</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>911</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="隐居在北极冰渊雪山之巅的冰龙的幼崽。这种上古时期就存在的传说生物拥有近乎永恒的生命和强大的魔法能力。幼年期的冰龙就已经拥有十分惊人的魔法能力。" ID="911" MaxStar="5" Name="幼年冰龙" Price="6450" Quality="4" Race="1" SP="6" Sort="273" Star="2" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0210</Image>
    <Mitac/>
    <Skill1>6</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>210</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="11" Description="少年旺达为了复活心爱的少女，偷了族里的神器“往昔之剑”，带着因诅咒而被夺去灵魂的少女的遗体，前往边陲的“往昔大地”，与各种强大的石像战斗，最后作为复活少女的交换条件，将自己的灵魂寄居在石像之中。" ID="912" MaxStar="5" Name="石像旺达" Price="12000" Quality="5" Race="4" SP="10" Sort="697" Star="1" StarUpRate="0.6">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0213</Image>
    <Mitac/>
    <Skill1>10</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>913</StarCard>
    <StarRequiredGold>11400</StarRequiredGold>
    <StarRequiredHonor>1100</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="11" Description="少年旺达为了复活心爱的少女，偷了族里的神器“往昔之剑”，带着因诅咒而被夺去灵魂的少女的遗体，前往边陲的“往昔大地”，与各种强大的石像战斗，最后作为复活少女的交换条件，将自己的灵魂寄居在石像之中。" ID="913" MaxStar="5" Name="石像旺达" Price="13140" Quality="5" Race="4" SP="10" Sort="698" Star="2" StarUpRate="0.4">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0213</Image>
    <Mitac/>
    <Skill1>10</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>213</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="北极冰原海岸冰原特有的巨熊，双目赤红，行走时不断有雪块从身上掉下，落之不竭。" ID="914" MaxStar="5" Name="冰原雪熊" Price="6000" Quality="4" Race="3" SP="8" Sort="585" Star="1" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0216</Image>
    <Mitac/>
    <Skill1>4</Skill1>
    <Skill2>127</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>915</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="北极冰原海岸冰原特有的巨熊，双目赤红，行走时不断有雪块从身上掉下，落之不竭。" ID="915" MaxStar="5" Name="冰原雪熊" Price="6450" Quality="4" Race="3" SP="8" Sort="586" Star="2" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0216</Image>
    <Mitac/>
    <Skill1>4</Skill1>
    <Skill2>127</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>216</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="雪山峡谷中的巨型人猿，传说是北欧原始泰坦的后裔。" ID="916" MaxStar="5" Name="雪人王" Price="6000" Quality="4" Race="2" SP="8" Sort="307" Star="1" StarUpRate="0.7">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0228</Image>
    <Mitac/>
    <Skill1>127</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>917</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="雪山峡谷中的巨型人猿，传说是北欧原始泰坦的后裔。" ID="917" MaxStar="5" Name="雪人王" Price="6450" Quality="4" Race="2" SP="8" Sort="308" Star="2" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0228</Image>
    <Mitac/>
    <Skill1>127</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>228</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="各国公主、奥丁之女以及那些发誓侍神的处女战士之中的被神选中者成为女武神瓦尔基里，她们赐予战死的勇士最后一吻而后把他们带往英灵殿。冰霜女武神为北极之地战死勇士的引领者。" ID="918" MaxStar="5" Name="冰霜女武神" Price="12000" Quality="5" Race="3" SP="8" Sort="904" Star="1" StarUpRate="0.6">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0231</Image>
    <Mitac/>
    <Skill1>4</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>919</StarCard>
    <StarRequiredGold>11400</StarRequiredGold>
    <StarRequiredHonor>1100</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="各国公主、奥丁之女以及那些发誓侍神的处女战士之中的被神选中者成为女武神瓦尔基里，她们赐予战死的勇士最后一吻而后把他们带往英灵殿。冰霜女武神为北极之地战死勇士的引领者。" ID="919" MaxStar="5" Name="冰霜女武神" Price="13140" Quality="5" Race="3" SP="8" Sort="905" Star="2" StarUpRate="0.4">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0231</Image>
    <Mitac/>
    <Skill1>4</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>231</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="王国军队中的高阶战士，通常作为队长，剑术精湛，通常有自己的特技，以一敌十。" ID="920" MaxStar="5" Name="王国剑士" Price="6000" Quality="4" Race="1" SP="10" Sort="322" Star="1" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0234</Image>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>921</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="王国军队中的高阶战士，通常作为队长，剑术精湛，通常有自己的特技，以一敌十。" ID="921" MaxStar="5" Name="王国剑士" Price="6450" Quality="4" Race="1" SP="10" Sort="323" Star="2" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0234</Image>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>234</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="外形似皎洁的骏马，额前有一螺旋角，雷刃独角兽的角为蓝紫色，能发动雷系魔法，讨厌生人，但是喜爱处女。" ID="922" MaxStar="5" Name="雷刃独角兽" Price="12000" Quality="5" Race="1" SP="8" Sort="795" Star="1" StarUpRate="0.6">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0237</Image>
    <Mitac/>
    <Skill1>77</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>923</StarCard>
    <StarRequiredGold>11400</StarRequiredGold>
    <StarRequiredHonor>1100</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="6" Description="外形似皎洁的骏马，额前有一螺旋角，雷刃独角兽的角为蓝紫色，能发动雷系魔法，讨厌生人，但是喜爱处女。" ID="923" MaxStar="5" Name="雷刃独角兽" Price="13140" Quality="5" Race="1" SP="8" Sort="796" Star="2" StarUpRate="0.4">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0237</Image>
    <Mitac/>
    <Skill1>77</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>237</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="11" Description="聚居于火山口的恶魔，手持钢叉，背升双翼，低级魔鬼。" ID="924" MaxStar="5" Name="赤炎小恶魔" Price="75" Quality="1" Race="4" SP="8" Sort="224" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0246</Image>
    <Mitac/>
    <Skill1>175</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>925</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="11" Description="聚居于火山口的恶魔，手持钢叉，背升双翼，低级魔鬼。" ID="925" MaxStar="5" Name="赤炎小恶魔" Price="105" Quality="1" Race="4" SP="6" Sort="225" Star="2" StarUpRate="0.7">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0246</Image>
    <Mitac/>
    <Skill1>175</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>246</StarCard>
    <StarRequiredGold>600</StarRequiredGold>
    <StarRequiredHonor>175</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="精灵之森中的恶魔，被它手上血色镰切开的伤口无法愈合。" ID="926" MaxStar="5" Name="嗜血螳螂" Price="6000" Quality="4" Race="3" SP="10" Sort="345" Star="1" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0249</Image>
    <Mitac/>
    <Skill1>64</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>927</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="精灵之森中的恶魔，被它手上血色镰切开的伤口无法愈合。" ID="927" MaxStar="5" Name="嗜血螳螂" Price="6450" Quality="4" Race="3" SP="10" Sort="346" Star="2" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0249</Image>
    <Mitac/>
    <Skill1>64</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>249</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="众神之王宙斯的化身之一。宙斯贪恋腓尼基公主欧罗巴的美色，变成白牛，欺骗欧罗巴骑上他之后，带之远走。" ID="928" MaxStar="5" Name="金牛座" Price="12000" Quality="5" Race="4" SP="10" Sort="827" Star="1" StarUpRate="0.6">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0252</Image>
    <Mitac/>
    <Skill1>128</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>929</StarCard>
    <StarRequiredGold>11400</StarRequiredGold>
    <StarRequiredHonor>1100</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="众神之王宙斯的化身之一。宙斯贪恋腓尼基公主欧罗巴的美色，变成白牛，欺骗欧罗巴骑上他之后，带之远走。" ID="929" MaxStar="5" Name="金牛座" Price="13140" Quality="5" Race="4" SP="10" Sort="828" Star="2" StarUpRate="0.4">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0252</Image>
    <Mitac/>
    <Skill1>128</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>252</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="中世纪炼金术盛行时诞生的怪物，有着铠甲外壳以及剧毒尾针。" ID="930" MaxStar="5" Name="生化毒蝎" Price="12000" Quality="5" Race="4" SP="12" Sort="714" Star="1" StarUpRate="0.6">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0258</Image>
    <Mitac/>
    <Skill1>50</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>931</StarCard>
    <StarRequiredGold>11400</StarRequiredGold>
    <StarRequiredHonor>1100</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="中世纪炼金术盛行时诞生的怪物，有着铠甲外壳以及剧毒尾针。" ID="931" MaxStar="5" Name="生化毒蝎" Price="13140" Quality="5" Race="4" SP="12" Sort="715" Star="2" StarUpRate="0.4">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0258</Image>
    <Mitac/>
    <Skill1>161</Skill1>
    <Skill2>50</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>258</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="史莱姆的一种，全身有着近千度的高温，于其他史莱姆温顺的性格不同，火焰史莱姆非常的狂野。" ID="932" MaxStar="5" Name="火焰史莱姆" Price="6000" Quality="4" Race="3" SP="10" Sort="508" Star="1" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0261</Image>
    <Mitac/>
    <Skill1>47</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>933</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="4" Description="史莱姆的一种，全身有着近千度的高温，于其他史莱姆温顺的性格不同，火焰史莱姆非常的狂野。" ID="933" MaxStar="5" Name="火焰史莱姆" Price="6450" Quality="4" Race="3" SP="10" Sort="509" Star="2" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0261</Image>
    <Mitac/>
    <Skill1>47</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>261</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="沙盗，掠夺过往商人以探寻沙漠秘宝为生。" ID="934" MaxStar="5" Name="沙漠掠夺者" Price="75" Quality="1" Race="3" SP="6" Sort="104" Star="1" StarUpRate="0.9">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0270</Image>
    <Mitac/>
    <Skill1>155</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>935</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="沙盗，掠夺过往商人以探寻沙漠秘宝为生。" ID="935" MaxStar="5" Name="沙漠掠夺者" Price="105" Quality="1" Race="3" SP="6" Sort="105" Star="2" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0270</Image>
    <Mitac/>
    <Skill1>155</Skill1>
    <Skill2>147</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>270</StarCard>
    <StarRequiredGold>600</StarRequiredGold>
    <StarRequiredHonor>175</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="迷雾之森中的致命黄蜂，被蜇到即死，剧毒无比。" ID="936" MaxStar="5" Name="致命毒蜂" Price="75" Quality="1" Race="3" SP="8" Sort="10" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0273</Image>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>937</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="迷雾之森中的致命黄蜂，被蜇到即死，剧毒无比。" ID="937" MaxStar="5" Name="致命毒蜂" Price="105" Quality="1" Race="3" SP="8" Sort="11" Star="2" StarUpRate="0.7">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0273</Image>
    <Mitac/>
    <Skill1>67</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>273</StarCard>
    <StarRequiredGold>600</StarRequiredGold>
    <StarRequiredHonor>175</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="法师象牙塔派遣到军队中的魔法师，有着强大的魔法能力。" ID="938" MaxStar="5" Name="王国魔法师" Price="6000" Quality="4" Race="1" SP="10" Sort="317" Star="1" StarUpRate="0.7">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0276</Image>
    <Mitac/>
    <Skill1>146</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>939</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="法师象牙塔派遣到军队中的魔法师，有着强大的魔法能力。" ID="939" MaxStar="5" Name="王国魔法师" Price="6450" Quality="4" Race="1" SP="10" Sort="318" Star="2" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0276</Image>
    <Mitac/>
    <Skill1>146</Skill1>
    <Skill2>76</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>276</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="希腊传说中的恶灵，长着一对恶魔翅膀，妖冶的美貌能魅惑男子，同时具有操纵恶灵的能力。" ID="940" MaxStar="5" Name="魅魔" Price="75" Quality="1" Race="2" SP="10" Sort="122" Star="1" StarUpRate="0.9">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0285</Image>
    <Mitac/>
    <Skill1>123</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>941</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="希腊传说中的恶灵，长着一对恶魔翅膀，妖冶的美貌能魅惑男子，同时具有操纵恶灵的能力。" ID="941" MaxStar="5" Name="魅魔" Price="105" Quality="1" Race="2" SP="10" Sort="123" Star="2" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0285</Image>
    <Mitac/>
    <Skill1>123</Skill1>
    <Skill2>161</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>285</StarCard>
    <StarRequiredGold>600</StarRequiredGold>
    <StarRequiredHonor>175</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="教会的神职者，有天分的女性信徒会被教会收留，培养成为女神官，精通白魔法。" ID="942" MaxStar="5" Name="女神官" Price="6000" Quality="4" Race="2" SP="8" Sort="395" Star="1" StarUpRate="0.7">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0294</Image>
    <Mitac/>
    <Skill1>168</Skill1>
    <Skill2>76</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>943</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="教会的神职者，有天分的女性信徒会被教会收留，培养成为女神官，精通白魔法。" ID="943" MaxStar="5" Name="女神官" Price="6450" Quality="4" Race="2" SP="6" Sort="396" Star="2" StarUpRate="0.5">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0294</Image>
    <Mitac/>
    <Skill1>168</Skill1>
    <Skill2>76</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>294</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="史莱姆的一种，通常是高阶女祭司的宠物，本身体质极其适合当白魔法的媒介，自身也会回复魔法。" ID="944" MaxStar="5" Name="彩虹史莱姆" Price="6000" Quality="4" Race="3" SP="10" Sort="579" Star="1" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0297_1</Image>
    <Mitac/>
    <Skill1>169</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>945</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="史莱姆的一种，通常是高阶女祭司的宠物，本身体质极其适合当白魔法的媒介，自身也会回复魔法。" ID="945" MaxStar="5" Name="彩虹史莱姆" Price="6450" Quality="4" Race="3" SP="10" Sort="580" Star="2" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0297_1</Image>
    <Mitac/>
    <Skill1>169</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>297</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="体内隐藏疯狂之血，平时是普通人类，到了月圆之夜变身为狼人，嗜血狂暴。" ID="946" MaxStar="5" Name="嗜血狼人" Price="12000" Quality="5" Race="4" SP="10" Sort="685" Star="1" StarUpRate="0.6">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0307</Image>
    <Mitac/>
    <Skill1>144</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>947</StarCard>
    <StarRequiredGold>11400</StarRequiredGold>
    <StarRequiredHonor>1100</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="10" Description="体内隐藏疯狂之血，平时是普通人类，到了月圆之夜变身为狼人，嗜血狂暴。" ID="947" MaxStar="5" Name="嗜血狼人" Price="13140" Quality="5" Race="4" SP="10" Sort="686" Star="2" StarUpRate="0.4">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0307</Image>
    <Mitac/>
    <Skill1>144</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>307</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="瓦拉基亚公国的伯爵，骁勇善战，屡次击败奥斯曼帝国的入侵，但为人残暴，死后吸收人间的阴暗面精神，将其转化成黑暗力量，并以此肆虐人间。" ID="948" MaxStar="5" Name="德拉古拉" Price="6000" Quality="4" Race="4" SP="10" Sort="566" Star="1" StarUpRate="0.7">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0310</Image>
    <Mitac/>
    <Skill1>144</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>949</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="瓦拉基亚公国的伯爵，骁勇善战，屡次击败奥斯曼帝国的入侵，但为人残暴，死后吸收人间的阴暗面精神，将其转化成黑暗力量，并以此肆虐人间。" ID="949" MaxStar="5" Name="德拉古拉" Price="6450" Quality="4" Race="4" SP="10" Sort="567" Star="2" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0310</Image>
    <Mitac/>
    <Skill1>144</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>310</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="熔岩火山地核能量产生的精神体附着于火山石块之上而诞生的强大生物。" ID="950" MaxStar="5" Name="熔岩巨兽" Price="12000" Quality="5" Race="3" SP="8" Sort="732" Star="1" StarUpRate="0.6">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0325</Image>
    <Mitac/>
    <Skill1>2</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>951</StarCard>
    <StarRequiredGold>11400</StarRequiredGold>
    <StarRequiredHonor>1100</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="熔岩火山地核能量产生的精神体附着于火山石块之上而诞生的强大生物。" ID="951" MaxStar="5" Name="熔岩巨兽" Price="13140" Quality="5" Race="3" SP="8" Sort="733" Star="2" StarUpRate="0.4">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0325</Image>
    <Mitac/>
    <Skill1>2</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>325</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="南方守护圣兽，吞噬恶龙而生，不死不灭的存在，能涅槃重生。" ID="952" MaxStar="5" Name="火凤凰" Price="16500" Quality="5" Race="3" SP="4" Sort="843" Star="4" StarUpRate="0.08">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0340</Image>
    <Mitac/>
    <Skill1>48</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>953</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="南方守护圣兽，吞噬恶龙而生，不死不灭的存在，能涅槃重生。" ID="953" MaxStar="5" Name="火凤凰" Price="18720" Quality="5" Race="3" SP="4" Sort="844" Star="5" StarUpRate="0">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0340</Image>
    <Mitac/>
    <Skill1>48</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="死亡使者是盗贼对本职业里最顶级强者的称呼，比起盗贼的偷窃暗杀，死亡使者有着超级强大的近身战斗能力，他们能迅速而且毫无声息的接近对方给予致命一击后进行正面击杀。" ID="954" MaxStar="5" Name="死亡使者" Price="12000" Quality="5" Race="1" SP="8" Sort="678" Star="1" StarUpRate="0.6">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0369</Image>
    <Mitac/>
    <Skill1>64</Skill1>
    <Skill2>18</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>369</StarCard>
    <StarRequiredGold>11400</StarRequiredGold>
    <StarRequiredHonor>1100</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="死亡使者是盗贼对本职业里最顶级强者的称呼，比起盗贼的偷窃暗杀，死亡使者有着超级强大的近身战斗能力，他们能迅速而且毫无声息的接近对方给予致命一击后进行正面击杀。" ID="955" MaxStar="5" Name="死亡使者" Price="18720" Quality="5" Race="1" SP="8" Sort="682" Star="5" StarUpRate="0">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0369</Image>
    <Mitac/>
    <Skill1>64</Skill1>
    <Skill2>19</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="异界而来的东方武士，拥有隐藏着鬼神力量的左手，带着面具，没人知道他的真面目。" ID="956" MaxStar="5" Name="鬼武者" Price="12000" Quality="5" Race="1" SP="8" Sort="858" Star="1" StarUpRate="0.6">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0372</Image>
    <Mitac/>
    <Skill1>156</Skill1>
    <Skill2>18</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>372</StarCard>
    <StarRequiredGold>11400</StarRequiredGold>
    <StarRequiredHonor>1100</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="异界而来的东方武士，拥有隐藏着鬼神力量的左手，带着面具，没人知道他的真面目。" ID="957" MaxStar="5" Name="鬼武者" Price="18720" Quality="5" Race="1" SP="6" Sort="862" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0372</Image>
    <Mitac/>
    <Skill1>156</Skill1>
    <Skill2>19</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="受迷雾之森感染，而变得嗜血的猫类，由于同时变得智商极高，所以善于偷袭，令人防不胜防。" ID="958" MaxStar="5" Name="猫妖" Price="75" Quality="1" Race="1" SP="6" Sort="127" Star="1" StarUpRate="0.9">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0375</Image>
    <Mitac/>
    <Skill1>18</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>959</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="受迷雾之森感染，而变得嗜血的猫类，由于同时变得智商极高，所以善于偷袭，令人防不胜防。" ID="959" MaxStar="5" Name="猫妖" Price="105" Quality="1" Race="1" SP="6" Sort="128" Star="2" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0375</Image>
    <Mitac/>
    <Skill1>18</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>375</StarCard>
    <StarRequiredGold>600</StarRequiredGold>
    <StarRequiredHonor>175</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="960" MaxStar="5" Name="德鲁伊" Price="75" Quality="1" Race="3" SP="8" Sort="202" Star="1" StarUpRate="0.9">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0402</Image>
    <Mitac/>
    <Skill1>153</Skill1>
    <Skill2>38</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>403</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="2" Description="" ID="961" MaxStar="5" Name="德鲁伊" Price="75" Quality="1" Race="3" SP="5" Sort="203" Star="1" StarUpRate="0.9">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0402</Image>
    <Mitac/>
    <Skill1>153</Skill1>
    <Skill2>38</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>403</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="与恶魔力量签订契约的精灵，但是发现了恶魔最终的目标是精灵后，最后为了保卫族人而不惜撕毁契约开始猎杀恶魔。" ID="962" MaxStar="5" Name="恶魔猎手" Price="18000" Quality="6" Race="2" SP="10" Sort="1037" Star="1" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0405</Image>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>169</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>405</StarCard>
    <StarRequiredGold>23700</StarRequiredGold>
    <StarRequiredHonor>2250</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="6" Description="与恶魔力量签订契约的精灵，但是发现了恶魔最终的目标是精灵后，最后为了保卫族人而不惜撕毁契约开始猎杀恶魔。" ID="963" MaxStar="5" Name="恶魔猎手" Price="29760" Quality="6" Race="2" SP="6" Sort="1041" Star="5" StarUpRate="0">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0405</Image>
    <Mitac/>
    <Skill1>51</Skill1>
    <Skill2>169</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="7" Description="位于北极冰渊附近的熔岩洞穴，火龙王巴哈姆特诞生之地。经常有大规模的岩浆喷发，传说下面还封印着炎之精灵。" ID="964" MaxStar="5" Name="龙炎洞窟" Price="6000" Quality="4" Race="1" SP="4" Sort="448" Star="1" StarUpRate="0.7">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0444</Image>
    <Mitac/>
    <Skill1>177</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>965</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="7" Description="位于北极冰渊附近的熔岩洞穴，火龙王巴哈姆特诞生之地。经常有大规模的岩浆喷发，传说下面还封印着炎之精灵。" ID="965" MaxStar="5" Name="龙炎洞窟" Price="6450" Quality="4" Race="1" SP="4" Sort="449" Star="2" StarUpRate="0.5">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0444</Image>
    <Mitac/>
    <Skill1>177</Skill1>
    <Skill2>74</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>444</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="7" Description="世界之巅喜马拉雅山脉有着世界上极端寒冷的气候，它下面却深埋着温度极高的熔岩地核。在这样的神迹下蕴育而成的温泉。雪山女神帕尔瓦蒂曾将自己深浸其中，最终用令诸神震惊的苦行打动了湿婆的心。" ID="966" MaxStar="5" Name="喜马拉雅温泉" Price="12000" Quality="5" Race="4" SP="10" Sort="645" Star="1" StarUpRate="0.6">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0465</Image>
    <Mitac/>
    <Skill1>169</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>967</StarCard>
    <StarRequiredGold>11400</StarRequiredGold>
    <StarRequiredHonor>1100</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="7" Description="世界之巅喜马拉雅山脉有着世界上极端寒冷的气候，它下面却深埋着温度极高的熔岩地核。在这样的神迹下蕴育而成的温泉。雪山女神帕尔瓦蒂曾将自己深浸其中，最终用令诸神震惊的苦行打动了湿婆的心。" ID="967" MaxStar="5" Name="喜马拉雅温泉" Price="13140" Quality="5" Race="4" SP="10" Sort="646" Star="2" StarUpRate="0.4">
    <AP>0</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0465</Image>
    <Mitac/>
    <Skill1>169</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>465</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="北欧神器，世界诞生之初就存在的保卫人类世界的四神器之一。" ID="968" MaxStar="5" Name="龙之宝玉奥普" Price="12000" Quality="5" Race="5" SP="16" Sort="786" Star="1" StarUpRate="0.6">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0474</Image>
    <Mitac/>
    <Skill1>19</Skill1>
    <Skill2>17</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>969</StarCard>
    <StarRequiredGold>11400</StarRequiredGold>
    <StarRequiredHonor>1100</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="北欧神器，世界诞生之初就存在的保卫人类世界的四神器之一。" ID="969" MaxStar="5" Name="龙之宝玉奥普" Price="13140" Quality="5" Race="5" SP="14" Sort="787" Star="2" StarUpRate="0.4">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0474</Image>
    <Mitac/>
    <Skill1>19</Skill1>
    <Skill2>17</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>474</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="克苏鲁神话中的神器，由第六代女王所拥有，传说这面镜子能够反映出人心灵的真实，也能够召唤魔物以及制造分身。" ID="970" MaxStar="5" Name="妮特莉丝之镜" Price="12000" Quality="5" Race="5" SP="10" Sort="753" Star="1" StarUpRate="0.6">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0477</Image>
    <Mitac/>
    <Skill1>20</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>971</StarCard>
    <StarRequiredGold>11400</StarRequiredGold>
    <StarRequiredHonor>1100</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="克苏鲁神话中的神器，由第六代女王所拥有，传说这面镜子能够反映出人心灵的真实，也能够召唤魔物以及制造分身。" ID="971" MaxStar="5" Name="妮特莉丝之镜" Price="13140" Quality="5" Race="5" SP="8" Sort="754" Star="2" StarUpRate="0.4">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0477</Image>
    <Mitac/>
    <Skill1>20</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>477</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="宙斯的武器，一端能喷出火，另一端能放出闪电。在宙斯想用的时候，天马派格萨斯就会将他送到，众神的意志的象征。" ID="972" MaxStar="5" Name="霹雳权杖" Price="6000" Quality="4" Race="5" SP="10" Sort="390" Star="1" StarUpRate="0.7">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0480</Image>
    <Mitac/>
    <Skill1>83</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>973</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="宙斯的武器，一端能喷出火，另一端能放出闪电。在宙斯想用的时候，天马派格萨斯就会将他送到，众神的意志的象征。" ID="973" MaxStar="5" Name="霹雳权杖" Price="6450" Quality="4" Race="5" SP="8" Sort="391" Star="2" StarUpRate="0.5">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0480</Image>
    <Mitac/>
    <Skill1>83</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>480</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="天使的翅膀，凡人带上能自由翱翔。" ID="974" MaxStar="5" Name="翅膀" Price="75" Quality="1" Race="5" SP="8" Sort="219" Star="1" StarUpRate="0.9">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0483</Image>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>975</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="天使的翅膀，凡人带上能自由翱翔。" ID="975" MaxStar="5" Name="翅膀" Price="105" Quality="1" Race="5" SP="6" Sort="220" Star="2" StarUpRate="0.7">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0483</Image>
    <Mitac/>
    <Skill1>21</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>483</StarCard>
    <StarRequiredGold>600</StarRequiredGold>
    <StarRequiredHonor>175</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="诸神为止战而施放强大的神力，将战场上所有的物品装备都席卷粉碎。" ID="976" MaxStar="5" Name="粉碎狂潮" Price="75" Quality="1" Race="5" SP="12" Sort="187" Star="1" StarUpRate="0.9">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0489</Image>
    <Mitac/>
    <Skill1>60</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>977</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="诸神为止战而施放强大的神力，将战场上所有的物品装备都席卷粉碎。" ID="977" MaxStar="5" Name="粉碎狂潮" Price="105" Quality="1" Race="5" SP="10" Sort="188" Star="2" StarUpRate="0.7">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0489</Image>
    <Mitac/>
    <Skill1>60</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>489</StarCard>
    <StarRequiredGold>600</StarRequiredGold>
    <StarRequiredHonor>175</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="13" Description="欲毁肉身，先斩灵魂。高阶精神魔法的一种，用精神力直接劈开灵魂，使对象死亡。记载有这种魔法力量的卷轴极其昂贵。" ID="978" MaxStar="5" Name="裂魂术" Price="6000" Quality="4" Race="5" SP="10" Sort="453" Star="1" StarUpRate="0.7">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0492</Image>
    <Mitac/>
    <Skill1>12</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>979</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="13" Description="欲毁肉身，先斩灵魂。高阶精神魔法的一种，用精神力直接劈开灵魂，使对象死亡。记载有这种魔法力量的卷轴极其昂贵。" ID="979" MaxStar="5" Name="裂魂术" Price="6450" Quality="4" Race="5" SP="8" Sort="454" Star="2" StarUpRate="0.5">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0492</Image>
    <Mitac/>
    <Skill1>12</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>492</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="雷神托尔所拥有的装备，带上它就能拥有无与伦比的神力。" ID="980" MaxStar="5" Name="托尔的铁手套" Price="12000" Quality="5" Race="5" SP="12" Sort="664" Star="1" StarUpRate="0.6">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0516</Image>
    <Mitac/>
    <Skill1>31</Skill1>
    <Skill2>91</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>981</StarCard>
    <StarRequiredGold>11400</StarRequiredGold>
    <StarRequiredHonor>1100</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="雷神托尔所拥有的装备，带上它就能拥有无与伦比的神力。" ID="981" MaxStar="5" Name="托尔的铁手套" Price="13140" Quality="5" Race="5" SP="10" Sort="665" Star="2" StarUpRate="0.4">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0516</Image>
    <Mitac/>
    <Skill1>31</Skill1>
    <Skill2>91</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>516</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="1" Description="复仇女神，帮助英雄伊阿宋取得金羊毛后与之结婚，但因为丈夫后来的移情别恋而杀死了自己的两个儿子以及伊阿宋的新欢后逃走。" ID="982" MaxStar="5" Name="美狄亚" Price="6000" Quality="4" Race="2" SP="10" Sort="439" Star="1" StarUpRate="0.7">
    <AP>0</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0525_1</Image>
    <Mitac>2</Mitac>
    <Skill1>37</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>983</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="复仇女神，帮助英雄伊阿宋取得金羊毛后与之结婚，但因为丈夫后来的移情别恋而杀死了自己的两个儿子以及伊阿宋的新欢后逃走。" ID="983" MaxStar="5" Name="美狄亚" Price="6450" Quality="4" Race="2" SP="10" Sort="440" Star="2" StarUpRate="0.5">
    <AP>0</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0525_1</Image>
    <Mitac>2</Mitac>
    <Skill1>37</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>525</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="8" Description="传说龙炎洞窟是由火龙王巴哈姆特的龙息而形成，曾有人目睹过火龙从中飞出，关于洞窟内部有龙存在的传说从来没有停止过流传，而如今幼年火龙的出现证明了这种传闻的真实。" ID="984" MaxStar="5" Name="幼年火龙" Price="6000" Quality="4" Race="4" SP="8" Sort="266" Star="1" StarUpRate="0.7">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0543</Image>
    <Mitac/>
    <Skill1>86</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>985</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="8" Description="传说龙炎洞窟是由火龙王巴哈姆特的龙息而形成，曾有人目睹过火龙从中飞出，关于洞窟内部有龙存在的传说从来没有停止过流传，而如今幼年火龙的出现证明了这种传闻的真实。" ID="985" MaxStar="5" Name="幼年火龙" Price="6450" Quality="4" Race="4" SP="8" Sort="267" Star="2" StarUpRate="0.5">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0543</Image>
    <Mitac/>
    <Skill1>86</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>543</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="1" Description="加百列本为炽天使，但因在惩罚人类的问题上与上帝意见相左，激怒上帝，而被贬入大天界。" ID="986" MaxStar="5" Name="加百列" Price="16500" Quality="5" Race="4" SP="8" Sort="835" Star="4" StarUpRate="0.08">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0555</Image>
    <Mitac>0</Mitac>
    <Skill1>21</Skill1>
    <Skill2>52</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>987</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="加百列本为炽天使，但因在惩罚人类的问题上与上帝意见相左，激怒上帝，而被贬入大天界。" ID="987" MaxStar="5" Name="加百列" Price="18720" Quality="5" Race="4" SP="6" Sort="836" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0555</Image>
    <Mitac>0</Mitac>
    <Skill1>21</Skill1>
    <Skill2>52</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="13" Description="战神玛尔斯的怒吼，能让战士无畏恐惧，力量倍增。" ID="988" MaxStar="5" Name="战神呐喊" Price="6000" Quality="4" Race="5" SP="14" Sort="259" Star="1" StarUpRate="0.7">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0573</Image>
    <Mitac/>
    <Skill1>111</Skill1>
    <Skill2>105</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>989</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="战神玛尔斯的怒吼，能让战士无畏恐惧，力量倍增。" ID="989" MaxStar="5" Name="战神呐喊" Price="6450" Quality="4" Race="5" SP="12" Sort="260" Star="2" StarUpRate="0.5">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0573</Image>
    <Mitac/>
    <Skill1>111</Skill1>
    <Skill2>105</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>573</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="10" Description="曾是美丽的少女，因说自己比雅典娜还要美而激怒了雅典娜，把她变成了拥有石化之眼的蛇发女妖，任何人只要看她一眼，立刻变成石头。后被珀尔修斯斩下头颅。" ID="990" MaxStar="5" Name="美杜莎之颅" Price="12000" Quality="5" Race="4" SP="10" Sort="775" Star="1" StarUpRate="0.6">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0579</Image>
    <Mitac/>
    <Skill1>112</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>991</StarCard>
    <StarRequiredGold>11400</StarRequiredGold>
    <StarRequiredHonor>1100</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="10" Description="曾是美丽的少女，因说自己比雅典娜还要美而激怒了雅典娜，把她变成了拥有石化之眼的蛇发女妖，任何人只要看她一眼，立刻变成石头。后被珀尔修斯斩下头颅。" ID="991" MaxStar="5" Name="美杜莎之颅" Price="13140" Quality="5" Race="4" SP="10" Sort="776" Star="2" StarUpRate="0.4">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0579</Image>
    <Mitac/>
    <Skill1>112</Skill1>
    <Skill2>21</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>579</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="神话中沉睡的少女，只有当被命运选中的王子亲吻她的时候才会苏醒，睡美人的呢喃则会使人一同进入昏睡。" ID="992" MaxStar="5" Name="睡美人的呢喃" Price="6000" Quality="4" Race="2" SP="10" Sort="339" Star="1" StarUpRate="0.7">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0582</Image>
    <Mitac/>
    <Skill1>113</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>993</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="神话中沉睡的少女，只有当被命运选中的王子亲吻她的时候才会苏醒，睡美人的呢喃则会使人一同进入昏睡。" ID="993" MaxStar="5" Name="睡美人的呢喃" Price="6450" Quality="4" Race="2" SP="8" Sort="340" Star="2" StarUpRate="0.5">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0582</Image>
    <Mitac/>
    <Skill1>113</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>582</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="宣扬自己的教义，让对方的信徒加入我们。" ID="994" MaxStar="5" Name="信仰掠夺" Price="75" Quality="1" Race="5" SP="12" Sort="53" Star="1" StarUpRate="0.9">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0597</Image>
    <Mitac/>
    <Skill1>120</Skill1>
    <Skill2>125</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>995</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="宣扬自己的教义，让对方的信徒加入我们。" ID="995" MaxStar="5" Name="信仰掠夺" Price="105" Quality="1" Race="5" SP="10" Sort="54" Star="2" StarUpRate="0.7">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0597</Image>
    <Mitac/>
    <Skill1>120</Skill1>
    <Skill2>125</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>597</StarCard>
    <StarRequiredGold>600</StarRequiredGold>
    <StarRequiredHonor>175</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="弗丽嘉要求世界上的一切向她发誓，保证它们永不伤害她儿子巴德尔，只有弱小的檞寄生没有被要求。洛基唆使黑暗之神将檞寄生投向巴德尔，将他杀死。" ID="996" MaxStar="5" Name="槲寄生" Price="6000" Quality="4" Race="5" SP="4" Sort="520" Star="1" StarUpRate="0.7">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0606</Image>
    <Mitac/>
    <Skill1>130</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>997</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="弗丽嘉要求世界上的一切向她发誓，保证它们永不伤害她儿子巴德尔，只有弱小的檞寄生没有被要求。洛基唆使黑暗之神将檞寄生投向巴德尔，将他杀死。" ID="997" MaxStar="5" Name="槲寄生" Price="6450" Quality="4" Race="5" SP="2" Sort="521" Star="2" StarUpRate="0.5">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0606</Image>
    <Mitac/>
    <Skill1>130</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>606</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="神话的最终章。以光明之神巴尔德之死拉开帷幕，洛基带领泰坦与众神同归于尽，世界崩坏归于虚无而拉下帷幕的终极挽歌。浩劫毁灭了世界，却也毁灭了邪恶，随着世界树的重生，幸存者将用他们无畏的生命开拓出新的美好世界。" ID="998" MaxStar="5" Name="诸神的黄昏" Price="18000" Quality="6" Race="5" SP="24" Sort="934" Star="1" StarUpRate="0.5">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0609</Image>
    <Mitac/>
    <Skill1>133</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>999</StarCard>
    <StarRequiredGold>23700</StarRequiredGold>
    <StarRequiredHonor>2250</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="神话的最终章。以光明之神巴尔德之死拉开帷幕，洛基带领泰坦与众神同归于尽，世界崩坏归于虚无而拉下帷幕的终极挽歌。浩劫毁灭了世界，却也毁灭了邪恶，随着世界树的重生，幸存者将用他们无畏的生命开拓出新的美好世界。" ID="999" MaxStar="5" Name="诸神的黄昏" Price="20370" Quality="6" Race="5" SP="22" Sort="935" Star="2" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0609</Image>
    <Mitac/>
    <Skill1>133</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>609</StarCard>
    <StarRequiredGold>27900</StarRequiredGold>
    <StarRequiredHonor>2650</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="被亡灵法师或者黑暗法师召唤小孩腐烂尸体而复活的不死生物，没有强大的物理伤害能力，但擅长精神攻击。" ID="1000" MaxStar="5" Name="恶灵娃娃" Price="75" Quality="1" Race="3" SP="4" Sort="192" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0621_1</Image>
    <Mitac/>
    <Skill1>145</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1001</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="被亡灵法师或者黑暗法师召唤小孩腐烂尸体而复活的不死生物，没有强大的物理伤害能力，但擅长精神攻击。" ID="1001" MaxStar="5" Name="恶灵娃娃" Price="105" Quality="1" Race="3" SP="4" Sort="193" Star="2" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>2</HP>
    <Image>0621_1</Image>
    <Mitac/>
    <Skill1>145</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>621</StarCard>
    <StarRequiredGold>600</StarRequiredGold>
    <StarRequiredHonor>175</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="1" Description="北欧主神之一，狡猾聪明，在杀死光明之神巴德尔后，众神的忍耐到了极限视他为邪神而驱逐出金宫。随后洛基与希腊大地女神盖亚发动了诸神之战。" ID="1002" MaxStar="5" Name="邪神洛基" Price="18000" Quality="6" Race="3" SP="10" Sort="968" Star="1" StarUpRate="0.5">
    <AP>2</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0627</Image>
    <Mitac>2</Mitac>
    <Skill1>152</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1003</StarCard>
    <StarRequiredGold>23700</StarRequiredGold>
    <StarRequiredHonor>2250</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="北欧主神之一，狡猾聪明，在杀死光明之神巴德尔后，众神的忍耐到了极限视他为邪神而驱逐出金宫。随后洛基与希腊大地女神盖亚发动了诸神之战。" ID="1003" MaxStar="5" Name="邪神洛基" Price="20370" Quality="6" Race="3" SP="10" Sort="969" Star="2" StarUpRate="0.3">
    <AP>3</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0627</Image>
    <Mitac>2</Mitac>
    <Skill1>152</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>627</StarCard>
    <StarRequiredGold>27900</StarRequiredGold>
    <StarRequiredHonor>2650</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="2" Description="雅典附近流域里的怪鱼，能将自己鼓胀成球状发射刺针。" ID="1004" MaxStar="5" Name="河豚刺鱼" Price="75" Quality="1" Race="2" SP="8" Sort="172" Star="1" StarUpRate="0.9">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>0630</Image>
    <Mitac/>
    <Skill1>164</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1005</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="雅典附近流域里的怪鱼，能将自己鼓胀成球状发射刺针。" ID="1005" MaxStar="5" Name="河豚刺鱼" Price="105" Quality="1" Race="2" SP="8" Sort="173" Star="2" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0630</Image>
    <Mitac/>
    <Skill1>164</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>630</StarCard>
    <StarRequiredGold>600</StarRequiredGold>
    <StarRequiredHonor>175</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="1" Description="奥林匹斯十二主神之一，宙斯之女，也被认为是宙斯意志的化身，同时也是女战神和智慧女神。" ID="1006" MaxStar="5" Name="雅典娜" Price="26160" Quality="6" Race="2" SP="8" Sort="966" Star="4" StarUpRate="0.05">
    <AP>2</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0008</Image>
    <Mitac>0</Mitac>
    <Skill1>25</Skill1>
    <Skill2>83</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>1007</StarCard>
    <StarRequiredGold>36000</StarRequiredGold>
    <StarRequiredHonor>3450</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="奥林匹斯十二主神之一，宙斯之女，也被认为是宙斯意志的化身，同时也是女战神和智慧女神。" ID="1007" MaxStar="5" Name="雅典娜" Price="29760" Quality="6" Race="2" SP="6" Sort="967" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0008</Image>
    <Mitac>0</Mitac>
    <Skill1>25</Skill1>
    <Skill2>83</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="法兰克国王，神圣罗马帝国开国皇帝。铁蹄踏遍欧罗巴，在天使的指引下，带领人们抵抗泰坦的入侵。" ID="1008" MaxStar="5" Name="查理曼大帝" Price="26160" Quality="6" Race="1" SP="6" Sort="1047" Star="4" StarUpRate="0.05">
    <AP>2</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>10</HP>
    <Image>0016_1</Image>
    <Mitac>0</Mitac>
    <Skill1>147</Skill1>
    <Skill2>91</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>1009</StarCard>
    <StarRequiredGold>36000</StarRequiredGold>
    <StarRequiredHonor>3450</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="法兰克国王，神圣罗马帝国开国皇帝。铁蹄踏遍欧罗巴，在天使的指引下，带领人们抵抗泰坦的入侵。" ID="1009" MaxStar="5" Name="查理曼大帝" Price="29760" Quality="6" Race="1" SP="6" Sort="1048" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally>6</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>11</HP>
    <Image>0016_1</Image>
    <Mitac>0</Mitac>
    <Skill1>147</Skill1>
    <Skill2>91</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="亚瑟王的十二圆桌骑士中的传奇。强大无匹而且富有正义感，是亚瑟王最忠诚的左右手，但是因为暗恋皇后格尼薇儿而导致了圆桌骑士的内战。" ID="1010" MaxStar="5" Name="兰斯洛特" Price="18720" Quality="5" Race="1" SP="4" Sort="809" Star="5" StarUpRate="0">
    <AP>3</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>8</HP>
    <Image>0026_1</Image>
    <Mitac>1</Mitac>
    <Skill1>56</Skill1>
    <Skill2>99</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="12" Description="编织命运之弓，被这把弓瞄准的时候，你的命运已经决定了。" ID="1011" MaxStar="5" Name="魔弓编织者" Price="6000" Quality="4" Race="5" SP="8" Sort="420" Star="1" StarUpRate="0.7">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0727</Image>
    <Mitac/>
    <Skill1>31</Skill1>
    <Skill2>51</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>1012</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="编织命运之弓，被这把弓瞄准的时候，你的命运已经决定了。" ID="1012" MaxStar="5" Name="魔弓编织者" Price="6450" Quality="4" Race="5" SP="6" Sort="421" Star="2" StarUpRate="0.5">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0727</Image>
    <Mitac/>
    <Skill1>31</Skill1>
    <Skill2>51</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>727</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="传说中，这把枪只要给敌人造成一个微小的伤口，就能进入敌人的体内并分裂出3个倒钩棘刺，只能切开受害者的肉才能把它取出来。" ID="1013" MaxStar="5" Name="蛇腹之枪" Price="6000" Quality="4" Race="5" SP="8" Sort="371" Star="1" StarUpRate="0.7">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0739</Image>
    <Mitac/>
    <Skill1>32</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1014</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="传说中，这把枪只要给敌人造成一个微小的伤口，就能进入敌人的体内并分裂出3个倒钩棘刺，只能切开受害者的肉才能把它取出来。" ID="1014" MaxStar="5" Name="蛇腹之枪" Price="6450" Quality="4" Race="5" SP="6" Sort="372" Star="2" StarUpRate="0.5">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0739</Image>
    <Mitac/>
    <Skill1>32</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>739</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="传说中唯一伤害过神之子的武器，该枪也因刺伤耶稣的战士之名而命名，此枪又被称为“命运之枪”或“圣枪”。" ID="1015" MaxStar="5" Name="朗基奴斯之枪" Price="12000" Quality="5" Race="5" SP="10" Sort="800" Star="1" StarUpRate="0.6">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0754</Image>
    <Mitac/>
    <Skill1>53</Skill1>
    <Skill2>92</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>1016</StarCard>
    <StarRequiredGold>11400</StarRequiredGold>
    <StarRequiredHonor>1100</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="传说中唯一伤害过神之子的武器，该枪也因刺伤耶稣的战士之名而命名，此枪又被称为“命运之枪”或“圣枪”。" ID="1016" MaxStar="5" Name="朗基奴斯之枪" Price="13140" Quality="5" Race="5" SP="8" Sort="801" Star="2" StarUpRate="0.4">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0754</Image>
    <Mitac/>
    <Skill1>53</Skill1>
    <Skill2>92</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>754</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="王权的象征，天命之剑。“凡能自石台上拔出此剑者，即为天命之王”。最后由亚瑟王将其拔出。" ID="1017" MaxStar="5" Name="石中剑" Price="12000" Quality="5" Race="5" SP="12" Sort="692" Star="1" StarUpRate="0.6">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0760</Image>
    <Mitac/>
    <Skill1>131</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1018</StarCard>
    <StarRequiredGold>11400</StarRequiredGold>
    <StarRequiredHonor>1100</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="王权的象征，天命之剑。“凡能自石台上拔出此剑者，即为天命之王”。最后由亚瑟王将其拔出。" ID="1018" MaxStar="5" Name="石中剑" Price="13140" Quality="5" Race="5" SP="10" Sort="693" Star="2" StarUpRate="0.4">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0760</Image>
    <Mitac/>
    <Skill1>131</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>760</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="珀尔修斯杀死了美杜莎，之后把头颅交给雅典娜，雅典娜把它固定在宙斯送她的神盾之上，也称美杜莎之盾，希腊最强神器之一。" ID="1019" MaxStar="5" Name="雅典娜之盾" Price="18000" Quality="6" Race="5" SP="10" Sort="958" Star="1" StarUpRate="0.5">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0766</Image>
    <Mitac/>
    <Skill1>90</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1020</StarCard>
    <StarRequiredGold>23700</StarRequiredGold>
    <StarRequiredHonor>2250</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="珀尔修斯杀死了美杜莎，之后把头颅交给雅典娜，雅典娜把它固定在宙斯送她的神盾之上，也称美杜莎之盾，希腊最强神器之一。" ID="1020" MaxStar="5" Name="雅典娜之盾" Price="20370" Quality="6" Race="5" SP="10" Sort="959" Star="2" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0766</Image>
    <Mitac/>
    <Skill1>90</Skill1>
    <Skill2>28</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>766</StarCard>
    <StarRequiredGold>27900</StarRequiredGold>
    <StarRequiredHonor>2650</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="吉尔伽美什乌鲁克王所有之武器，巴比伦的创世神话，意为“在诸天之上”。" ID="1021" MaxStar="5" Name="斩裂世界" Price="18000" Quality="6" Race="5" SP="12" Sort="942" Star="1" StarUpRate="0.5">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0769</Image>
    <Mitac/>
    <Skill1>108</Skill1>
    <Skill2>148</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>769</StarCard>
    <StarRequiredGold>23700</StarRequiredGold>
    <StarRequiredHonor>2250</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="吉尔伽美什乌鲁克王所有之武器，巴比伦的创世神话，意为“在诸天之上”。" ID="1022" MaxStar="5" Name="斩裂世界" Price="29760" Quality="6" Race="5" SP="6" Sort="946" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0769</Image>
    <Mitac/>
    <Skill1>108</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="1023" MaxStar="5" Name="海姆达尔号角" Price="18000" Quality="6" Race="5" SP="10" Sort="1029" Star="1" StarUpRate="0.5">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0787</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>788</StarCard>
    <StarRequiredGold>23700</StarRequiredGold>
    <StarRequiredHonor>2250</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="" ID="1024" MaxStar="5" Name="海姆达尔号角" Price="18000" Quality="6" Race="5" SP="10" Sort="1030" Star="1" StarUpRate="0.5">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0787</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>788</StarCard>
    <StarRequiredGold>23700</StarRequiredGold>
    <StarRequiredHonor>2250</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="海王波塞冬的武器，具有驾驭风浪的力量，能召唤潮汐。" ID="1025" MaxStar="5" Name="海王三叉戟" Price="6000" Quality="4" Race="5" SP="6" Sort="526" Star="1" StarUpRate="0.7">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0796</Image>
    <Mitac/>
    <Skill1>31</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1026</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="海王波塞冬的武器，具有驾驭风浪的力量，能召唤潮汐。" ID="1026" MaxStar="5" Name="海王三叉戟" Price="6450" Quality="4" Race="5" SP="6" Sort="527" Star="2" StarUpRate="0.5">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0796</Image>
    <Mitac/>
    <Skill1>31</Skill1>
    <Skill2>66</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>796</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="凯尔特神鲁格制造之剑。被这把剑指着咽喉时任何人都无法说谎，因此称为应答者。此外剑制造的伤痕无法治愈，而且能自动斩杀敌人后飞回。" ID="1027" MaxStar="5" Name="应答者" Price="6000" Quality="4" Race="5" SP="8" Sort="293" Star="1" StarUpRate="0.7">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0799</Image>
    <Mitac/>
    <Skill1>31</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1028</StarCard>
    <StarRequiredGold>4500</StarRequiredGold>
    <StarRequiredHonor>425</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="凯尔特神鲁格制造之剑。被这把剑指着咽喉时任何人都无法说谎，因此称为应答者。此外剑制造的伤痕无法治愈，而且能自动斩杀敌人后飞回。" ID="1028" MaxStar="5" Name="应答者" Price="6450" Quality="4" Race="5" SP="8" Sort="294" Star="2" StarUpRate="0.5">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0799</Image>
    <Mitac/>
    <Skill1>31</Skill1>
    <Skill2>50</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>799</StarCard>
    <StarRequiredGold>6900</StarRequiredGold>
    <StarRequiredHonor>635</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="刻耳柏洛斯，由厄喀德那和堤丰所生，希腊神话中的地狱看门犬。有三个头，口吐毒涎，长着龙尾。" ID="1029" MaxStar="5" Name="地狱三头犬" Price="12000" Quality="5" Race="2" SP="8" Sort="882" Star="1" StarUpRate="0.6">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>0802</Image>
    <Mitac/>
    <Skill1>75</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1030</StarCard>
    <StarRequiredGold>11400</StarRequiredGold>
    <StarRequiredHonor>1100</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="4" Description="刻耳柏洛斯，由厄喀德那和堤丰所生，希腊神话中的地狱看门犬。有三个头，口吐毒涎，长着龙尾。" ID="1030" MaxStar="5" Name="地狱三头犬" Price="13140" Quality="5" Race="2" SP="8" Sort="883" Star="2" StarUpRate="0.4">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0802</Image>
    <Mitac/>
    <Skill1>75</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>802</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="1" Description="开启神之模式的加百列，化身为大天使长才能用有的炽天使形态，以六翼之姿，傲临人间。" ID="1031" MaxStar="5" Name="六翼·加百列" Price="18000" Quality="6" Race="4" SP="12" Sort="1004" Star="1" StarUpRate="0.5">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>1031</Image>
    <Mitac>1</Mitac>
    <Skill1>44</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1032</StarCard>
    <StarRequiredGold>23700</StarRequiredGold>
    <StarRequiredHonor>2250</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="开启神之模式的加百列，化身为大天使长才能用有的炽天使形态，以六翼之姿，傲临人间。" ID="1032" MaxStar="5" Name="六翼·加百列" Price="20370" Quality="6" Race="4" SP="12" Sort="1005" Star="2" StarUpRate="0.3">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>1031</Image>
    <Mitac>1</Mitac>
    <Skill1>44</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1033</StarCard>
    <StarRequiredGold>27900</StarRequiredGold>
    <StarRequiredHonor>2650</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="开启神之模式的加百列，化身为大天使长才能用有的炽天使形态，以六翼之姿，傲临人间。" ID="1033" MaxStar="5" Name="六翼·加百列" Price="23160" Quality="6" Race="4" SP="12" Sort="1006" Star="3" StarUpRate="0.1">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>1031</Image>
    <Mitac>1</Mitac>
    <Skill1>21</Skill1>
    <Skill2>44</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>1034</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="开启神之模式的加百列，化身为大天使长才能用有的炽天使形态，以六翼之姿，傲临人间。" ID="1034" MaxStar="5" Name="六翼·加百列" Price="26160" Quality="6" Race="4" SP="12" Sort="1007" Star="4" StarUpRate="0.05">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>1031</Image>
    <Mitac>1</Mitac>
    <Skill1>21</Skill1>
    <Skill2>44</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>1035</StarCard>
    <StarRequiredGold>36000</StarRequiredGold>
    <StarRequiredHonor>3450</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="开启神之模式的加百列，化身为大天使长才能用有的炽天使形态，以六翼之姿，傲临人间。" ID="1035" MaxStar="5" Name="六翼·加百列" Price="29760" Quality="6" Race="4" SP="10" Sort="1008" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>1031</Image>
    <Mitac>1</Mitac>
    <Skill1>21</Skill1>
    <Skill2>44</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman>0</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="太阳神，希腊神话中十二主神之一，众神之王宙斯与暗夜女神勒托之子。希腊男神中最英俊者，并且神力无匹，箭术更是只有月之女神能与之匹敌。很讽刺的是他的感情之路却颇为坎坷，“凡人始终需要人间的忧伤，爱情与永生是最大的矛盾”。" ID="1036" MaxStar="5" Name="阿波罗" Price="18000" Quality="6" Race="2" SP="8" Sort="1076" Star="1" StarUpRate="0.5">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>1036</Image>
    <Mitac>0</Mitac>
    <Skill1>90</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1037</StarCard>
    <StarRequiredGold>23700</StarRequiredGold>
    <StarRequiredHonor>2250</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="太阳神，希腊神话中十二主神之一，众神之王宙斯与暗夜女神勒托之子。希腊男神中最英俊者，并且神力无匹，箭术更是只有月之女神能与之匹敌。很讽刺的是他的感情之路却颇为坎坷，“凡人始终需要人间的忧伤，爱情与永生是最大的矛盾”。" ID="1037" MaxStar="5" Name="阿波罗" Price="20370" Quality="6" Race="2" SP="8" Sort="1077" Star="2" StarUpRate="0.3">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>1036</Image>
    <Mitac>0</Mitac>
    <Skill1>90</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1038</StarCard>
    <StarRequiredGold>27900</StarRequiredGold>
    <StarRequiredHonor>2650</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="太阳神，希腊神话中十二主神之一，众神之王宙斯与暗夜女神勒托之子。希腊男神中最英俊者，并且神力无匹，箭术更是只有月之女神能与之匹敌。很讽刺的是他的感情之路却颇为坎坷，“凡人始终需要人间的忧伤，爱情与永生是最大的矛盾”。" ID="1038" MaxStar="5" Name="阿波罗" Price="23160" Quality="6" Race="2" SP="8" Sort="1078" Star="3" StarUpRate="0.1">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>1036</Image>
    <Mitac>0</Mitac>
    <Skill1>90</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1039</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="太阳神，希腊神话中十二主神之一，众神之王宙斯与暗夜女神勒托之子。希腊男神中最英俊者，并且神力无匹，箭术更是只有月之女神能与之匹敌。很讽刺的是他的感情之路却颇为坎坷，“凡人始终需要人间的忧伤，爱情与永生是最大的矛盾”。" ID="1039" MaxStar="5" Name="阿波罗" Price="26160" Quality="6" Race="2" SP="8" Sort="1079" Star="4" StarUpRate="0.05">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>1036</Image>
    <Mitac>0</Mitac>
    <Skill1>51</Skill1>
    <Skill2>90</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>1040</StarCard>
    <StarRequiredGold>36000</StarRequiredGold>
    <StarRequiredHonor>3450</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="太阳神，希腊神话中十二主神之一，众神之王宙斯与暗夜女神勒托之子。希腊男神中最英俊者，并且神力无匹，箭术更是只有月之女神能与之匹敌。很讽刺的是他的感情之路却颇为坎坷，“凡人始终需要人间的忧伤，爱情与永生是最大的矛盾”。" ID="1040" MaxStar="5" Name="阿波罗" Price="29760" Quality="6" Race="2" SP="6" Sort="1080" Star="5" StarUpRate="0">
    <AP>3</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>1036</Image>
    <Mitac>0</Mitac>
    <Skill1>51</Skill1>
    <Skill2>90</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="2" Description="类似污泥般的果冻状生物，移动缓慢，攻击力低，但物理攻击对其很难起到作用，对魔法的抵抗力惊人，受到伤害也会迅速愈合，对冒险者来说是一种令人头疼的存在。由于长相可爱而深受女性欢迎。" ID="1041" MaxStar="5" Name="史莱姆" Price="75" Quality="1" Race="1" SP="8" Sort="90" Star="1" StarUpRate="0.9">
    <AP>1</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>1041</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1042</StarCard>
    <StarRequiredGold>300</StarRequiredGold>
    <StarRequiredHonor>85</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="类似污泥般的果冻状生物，移动缓慢，攻击力低，但物理攻击对其很难起到作用，对魔法的抵抗力惊人，受到伤害也会迅速愈合，对冒险者来说是一种令人头疼的存在。由于长相可爱而深受女性欢迎。" ID="1042" MaxStar="5" Name="史莱姆" Price="105" Quality="1" Race="1" SP="8" Sort="91" Star="2" StarUpRate="0.7">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>1041</Image>
    <Mitac/>
    <Skill1/>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1043</StarCard>
    <StarRequiredGold>600</StarRequiredGold>
    <StarRequiredHonor>175</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="类似污泥般的果冻状生物，移动缓慢，攻击力低，但物理攻击对其很难起到作用，对魔法的抵抗力惊人，受到伤害也会迅速愈合，对冒险者来说是一种令人头疼的存在。由于长相可爱而深受女性欢迎。" ID="1043" MaxStar="5" Name="史莱姆" Price="165" Quality="1" Race="1" SP="8" Sort="92" Star="3" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>1041</Image>
    <Mitac/>
    <Skill1>161</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1044</StarCard>
    <StarRequiredGold>800</StarRequiredGold>
    <StarRequiredHonor>265</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="类似污泥般的果冻状生物，移动缓慢，攻击力低，但物理攻击对其很难起到作用，对魔法的抵抗力惊人，受到伤害也会迅速愈合，对冒险者来说是一种令人头疼的存在。由于长相可爱而深受女性欢迎。" ID="1044" MaxStar="5" Name="史莱姆" Price="245" Quality="1" Race="1" SP="8" Sort="93" Star="4" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>1041</Image>
    <Mitac/>
    <Skill1>161</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>1045</StarCard>
    <StarRequiredGold>1000</StarRequiredGold>
    <StarRequiredHonor>355</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="类似污泥般的果冻状生物，移动缓慢，攻击力低，但物理攻击对其很难起到作用，对魔法的抵抗力惊人，受到伤害也会迅速愈合，对冒险者来说是一种令人头疼的存在。由于长相可爱而深受女性欢迎。" ID="1045" MaxStar="5" Name="史莱姆" Price="345" Quality="1" Race="1" SP="6" Sort="94" Star="5" StarUpRate="0">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>1041</Image>
    <Mitac/>
    <Skill1>161</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="巴比伦诸神中的风暴之神同时也是战神和军神的尼努尔塔所拥有的护腿,带有尼努尔塔的神力,穿戴者能掌握暴风将人间的一切席卷殆尽。" ID="1046" MaxStar="5" Name="尼努尔塔之力" Price="18000" Quality="6" Race="5" SP="12" Sort="993" Star="1" StarUpRate="0.5">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0522</Image>
    <Mitac/>
    <Skill1>36</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1047</StarCard>
    <StarRequiredGold>23700</StarRequiredGold>
    <StarRequiredHonor>2250</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="12" Description="巴比伦诸神中的风暴之神同时也是战神和军神的尼努尔塔所拥有的护腿,带有尼努尔塔的神力,穿戴者能掌握暴风将人间的一切席卷殆尽。" ID="1047" MaxStar="5" Name="尼努尔塔之力" Price="20370" Quality="6" Race="5" SP="10" Sort="994" Star="2" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>0522</Image>
    <Mitac/>
    <Skill1>36</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>522</StarCard>
    <StarRequiredGold>27900</StarRequiredGold>
    <StarRequiredHonor>2650</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="北欧部分神族的祖先是巨人族，拥有逆天力量的泰坦巨人们在争夺权利的战争中败北，在将神权交给了奥丁后聚居于巨人国度约顿海姆。在洛基的鼓动下，对阿斯加德发动了进攻，拉开了“诸神的黄昏”的序幕。" ID="1048" MaxStar="5" Name="北欧泰坦巨人" Price="18000" Quality="6" Race="3" SP="10" Sort="1051" Star="1" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>3</HP>
    <Image>1048</Image>
    <Mitac/>
    <Skill1>61</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1049</StarCard>
    <StarRequiredGold>23700</StarRequiredGold>
    <StarRequiredHonor>2250</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="北欧部分神族的祖先是巨人族，拥有逆天力量的泰坦巨人们在争夺权利的战争中败北，在将神权交给了奥丁后聚居于巨人国度约顿海姆。在洛基的鼓动下，对阿斯加德发动了进攻，拉开了“诸神的黄昏”的序幕。" ID="1049" MaxStar="5" Name="北欧泰坦巨人" Price="20370" Quality="6" Race="3" SP="10" Sort="1052" Star="2" StarUpRate="0.3">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>4</HP>
    <Image>1048</Image>
    <Mitac/>
    <Skill1>61</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1050</StarCard>
    <StarRequiredGold>27900</StarRequiredGold>
    <StarRequiredHonor>2650</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="北欧部分神族的祖先是巨人族，拥有逆天力量的泰坦巨人们在争夺权利的战争中败北，在将神权交给了奥丁后聚居于巨人国度约顿海姆。在洛基的鼓动下，对阿斯加德发动了进攻，拉开了“诸神的黄昏”的序幕。" ID="1050" MaxStar="5" Name="北欧泰坦巨人" Price="23160" Quality="6" Race="3" SP="8" Sort="1053" Star="3" StarUpRate="0.1">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>1048</Image>
    <Mitac/>
    <Skill1>61</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1051</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="北欧部分神族的祖先是巨人族，拥有逆天力量的泰坦巨人们在争夺权利的战争中败北，在将神权交给了奥丁后聚居于巨人国度约顿海姆。在洛基的鼓动下，对阿斯加德发动了进攻，拉开了“诸神的黄昏”的序幕。" ID="1051" MaxStar="5" Name="北欧泰坦巨人" Price="26160" Quality="6" Race="3" SP="8" Sort="1054" Star="4" StarUpRate="0.05">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>1048</Image>
    <Mitac/>
    <Skill1>61</Skill1>
    <Skill2>119</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>1052</StarCard>
    <StarRequiredGold>36000</StarRequiredGold>
    <StarRequiredHonor>3450</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="北欧部分神族的祖先是巨人族，拥有逆天力量的泰坦巨人们在争夺权利的战争中败北，在将神权交给了奥丁后聚居于巨人国度约顿海姆。在洛基的鼓动下，对阿斯加德发动了进攻，拉开了“诸神的黄昏”的序幕。" ID="1052" MaxStar="5" Name="北欧泰坦巨人" Price="29760" Quality="6" Race="3" SP="6" Sort="1055" Star="5" StarUpRate="0">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>1048</Image>
    <Mitac/>
    <Skill1>61</Skill1>
    <Skill2>119</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="1" Description="古不列颠最具传奇的国王，圆桌骑士的领导者，因为拔起石中剑而成为天选王者。后因为王后桂妮薇儿与挚友蓝斯洛特决裂。" ID="1053" MaxStar="5" Name="亚瑟王" Price="18000" Quality="6" Race="1" SP="10" Sort="953" Star="1" StarUpRate="0.5">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0015</Image>
    <Mitac>0</Mitac>
    <Skill1>94</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1054</StarCard>
    <StarRequiredGold>23700</StarRequiredGold>
    <StarRequiredHonor>2250</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="1" Description="古不列颠最具传奇的国王，圆桌骑士的领导者，因为拔起石中剑而成为天选王者。后因为王后桂妮薇儿与挚友蓝斯洛特决裂。" ID="1054" MaxStar="5" Name="亚瑟王" Price="20370" Quality="6" Race="1" SP="8" Sort="954" Star="2" StarUpRate="0.3">
    <AP>2</AP>
    <Ally>5</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0015</Image>
    <Mitac>0</Mitac>
    <Skill1>94</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>15</StarCard>
    <StarRequiredGold>27900</StarRequiredGold>
    <StarRequiredHonor>2650</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="3" Description="古不列颠最具传奇的国王，圆桌骑士的领导者，因为拔起石中剑而成为天选王者。后因为王后桂妮薇儿与挚友蓝斯洛特决裂。" ID="1055" MaxStar="5" Name="暗·兰斯洛特" Price="18000" Quality="6" Race="1" SP="8" Sort="1070" Star="1" StarUpRate="0.5">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>1055</Image>
    <Mitac/>
    <Skill1>142</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1056</StarCard>
    <StarRequiredGold>23700</StarRequiredGold>
    <StarRequiredHonor>2250</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="古不列颠最具传奇的国王，圆桌骑士的领导者，因为拔起石中剑而成为天选王者。后因为王后桂妮薇儿与挚友蓝斯洛特决裂。" ID="1056" MaxStar="5" Name="暗·兰斯洛特" Price="20370" Quality="6" Race="1" SP="8" Sort="1071" Star="2" StarUpRate="0.3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>1055</Image>
    <Mitac/>
    <Skill1>142</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1057</StarCard>
    <StarRequiredGold>27900</StarRequiredGold>
    <StarRequiredHonor>2650</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="古不列颠最具传奇的国王，圆桌骑士的领导者，因为拔起石中剑而成为天选王者。后因为王后桂妮薇儿与挚友蓝斯洛特决裂。" ID="1057" MaxStar="5" Name="暗·兰斯洛特" Price="23160" Quality="6" Race="1" SP="8" Sort="1072" Star="3" StarUpRate="0.1">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>1055</Image>
    <Mitac/>
    <Skill1>142</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1058</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="古不列颠最具传奇的国王，圆桌骑士的领导者，因为拔起石中剑而成为天选王者。后因为王后桂妮薇儿与挚友蓝斯洛特决裂。" ID="1058" MaxStar="5" Name="暗·兰斯洛特" Price="26160" Quality="6" Race="1" SP="8" Sort="1073" Star="4" StarUpRate="0.05">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>1055</Image>
    <Mitac/>
    <Skill1>142</Skill1>
    <Skill2>144</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>1059</StarCard>
    <StarRequiredGold>36000</StarRequiredGold>
    <StarRequiredHonor>3450</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="3" Description="古不列颠最具传奇的国王，圆桌骑士的领导者，因为拔起石中剑而成为天选王者。后因为王后桂妮薇儿与挚友蓝斯洛特决裂。" ID="1059" MaxStar="5" Name="暗·兰斯洛特" Price="29760" Quality="6" Race="1" SP="6" Sort="1074" Star="5" StarUpRate="0">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>1055</Image>
    <Mitac/>
    <Skill1>142</Skill1>
    <Skill2>144</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="带有剧毒的雾气，内含致命毒素，在地区范围进行大规模杀伤。" ID="1060" MaxStar="5" Name="毒雾阵" Price="12000" Quality="5" Race="5" SP="10" Sort="875" Star="1" StarUpRate="0.6">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>1060</Image>
    <Mitac/>
    <Skill1>13</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1061</StarCard>
    <StarRequiredGold>11400</StarRequiredGold>
    <StarRequiredHonor>1100</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="带有剧毒的雾气，内含致命毒素，在地区范围进行大规模杀伤。" ID="1061" MaxStar="5" Name="毒雾阵" Price="13140" Quality="5" Race="5" SP="8" Sort="876" Star="2" StarUpRate="0.4">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>1060</Image>
    <Mitac/>
    <Skill1>13</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1062</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="带有剧毒的雾气，内含致命毒素，在地区范围进行大规模杀伤。" ID="1062" MaxStar="5" Name="毒雾阵" Price="14640" Quality="5" Race="5" SP="8" Sort="877" Star="3" StarUpRate="0.2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>1060</Image>
    <Mitac/>
    <Skill1>14</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1063</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="带有剧毒的雾气，内含致命毒素，在地区范围进行大规模杀伤。" ID="1063" MaxStar="5" Name="毒雾阵" Price="16500" Quality="5" Race="5" SP="6" Sort="878" Star="4" StarUpRate="0.08">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>1060</Image>
    <Mitac/>
    <Skill1>14</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1064</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="13" Description="带有剧毒的雾气，内含致命毒素，在地区范围进行大规模杀伤。" ID="1064" MaxStar="5" Name="毒雾阵" Price="18720" Quality="5" Race="5" SP="6" Sort="879" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>1060</Image>
    <Mitac/>
    <Skill1>14</Skill1>
    <Skill2>173</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="13" Description="召唤北欧极地风暴，能大范围将敌人冻结，造成大量伤亡。" ID="1065" MaxStar="5" Name="维京风暴" Price="12000" Quality="5" Race="5" SP="12" Sort="659" Star="1" StarUpRate="0.6">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>1065</Image>
    <Mitac/>
    <Skill1>178</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1066</StarCard>
    <StarRequiredGold>11400</StarRequiredGold>
    <StarRequiredHonor>1100</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="13" Description="召唤北欧极地风暴，能大范围将敌人冻结，造成大量伤亡。" ID="1066" MaxStar="5" Name="维京风暴" Price="13140" Quality="5" Race="5" SP="10" Sort="660" Star="2" StarUpRate="0.4">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>1065</Image>
    <Mitac/>
    <Skill1>178</Skill1>
    <Skill2>122</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>1067</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="13" Description="召唤北欧极地风暴，能大范围将敌人冻结，造成大量伤亡。" ID="1067" MaxStar="5" Name="维京风暴" Price="14640" Quality="5" Race="5" SP="10" Sort="661" Star="3" StarUpRate="0.2">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>1065</Image>
    <Mitac/>
    <Skill1>178</Skill1>
    <Skill2>123</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>1068</StarCard>
    <StarRequiredGold>18600</StarRequiredGold>
    <StarRequiredHonor>1770</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="13" Description="召唤北欧极地风暴，能大范围将敌人冻结，造成大量伤亡。" ID="1068" MaxStar="5" Name="维京风暴" Price="16500" Quality="5" Race="5" SP="8" Sort="662" Star="4" StarUpRate="0.08">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>1065</Image>
    <Mitac/>
    <Skill1>178</Skill1>
    <Skill2>123</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>1069</StarCard>
    <StarRequiredGold>22200</StarRequiredGold>
    <StarRequiredHonor>2105</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="13" Description="召唤北欧极地风暴，能大范围将敌人冻结，造成大量伤亡。" ID="1069" MaxStar="5" Name="维京风暴" Price="18720" Quality="5" Race="5" SP="8" Sort="663" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>1065</Image>
    <Mitac/>
    <Skill1>1</Skill1>
    <Skill2>123</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="永恒之枪昆古尼尔，传说由世界树树枝制作而成，北欧主神奥丁的武器。被掷出时，宛若流星，投出必中而且必杀。同时此枪也是誓言之枪，一旦对着昆古尼尔发誓，便不能反悔。" ID="1070" MaxStar="5" Name="永恒之枪" Price="18000" Quality="6" Race="5" SP="8" Sort="929" Star="1" StarUpRate="0.5">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>1070</Image>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1071</StarCard>
    <StarRequiredGold>23700</StarRequiredGold>
    <StarRequiredHonor>2250</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="永恒之枪昆古尼尔，传说由世界树树枝制作而成，北欧主神奥丁的武器。被掷出时，宛若流星，投出必中而且必杀。同时此枪也是誓言之枪，一旦对着昆古尼尔发誓，便不能反悔。" ID="1071" MaxStar="5" Name="永恒之枪" Price="20370" Quality="6" Race="5" SP="6" Sort="930" Star="2" StarUpRate="0.3">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>1070</Image>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1072</StarCard>
    <StarRequiredGold>27900</StarRequiredGold>
    <StarRequiredHonor>2650</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="永恒之枪昆古尼尔，传说由世界树树枝制作而成，北欧主神奥丁的武器。被掷出时，宛若流星，投出必中而且必杀。同时此枪也是誓言之枪，一旦对着昆古尼尔发誓，便不能反悔。" ID="1072" MaxStar="5" Name="永恒之枪" Price="23160" Quality="6" Race="5" SP="4" Sort="931" Star="3" StarUpRate="0.1">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>1070</Image>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1073</StarCard>
    <StarRequiredGold>30000</StarRequiredGold>
    <StarRequiredHonor>3050</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="永恒之枪昆古尼尔，传说由世界树树枝制作而成，北欧主神奥丁的武器。被掷出时，宛若流星，投出必中而且必杀。同时此枪也是誓言之枪，一旦对着昆古尼尔发誓，便不能反悔。" ID="1073" MaxStar="5" Name="永恒之枪" Price="26160" Quality="6" Race="5" SP="2" Sort="932" Star="4" StarUpRate="0.05">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>1070</Image>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1074</StarCard>
    <StarRequiredGold>36000</StarRequiredGold>
    <StarRequiredHonor>3450</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="12" Description="永恒之枪昆古尼尔，传说由世界树树枝制作而成，北欧主神奥丁的武器。被掷出时，宛若流星，投出必中而且必杀。同时此枪也是誓言之枪，一旦对着昆古尼尔发誓，便不能反悔。" ID="1074" MaxStar="5" Name="永恒之枪" Price="29760" Quality="6" Race="5" SP="2" Sort="933" Star="5" StarUpRate="0">
    <AP/>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP/>
    <Image>1070</Image>
    <Mitac/>
    <Skill1>55</Skill1>
    <Skill2>118</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>0</StarCard>
    <StarRequiredGold>0</StarRequiredGold>
    <StarRequiredHonor>0</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="北欧神话中最著名的人类英雄，屠龙勇者，尼伯龙根的指环拥有者，女武神布伦希尔德的爱人。却因为喝下了失忆药水而与其他女子结婚，被怒火中烧的布伦希尔德派人暗杀而死，最后知道真相的布伦希尔德痛苦万分，自杀身亡。" ID="1075" MaxStar="5" Name="齐格弗里德" Price="18000" Quality="6" Race="3" SP="10" Sort="986" Star="1" StarUpRate="0.5">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0018</Image>
    <Mitac/>
    <Skill1>73</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1076</StarCard>
    <StarRequiredGold>23700</StarRequiredGold>
    <StarRequiredHonor>2250</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="北欧神话中最著名的人类英雄，屠龙勇者，尼伯龙根的指环拥有者，女武神布伦希尔德的爱人。却因为喝下了失忆药水而与其他女子结婚，被怒火中烧的布伦希尔德派人暗杀而死，最后知道真相的布伦希尔德痛苦万分，自杀身亡。" ID="1076" MaxStar="5" Name="齐格弗里德" Price="20370" Quality="6" Race="3" SP="8" Sort="987" Star="2" StarUpRate="0.3">
    <AP>3</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>7</HP>
    <Image>0018</Image>
    <Mitac/>
    <Skill1>73</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>18</StarCard>
    <StarRequiredGold>27900</StarRequiredGold>
    <StarRequiredHonor>2650</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="2" Class="1" Description="海神波塞冬，奥林匹斯十二主神之一，众神之王宙斯的哥哥，地位仅次于宙斯，拥有强大无匹的神力，但智慧却显得不足，思考问题总是很单纯。" ID="1077" MaxStar="5" Name="波塞冬" Price="12000" Quality="5" Race="2" SP="12" Sort="898" Star="1" StarUpRate="0.6">
    <AP>0</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0012</Image>
    <Mitac>1</Mitac>
    <Skill1>178</Skill1>
    <Skill2>148</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>1078</StarCard>
    <StarRequiredGold>11400</StarRequiredGold>
    <StarRequiredHonor>1100</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="2" Class="1" Description="海神波塞冬，奥林匹斯十二主神之一，众神之王宙斯的哥哥，地位仅次于宙斯，拥有强大无匹的神力，但智慧却显得不足，思考问题总是很单纯。" ID="1078" MaxStar="5" Name="波塞冬" Price="13140" Quality="5" Race="2" SP="10" Sort="899" Star="2" StarUpRate="0.4">
    <AP>0</AP>
    <Ally>4</Ally>
    <R1/>
    <R2/>
    <R3/>
    <HP>6</HP>
    <Image>0012</Image>
    <Mitac>1</Mitac>
    <Skill1>178</Skill1>
    <Skill2>148</Skill2>
    <Skill3/>
    <Skill4/>
    <StarCard>12</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
    <Talisman>1</Talisman>
  </Card>
  <Card AttackMode="1" Class="2" Description="奥林匹斯山众神的人间代理人，政教一体的希腊帝国真正的君主，也称为教宗" ID="1079" MaxStar="5" Name="希腊教皇" Price="12000" Quality="5" Race="2" SP="10" Sort="650" Star="1" StarUpRate="0.6">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0531</Image>
    <Mitac/>
    <Skill1>62</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>1080</StarCard>
    <StarRequiredGold>11400</StarRequiredGold>
    <StarRequiredHonor>1100</StarRequiredHonor>
    <Talisman/>
  </Card>
  <Card AttackMode="1" Class="2" Description="奥林匹斯山众神的人间代理人，政教一体的希腊帝国真正的君主，也称为教宗" ID="1080" MaxStar="5" Name="希腊教皇" Price="13140" Quality="5" Race="2" SP="8" Sort="651" Star="2" StarUpRate="0.4">
    <AP>2</AP>
    <Ally/>
    <R1/>
    <R2/>
    <R3/>
    <HP>5</HP>
    <Image>0531</Image>
    <Mitac/>
    <Skill1>62</Skill1>
    <Skill2/>
    <Skill3/>
    <Skill4/>
    <StarCard>531</StarCard>
    <StarRequiredGold>15000</StarRequiredGold>
    <StarRequiredHonor>1435</StarRequiredHonor>
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
  <Item Category="1" Description="开启后随机获得4张普通卡牌" Price="300" ID="1" Name="金币卡包" Usable="1" />
  <Item Category="1" Description="开启后随机获得4张卡牌，有几率获得高星级普通卡" Price="3000" ID="2" Name="青铜卡包" Usable="1" />
  <Item Category="1" Description="开启后随机获得4张卡牌，有几率获得史诗卡" Price="6000" ID="3" Name="白银卡包" Usable="1" />
  <Item Category="1" Description="开启后随机获得4张卡牌，有较大几率获得魔神卡" Price="15000" ID="4" Name="黄金卡包" Usable="1" />
  <Item Category="1" Description="开启后随机获得4张史诗卡牌，有几率获得魔神卡与传说卡" Price="36000" ID="5" Name="钻石卡包" Usable="1" />
  <Item Category="2" Description="普通窗口聊天" Price="30" ID="6" Name="号角" Usable="0" />
  <Item Category="2" Description="广播窗口聊天道具" Price="300" ID="7" Name="奥拉尔号角" Usable="0" />
  <Item Category="2" Description="增加巴比伦塔进入次数" Price="1500" ID="8" Name="破魔匙" Usable="0" />
  <Item Category="2" Description="" Price="0" ID="9" Name="VIP周卡" Usable="1" />
  <Item Category="2" Description="" Price="0" ID="10" Name="VIP月卡" Usable="1" />
  <Item Category="2" Description="" Price="0" ID="11" Name="VIP年卡" Usable="1" />
  <Item Category="2" Description="增加战争学院挑战次数" Price="1500" ID="12" Name="学院入场券" Usable="1" />
  <Item Category="2" Description="解锁一个卡组槽位" Price="3000" ID="13" Name="英雄之证" Usable="0" />
  <Item Category="2" Description="" Price="0" ID="14" Name="补签卡" Usable="0" />
  <Item Category="2" Description="抽奖时可以去掉不想获得的物品" Price="450" ID="15" Name="金手指" Usable="0" />
  <Item Category="2" Description="" Price="0" ID="16" Name="公式卷轴1" Usable="0" />
  <Item Category="2" Description="包裹扩容" Price="0" ID="17" Name="背包" Usable="0" />
  <Item Category="2" Description="1小时内玩家不得对你进行奴役与解救你的奴隶。" Price="300" ID="18" Name="免战牌" Usable="1" />
  <Item Category="2" Description="" Price="0" ID="19" Name="双倍经验卡" Usable="0" />
  <Item Category="2" Description="" Price="0" ID="20" Name="双倍金币卡" Usable="0" />
  <Item Category="2" Description="新卡有较大几率出现。" Price="0" ID="21" Name="新卡卡包" Usable="0" />
  <Item Category="2" Description="6小时内玩家不得对你进行奴役与解救你的奴隶。" Price="1500" ID="22" Name="超级免战牌" Usable="1" />
  <Item Category="2" Description="重置酒馆卡牌" Price="3600" ID="23" Name="招募令" Usable="1" />
  <Item Category="2" Description="" Price="0" ID="24" Name="双倍荣誉卡" Usable="0" />
  <Item Category="2" Description="打开获得金币" Price="0" ID="25" Name="钱袋" Usable="2" />
  <Item Category="2" Description="打开获得大量金币" Price="0" ID="26" Name="大钱袋" Usable="2" />
  <Item Category="2" Description="打开获得荣誉" Price="0" ID="27" Name="奖章" Usable="2" />
  <Item Category="2" Description="打开获得大量荣誉" Price="0" ID="28" Name="勋章" Usable="2" />
  <Item Category="1" Description="开启后获得1张卷轴或者装备" Price="0" ID="29" Name="魔法装备卡包" Usable="1" />
  <Item Category="1" Description="开启后获得1张英雄卡" Price="0" ID="30" Name="英雄卡包" Usable="1" />
  <Item Category="1" Description="开启后获得2张佣兵卡" Price="0" ID="31" Name="佣兵卡包" Usable="1" />
  <Item Category="1" Description="开启后获得1张卷轴或者装备，有几率出现传说魔法装备" Price="0" ID="32" Name="白金魔法装备卡包" Usable="1" />
  <Item Category="1" Description="开启后获得1张英雄卡" Price="0" ID="33" Name="白金英雄卡包" Usable="1" />
  <Item Category="1" Description="开启后获得2张佣兵卡" Price="0" ID="34" Name="白金佣兵卡包" Usable="1" />
  <Item Category="1" Description="开启后获得2张希腊卡" Price="3000" ID="35" Name="希腊卡包" Usable="1" />
  <Item Category="1" Description="开启后获得2张希腊卡，较大概率出现史诗希腊卡" Price="0" ID="36" Name="白金希腊卡包" Usable="1" />
  <Item Category="1" Description="开启后获得2张北欧卡" Price="3000" ID="37" Name="北欧卡包" Usable="1" />
  <Item Category="1" Description="开启后获得2张北欧卡，较大概率出现史诗北欧卡" Price="0" ID="38" Name="白金北欧卡包" Usable="1" />
  <Item Category="1" Description="开启后获得2张异界卡" Price="3000" ID="39" Name="异界卡包" Usable="1" />
  <Item Category="1" Description="开启后获得2张异界卡，较大概率出现史诗异界卡" Price="0" ID="40" Name="白金异界卡包" Usable="1" />
  <Item Category="1" Description="开启后获得2张人族卡" Price="3000" ID="41" Name="人族卡包" Usable="1" />
  <Item Category="1" Description="开启后获得2张人族卡，较大概率出现史诗人族卡" Price="0" ID="42" Name="白金人族卡包" Usable="1" />
  <Item Category="5" Description="使用后立即获得金币15000，荣誉1000，保星石*3，祝福石*3，雪人王配方*1，号角*10" Price="0" ID="43" Name="北欧男新手礼包" Usable="1" />
  <Item Category="5" Description="使用后立即获得金币15000，荣誉1000，保星石*3，祝福石*3，女神官配方*1，号角*10" Price="0" ID="44" Name="北欧女新手礼包" Usable="1" />
  <Item Category="5" Description="使用后立即获得金币15000，荣誉1000，保星石*3，祝福石*3，体力药剂*3，王国剑士配方*1，号角*10" Price="0" ID="45" Name="人族男新手礼包" Usable="1" />
  <Item Category="5" Description="使用后立即获得金币15000，荣誉1000，保星石*3，祝福石*3，体力药剂*3，王国剑士配方*1，号角*10" Price="0" ID="46" Name="人族女新手礼包" Usable="1" />
  <Item Category="5" Description="使用后立即获得金币15000，荣誉1000，保星石*3，祝福石*3，王国魔法师配方*1，号角*10" Price="0" ID="47" Name="希腊男新手礼包" Usable="1" />
  <Item Category="5" Description="使用后立即获得金币15000，荣誉1000，保星石*3，祝福石*3，巨魔配方*1，号角*10" Price="0" ID="48" Name="希腊女新手礼包" Usable="1" />
  <Item Category="5" Description="使用后立即获得:荣誉*2000，保星石*5，祝福石*5，一组希腊军队卡组，一组北欧军队卡组" Price="0" ID="49" Name="5级新手礼包" Usable="1" />
  <Item Category="2" Description="增加升星成功的概率" Price="3000" ID="50" Name="祝福石" Usable="0" />
  <Item Category="2" Description="防止升星失败卡牌降星" Price="3000" ID="51" Name="保星石" Usable="0" />
  <Item Category="4" Description="合成消耗材料：吸血蝠(3星)×10＋爆炎猴(3星)×10＋赤炎小恶魔(3星)×10" Price="1500" ID="52" Name="深海巨鲨配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：暗影猎豹(3星)×10＋水母怪(3星)×10＋哥布林战士(3星)×10" Price="1500" ID="53" Name="巨魔配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：沙漠掠夺者(3星)×10＋海马守卫(3星)×10＋仙人掌(3星)×10" Price="1500" ID="54" Name="荒野巨蟒配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：暗影猎豹(3星)×10＋飓风女妖(3星)×10＋魅魔(3星)×10" Price="1500" ID="55" Name="森林仙女配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：骷髅剑士(3星)×10＋爆炎猴(3星)×10＋赤炎小恶魔(3星)×10" Price="1500" ID="56" Name="裂魂术配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：巨钳龙虾(3星)×10＋野生蛮牛(3星)×10＋海马守卫(3星)×10" Price="1500" ID="57" Name="冰原雪熊配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：野生蛮牛(3星)×10＋沙虫(3星)×10＋暗影猎豹(3星)×10" Price="1500" ID="58" Name="雪人王配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：王国士兵(3星)×10＋冰霜哥布林(3星)×10＋巨钳龙虾(3星)×10" Price="1500" ID="59" Name="王国剑士配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：骷髅剑士(3星)×10＋巨甲虫(3星)×10＋哥布林战士(3星)×10" Price="1500" ID="60" Name="嗜血螳螂配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：爆炎猴(3星)×10＋猫妖(3星)×10＋火焰哥布林(3星)×10" Price="1500" ID="61" Name="火焰史莱姆配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：史莱姆(3星)×10＋骷髅剑士(3星)×10＋魅魔(3星)×10" Price="1500" ID="62" Name="美狄亚配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：王国士兵(3星)×10＋猫妖(3星)×10＋信仰掠夺(3星)×10" Price="1500" ID="63" Name="王国魔法师配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：花妖(3星)×10＋王国士兵(3星)×10＋飓风女妖(3星)×10" Price="1500" ID="64" Name="女神官配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：哥布林战士(3星)×10＋史莱姆(3星)×10＋恶灵娃娃(3星)×10" Price="1500" ID="65" Name="彩虹史莱姆配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：恶灵娃娃(3星)×10＋幽灵(3星)×10＋史莱姆(3星)×10" Price="1500" ID="66" Name="德拉古拉配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：幼年火龙(3星)×10＋火焰史莱姆(3星)×10＋龙炎洞窟(3星)×10" Price="3600" ID="67" Name="熔岩巨兽配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：赤炎小恶魔(3星)×10＋火焰哥布林(3星)×10＋巨甲虫(3星)×10" Price="1500" ID="68" Name="龙炎洞窟配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：深海巨鲨(3星)×10＋王国剑士(3星)×10＋女神官(3星)×10" Price="3600" ID="69" Name="贝利维夫人配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：霹雳权杖(3星)×10＋王国魔法师(3星)×10＋应答者(3星)×10" Price="3600" ID="70" Name="雷刃独角兽配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：冰原雪熊(3星)×10＋雪人王(3星)×10＋嗜血螳螂(3星)×10" Price="3600" ID="71" Name="金牛座配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：应答者(3星)×10＋荒野巨蟒(3星)×10＋嗜血螳螂(3星)×10" Price="3600" ID="72" Name="生化毒蝎配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：德拉古拉(3星)×10＋雪人王(3星)×10＋裂魂术(3星)×10" Price="3600" ID="73" Name="嗜血狼人配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：龙炎洞窟(3星)×10＋美狄亚(3星)×10＋火焰史莱姆(3星)×10" Price="3600" ID="74" Name="火凤凰配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：厄里斯(3星)×10＋幼年火龙(3星)×10＋睡美人的呢喃(3星)×10" Price="3600" ID="75" Name="美杜莎之颅配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：王国剑士(3星)×10＋美狄亚(3星)×10＋巨魔(3星)×10" Price="3600" ID="76" Name="鬼武者配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：厄里斯(3星)×15＋彩虹史莱姆(3星)×15＋魔弓编织者(3星)×15" Price="10800" ID="77" Name="恶魔猎手配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：裂魂术(3星)×10＋龙炎洞窟(3星)×10＋德拉古拉(3星)×10" Price="3600" ID="78" Name="地狱三头犬配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：伊里丝(3星)×10＋森林仙女(3星)×10＋彩虹史莱姆(3星)×10" Price="3600" ID="79" Name="喜马拉雅温泉配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：嗜血螳螂(3星)×10＋阿鲁卡多(3星)×10＋王国剑士(3星)×10" Price="3600" ID="80" Name="死亡使者配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：吸血蝠(3星)×10＋赤炎小恶魔(3星)×10＋翅膀(3星)×10" Price="1500" ID="81" Name="幼年火龙配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：冰霜哥布林(3星)×10＋火焰哥布林(3星)×10＋翅膀(3星)×10" Price="1500" ID="82" Name="幼年冰龙配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：粉碎狂潮(3星)×10＋信仰掠夺(3星)×10＋沙漠掠夺者(3星)×10" Price="1500" ID="83" Name="战神呐喊配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：花妖(3星)×10＋史莱姆(3星)×10＋飓风女妖(3星)×10" Price="1500" ID="84" Name="伊里丝配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：荒野巨蟒(3星)×10＋巨魔(3星)×10＋冰原雪熊(3星)×10" Price="3600" ID="85" Name="重装甲骑士配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：巨魔(3星)×10＋荒野巨蟒(3星)×10＋彩虹史莱姆(3星)×10" Price="3600" ID="86" Name="石像旺达配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：幼年冰龙(3星)×10＋冰原雪熊(3星)×10＋女神官(3星)×10" Price="3600" ID="87" Name="冰霜女武神配方" Usable="0" />
  <Item Category="5" Description="使用后立即获得:荣誉*3000，熔岩巨兽配方*1，青铜卡包*1，金币卡包*5，金手指*6，招募令*2，保星石*10，祝福石*10" Price="0" ID="88" Name="10级新手礼包" Usable="1" />
  <Item Category="5" Description="使用后立即获得:荣誉*10000，恶魔猎手配方*1，白银卡包*1，青铜卡包*5，破魔匙*2，学院入场券*8，保星石*15，祝福石*15" Price="0" ID="89" Name="15级新手礼包" Usable="1" />
  <Item Category="5" Description="在端午节活动期间获得，可在包裹中使用获得各种奖励。" Price="0" ID="90" Name="粽子" Usable="2" />
  <Item Category="5" Description="在端午节活动期间获得，可在包裹中使用获得各种奖励。" Price="0" ID="91" Name="一兜粽子" Usable="2" />
  <Item Category="5" Description="在端午节活动期间获得，可在包裹中使用获得各种奖励。" Price="0" ID="92" Name="一捆粽子" Usable="2" />
  <Item Category="5" Description="在端午节活动期间获得，可在包裹中使用获得各种奖励。" Price="0" ID="93" Name="一大捆粽子" Usable="2" />
  <Item Category="2" Description="" Price="100" ID="94" Name="宝石碎片" Usable="0" />
  <Item Category="2" Description="增加矿洞内活力的道具，每瓶使用增加2点活力。" Price="150" ID="95" Name="小瓶活力药水" Usable="1" />
  <Item Category="2" Description="增加矿洞内活力的道具，每瓶使用增加5点活力。" Price="600" ID="96" Name="大瓶活力药水" Usable="1" />
  <Item Category="4" Description="合成消耗材料：王国魔法师(3星)×10＋霹雳权杖(3星)×10＋蕾娜丝(3星)×10" Price="3600" ID="97" Name="龙之宝玉奥普配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：睡美人的呢喃(3星)×10＋美狄亚(3星)×10＋魔弓编织者(3星)×10" Price="3600" ID="98" Name="妮特莉丝之镜配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：战神呐喊(3星)×10＋蕾娜丝(3星)×10＋霹雳权杖(3星)×10" Price="3600" ID="99" Name="托尔的铁手套配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：沙漠掠夺者(3星)×10＋巨甲虫(3星)×10＋野生蛮牛(3星)×10" Price="1500" ID="100" Name="蛇腹之枪配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：深海巨鲨(3星)×10＋蛇腹之枪(3星)×10＋彩虹史莱姆(3星)×10" Price="3600" ID="101" Name="朗基奴斯之枪配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：槲寄生(3星)×10＋魔弓编织者(3星)×10＋雪人王(3星)×10" Price="3600" ID="102" Name="石中剑配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：蛇腹之枪(3星)×10＋森林仙女(3星)×10＋幼年冰龙(3星)×10" Price="3600" ID="103" Name="加百列配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：蕾娜丝(3星)×10＋阿鲁卡多(3星)×10＋森林仙女(3星)×10" Price="3600" ID="104" Name="兰斯洛特配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：火凤凰(3星)×5＋毒雾阵(3星)×5＋维京风暴(3星)×5" Price="10800" ID="105" Name="诸神的黄昏配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：美狄亚(3星)×15＋嗜血狼人(3星)×5＋朗基奴斯之枪(3星)×5" Price="10800" ID="106" Name="邪神洛基配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：喜马拉雅温泉(3星)×5＋希腊教皇(3星)×5＋波塞冬(3星)×5" Price="10800" ID="107" Name="雅典娜配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：妮特莉丝之镜(3星)×5＋龙之宝玉奥普(3星)×5＋美杜莎之颅(3星)×5" Price="10800" ID="108" Name="雅典娜之盾配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：托尔的铁手套(3星)×5＋死亡使者(3星)×5＋鬼武者(3星)×5" Price="10800" ID="109" Name="查理曼大帝配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：熔岩巨兽(3星)×5＋地狱三头犬(3星)×5＋冰霜女武神(3星)×5" Price="10800" ID="110" Name="斩裂世界配方" Usable="0" />
  <Item Category="2" Description="泰坦逆袭兑换券" Price="0" ID="111" Name="泰坦逆袭兑换券" Usable="0" />
  <Item Category="5" Description="在七夕节活动期间获得，可使用获得各种七夕奖励祝福。" Price="0" ID="112" Name="玫瑰" Usable="2" />
  <Item Category="5" Description="在七夕节活动期间获得，可使用获得各种七夕奖励祝福。" Price="0" ID="113" Name="一束玫瑰" Usable="2" />
  <Item Category="5" Description="在七夕节活动期间获得，可使用获得各种七夕奖励祝福。" Price="0" ID="114" Name="一捧玫瑰" Usable="2" />
  <Item Category="5" Description="在七夕节活动期间获得，可使用获得各种七夕奖励祝福。" Price="0" ID="115" Name="一大捧玫瑰" Usable="2" />
  <Item Category="2" Description="使用增加30点体力值" Price="0" ID="116" Name="体力药剂" Usable="2" />
  <Item Category="5" Description="金币×25000 荣誉×2500 祝福石×1 保星石×1" Price="0" ID="117" Name="超级升星套餐" Usable="1" />
  <Item Category="5" Description="钻石卡包×2 黄金卡包×2 白银卡包×2" Price="0" ID="118" Name="佣兵团成长套餐" Usable="1" />
  <Item Category="5" Description="体力药剂×5 破魔匙×5 大瓶活力药水×6 招募令×5" Price="0" ID="119" Name="无尽的战斗套餐" Usable="1" />
  <Item Category="5" Description="在中秋国庆双节活动期间获得，可在包裹中使用获得各种奖励。" Price="0" ID="120" Name="月币" Usable="2" />
  <Item Category="5" Description="在中秋国庆双节活动期间获得，可在包裹中使用获得各种奖励。" Price="0" ID="121" Name="一把月币" Usable="2" />
  <Item Category="5" Description="在中秋国庆双节活动期间获得，可在包裹中使用获得各种奖励。" Price="0" ID="122" Name="一大把月币" Usable="2" />
  <Item Category="5" Description="在中秋国庆双节活动期间获得，可在包裹中使用获得各种奖励。" Price="0" ID="123" Name="一箱月币" Usable="2" />
  <Item Category="2" Description="使用后立即获得水晶，水晶可用于参加泰坦逆袭活动" Price="1000" ID="124" Name="水晶秘盒" Usable="2" />
  <Item Category="4" Description="合成消耗材料：沙虫(3星)×10＋粉碎狂潮(3星)×10＋信仰掠夺(3星)×10" Price="0" ID="125" Name="霹雳权杖配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：赤炎小恶魔(3星)×10＋冰霜哥布林(3星)×10＋吸血蝠(3星)×10" Price="0" ID="126" Name="阿鲁卡多配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：恶灵娃娃(3星)×10＋巨钳龙虾(3星)×10＋致命毒蜂(3星)×10" Price="0" ID="127" Name="蕾娜丝配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：花妖(3星)×10＋刺蘑菇(3星)×10＋沙虫(3星)×10" Price="0" ID="128" Name="厄里斯配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：魅魔(3星)×10＋幽灵(3星)×10＋水母怪(3星)×10" Price="0" ID="129" Name="睡美人的呢喃配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：沙虫(3星)×10＋致命毒蜂(3星)×10＋赤炎小恶魔(3星)×10" Price="0" ID="130" Name="槲寄生配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：翅膀(3星)×10＋花妖(3星)×10＋粉碎狂潮(3星)×10" Price="0" ID="131" Name="魔弓编织者配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：仙人掌(3星)×10＋海马守卫(3星)×10＋水母怪(3星)×10" Price="0" ID="132" Name="海王三叉戟配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：幽灵(3星)×10＋刺蘑菇(3星)×10＋致命毒蜂(3星)×10" Price="0" ID="133" Name="应答者配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：厄里斯(3星)×10＋海王三叉戟(3星)×10＋睡美人的呢喃(3星)×10" Price="0" ID="134" Name="毒雾阵配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：幼年冰龙(3星)×10＋阿鲁卡多(3星)×10＋战神呐喊(3星)×10" Price="0" ID="135" Name="维京风暴配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：海王三叉戟(3星)×10＋伊里丝(3星)×10＋厄里斯(3星)×10" Price="0" ID="136" Name="波塞冬配方" Usable="0" />
  <Item Category="4" Description="合成消耗材料：伊里丝(3星)×10＋女神官(3星)×10＋槲寄生(3星)×10" Price="0" ID="137" Name="希腊教皇配方" Usable="0" />
  <Item Category="5" Description="在重装甲骑士包优惠活动中获得，活动期间只有此卡包能开出重装甲骑士" Price="0" ID="138" Name="重装甲骑士包" Usable="2" />
  <Item Category="5" Description="在冰霜女武神包优惠活动中获得，活动期间只有此卡包能开出冰霜女武神" Price="0" ID="139" Name="冰霜女武神包" Usable="2" />
</Items>

		public static const ERROR_MESSAGE:XML =	<Messages>
  <Message ID="1" Text="请重新登录" />
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
  <Message ID="15" Text="你的VIP等级还不够使用这个功能哦，现在就去充值升级VIP吗？" />
  <Message ID="16" Text="你还不是VIP哦，充值任意金额即可成为VIP1。现在就去充值吗？" />
  <Message ID="20" Text="用户分享动态不存在" />
  <Message ID="21" Text="此物品不可出售" />
  <Message ID="22" Text="物品不存在" />
  <Message ID="23" Text="抽奖不存在" />
  <Message ID="24" Text="战斗模式错误" />
  <Message ID="25" Text="战斗频率过快，请稍后再试" />
  <Message ID="26" Text="活动未开始" />
  <Message ID="27" Text="活动已结束" />
  <Message ID="100" Text="SNS授权错误" />
  <Message ID="101" Text="业务权限不足" />
  <Message ID="200" Text="你和TA还不是好友哦" />
  <Message ID="201" Text="好友没有设置对应的防御塔" />
  <Message ID="300" Text="必须先解救后再奴役" />
  <Message ID="301" Text="不能奴役自己" />
  <Message ID="302" Text="奴隶不属于你" />
  <Message ID="303" Text="奴隶营地已满" />
  <Message ID="304" Text="奴隶工作未完成，不能收获" />
  <Message ID="305" Text="奴隶没在工作，不能收获" />
  <Message ID="306" Text="不能解救自己的奴隶" />
  <Message ID="307" Text="奴隶不存在" />
  <Message ID="308" Text="对方处在保护期" />
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
  <Message ID="602" Text="失败次数过多，必须先退出巴比伦塔" />
  <Message ID="700" Text="矿点不属于你" />
  <Message ID="701" Text="矿点开采还没有结束" />
  <Message ID="702" Text="矿点处于占领保护期" />
  <Message ID="703" Text="矿点处于掠夺保护期" />
  <Message ID="704" Text="矿点已经开采完毕" />
  <Message ID="705" Text="这个矿已经所剩无几了，留点给主人吧" />
  <Message ID="706" Text="这个矿人手已经足够了，去帮助其他人吧" />
  <Message ID="707" Text="体力不足" />
  <Message ID="708" Text="今天协助次数已经用完了，明天再来吧" />
  <Message ID="709" Text="你已经协助过这个矿点了哦，等下次开采的时候再来吧" />
  <Message ID="710" Text="你已经偷挖过这个矿点了哦，趁主人还没发现赶紧溜吧" />
  <Message ID="800" Text="体力不足" />
  <Message ID="900" Text="出错啦，请刷新再试（错误码=900）" />
  <Message ID="1000" Text="出错啦，请刷新再试（错误码=1000）" />
</Messages>

		public static const ACHV_CONFIG:XML = <Achievements>
  <Achievement ID="1" Name="100胜！" Category="1" Order="1" Point="10" Total="100">
    <Desc>主动发起战斗，累计胜利100次</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>100</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="2" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="2" Name="300胜！" Category="1" Order="2" Point="10" Total="300">
    <Desc>主动发起战斗，累计胜利300次</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>300</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="50" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="3" Name="1000胜！" Category="1" Order="3" Point="10" Total="1000">
    <Desc>主动发起战斗，累计胜利1000次</Desc>
    <Title>战争之王</Title>
    <Bonus>
      <Gold>0</Gold>
      <Honor>1000</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="61" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="4" Name="10级" Category="6" Order="4" Point="10" Total="10">
    <Desc>英雄等级达到10级</Desc>
    <Title />
    <Bonus>
      <Gold>1000</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="15" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="5" Name="30级" Category="6" Order="5" Point="10" Total="30">
    <Desc>英雄等级达到30级</Desc>
    <Title />
    <Bonus>
      <Gold>3000</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="12" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="6" Name="50级" Category="6" Order="6" Point="10" Total="50">
    <Desc>英雄等级达到50级</Desc>
    <Title />
    <Bonus>
      <Gold>5000</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="23" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="7" Name="70级" Category="6" Order="7" Point="10" Total="70">
    <Desc>英雄等级达到70级</Desc>
    <Title />
    <Bonus>
      <Gold>8000</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="3" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="8" Name="100级" Category="6" Order="8" Point="10" Total="100">
    <Desc>英雄等级达到100级</Desc>
    <Title>众神之巅</Title>
    <Bonus>
      <Gold>10000</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="69" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="9" Name="突破！迷雾之森" Category="1" Order="9" Point="10" Total="1">
    <Desc>击杀巴比伦塔第一领域BOSS</Desc>
    <Title>森林游侠</Title>
    <Bonus>
      <Gold>2000</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="63" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="10" Name="突破！北极冰渊" Category="1" Order="10" Point="10" Total="1">
    <Desc>击杀巴比伦塔第二领域BOSS</Desc>
    <Title>冰渊领主</Title>
    <Bonus>
      <Gold>3000</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="62" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="11" Name="突破！奥林圣山" Category="1" Order="11" Point="10" Total="1">
    <Desc>击杀巴比伦塔第三领域BOSS</Desc>
    <Title>圣域弑神者</Title>
    <Bonus>
      <Gold>5000</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="54" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="12" Name="突破！恶魔巢穴" Category="1" Order="12" Point="10" Total="1">
    <Desc>击杀巴比伦塔第四领域BOSS</Desc>
    <Title>恶魔猎杀者</Title>
    <Bonus>
      <Gold>7500</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="64" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="13" Name="突破！异度空间" Category="1" Order="13" Point="10" Total="1">
    <Desc>击杀巴比伦塔第五领域BOSS</Desc>
    <Title>巴比伦塔神</Title>
    <Bonus>
      <Gold>10000</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="73" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="14" Name="朋友你好!（1）" Category="4" Order="14" Point="10" Total="5">
    <Desc>成功邀请好友5名</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>1000</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="1" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="15" Name="朋友你好!（2）" Category="4" Order="15" Point="10" Total="20">
    <Desc>成功邀请好友20名</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>2000</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="2" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="16" Name="朋友你好!（3）" Category="4" Order="16" Point="10" Total="50">
    <Desc>成功邀请好友50名</Desc>
    <Title>众望所归</Title>
    <Bonus>
      <Gold>0</Gold>
      <Honor>5000</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="77" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="17" Name="腰缠万贯（1）" Category="2" Order="17" Point="10" Total="100000">
    <Desc>获得过最大金币数达到100000</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>1000</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
    </Bonus>
  </Achievement>
  <Achievement ID="18" Name="腰缠万贯（2）" Category="2" Order="18" Point="10" Total="500000">
    <Desc>获得过最大金币数达到500000</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>2000</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
    </Bonus>
  </Achievement>
  <Achievement ID="19" Name="腰缠万贯（3）" Category="2" Order="19" Point="10" Total="1000000">
    <Desc>获得过最大金币数达到1000000</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>5000</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
    </Bonus>
  </Achievement>
  <Achievement ID="20" Name="1V1王者（1）" Category="3" Order="20" Point="10" Total="1">
    <Desc>竞技场1V1挑战胜利1次</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>500</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
    </Bonus>
  </Achievement>
  <Achievement ID="21" Name="2V2王者（1）" Category="3" Order="21" Point="10" Total="1">
    <Desc>竞技场2V2挑战胜利1次</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>600</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
    </Bonus>
  </Achievement>
  <Achievement ID="22" Name="3V3王者（1）" Category="3" Order="22" Point="10" Total="1">
    <Desc>竞技场3V3挑战胜利1次</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>700</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
    </Bonus>
  </Achievement>
  <Achievement ID="23" Name="4V4王者（1）" Category="3" Order="23" Point="10" Total="1">
    <Desc>竞技场4V4挑战胜利1次</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>800</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
    </Bonus>
  </Achievement>
  <Achievement ID="24" Name="1V1王者（2）" Category="3" Order="24" Point="10" Total="10">
    <Desc>竞技场1V1挑战胜利10次</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>1000</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="7" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="25" Name="2V2王者（2）" Category="3" Order="25" Point="10" Total="10">
    <Desc>竞技场2V2挑战胜利10次</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>1200</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="18" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="26" Name="3V3王者（2）" Category="3" Order="26" Point="10" Total="10">
    <Desc>竞技场3V3挑战胜利10次</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>1400</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="15" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="27" Name="4V4王者（2）" Category="3" Order="27" Point="10" Total="10">
    <Desc>竞技场4V4挑战胜利10次</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>1600</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="28" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="28" Name="1V1王者（3）" Category="3" Order="28" Point="10" Total="30">
    <Desc>竞技场1V1挑战胜利30次</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>2000</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="22" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="29" Name="2V2王者（3）" Category="3" Order="29" Point="10" Total="30">
    <Desc>竞技场2V2挑战胜利30次</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>2400</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="13" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="30" Name="3V3王者（3）" Category="3" Order="30" Point="10" Total="30">
    <Desc>竞技场3V3挑战胜利30次</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>2800</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="23" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="31" Name="4V4王者（3）" Category="3" Order="31" Point="10" Total="30">
    <Desc>竞技场4V4挑战胜利30次</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>3200</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="50" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="32" Name="1V1王者（4）" Category="3" Order="32" Point="10" Total="80">
    <Desc>竞技场1V1挑战胜利80次</Desc>
    <Title>SOLO？从来不虚！</Title>
    <Bonus>
      <Gold>0</Gold>
      <Honor>4000</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="67" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="33" Name="2V2王者（4）" Category="3" Order="33" Point="10" Total="80">
    <Desc>竞技场2V2挑战胜利80次</Desc>
    <Title>决战双雄</Title>
    <Bonus>
      <Gold>0</Gold>
      <Honor>4800</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="61" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="34" Name="3V3王者（4）" Category="3" Order="34" Point="10" Total="80">
    <Desc>竞技场3V3挑战胜利80次</Desc>
    <Title>三人行我是老师</Title>
    <Bonus>
      <Gold>0</Gold>
      <Honor>5600</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="67" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="35" Name="4V4王者（4）" Category="3" Order="35" Point="10" Total="80">
    <Desc>竞技场4V4挑战胜利80次</Desc>
    <Title>BUG一般的存在</Title>
    <Bonus>
      <Gold>0</Gold>
      <Honor>6400</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="76" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="36" Name="奴隶主（1）" Category="4" Order="36" Point="10" Total="20">
    <Desc>成功奴役好友20次（不战而胜不计入次数）</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="18" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="37" Name="奴隶主（2）" Category="4" Order="37" Point="10" Total="50">
    <Desc>成功奴役好友50次（不战而胜不计入次数）</Desc>
    <Title />
    <Bonus>
      <Gold>5000</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
    </Bonus>
  </Achievement>
  <Achievement ID="38" Name="奴隶主（3）" Category="4" Order="38" Point="10" Total="100">
    <Desc>成功奴役好友100次（不战而胜不计入次数）</Desc>
    <Title>禽兽不如的朋友</Title>
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="2" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="39" Name="血汗钱（1）" Category="4" Order="39" Point="10" Total="50">
    <Desc>奴役好友工作获得收入50次</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="22" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="40" Name="血汗钱（2）" Category="4" Order="40" Point="10" Total="100">
    <Desc>奴役好友工作获得收入100次</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="31" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="41" Name="血汗钱（3）" Category="4" Order="41" Point="10" Total="200">
    <Desc>奴役好友工作获得收入200次</Desc>
    <Title>万恶的美弟</Title>
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="30" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="42" Name="切磋（1）" Category="4" Order="42" Point="10" Total="20">
    <Desc>好友列表挑战好友20次</Desc>
    <Title />
    <Bonus>
      <Gold>5000</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="27" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="43" Name="切磋（2）" Category="4" Order="43" Point="10" Total="50">
    <Desc>好友列表挑战好友50次</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>2000</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
    </Bonus>
  </Achievement>
  <Achievement ID="44" Name="切磋（3）" Category="4" Order="44" Point="10" Total="100">
    <Desc>好友列表挑战好友100次</Desc>
    <Title>放下武器还是好朋友</Title>
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="50" Amount="1" />
        <Item ID="15" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="45" Name="拯救（1）" Category="4" Order="45" Point="10" Total="20">
    <Desc>解救好友20次</Desc>
    <Title />
    <Bonus>
      <Gold>5000</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="27" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="46" Name="拯救（2）" Category="4" Order="46" Point="10" Total="50">
    <Desc>解救好友50次</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>3000</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
    </Bonus>
  </Achievement>
  <Achievement ID="47" Name="拯救（3）" Category="4" Order="47" Point="10" Total="100">
    <Desc>解救好友100次</Desc>
    <Title>好友保护神</Title>
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="50" Amount="1" />
        <Item ID="23" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="48" Name="强力的伙伴（1）" Category="2" Order="48" Point="10" Total="1">
    <Desc>获得第一张史诗卡牌</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="1" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="49" Name="强力的伙伴（2）" Category="2" Order="49" Point="10" Total="1">
    <Desc>获得第一张魔神卡牌</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="2" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="50" Name="强力的伙伴（3）" Category="2" Order="50" Point="10" Total="1">
    <Desc>获得第一张传说卡牌</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="3" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="51" Name="强力的伙伴（4）" Category="2" Order="51" Point="10" Total="200">
    <Desc>达到过所获得史诗卡牌总数200</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="3" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="52" Name="强力的伙伴（5）" Category="2" Order="52" Point="10" Total="100">
    <Desc>达到过所获得魔神卡牌总数100</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="4" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="53" Name="强力的伙伴（6）" Category="2" Order="53" Point="10" Total="50">
    <Desc>达到过所获得传说卡牌总数50</Desc>
    <Title>最强佣兵团</Title>
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="5" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="54" Name="佣兵团发展（1）" Category="2" Order="54" Point="10" Total="100">
    <Desc>获得最大卡牌总数达到100</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="31" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="55" Name="佣兵团发展（2）" Category="2" Order="55" Point="10" Total="200">
    <Desc>获得最大卡牌总数达到200</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="30" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="56" Name="佣兵团发展（3）" Category="2" Order="56" Point="10" Total="500">
    <Desc>获得最大卡牌总数达到500</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="23" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="57" Name="精英佣兵（1）" Category="2" Order="57" Point="10" Total="500">
    <Desc>拥有2星卡牌总数达到500</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="50" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="58" Name="精英佣兵（2）" Category="2" Order="58" Point="10" Total="200">
    <Desc>拥有3星卡牌总数达到200</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="51" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="59" Name="精英佣兵（3）" Category="2" Order="59" Point="10" Total="100">
    <Desc>拥有4星卡牌总数达到100</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="50" Amount="1" />
        <Item ID="51" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="60" Name="厉兵秣马（1）" Category="1" Order="60" Point="10" Total="100">
    <Desc>战争学院总挑战达到100场</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="27" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="61" Name="厉兵秣马（2）" Category="1" Order="61" Point="10" Total="200">
    <Desc>战争学院总挑战达到200场</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="28" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="62" Name="厉兵秣马（3）" Category="1" Order="62" Point="10" Total="500">
    <Desc>战争学院总挑战达到500场</Desc>
    <Title>训练场教官</Title>
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="74" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="63" Name="首当其冲" Category="5" Order="63" Point="10" Total="1">
    <Desc>第一次充值</Desc>
    <Title>水晶初心者</Title>
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="4" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="64" Name="呼朋唤友（1）" Category="4" Order="64" Point="10" Total="20">
    <Desc>分享新鲜事次数20次</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="6" Amount="10" />
        <Item ID="50" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="65" Name="呼朋唤友（2）" Category="4" Order="65" Point="10" Total="50">
    <Desc>分享新鲜事次数50次</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="23" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="66" Name="呼朋唤友（3）" Category="4" Order="66" Point="10" Total="100">
    <Desc>分享新鲜事次数100次</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="7" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="67" Name="贵族（1）" Category="5" Order="67" Point="10" Total="1">
    <Desc>VIP等级达到VIP1</Desc>
    <Title>骑士</Title>
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="51" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="68" Name="蝉联擂主（1）" Category="3" Order="68" Point="10" Total="10">
    <Desc>竞技场连续守擂成功10次</Desc>
    <Title />
    <Bonus>
      <Gold>10000</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="7" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="69" Name="蝉联擂主（2）" Category="3" Order="69" Point="10" Total="20">
    <Desc>竞技场连续守擂成功20次</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>5000</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="2" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="70" Name="蝉联擂主（3）" Category="3" Order="70" Point="10" Total="30">
    <Desc>竞技场连续守擂成功30次</Desc>
    <Title>combo9999！</Title>
    <Bonus>
      <Gold>100000</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="3" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="71" Name="酒馆（1）" Category="2" Order="71" Point="10" Total="20">
    <Desc>酒馆招募卡牌20次</Desc>
    <Title />
    <Bonus>
      <Gold>10000</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="23" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="72" Name="酒馆（2）" Category="2" Order="72" Point="10" Total="50">
    <Desc>酒馆招募卡牌50次</Desc>
    <Title />
    <Bonus>
      <Gold>50000</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="23" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="73" Name="酒馆（3）" Category="2" Order="73" Point="10" Total="100">
    <Desc>酒馆招募卡牌100次</Desc>
    <Title>佣兵王</Title>
    <Bonus>
      <Gold>80000</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="23" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="74" Name="首胜" Category="1" Order="74" Point="10" Total="1">
    <Desc>第一次战斗胜利</Desc>
    <Title>这只是一个开始</Title>
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="27" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="75" Name="炼金师（1）" Category="2" Order="75" Point="10" Total="10">
    <Desc>进化卡牌10次</Desc>
    <Title />
    <Bonus>
      <Gold>10000</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="2" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="76" Name="炼金师（2）" Category="2" Order="76" Point="10" Total="20">
    <Desc>进化卡牌20次</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>5000</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="3" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="77" Name="炼金师（3）" Category="2" Order="77" Point="10" Total="50">
    <Desc>进化卡牌50次</Desc>
    <Title>炼金术士</Title>
    <Bonus>
      <Gold>20000</Gold>
      <Honor>10000</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="4" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="78" Name="强化师（1）" Category="2" Order="78" Point="10" Total="100">
    <Desc>进阶卡牌成功100次</Desc>
    <Title />
    <Bonus>
      <Gold>10000</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="50" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="79" Name="强化师（2）" Category="2" Order="79" Point="10" Total="200">
    <Desc>进阶卡牌成功200次</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>5000</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="51" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="80" Name="强化师（3）" Category="2" Order="80" Point="10" Total="300">
    <Desc>进阶卡牌成功300次</Desc>
    <Title>进阶大师</Title>
    <Bonus>
      <Gold>20000</Gold>
      <Honor>10000</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="3" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="81" Name="合成师（1）" Category="2" Order="81" Point="10" Total="100">
    <Desc>合成卡牌成功100次</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="1" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="82" Name="合成师（2）" Category="2" Order="82" Point="10" Total="200">
    <Desc>合成卡牌成功200次</Desc>
    <Title />
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="3" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="83" Name="合成师（3）" Category="2" Order="83" Point="10" Total="300">
    <Desc>合成卡牌成功300次</Desc>
    <Title>合成大师</Title>
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="4" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="84" Name="贵族（2）" Category="5" Order="85" Point="10" Total="2">
    <Desc>VIP等级达到VIP2</Desc>
    <Title>男爵</Title>
    <Bonus>
      <Gold>5000</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="51" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="85" Name="贵族（3）" Category="5" Order="86" Point="10" Total="3">
    <Desc>VIP等级达到VIP3</Desc>
    <Title>子爵</Title>
    <Bonus>
      <Gold>0</Gold>
      <Honor>1000</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="50" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="86" Name="贵族（4）" Category="5" Order="87" Point="10" Total="4">
    <Desc>VIP等级达到VIP4</Desc>
    <Title>伯爵</Title>
    <Bonus>
      <Gold>10000</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="51" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="87" Name="贵族（5）" Category="5" Order="88" Point="10" Total="5">
    <Desc>VIP等级达到VIP5</Desc>
    <Title>侯爵</Title>
    <Bonus>
      <Gold>0</Gold>
      <Honor>2000</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="50" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="88" Name="贵族（6）" Category="5" Order="89" Point="10" Total="6">
    <Desc>VIP等级达到VIP6</Desc>
    <Title>公爵</Title>
    <Bonus>
      <Gold>20000</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="51" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
  <Achievement ID="89" Name="贵族（7）" Category="5" Order="90" Point="10" Total="7">
    <Desc>VIP等级达到VIP7</Desc>
    <Title>君主</Title>
    <Bonus>
      <Gold>30000</Gold>
      <Honor>3500</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="51" Amount="1" />
      </Items>
    </Bonus>
  </Achievement>
</Achievements>

		public static const ACTIVITY_CONFIG:XML = <Activity xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <Objectives>
    <Objective ID="1" Title="每日登录（首次登录+5分）" Max="1" Point="5" Action="0" />
    <Objective ID="2" Title="挑战巴比伦塔（每次进入挑战+2分）" Max="5" Point="2" Action="1" />
    <Objective ID="3" Title="挑战竞技场（每次进入挑战+5分）" Max="2" Point="5" Action="2" />
    <Objective ID="4" Title="战争学院训练（每次挑战+1分）" Max="10" Point="1" Action="3" />
    <Objective ID="5" Title="刷新酒馆（每次刷新+5分）" Max="2" Point="5" Action="4" />
    <Objective ID="6" Title="提升卡牌星级（每次升星+2分）" Max="5" Point="2" Action="5" />
    <Objective ID="7" Title="聊天广播（每次使用任意号角+1分)" Max="5" Point="1" Action="0" />
    <Objective ID="8" Title="奴役/解救好友（每次奴役/解救好友+3分)" Max="5" Point="3" Action="7" />
    <Objective ID="9" Title="与好友切磋（每次挑战成功+1分)" Max="5" Point="1" Action="7" />
    <Objective ID="10" Title="随机事件(每次随机+1分)" Max="5" Point="1" Action="7" />
    <Objective ID="11" Title="开启卡包(每次+2分)" Max="5" Point="2" Action="0" />
    <Objective ID="12" Title="收获奴隶工作奖励(每次收获+1分)" Max="5" Point="1" Action="6" />
  </Objectives>
  <Chests>
    <Chest ID="1">
      <Name>奖励1</Name>
      <Description>金币×5000、荣誉×1000</Description>
      <Point>20</Point>
      <Bonus>
        <Gold>5000</Gold>
        <Honor>1000</Honor>
        <Crystal>0</Crystal>
        <Exp>0</Exp>
        <Items />
        <Cards />
      </Bonus>
    </Chest>
    <Chest ID="2">
      <Name>奖励2</Name>
      <Description>学院入场券×1、奥拉尔号角×1</Description>
      <Point>40</Point>
      <Bonus>
        <Gold>0</Gold>
        <Honor>0</Honor>
        <Crystal>0</Crystal>
        <Exp>0</Exp>
        <Items>
          <Item ID="12" Amount="1" />
          <Item ID="7" Amount="1" />
        </Items>
        <Cards />
      </Bonus>
    </Chest>
    <Chest ID="3">
      <Name>奖励3</Name>
      <Description>金手指×1、免战牌×1</Description>
      <Point>60</Point>
      <Bonus>
        <Gold>0</Gold>
        <Honor>0</Honor>
        <Crystal>0</Crystal>
        <Exp>0</Exp>
        <Items>
          <Item ID="15" Amount="1" />
          <Item ID="18" Amount="1" />
        </Items>
        <Cards />
      </Bonus>
    </Chest>
    <Chest ID="4">
      <Name>奖励4</Name>
      <Description>小瓶活力药水×1、招募令×1</Description>
      <Point>80</Point>
      <Bonus>
        <Gold>0</Gold>
        <Honor>0</Honor>
        <Crystal>0</Crystal>
        <Exp>0</Exp>
        <Items>
          <Item ID="95" Amount="1" />
          <Item ID="23" Amount="1" />
        </Items>
        <Cards />
      </Bonus>
    </Chest>
    <Chest ID="5">
      <Name>奖励5</Name>
      <Description>保星石×1、祝福石×1</Description>
      <Point>100</Point>
      <Bonus>
        <Gold>0</Gold>
        <Honor>0</Honor>
        <Crystal>0</Crystal>
        <Exp>0</Exp>
        <Items>
          <Item ID="50" Amount="1" />
          <Item ID="51" Amount="1" />
        </Items>
        <Cards />
      </Bonus>
    </Chest>
    <Chest ID="6">
      <Name>奖励6</Name>
      <Description>宝箱描述</Description>
      <Point>300</Point>
    </Chest>
    <Chest ID="7">
      <Name>奖励7</Name>
      <Description>宝箱描述</Description>
      <Point>350</Point>
    </Chest>
    <Chest ID="8">
      <Name>奖励8</Name>
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
      <Name>奖励9</Name>
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
      <Name>奖励10</Name>
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

		public static const MIXTURES_CONFIG:XML = <Mixtures>
  <Mixture ID="882">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="52" Amount="1" />
      </Items>
      <Cards>
        <Card ID="131" Amount="10" />
        <Card ID="207" Amount="10" />
        <Card ID="246" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="858">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="53" Amount="1" />
      </Items>
      <Cards>
        <Card ID="150" Amount="10" />
        <Card ID="156" Amount="10" />
        <Card ID="74" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="874">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="54" Amount="1" />
      </Items>
      <Cards>
        <Card ID="270" Amount="10" />
        <Card ID="153" Amount="10" />
        <Card ID="92" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="888">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="55" Amount="1" />
      </Items>
      <Cards>
        <Card ID="150" Amount="10" />
        <Card ID="177" Amount="10" />
        <Card ID="285" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="978">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="56" Amount="1" />
      </Items>
      <Cards>
        <Card ID="195" Amount="10" />
        <Card ID="207" Amount="10" />
        <Card ID="246" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="914">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="57" Amount="1" />
      </Items>
      <Cards>
        <Card ID="113" Amount="10" />
        <Card ID="104" Amount="10" />
        <Card ID="153" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="916">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="58" Amount="1" />
      </Items>
      <Cards>
        <Card ID="104" Amount="10" />
        <Card ID="76" Amount="10" />
        <Card ID="150" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="920">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="59" Amount="1" />
      </Items>
      <Cards>
        <Card ID="144" Amount="10" />
        <Card ID="107" Amount="10" />
        <Card ID="113" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="926">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="60" Amount="1" />
      </Items>
      <Cards>
        <Card ID="195" Amount="10" />
        <Card ID="82" Amount="10" />
        <Card ID="74" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="932">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="61" Amount="1" />
      </Items>
      <Cards>
        <Card ID="207" Amount="10" />
        <Card ID="375" Amount="10" />
        <Card ID="79" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="982">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="62" Amount="1" />
      </Items>
      <Cards>
        <Card ID="1043" Amount="10" />
        <Card ID="195" Amount="10" />
        <Card ID="285" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="938">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="63" Amount="1" />
      </Items>
      <Cards>
        <Card ID="144" Amount="10" />
        <Card ID="375" Amount="10" />
        <Card ID="597" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="942">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="64" Amount="1" />
      </Items>
      <Cards>
        <Card ID="86" Amount="10" />
        <Card ID="144" Amount="10" />
        <Card ID="177" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="944">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="65" Amount="1" />
      </Items>
      <Cards>
        <Card ID="74" Amount="10" />
        <Card ID="1043" Amount="10" />
        <Card ID="621" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="948">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="66" Amount="1" />
      </Items>
      <Cards>
        <Card ID="621" Amount="10" />
        <Card ID="63" Amount="10" />
        <Card ID="1043" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="950">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="67" Amount="1" />
      </Items>
      <Cards>
        <Card ID="543" Amount="10" />
        <Card ID="261" Amount="10" />
        <Card ID="444" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="964">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="68" Amount="1" />
      </Items>
      <Cards>
        <Card ID="246" Amount="10" />
        <Card ID="79" Amount="10" />
        <Card ID="82" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="892">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="69" Amount="1" />
      </Items>
      <Cards>
        <Card ID="159" Amount="10" />
        <Card ID="234" Amount="10" />
        <Card ID="294" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="922">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="70" Amount="1" />
      </Items>
      <Cards>
        <Card ID="480" Amount="10" />
        <Card ID="276" Amount="10" />
        <Card ID="799" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="928">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="71" Amount="1" />
      </Items>
      <Cards>
        <Card ID="216" Amount="10" />
        <Card ID="228" Amount="10" />
        <Card ID="249" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="930">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="72" Amount="1" />
      </Items>
      <Cards>
        <Card ID="799" Amount="10" />
        <Card ID="147" Amount="10" />
        <Card ID="249" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="946">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="73" Amount="1" />
      </Items>
      <Cards>
        <Card ID="310" Amount="10" />
        <Card ID="228" Amount="10" />
        <Card ID="492" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="952">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="74" Amount="1" />
      </Items>
      <Cards>
        <Card ID="444" Amount="10" />
        <Card ID="525" Amount="10" />
        <Card ID="261" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="990">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="75" Amount="1" />
      </Items>
      <Cards>
        <Card ID="102" Amount="10" />
        <Card ID="543" Amount="10" />
        <Card ID="582" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="956">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="76" Amount="1" />
      </Items>
      <Cards>
        <Card ID="234" Amount="10" />
        <Card ID="525" Amount="10" />
        <Card ID="119" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="962">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="77" Amount="1" />
      </Items>
      <Cards>
        <Card ID="102" Amount="15" />
        <Card ID="297" Amount="15" />
        <Card ID="727" Amount="15" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="1029">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="78" Amount="1" />
      </Items>
      <Cards>
        <Card ID="492" Amount="10" />
        <Card ID="444" Amount="10" />
        <Card ID="310" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="966">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="79" Amount="1" />
      </Items>
      <Cards>
        <Card ID="4" Amount="10" />
        <Card ID="168" Amount="10" />
        <Card ID="297" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="954">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="80" Amount="1" />
      </Items>
      <Cards>
        <Card ID="249" Amount="10" />
        <Card ID="5" Amount="10" />
        <Card ID="234" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="984">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="81" Amount="1" />
      </Items>
      <Cards>
        <Card ID="131" Amount="10" />
        <Card ID="246" Amount="10" />
        <Card ID="483" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="910">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="82" Amount="1" />
      </Items>
      <Cards>
        <Card ID="107" Amount="10" />
        <Card ID="79" Amount="10" />
        <Card ID="483" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="988">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="83" Amount="1" />
      </Items>
      <Cards>
        <Card ID="489" Amount="10" />
        <Card ID="597" Amount="10" />
        <Card ID="270" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="811">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="84" Amount="1" />
      </Items>
      <Cards>
        <Card ID="86" Amount="10" />
        <Card ID="1043" Amount="10" />
        <Card ID="177" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="823">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="85" Amount="1" />
      </Items>
      <Cards>
        <Card ID="147" Amount="10" />
        <Card ID="119" Amount="10" />
        <Card ID="216" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="912">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="86" Amount="1" />
      </Items>
      <Cards>
        <Card ID="119" Amount="10" />
        <Card ID="147" Amount="10" />
        <Card ID="297" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="918">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="87" Amount="1" />
      </Items>
      <Cards>
        <Card ID="210" Amount="10" />
        <Card ID="216" Amount="10" />
        <Card ID="294" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="968">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="97" Amount="1" />
      </Items>
      <Cards>
        <Card ID="276" Amount="10" />
        <Card ID="480" Amount="10" />
        <Card ID="6" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="970">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="98" Amount="1" />
      </Items>
      <Cards>
        <Card ID="582" Amount="10" />
        <Card ID="525" Amount="10" />
        <Card ID="727" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="980">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="99" Amount="1" />
      </Items>
      <Cards>
        <Card ID="573" Amount="10" />
        <Card ID="6" Amount="10" />
        <Card ID="480" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="1013">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="100" Amount="1" />
      </Items>
      <Cards>
        <Card ID="270" Amount="10" />
        <Card ID="82" Amount="10" />
        <Card ID="104" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="1015">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="101" Amount="1" />
      </Items>
      <Cards>
        <Card ID="159" Amount="10" />
        <Card ID="739" Amount="10" />
        <Card ID="297" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="1017">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="102" Amount="1" />
      </Items>
      <Cards>
        <Card ID="606" Amount="10" />
        <Card ID="727" Amount="10" />
        <Card ID="228" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="555">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="103" Amount="1" />
      </Items>
      <Cards>
        <Card ID="739" Amount="10" />
        <Card ID="168" Amount="10" />
        <Card ID="210" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="818">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="104" Amount="1" />
      </Items>
      <Cards>
        <Card ID="6" Amount="10" />
        <Card ID="5" Amount="10" />
        <Card ID="168" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="998">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="105" Amount="1" />
      </Items>
      <Cards>
        <Card ID="342" Amount="5" />
        <Card ID="1062" Amount="5" />
        <Card ID="1067" Amount="5" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="1002">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="106" Amount="1" />
      </Items>
      <Cards>
        <Card ID="525" Amount="15" />
        <Card ID="307" Amount="5" />
        <Card ID="754" Amount="5" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="8">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="107" Amount="1" />
      </Items>
      <Cards>
        <Card ID="465" Amount="5" />
        <Card ID="531" Amount="5" />
        <Card ID="12" Amount="5" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="1019">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="108" Amount="1" />
      </Items>
      <Cards>
        <Card ID="477" Amount="5" />
        <Card ID="474" Amount="5" />
        <Card ID="579" Amount="5" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="16">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="109" Amount="1" />
      </Items>
      <Cards>
        <Card ID="516" Amount="5" />
        <Card ID="370" Amount="5" />
        <Card ID="373" Amount="5" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="1021">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="110" Amount="1" />
      </Items>
      <Cards>
        <Card ID="325" Amount="5" />
        <Card ID="802" Amount="5" />
        <Card ID="231" Amount="5" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="972">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="125" Amount="1" />
      </Items>
      <Cards>
        <Card ID="76" Amount="10" />
        <Card ID="489" Amount="10" />
        <Card ID="597" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="813">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="126" Amount="1" />
      </Items>
      <Cards>
        <Card ID="246" Amount="10" />
        <Card ID="107" Amount="10" />
        <Card ID="131" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="815">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="127" Amount="1" />
      </Items>
      <Cards>
        <Card ID="621" Amount="10" />
        <Card ID="113" Amount="10" />
        <Card ID="273" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="846">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="128" Amount="1" />
      </Items>
      <Cards>
        <Card ID="86" Amount="10" />
        <Card ID="67" Amount="10" />
        <Card ID="76" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="992">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="129" Amount="1" />
      </Items>
      <Cards>
        <Card ID="285" Amount="10" />
        <Card ID="63" Amount="10" />
        <Card ID="156" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="996">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="130" Amount="1" />
      </Items>
      <Cards>
        <Card ID="76" Amount="10" />
        <Card ID="273" Amount="10" />
        <Card ID="246" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="1011">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="131" Amount="1" />
      </Items>
      <Cards>
        <Card ID="483" Amount="10" />
        <Card ID="86" Amount="10" />
        <Card ID="489" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="1025">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="132" Amount="1" />
      </Items>
      <Cards>
        <Card ID="92" Amount="10" />
        <Card ID="153" Amount="10" />
        <Card ID="156" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="1027">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="133" Amount="1" />
      </Items>
      <Cards>
        <Card ID="63" Amount="10" />
        <Card ID="67" Amount="10" />
        <Card ID="273" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="1060">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="134" Amount="1" />
      </Items>
      <Cards>
        <Card ID="102" Amount="10" />
        <Card ID="796" Amount="10" />
        <Card ID="582" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="1065">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="135" Amount="1" />
      </Items>
      <Cards>
        <Card ID="210" Amount="10" />
        <Card ID="5" Amount="10" />
        <Card ID="573" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="1077">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="136" Amount="1" />
      </Items>
      <Cards>
        <Card ID="796" Amount="10" />
        <Card ID="4" Amount="10" />
        <Card ID="102" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
  <Mixture ID="1079">
    <Requirement>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="137" Amount="1" />
      </Items>
      <Cards>
        <Card ID="4" Amount="10" />
        <Card ID="294" Amount="10" />
        <Card ID="606" Amount="10" />
      </Cards>
    </Requirement>
  </Mixture>
</Mixtures>

		public static const TOWER_CONFIG:XML = <Tower xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <Levels ID="1">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="2">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="3">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="4">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="5">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="6">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="7">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="8">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="9">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="10">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="2" Amount="1" />
      </Items>
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="11">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="12">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="13">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="14">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="15">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="16">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="17">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="18">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="19">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="20">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="3" Amount="1" />
      </Items>
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="21">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="22">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="23">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="24">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="25">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="26">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="27">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="28">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="29">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="30">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="4" Amount="1" />
      </Items>
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="31">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="32">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="33">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="34">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="35">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="36">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="37">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="38">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="39">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="40">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="34" Amount="1" />
      </Items>
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="41">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="42">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="43">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="44">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="45">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="46">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="47">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="48">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="49">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="50">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="33" Amount="1" />
      </Items>
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="51">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="52">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="53">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="54">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="55">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="56">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="57">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="58">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="59">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="60">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="107" Amount="1" />
      </Items>
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="61">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="62">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="63">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="64">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="65">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="66">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="67">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="68">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="69">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="70">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="5" Amount="1" />
      </Items>
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="71">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="72">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="73">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="74">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="75">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="76">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="77">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="78">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="79">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="80">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="109" Amount="1" />
      </Items>
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="81">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="82">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="83">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="84">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="85">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="86">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="87">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="88">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="89">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="90">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="103" Amount="1" />
      </Items>
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="91">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="92">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="93">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="94">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="95">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="96">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="97">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="98">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="99">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items />
      <Cards />
    </Bonus>
  </Levels>
  <Levels ID="100">
    <Bonus>
      <Gold>0</Gold>
      <Honor>0</Honor>
      <Crystal>0</Crystal>
      <Exp>0</Exp>
      <Items>
        <Item ID="106" Amount="1" />
      </Items>
      <Cards />
    </Bonus>
  </Levels>
</Tower>

		public static const SLAVE_CONFIG:XML = <Slave xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <Works>
    <Work ID="1">
      <GoldRate>18</GoldRate>
      <Time>10</Time>
      <Vip>0</Vip>
    </Work>
    <Work ID="2">
      <GoldRate>60</GoldRate>
      <Time>30</Time>
      <Vip>0</Vip>
    </Work>
    <Work ID="3">
      <GoldRate>135</GoldRate>
      <Time>60</Time>
      <Vip>0</Vip>
    </Work>
    <Work ID="4">
      <GoldRate>585</GoldRate>
      <Time>240</Time>
      <Vip>0</Vip>
    </Work>
    <Work ID="5">
      <GoldRate>1500</GoldRate>
      <Time>600</Time>
      <Vip>1</Vip>
    </Work>
  </Works>
</Slave>

		public function ConfigXML()
		{
			return;
		} // end function
	}
}

