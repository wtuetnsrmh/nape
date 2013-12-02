package project.view.attack 
{
	//import com.greensock.motionPaths.MotionPath;
	//import flash.display.MovieClip;
	//import flash.display.Sprite;
	//import flash.events.MouseEvent;
	import flash.events.TimerEvent;
	import flash.geom.Point;
	import flash.utils.Dictionary;
	import flash.utils.Timer;
	
	import khaos.view.ViewType;
	
	import project.Cellcard.Card;
	import project.controller.SkillController;
	import project.model.attack.ActionModel;
	import project.model.attack.AttackCardModel;
	import project.model.attack.AttackModel;
	import project.model.attack.RoundModel;
	import project.model.attack.SkillClassName;
	import project.model.item.CardModel;
	import project.utils.CardFactary;
	import project.utils.CustomTool;
	import project.utils.DepthManager;
	import project.utils.MovieClipController;
	import project.view.bottonBar.BottonBar;
	import project.view.scene.battleScene.BattleReadyPanel;
	import project.view.scene.mainScene.MainScene;
	
	import starling.animation.Transitions;
	import starling.core.Starling;
	import starling.display.MovieClip;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.EventDispatcher;
	import starling.events.TouchEvent;
	import starling.text.TextField;
	import starling.utils.deg2rad;
	

	//import project.utils.CustomTool;
	//import project.utils.DepthManager;
	//import project.utils.MovieClipController;
	//import project.utils.Reflection;
	//import project.view.module.cell.Card;
	/*import com.greensock.easing.*;
	import com.greensock.plugins.*;
	import com.greensock.*;*/
	//import project.view.module.helppane.NewbiePane;
	
	/**
	 * 战斗播放器
	 * @author bbjxl 2012
	 */
	//战斗播放器，控制战斗各表现形式，及技能形式
    public class AttackPlayer extends EventDispatcher
    {
		private var _restartFlag:Boolean = false;//是否重新开始
		
        private var _attackView:AttackPanel;
        private var _turns:Vector.<RoundModel>;//总回合数据
        private var _turnsLen:int;//回合数
        private var _turnCompleteFlag:Boolean = false;//一回合结束标志
        private var _currentTurn:int = 0;//当前回合
        private var _cardActionCompleteFlag:Boolean = false;//一动作结束标志
        private var _currentCardActions:Vector.<ActionModel>;//当前回合内的所有动作集
        private var _currentCardIndex:int = 0;//当前动作在该回合动作集中的索引
        private var _actHandlerMap:Dictionary;//所有动作响应字典
		
		private var _deffendDeadCard:Vector.<Card>;//防守方墓区里的卡
		private var _attackDeadCard:Vector.<Card>;//防守方墓区里的卡
		
		private var _leftMoveNum:Number = 0;//左移多少位置
		
        private var _cardBindJuDuMap:Dictionary;//所有绑定中毒的卡
        private var _cardBindXianJingMap:Dictionary;//陷阱
        private var _cardBindBingDanMap:Dictionary;//冰冻
        private var _cardBindXianZhouMap:Dictionary;//仙咒
        private var _cardBindFuTiMap:Dictionary;//缚体
        private var _cardBindJinFeiMap:Dictionary;//禁飞
        private var _cardBindZhiLiaoMap:Dictionary;//治疗2
        private var _cardBindJianWuMap:Dictionary;//剑舞
        private var _cardBindLongXiMap:Dictionary;//龙息1
        private var _cardBindGongJiMap:Dictionary;//攻击2
        private var _cardBindFeiXianMap:Dictionary;//飞行
        private var _cardBindGangLangMap:Dictionary;//感染
        private var _cardBindEquipBarMap:Dictionary;//绑定装备框的
		
        private var _bigCard:Card;
        private var _backCard:Card;
		
        private var _cardEquipMap:Dictionary;//所有已装备上装备的卡
		
        private const STATE_SLEEP:int = 1;//卡的状态 发卡区
        private const STATE_READY:int = 2;//准备区
        private const STATE_BATTLE:int = 3;//战斗区
        private const STATE_EQUIP:int = 4;//装备区
        private const STATE_DEAD:int = 5;//死亡区
        private const STATE_EQUIPED:int = 6;//已装备区
		
		private const FIVE_CARD_X:Number=780.2;//第五张战斗区中的卡位置
		
        public var timeLen:Number = 0.45;
        private var timeLenMap:Object;//不同速度的对应值
        private var stageFrameMap:Object;//不同速度的场景帧数
		
        private const transition:String = "linear";//缓动效果曲线
        private const CARD_BATTLE_WIDTH:Number =ApplictionConfig.CARD_WIDTH*0.64;//战斗区卡的宽度（中卡）
        private const CARD_OTHER_WIDTH:Number = ApplictionConfig.SMALL_CARD_WH;//其他区卡的宽度（小卡）
        private const CARD_WIDTH:Number = ApplictionConfig.CARD_WIDTH;//大卡
        private const CARD_HEIGHT:Number = ApplictionConfig.CARD_HEIGHT;
		
        private var JU_DU_BIND_POINT:Point;//中毒
        private var JIN_FEI_BIND_POINT:Point;//禁飞
        private var XIAN_JING_BIND_POINT:Point;//陷阱
        private var FEI_XIAN_BIND_POINT:Point;//飞行
        private var BING_DAN_BIND_POINT:Point;//冰冻时目标卡中显示冰冻图标的位置点
        private var XIAN_ZHOU_POINT:Point;////仙咒
        private var FU_TI_POINT:Point;//缚体
        private var GANG_LANG_POINT:Point;//感染
        private var LIAN_MEN_POINT:Point;//联盟：治疗2 剑舞 龙息1 攻击2
		
		
        private var _showCard:Card;//被点击要显示的卡
        private var _substituteCardContent:Sprite;//点击要显示的大卡及背景
        private var _artifactSubsCardMap:Dictionary;//神通替代卡
        private var _artifactCardMap:Dictionary;//神通卡
        public var _playTimer:Timer;

        public function AttackPlayer()
        {
			_deffendDeadCard = new Vector.<Card>();
			_attackDeadCard = new Vector.<Card>();
			
            _actHandlerMap = new Dictionary();
            _cardBindJuDuMap = new Dictionary();
            _cardBindXianJingMap = new Dictionary();
            _cardBindBingDanMap = new Dictionary();
            _cardBindXianZhouMap = new Dictionary();
            _cardBindFuTiMap = new Dictionary();
            _cardBindJinFeiMap = new Dictionary();//禁飞
            _cardBindZhiLiaoMap = new Dictionary();
            _cardBindJianWuMap = new Dictionary();
            _cardBindLongXiMap = new Dictionary();
            _cardBindGongJiMap = new Dictionary();
            _cardBindFeiXianMap = new Dictionary();
            _cardBindGangLangMap = new Dictionary();
            _cardBindEquipBarMap = new Dictionary();
            _cardEquipMap = new Dictionary();//装备
			
            timeLenMap = {X1:0.125, X2:0.25, X4:0.125};//{X1:0.45, X2:0.25, X4:0.125}
            stageFrameMap = { X1:24, X2:48, X4:96 };// { X1:30, X2:60, X4:120 };
			
			
            JIN_FEI_BIND_POINT = new Point(0, 0);
			JU_DU_BIND_POINT = new Point(0, 0);
			XIAN_JING_BIND_POINT = new Point(0, 0);
			FEI_XIAN_BIND_POINT = new Point(0, 0);
            BING_DAN_BIND_POINT = new Point(0, 0);
            XIAN_ZHOU_POINT = new Point(0, 0);
            FU_TI_POINT = new Point(0, 0);
            LIAN_MEN_POINT = new Point(0, 165);
            GANG_LANG_POINT = new Point(0, 0);
			
			
            _substituteCardContent = new Sprite();
            _artifactSubsCardMap = new Dictionary();
            _artifactCardMap = new Dictionary();
            _playTimer = new Timer(125, 0);
            _attackView = AttackPanel.getInstance();
			Root.vmgr.getContainer(ViewType.TOP).addChild(_substituteCardContent);
			
            registerActHanlder();//注册技能动作
            _playTimer.addEventListener(TimerEvent.TIMER, onCheckPlaySteps);
            return;
        }// end function

		/**
		 * 注册所有的技能动作
		 */
        private function registerActHanlder() : void
        {
            //_actHandlerMap[1000] = guideBattle;
			
            _actHandlerMap[45] = moveToReadyArea;
            _actHandlerMap[41] = moveToBattleArea;
            _actHandlerMap[44] = moveToDeadArea;
            _actHandlerMap[43] = moveToEquipArea;
			_actHandlerMap[42] = moveToSleepArea;
			_actHandlerMap[1] = attackFunc;
			_actHandlerMap[3] = flyMissFunc;
			_actHandlerMap[4] = equipFunc;
			_actHandlerMap[5] = shenTongShowFunc;//显示神通
            _actHandlerMap[6] = noTargetFunc;//神通无目标
			_actHandlerMap[7] = missFunc;
            //_actHandlerMap[125] = shenTongDeadFunc;
			
            _actHandlerMap[10] = changeCardProp;
            _actHandlerMap[11] = changeCardProp;
            _actHandlerMap[12] = changeCardProp;
			_actHandlerMap[13] = BingDanFunc;//解除冰冻
			_actHandlerMap[14] = ZhongDuFunc;//中毒
			_actHandlerMap[15] = FuTiFunc;//束缚
			_actHandlerMap[16] = XingZhouFunc;//仙咒
			_actHandlerMap[17] = XingJingFunc;//陷井
			_actHandlerMap[18] = JingFeiFunc;//禁飞
			_actHandlerMap[19] = FeiXianFunc;//飞行
			_actHandlerMap[20] = GangLanFunc;//感染
			_actHandlerMap[21] = ZhiLiaoFunc;//希腊盟友 治疗2√
			_actHandlerMap[22] = JianWuFunc;//北欧盟友 剑舞√
			_actHandlerMap[23] = LongXiFunc;//其他盟友 龙息1√
			_actHandlerMap[24] = GongJiFunc;//人族盟友 攻击2√
			//-------------------------------------------------------
			for (var i:int = 101; i < 278; i++ ) {
				_actHandlerMap[i] = skillClassHandler;
				}
			
			
			//--------------------------------------------------------
			
           
            return;
        }// end function

		/**
		 * 根据技能ID分类
		 * @param	param1
		 */
		private function skillClassHandler(param:ActionModel):void {
			//----------------雕像----------------------------------------
			if (param.act == 192 || param.act == 193 || param.act == 220 || param.act == 221 || param.act == 222 || param.act == 223 || param.act == 224 || param.act == 225) {
				
				skillActionHanldler(param, 8,param.act);
				return;
				}
			
			//----------------目标单向----------------------------------------
			if (param.act == 210) {
				skillActionHanldler(param, 1,18);//飞行
				return;
				}
			if (param.act == 203) {
				skillActionHanldler(param, 1,6);//飞行
				return;
				}
			if (param.act == 150 ||param.act == 240) {
				skillActionHanldler(param, 1,9);//感染
				return;
				}
			if (param.act == 122 || param.act == 133 || param.act == 135 || param.act == 157 || param.act == 163 || param.act == 172
				||param.act == 185 || param.act == 191 || param.act == 197 || param.act == 200 || param.act == 201 || param.act == 205
				||param.act == 206 || param.act == 216 || param.act == 229 || param.act == 238 || param.act == 247 || param.act == 253
				||param.act == 265 ) {
				skillActionHanldler(param, 1,11);//攻击力上升
				return;
				}
			if (param.act == 214 || param.act == 215 || param.act == 249 || param.act == 250 || param.act == 251) {
				skillActionHanldler(param, 1,12);//攻击力下降
				return;
				}
			if (param.act == 138 || param.act == 139 || param.act == 140 || param.act == 143) {
				skillActionHanldler(param, 1,16);//加速
				return;
				}
			if (param.act == 141 || param.act == 142 || param.act == 220) {
				skillActionHanldler(param, 1,18);//减速
				return;
				}
			if (param.act == 164 || param.act == 165) {
				skillActionHanldler(param, 1,19);//狙击
				return;
				}
			if (param.act == 176 || param.act == 177 || param.act == 178 || param.act == 179 || param.act == 180
				|| param.act == 181 || param.act == 182 || param.act == 183 || param.act == 184) {
				skillActionHanldler(param, 1,22);//落雷
				return;
				}
			if (param.act == 166 || param.act == 167 || param.act == 168 || param.act == 169 || param.act == 170) {
				skillActionHanldler(param, 1,23);//猛毒
				return;
				}
			if (param.act == 111 || param.act == 146 || param.act == 194 || param.act == 196
				|| param.act == 226 || param.act == 239 || param.act == 242 || param.act == 264
				|| param.act == 272) {
				skillActionHanldler(param, 1,24);//秒杀
				return;
				}
			if (param.act == 112) {
				skillActionHanldler(param, 1,44);//准备区秒杀
				return;
				}
			
			if (param.act == 202 || param.act == 213 || param.act == 246) {
				skillActionHanldler(param, 1,30);//睡眠术
				return;
				}
			if (param.act == 158 || param.act == 159 || param.act == 162 || param.act == 189 || param.act == 198
				|| param.act == 199 || param.act == 211 || param.act == 217 || param.act == 254
				|| param.act == 258 || param.act == 259 || param.act == 260 || param.act == 266
				|| param.act == 267) {
				skillActionHanldler(param, 1,33);//体力上升
				return;
				}
			if (param.act == 161) {
				skillActionHanldler(param, 1,40);//折翼
				return;
				}
			if (param.act == 268 || param.act == 269 || param.act == 270 || param.act == 271) {
				skillActionHanldler(param, 1,41);//治疗
				return;
				}
			if (param.act == 124 || param.act == 204) {
				skillActionHanldler(param, 1,42);//致盲
				return;
				}
			if (param.act == 212 || param.act == 245) {
				skillActionHanldler(param, 1,43);//诅咒
				return;
				}
			//-------------------墓地复活技能 技能不执行动画，由MOVETODEADFUC来显示相应的动画-------------------------------------
			if (param.act == 123 || param.act == 144||param.act == 145|| param.act == 273) {
				skillActionHanldler(param, 0,0);//复活术
				return;
				}
			
			//---------------目标双向-----------------------------------------
			if (param.act == 136) {
				skillActionHanldler(param, 2,27);//遣返
				return;
				}
			if (param.act == 186 || param.act == 187 || param.act == 188) {
				skillActionHanldler(param, 2,21);//龙息
				return;
				}
			if (param.act == 243 || param.act == 244) {
				skillActionHanldler(param, 2,37);//吸血
				return;
				}
			if (param.act == 274 || param.act == 275 || param.act == 276) {
				skillActionHanldler(param, 2,20);//灵魂炸裂
				return;
				}
			//-----------------//目标指向,墓地（指向）---------------------------------------
			if (param.act == 106 || param.act == 107 || param.act == 108 || param.act == 109 ) {
				skillActionHanldler(param, 3,3);//冰弹
				return;
				}
			if (param.act == 147 || param.act == 148 || param.act == 149 || param.act == 277) {
				skillActionHanldler(param, 3,14);//火球
				return;
				}
			if (param.act == 171) {
				skillActionHanldler(param, 11,7);//复仇之魂 没有to，从墓发到from id这张卡
				return;
				}
			if (param.act == 252) {
				skillActionHanldler(param, 11,31);//死灵能量 没有to，从墓发到from id这张卡
				return;
				}
			if (param.act == 137) {
				skillActionHanldler(param, 12,36);//亡灵意志  有to，从墓发到to id这张卡
				return;
				}
			//------------------------目标（位移）--------------------------------
			if (param.act == 152 || param.act == 153 || param.act == 154) {
				skillActionHanldler(param, 1,39);//饮血斩
				return;
				}
			if (param.act == 118 || param.act == 119 || param.act == 120) {
				skillActionHanldler(param, 10,5);//反击
				return;
				}
			//--------------------//自身------------------------------------
			if (param.act == 121) {
				skillActionHanldler(param, 7,6);//飞行
				return;
				}
			
			if (param.act == 128 || param.act == 129 || param.act == 130) {
				skillActionHanldler(param, 7,10);//格挡
				return;
				}
			if (param.act == 104 || param.act == 131 || param.act == 132 || param.act == 134 || param.act == 174
				 || param.act == 175 || param.act == 227 || param.act == 228 || param.act == 241
				  || param.act == 255 || param.act == 256 || param.act == 257) {
				skillActionHanldler(param, 7,11);//攻击力上升
				return;
				}
			if (param.act == 173) {
				skillActionHanldler(param, 7,13);//鬼神
				return;
				}
			if (param.act == 110) {
				skillActionHanldler(param, 7,17);//减伤1
				return;
				}
			if (param.act == 117) {
				skillActionHanldler(param, 7,25);//魔法罩
				return;
				}
			if (param.act == 116 || param.act == 151 || param.act == 156 || param.act == 195) {
				skillActionHanldler(param, 7,28);//伤害加深
				return;
				}
			if (param.act == 219) {
				skillActionHanldler(param, 7,32);//泰坦附体
				return;
				}
			if (param.act == 230 || param.act == 231 || param.act == 232) {
				skillActionHanldler(param, 7,33);//体力上升
				return;
				}
			if (param.act == 190) {
				skillActionHanldler(param, 7,35);//天神下凡
				return;
				}
			if (param.act == 218 || param.act == 261 || param.act == 262|| param.act == 263) {
				skillActionHanldler(param, 7,41);//治疗
				return;
				}
			if (param.act == 248) {
				skillActionHanldler(param, 7,43);//诅咒
				return;
				}
			//------------------//区域群体--------------------------------------
			if (param.act == 101) {
				skillActionHanldler(param, 4,1);//暴风雪
				return;
				}
			if (param.act == 102 || param.act == 103) {
				skillActionHanldler(param, 4,2);//爆炎术
				return;
				}
			if (param.act == 113 || param.act == 114|| param.act == 115) {
				skillActionHanldler(param, 4,4);//毒雾
				return;
				}
			if (param.act == 125 || param.act == 126|| param.act == 127) {
				skillActionHanldler(param, 4,29);//圣光
				return;
				}
			if (param.act == 207 || param.act == 208|| param.act == 209) {
				skillActionHanldler(param, 4,34);//天火
				return;
				}
			//-------------------//全屏-------------------------------------
			if (param.act == 160) {
				skillActionHanldler(param, 6,38);//销毁
				return;
				}

			//--------------------同盟------------------------------------
			//同盟
			/*switch(param.act) {
				case 234:
					ZhiLiaoFunc(param);
					return;
					break;
				case 235:
					JianWuFunc(param);
					return;
					break;
				case 236:
					LongXiFunc(param);
					return;
					break;
				case 237:
					GongJiFunc(param);
					return;
					break;
				}
			*/
			//--------------------------------------------------------
			
			if (param.act == 233) {
				//末日审判
				skillActionHanldler(param, 6,26);
				return;
				}	
			
			if (param.act == 155) {
				//特殊
				skillActionHanldler(param, 5,15);
				return;
				}
			
			_cardActionCompleteFlag = true;
			}
		
		/**
		 * 联盟：治疗2 剑舞 龙息1 攻击2
		 * @param	param1
		 */
		private function ZhiLiaoFunc(param1:ActionModel):void {
			if (param1.val == 1) {
				//治疗2
				bindEffectFunc(param1);
				}else {
					unlockEffectLM(param1.uid, _cardBindZhiLiaoMap);
					}
			}
		private function JianWuFunc(param1:ActionModel):void {
			if (param1.val == 1) {
				//剑舞
				bindEffectFunc(param1);
				}else {
					unlockEffectLM(param1.uid, _cardBindJianWuMap);
					}
			}
		private function LongXiFunc(param1:ActionModel):void {
			if (param1.val == 1) {
				//龙息1
				bindEffectFunc(param1);
				}else {
					unlockEffectLM(param1.uid, _cardBindLongXiMap);
					}
			}
		private function GongJiFunc(param1:ActionModel):void {
			if (param1.val == 1) {
				//攻击2
				bindEffectFunc(param1);
				}else {
					unlockEffectLM(param1.uid, _cardBindGongJiMap);
					}
			}
		
		/**
		 * 冰冻/解除冰冻  1为冰冻，0为解冻
		 * @param	param1
		 */
		private function BingDanFunc(param1:ActionModel):void {
			if (param1.val == 1) {
				//冰冻
				bindEffectFunc(param1);
				}else {
					unlockEffect(param1.uid, _cardBindBingDanMap);
					}
			}
		/**
		 * 中毒
		 * @param	param1
		 */
		private function ZhongDuFunc(param1:ActionModel):void {
			if (param1.val == 1) {
				bindEffectFunc(param1);
				}else {
					unlockEffect(param1.uid, _cardBindJuDuMap);
					}
			}
		/**
		 * 束缚-缚体
		 * @param	param1
		 */
		private function FuTiFunc(param1:ActionModel):void {
			if (param1.val == 1) {
				bindEffectFunc(param1);
				}else {
					unlockEffect(param1.uid, _cardBindFuTiMap);
					}
			}
		/**
		 * 仙咒
		 * @param	param1
		 */
		private function XingZhouFunc(param1:ActionModel):void {
			if (param1.val == 1) {
				bindEffectFunc(param1);
				}else {
					unlockEffect(param1.uid, _cardBindXianZhouMap);
					}
			}
		/**
		 * 陷阱
		 * @param	param1
		 */
		private function XingJingFunc(param1:ActionModel):void {
			if (param1.val == 1) {
				bindEffectFunc(param1);
				}else {
					unlockEffect(param1.uid, _cardBindXianJingMap);
					}
			}
		/**
		 * 禁飞
		 * @param	param1
		 */
		private function JingFeiFunc(param1:ActionModel):void {
			if (param1.val == 1) {
				bindEffectFunc(param1);
				}else {
					unlockEffect(param1.uid, _cardBindJinFeiMap);
					}
			}
		/**
		 * 飞行
		 * @param	param1
		 */
		private function FeiXianFunc(param1:ActionModel):void {
			if (param1.val == 1) {
				bindEffectFunc(param1);
				}else {
					unlockEffect(param1.uid, _cardBindFeiXianMap);
					}
			}
		/**
		 * 感染
		 * @param	parma1
		 */
		private function GangLanFunc(param1:ActionModel):void {
			if (param1.val == 1) {
				bindEffectFunc(param1);
				}else {
					unlockEffect(param1.uid, _cardBindGangLangMap);
					}
			}
		/**
		 * 所有绑定效果
		 * @param	param1
		 */	
		private function bindEffectFunc(parma1:ActionModel):void {
			var targetCard:Card = _attackView.cardMap[parma1.uid];
			var oldMc:MovieClip;//之前的图标
			var newMc:MovieClip;//新图标
			var mc:MovieClip;//大效果
			
			switch(parma1.act) {
				case 13:
					//冰冻
					oldMc = _cardBindBingDanMap[parma1.uid];
					if (oldMc != null)
					{
						oldMc.stop();
						Starling.juggler.remove(oldMc);
						oldMc.removeFromParent(true);
						oldMc=null;
					}
					newMc = ApplictionConfig.creaMC("attackUI",SkillClassName.BING_DON_ICO);
					_cardBindBingDanMap[parma1.uid] = newMc;
					newMc.x = BING_DAN_BIND_POINT.x;
					newMc.y = BING_DAN_BIND_POINT.y;
					newMc.play();
					//newMc.scaleY = 2;
					//newMc.scaleX = 2;
					targetCard.addChild(newMc);
					_cardActionCompleteFlag = true;
					/*MovieClipController.onMovieClipEnd(newMc, function callback():void {
						_cardActionCompleteFlag = true;
						return;
						});*/
					
					break;
				case 14:
					//中毒
					oldMc = _cardBindJuDuMap[parma1.uid];
					if (oldMc != null)
					{
						oldMc.stop();
						Starling.juggler.remove(oldMc);
						oldMc.removeFromParent(true);
						oldMc=null;
					}
					newMc = ApplictionConfig.creaMC("attackUI",SkillClassName.ZHONG_DU_ICO);
					_cardBindJuDuMap[parma1.uid] = newMc;
					newMc.x = JU_DU_BIND_POINT.x;
					newMc.y = JU_DU_BIND_POINT.y;
					newMc.play();
					//newMc.scaleY = 2;
					//newMc.scaleX = 2;
					targetCard.addChild(newMc);
					_cardActionCompleteFlag = true;
					/*MovieClipController.onMovieClipEnd(newMc, function callback():void {
						_cardActionCompleteFlag = true;
						return;
						});*/
					break;
				case 15:
					//束缚
					oldMc = _cardBindFuTiMap[parma1.uid];
					if (oldMc != null)
					{
						oldMc.stop();
						Starling.juggler.remove(oldMc);
						oldMc.removeFromParent(true);
						oldMc=null;
					}
					newMc = ApplictionConfig.creaMC("attackUI",SkillClassName.FU_TI_ICO);
					_cardBindFuTiMap[parma1.uid] = newMc;
					newMc.x = FU_TI_POINT.x;
					newMc.y = FU_TI_POINT.y;
					newMc.play();
					//newMc.scaleY = 2;
					//newMc.scaleX = 2;
					targetCard.addChild(newMc);
					_cardActionCompleteFlag = true;
					/*MovieClipController.onMovieClipEnd(newMc, function callback():void {
						_cardActionCompleteFlag = true;
						return;
						});*/
						
					
					break;
				case 16:
					//仙咒
					oldMc = _cardBindXianZhouMap[parma1.uid];
					if (oldMc != null)
					{
						oldMc.stop();
						Starling.juggler.remove(oldMc);
						oldMc.removeFromParent(true);
						oldMc=null;
					}
					newMc = ApplictionConfig.creaMC("attackUI",SkillClassName.XING_ZHOU_ICO);
					_cardBindXianZhouMap[parma1.uid] = newMc;
					newMc.x = XIAN_ZHOU_POINT.x;
					newMc.y = XIAN_ZHOU_POINT.y;
					newMc.play();
					//newMc.scaleY = 2;
					//newMc.scaleX = 2;
					targetCard.addChild(newMc);
					_cardActionCompleteFlag = true;
					/*MovieClipController.onMovieClipEnd(newMc, function callback():void {
						_cardActionCompleteFlag = true;
						return;
						});*/
					
					break;
				case 17:
					//陷阱
					oldMc = _cardBindXianJingMap[parma1.uid];
					if (oldMc != null)
					{
						oldMc.stop();
						Starling.juggler.remove(oldMc);
						oldMc.removeFromParent(true);
						oldMc=null;
					}
					newMc = ApplictionConfig.creaMC("attackUI",SkillClassName.XING_JING_ICO);
					_cardBindXianJingMap[parma1.uid] = newMc;
					newMc.x = XIAN_JING_BIND_POINT.x;
					newMc.y = XIAN_JING_BIND_POINT.y;
					newMc.play();
					//newMc.scaleY = 2;
					//newMc.scaleX = 2;
					targetCard.addChild(newMc);
					_cardActionCompleteFlag = true;
					/*MovieClipController.onMovieClipEnd(newMc, function callback():void {
						_cardActionCompleteFlag = true;
						return;
						});*/
					
					break;
				case 18:
					//禁飞
					oldMc = _cardBindJinFeiMap[parma1.uid];
					if (oldMc != null)
					{
						oldMc.stop();
						Starling.juggler.remove(oldMc);
						oldMc.removeFromParent(true);
						oldMc=null;
					}
					newMc = ApplictionConfig.creaMC("attackUI",SkillClassName.JING_FEI_ICO);
					_cardBindJinFeiMap[parma1.uid] = newMc;
					newMc.x = JIN_FEI_BIND_POINT.x;
					newMc.y = JIN_FEI_BIND_POINT.y;
					newMc.play();
					//newMc.scaleY = 2;
					//newMc.scaleX = 2;
					targetCard.addChild(newMc);
					_cardActionCompleteFlag = true;
					/*MovieClipController.onMovieClipEnd(newMc, function callback():void {
						_cardActionCompleteFlag = true;
						return;
						});*/
					
					break;
				case 19:
					//飞行
					oldMc = _cardBindFeiXianMap[parma1.uid];
					if (oldMc != null)
					{
						oldMc.stop();
						Starling.juggler.remove(oldMc);
						oldMc.removeFromParent(true);
						oldMc=null;
					}
					newMc = ApplictionConfig.creaMC("attackUI",SkillClassName.FEI_XIAN_ICO);
					_cardBindFeiXianMap[parma1.uid] = newMc;
					newMc.x = FEI_XIAN_BIND_POINT.x;
					newMc.y = FEI_XIAN_BIND_POINT.y;
					newMc.play();
					newMc.scaleY = 1;
					newMc.scaleX = 1;
					targetCard.addChild(newMc);
					_cardActionCompleteFlag = true;
					/*MovieClipController.onMovieClipEnd(newMc, function callback():void {
						_cardActionCompleteFlag = true;
						return;
						});*/
						
					
					break;
				case 20:
					//感染
					oldMc = _cardBindGangLangMap[parma1.uid];
					if (oldMc != null)
					{
						oldMc.stop();
						Starling.juggler.remove(oldMc);
						oldMc.removeFromParent(true);
						oldMc=null;
					}
					newMc = ApplictionConfig.creaMC("attackUI",SkillClassName.GANG_LAN_ICO);
					_cardBindGangLangMap[parma1.uid] = newMc;
					newMc.x = GANG_LANG_POINT.x;
					newMc.y = GANG_LANG_POINT.y;
					newMc.play();
					newMc.scaleY = 1;
					newMc.scaleX = 1;
					targetCard.addChild(newMc);
					_cardActionCompleteFlag = true;
					/*MovieClipController.onMovieClipEnd(newMc, function callback():void {
						_cardActionCompleteFlag = true;
						return;
						});*/
						
					
					break;
				case 21:
					//治疗2
					
					if (targetCard.lianManSp.numChildren>0)
					{
						targetCard.lianManSp.removeChildren(0, -1, true);
					}
					var zl:TextField = new TextField(ApplictionConfig.CARD_WIDTH >> 1, 50, "治愈术Ⅱ");
					_cardBindZhiLiaoMap[parma1.uid] = zl;
					
					//trace(ItemConfig.SKILL_CONFIG.Skill.(@ID == (parma1.act-100)).@Name)
					
					//newMc["nameText"].text = "治愈术Ⅱ";// ItemConfig.SKILL_CONFIG.Skill.(@ID == (parma1.act - 100)).@Name;
					zl.scaleY = 2;
					zl.scaleX = 2;
					zl.x = LIAN_MEN_POINT.x;
					zl.y = LIAN_MEN_POINT.y;
					targetCard.lianManSp.addChild(zl);
					
					sortLMICO(targetCard.lianManSp);
					_cardActionCompleteFlag = true;
					return;
					break;
				case 22: 
					//剑舞
					if (targetCard.lianManSp.numChildren>0)
					{
						targetCard.lianManSp.removeChildren(0, -1, true);
					}
					var zl:TextField = new TextField(ApplictionConfig.CARD_WIDTH >> 1, 50, "极光斩");
					_cardBindJianWuMap[parma1.uid] = zl;
					
					//newMc["nameText"].text = "极光斩";// ItemConfig.SKILL_CONFIG.Skill.(@ID == (parma1.act - 100)).@Name;
					zl.scaleY = 2;
					zl.scaleX = 2;
					zl.x = LIAN_MEN_POINT.x;
					zl.y = LIAN_MEN_POINT.y;
					targetCard.lianManSp.addChild(zl);
					sortLMICO(targetCard.lianManSp);
					_cardActionCompleteFlag = true;
					return;
					break;
				case 23:
					//龙息1
					if (targetCard.lianManSp.numChildren>0)
					{
						targetCard.lianManSp.removeChildren(0, -1, true);
					}
					var zl:TextField = new TextField(ApplictionConfig.CARD_WIDTH >> 1, 50, "龙之吐息Ⅰ");
					_cardBindLongXiMap[parma1.uid] = zl;
					
					//newMc["nameText"].text = "龙之吐息Ⅰ";//ItemConfig.SKILL_CONFIG.Skill.(@ID == (parma1.act-100)).@Name;
					zl.scaleY = 2;
					zl.scaleX = 2;
					zl.x = LIAN_MEN_POINT.x;
					zl.y = LIAN_MEN_POINT.y;
					targetCard.lianManSp.addChild(zl);
					sortLMICO(targetCard.lianManSp);
					_cardActionCompleteFlag = true;
					return;
					break;
				case 24:
					//攻击2
					if (targetCard.lianManSp.numChildren>0)
					{
						targetCard.lianManSp.removeChildren(0, -1, true);
					}
					var zl:TextField = new TextField(ApplictionConfig.CARD_WIDTH >> 1, 50, "攻击UPⅡ");
					_cardBindGongJiMap[parma1.uid] = zl;
					//newMc["nameText"].text = "攻击UPⅡ";//ItemConfig.SKILL_CONFIG.Skill.(@ID == (parma1.act-100)).@Name;
					zl.scaleY = 2;
					zl.scaleX = 2;
					zl.x = LIAN_MEN_POINT.x;
					zl.y = LIAN_MEN_POINT.y;
					targetCard.lianManSp.addChild(zl);
					sortLMICO(targetCard.lianManSp);
					_cardActionCompleteFlag = true;
					return;
					break;
				}
				
				
			}
			
		/**
		 * 根据唯一ID找到真实ID
		 * @param	lmSp
		 */
			private function findRealIdByUId(param:String):String {
				for (var i:String in _attackView.cardDataMap) {
					if (i == param) {
						return String(_attackView.cardDataMap[i].cardId);
						}
					}
					return "0";
				}
		 
		//排序同盟图标
			private function sortLMICO(lmSp:Sprite):void {
				for (var i:int = 0; i < lmSp.numChildren; i++ ) {
					var temp:TextField = lmSp.getChildAt(i) as TextField;
					temp.y = LIAN_MEN_POINT.y - i * (temp.height-10);
					
					}
				}
		
		/**
		 * 飞行闪避
		 * @param	param1
		 */
		private function flyMissFunc(param1:ActionModel):void {
			SkillController.flyMissFunc(timeLen, param1, function callback():void {
				_cardActionCompleteFlag = true;
                return;
				});
			}
		
		//0复活
        private function fuHuoFunc(param1:Object) : void
        {
            /*var _loc_4:int = 0;
            var _loc_5:String = null;
            var _loc_6:Card = null;
            var _loc_7:Object = null;
            var _loc_8:CardVo = null;
            skillActionHanldler(param1, SkillClassName.FU_HUO, SkillClassName.RECEIVE_FU_HUO);
            var _loc_2:* = param1["Target"];
            var _loc_3:* = _loc_2.length;
            if (_loc_3 > 0)
            {
                _loc_4 = 0;
                while (_loc_4 < _loc_3)
                {
                    
                    _loc_5 = _loc_2[_loc_4];
                    _loc_6 = _attackView.cardMap[_loc_5];
                    _loc_7 = _attackView.cardDataMap[_loc_5];
                    if (_loc_6 && _loc_7)
                    {
                        _loc_8 = _loc_6.getCardVo();
                        _loc_8.convert(_loc_7);
                        _loc_6.showImageOnly(false);
                        _loc_6.setCardVo(_loc_8);
                        _loc_6.mc_big_ready.visible = false;
                        _loc_6.mc_attack.txt_value.color = 16777215;
                        _loc_6.mc_health.txt_value.color = 16777215;
                        _loc_6.mc_ready.txt_value.color = 16777215;
                    }
                    _loc_4++;
                }
            }*/
            return;
        }// end function

		//0
		/**
		 * 引导战斗
		 * @param	param1
		 */
        private function guideBattle(param1:Object) : void
        {
          /*  var _loc_2:* = param1["Step"];
            attackView.showGuide(_loc_2);
            _cardActionCompleteFlag = true;
            return;*/
        }// end function

		/**
		 * 解除卡上的效果
		 * @param	param1
		 * @param	param2
		 */
        private function unlockEffect(param1:String, param2:Dictionary) : void
        {
            var _loc_3:Card= _attackView.cardMap[param1];
            if (_loc_3 != null)
            {
                clearCardEffect(_loc_3, param1, param2);
            }
            _cardActionCompleteFlag = true;
            return;
        }// end function
		private function unlockEffectLM(param1:String, param2:Dictionary) : void
        {
            var _loc_3:Card= _attackView.cardMap[param1];
            if (_loc_3 != null)
            {
                clearCardEffectLM(_loc_3, param1, param2);
            }
			sortLMICO(_loc_3.lianManSp);
            _cardActionCompleteFlag = true;
            return;
        }// end function

       
		//0
        private function DuFaFunc(param1:ActionModel) : void
        {
            /*var mc:MovieClip;
            var cardAction:* = param1;
            var card:* = _attackView.cardMap[cardAction["Unique"]];
            mc = SkillBox.getInstance().getSkillMc(SkillClassName.DU_FA);
            mc.x = card.x;
            mc.y = card.y;
            _attackView.mc_cardArea.addChild(mc);
            CustomTool.delayRun(timeLen, function () : void
            {
                _attackView.mc_cardArea.removeChild(mc);
                unlockEffect(cardAction["Unique"], _cardBindJuDuMap);
                return;
            }// end function
            );
            return;*/
        }// end function

		//天地崩坏
        private function tianBengFunc(param1:ActionModel) : void
        {
            var card:Card;
            var unique:String;
            var belong:String;
            //var cardAction:ActionModel = param1;
            _attackView.mc_cardArea.removeEventListener(TouchEvent.TOUCH, onSeeCardInfo);
           
            clearBattleAreaCardsFlag(_attackView.opponentBattleAreaCards);
            clearBattleAreaCardsFlag(_attackView.selfBattleAreaCards);
            //var targetUniques:Vector.<AttackCardModel> = cardAction.to;
			for (var i:String in _attackView.opponentBattleAreaCards) {
				playtianBeng(_attackView.opponentBattleAreaCards[i], _attackView.opponentBattleAreaCards[i].uniquesId.substr(0, 1));
				}
			for (var j:String in _attackView.selfBattleAreaCards) {
				playtianBeng(_attackView.selfBattleAreaCards[j], _attackView.selfBattleAreaCards[j].uniquesId.substr(0, 1));
				}
			for (var m:String in _attackView.opponentArtAreaCards) {
				playtianBeng(_attackView.opponentArtAreaCards[m], _attackView.opponentArtAreaCards[m].uniquesId.substr(0, 1));
				}
			for (var n:String in _attackView.selfArtAreaCards) {
				playtianBeng(_attackView.selfArtAreaCards[n], _attackView.selfArtAreaCards[n].uniquesId.substr(0, 1));
				}
			for (var key:* in _cardEquipMap)
				{
					playtianBeng(_cardEquipMap[key], _cardEquipMap[key].uniquesId.substr(0, 1));
					delete _cardEquipMap[key];
				}
         
            _attackView.opponentBattleAreaCards.splice(0);
            _attackView.opponentArtAreaCards.splice(0);
            _attackView.selfBattleAreaCards.splice(0);
            _attackView.selfArtAreaCards.splice(0);
			Main.mStarling.juggler.delayCall(function () : void
            {
                _cardActionCompleteFlag = true;
                _attackView.mc_cardArea.addEventListener(TouchEvent.TOUCH, onSeeCardInfo);
				
                return;
            }// end function
			, timeLen * 3);
            
            return;
        }// end function

		/**
		 * 场上所有单位进入弃牌区。 天地崩坏
		 * @param	param1
		 * @param	param2 哪方
		 */
        private function playtianBeng(param1:Card, param2:String) : void
        {
			var card:Card = param1;
			
			var mc:MovieClip;
			var moveX:Number=0;
			var moveY:Number = 0;
			var oppIndex:int = 0;
			
			if (param2 == "d") {
				 moveX = _attackView.opponentDeadAreaPoint.x;
                 moveY = _attackView.opponentDeadAreaPoint.y;
				 if (card.state == STATE_BATTLE)
					{
						mc = ApplictionConfig.creaMC("attackUI",SkillClassName.MIDDLE_CARD_DEAD_EFFECT);
						mc.x = card.x;
						mc.y = card.y;
						_attackView.mc_cardArea.addChild(mc);
						
						oppIndex = _attackView.opponentBattleAreaCards.indexOf(card);
						if (oppIndex > -1)
						{
							if (oppIndex == (_attackView.opponentBattleAreaCards.length - 1))
							{
								_attackView.opponentBattleAreaCards.splice(oppIndex, 1);
							}
							else
							{
								_attackView.opponentBattleAreaCards.splice(oppIndex, 1, new Object());
							}
						}
						mc.alpha = 0;
						Main.mStarling.juggler.tween(mc,timeLen, {alpha: 1, transition: Transitions.EASE_IN_OUT, onComplete: function():void
						{
							card.visible = false;
							card.x = moveX;
							card.y = moveY;
							card.hideAll();
							card.showSmallImage();
							
							mc.play();
							Main.mStarling.juggler.delayCall(function delayFun():void {
								mc.stop();
								Starling.juggler.remove(mc);
								mc.removeFromParent(true);
//								_attackView.mc_cardArea.removeChild(mc);
								_attackView._defandDeadMc.currentFrame=0;
								_attackView._defandDeadMc.play();//播放墓地效果
								clearCardEffects(card.uniquesId, card);
								
								//先还原
								/*card.setCardModel(new CardModel(card.getCardModel().id));
								card._atkText.color = 0xffffff;//三种属性颜色为默认的白色
								card._hpText.color = 0xffffff;
								card._spText.color = 0xffffff;*/
								
								card.visible = true;
								
								
							return;
							},timeLen);
						}});
						
					}
					else
					{
						mc = ApplictionConfig.creaMC("attackUI",SkillClassName.SMALL_CARD_DEAD_EFFECT);
						mc.x = card.x;
						mc.y = card.y;
						_attackView.mc_cardArea.addChild(mc);
						if (card.state == STATE_EQUIP)
						{
							_attackView.opponentArtAreaCards.splice(_attackView.opponentArtAreaCards.indexOf(card), 1);
						}
						mc.alpha = 0;
						Main.mStarling.juggler.tween(mc, timeLen, {alpha: 1, transition: Transitions.EASE_IN_OUT, onComplete: function():void
						{
							card.x = moveX;
							card.y = moveY;
							card.hideAll();
							card.showSmallImage();
							card.visible = false;
							mc.play();
							Main.mStarling.juggler.delayCall( function delayFun():void {
								mc.stop();
								Starling.juggler.remove(mc);
								mc.removeFromParent(true);
								_attackView._defandDeadMc.currentFrame=0;
								_attackView._defandDeadMc.play();//播放墓地效果
								clearCardEffects(card.uniquesId, card);
								
								//先还原
								card.updataDataModel(new CardModel(card.getCardModel().id));
								card._atkText.color = 0xffffff;//三种属性颜色为默认的白色
								card._hpText.color = 0xffffff;
								card._spText.color = 0xffffff;
								
								card.visible = true;
							return;
							},timeLen);
						}
						});
					   
					}
					param1.state = STATE_DEAD;
				}else if(param2=="a") {
					moveX = _attackView.selfDeadAreaPoint.x;
                    moveY = _attackView.selfDeadAreaPoint.y;
					if (card.state == STATE_BATTLE)
					{
						mc = ApplictionConfig.creaMC("attackUI",SkillClassName.MIDDLE_CARD_DEAD_EFFECT);
						mc.x = card.x;
						mc.y = card.y;
						_attackView.mc_cardArea.addChild(mc);
						
						oppIndex = _attackView.selfBattleAreaCards.indexOf(card);
						if (oppIndex > -1)
						{
							if (oppIndex == (_attackView.selfBattleAreaCards.length - 1))
							{
								_attackView.selfBattleAreaCards.splice(oppIndex, 1);
							}
							else
							{
								_attackView.selfBattleAreaCards.splice(oppIndex, 1, new Object());
							}
						}
						mc.alpha = 0;
						Main.mStarling.juggler.tween(mc, timeLen, {alpha: 1, transition: Transitions.EASE_IN_OUT, onComplete: function():void
						{
							card.visible = false;
							card.x = moveX;
							card.y = moveY;
							card.hideAll();
							card.showSmallImage();
							
							mc.play();
							Main.mStarling.juggler.delayCall(function delayFun():void {
								mc.stop();
								Starling.juggler.remove(mc);
								mc.removeFromParent(true);
								_attackView._selfDeadMc.currentFrame=0;
								_attackView._selfDeadMc.play();//播放墓地效果
								clearCardEffects(card.uniquesId, card);
								
								//先还原
								card.updataDataModel(new CardModel(card.getCardModel().id));
								card._atkText.color = 0xffffff;//三种属性颜色为默认的白色
								card._hpText.color = 0xffffff;
								card._spText.color = 0xffffff;
								
								card.visible = true;
							
							return;
							},timeLen);
						}
						});
					}
					else
					{
						mc = ApplictionConfig.creaMC("attackUI",SkillClassName.SMALL_CARD_DEAD_EFFECT);
						mc.x = card.x;
						mc.y = card.y;
						_attackView.mc_cardArea.addChild(mc);
						if (card.state == STATE_EQUIP)
						{
							_attackView.selfArtAreaCards.splice(_attackView.selfArtAreaCards.indexOf(card), 1);
						}
						mc.alpha = 0;
						Main.mStarling.juggler.tween(mc, timeLen, {transition: Transitions.EASE_IN_OUT,alpha:1 , onComplete:function ()
						{
							card.x = moveX;
							card.y = moveY;
							card.hideAll();
							card.showSmallImage();
							card.visible = false;
							mc.play();
							Main.mStarling.juggler.delayCall(function delayFun():void {
								mc.stop();
								Starling.juggler.remove(mc);
								mc.removeFromParent(true);
								_attackView._selfDeadMc.currentFrame=0;
								_attackView._selfDeadMc.play();//播放墓地效果
								
								clearCardEffects(card.uniquesId, card);
								
								//先还原
								card.updataDataModel(new CardModel(card.getCardModel().id));
								card._atkText.color = 0xffffff;//三种属性颜色为默认的白色
								card._hpText.color = 0xffffff;
								card._spText.color = 0xffffff;
								
								card.visible = true;
							return;
							},timeLen);
						}
						});
					   
					}
					param1.state = STATE_DEAD;
					}
					
         
        }// end function

		/**
		 * 清除指定卡中的图标
		 * @param	param1
		 * @param	param2
		 * @param	param3
		 */
        private function clearCardEffect(param1:Card, param2:String, param3:Dictionary) : void
        {
            var _loc_4:MovieClip = param3[param2];
            if (_loc_4 != null)
            {
				_loc_4.stop();
				Starling.juggler.remove(_loc_4);
				_loc_4.removeFromParent(true);
				
                _loc_4 = null;
                delete param3[param2];
            }
            return;
        }// end function
		private function clearCardEffectLM(param1:Card, param2:String, param3:Dictionary) : void
        {
            var _loc_4:* = param3[param2];
            if (_loc_4 != null)
            {
                param1.lianManSp.removeChild(_loc_4);
                _loc_4 = null;
                delete param3[param2];
            }
            return;
        }// end function

		/**
		 * 装备
		 * @param	param1
		 */
        private function equipFunc(param1:ActionModel) : void
        {
            var card:Card;
            var targetCard:Card;
            var moveX:Number=0;
            var moveY:Number=0;
            var belong:String;
            var needMoveCards:Array;
            var len:int;
            var index:int;
            var i:int;
            //var cardAction:ActionModel = param1;
//			var mc:MovieClip=ApplictionConfig.creaMC("attackUI","装备装饰框");//装备框
            card = _attackView.cardMap[param1.uid];
            if (card)
            {
				card.showMiddleImage(true);
				card.hideAll();
				card.currentCardTye = 1;
				card.checkVisible();
				card.showMask();
                targetCard = _attackView.cardMap[param1.to[0].uniqueId];
                if (targetCard)
                {
                    _cardEquipMap[targetCard] = card;
//					card.addChild(mc);
//					_cardBindEquipBarMap[param1.uid] = mc;
                    //card.mc_big_ready.visible = false;
                    //card.mc_ready.visible = false;
                    moveX = targetCard.x;
                    moveY = targetCard.y - 20;
                    belong = param1.uid.substr(0, 1);
                    switch(belong)
                    {
                        case "d":
                        {
							/*mc.rotation = deg2rad(180);
							mc.x = mc.width-2;
							mc.y = mc.height-2;*/
							//装备都是只能在装备区才装备上卡
							if (card.state == STATE_EQUIP)
                            {
								Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, x:moveX,y:moveY, onComplete:function () : void
								{
									card.parent.setChildIndex(card, 0);
									_attackView.opponentArtAreaCards.splice(_attackView.opponentArtAreaCards.indexOf(card), 1);
									card.state = STATE_EQUIPED;
									_cardActionCompleteFlag = true;
									return;
								}});
								
                            }
                           
                            break;
                        }
                        case "a":
                        {
							/*mc.x = -2;
							mc.y = -8;*/
							
							if (card.state == STATE_EQUIP)
                            {
								Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, x:moveX,y:moveY, onComplete:function () : void
								{
									card.parent.setChildIndex(card, 0);
									_attackView.selfArtAreaCards.splice(_attackView.selfArtAreaCards.indexOf(card), 1);
									card.state = STATE_EQUIPED;
									_cardActionCompleteFlag = true;
									return;
								}});
                                
                            }
                            
                            break;
                        }
                        default:
                        {
                            break;
                        }
                    }
					//已装备上的卡只能进墓地
                    card.state = STATE_EQUIP;
                }
                else
                {
                    _cardActionCompleteFlag = true;
                }
            }
            return;
        }// end function

		/**
		 * 战斗区域左移
		 * @param	param1
		 */
        private function moveLeftBattleAreaCards(param1:Number) : void
        {
            var _loc_2:Number = 0;
            var _loc_3:Object = null;
            var _loc_4:Object = null;
//            var _loc_5:Card = null;
            var _loc_6:Card = null;
//            var _loc_7:Card = null;
            for each (_loc_3 in _attackView.opponentBattleAreaCards)
            {
                
                if (_loc_3 is Card)
                {
//                    _loc_5 = _loc_3 as Card;
                    _loc_2 = _loc_3.x - param1;
                    _loc_6 = _cardEquipMap[_loc_3];
                    if (_loc_6 != null)
                    {
                        Main.mStarling.juggler.tween(_loc_6, timeLen, {transition: Transitions.EASE_IN_OUT, x:_loc_2,y:_loc_3.y-20});
                    }
                    Main.mStarling.juggler.tween(_loc_3, timeLen, {transition: Transitions.EASE_IN_OUT, x:_loc_2});
                }
            }
            for each (_loc_4 in _attackView.selfBattleAreaCards)
            {
                
                if (_loc_4 is Card)
                {
//                    _loc_7 = _loc_4 as Card;
                    _loc_2 = _loc_4.x - param1;
                    _loc_6 = _cardEquipMap[_loc_4];
                    if (_loc_6 != null)
                    {
                        Main.mStarling.juggler.tween(_loc_6, timeLen, {transition: Transitions.EASE_IN_OUT, x:_loc_2,y:_loc_4.y-20});
                    }
                    Main.mStarling.juggler.tween(_loc_4, timeLen, {transition: Transitions.EASE_IN_OUT, x:_loc_2});
                }
            }
			_leftMoveNum = param1;
            return;
        }// end function

		
		/**
		 * 技能响应函数
		 * @param	param1技能脚本响应者    
		 * @param	param2:技能类型
		 * @param	param3:技能库中的类名
		 */
        private function skillActionHanldler(param1:ActionModel, param2:int,param3:int) : void
        {
            var _to:Vector.<AttackCardModel>;//所有的目标卡
            var _loc_8:Array = null;
            var _loc_9:int = 0;//目标对象数
            var _loc_10:int = 0;
            var _targetCard:AttackCardModel;
            var _loc_12:int = 0;
            var card:Card = _attackView.cardMap[param1.uid];
			var _moveFlag:Boolean = false;//是否要移动战斗区
			var mc:MovieClip;//卡发起技能前的动画效果
            if (card)
            {
                //_loc_6.selected = true;
                
                if (card.x + CARD_BATTLE_WIDTH > ApplictionConfig.STAGE_WIDTH && card.y>110 && card.y<531)
                {
                    moveLeftBattleAreaCards(card.x - FIVE_CARD_X);//FIVE_CARD_X第5张卡的位置,要移到最小到第五张
					_moveFlag = true;
                }
                else if (card.x < (_attackView.opponentBattleInitPoint.x-1))
                {
					if (card.state == STATE_BATTLE && card.y>110 && card.y<531) {
						//如果是墓地中的卡发动技能则不重新排列战斗区
						//sortBattleCardsLocation();
						moveLeftBattleAreaCards(card.x - _attackView.opponentBattleInitPoint.x);
						_moveFlag = true;
						}else {
							_moveFlag = false;
							}
                }else {
					_moveFlag = false;
					}
                trace("发送技能：" + param1.act + ",技能类型" + param2 );
				mc = ApplictionConfig.creaMC("attackUI",SkillClassName.SKILL_BEFORE_EFFECT);
				if (card.currentCardTye == 2) {
					//小卡发动技能时发起效果位置调整
					mc.x = -15.45;
					mc.y = -76.75;
					card.flatten();
					//_attackView.mc_cardArea.flatten();
					}
				card.unflatten();
				card.addChild(mc);
				
				
				MovieClipController.onMovieClipEnd(mc, function ():void {
					if (_moveFlag) {
					//有移动要延迟
					CustomTool.delayRun(timeLen, function ():void {
						if (_currentTurn == 0) {
							trace("回调时已经重播！");
							return;
						}
						switch(param2) {
						case 1:
							//目标（单向）有to
							SkillController.targetSkill(param1,param3, callback);
							break;
						case 2:
							//目标（双向）有to
							SkillController.targetSkill(param1,param3, callback,true);
							break;
						case 3:
							//目标（指向）
							SkillController.targetByDire(timeLen, param1,param3, callback);
							break;
						case 4:
							//区域群体 没to
							SkillController.areaAttackSkill(param1,param3, callback);
							break;
						case 5:
							//特殊 有to
							SkillController.specialSkill(timeLen,param1,param3, callback);
							break;
						case 6:
							//_attackView.mc_skillArea.cacheAsBitmap = true;
							//全屏 没to
							SkillController.fullScreenSkill(param1, param3, tenbancallback);
							/*if (param1.act == 233) {
								//末日审判要抖动全屏
								var timeline:TimelineLite = new TimelineLite();
								timeline.append( new TweenLite(_attackView, timeLen/2, { y:"10",delay:timeLen*4} ));
								timeline.append( new TweenLite(_attackView, timeLen/2, {y:"-20"} ));
								timeline.append( new TweenLite(_attackView, timeLen/2, { y:"10" } ));
								timeline.append( new TweenLite(_attackView, timeLen/2, { y:"10"} ));
								timeline.append( new TweenLite(_attackView, timeLen/3, {y:"-20"} ));
								timeline.append( new TweenLite(_attackView, timeLen/3, { y:"10" } ));
								timeline.append( new TweenLite(_attackView, timeLen/3, { y:"10"} ));
								timeline.append( new TweenLite(_attackView, timeLen/3, { y:"-20" } ));
								timeline.append( new TweenLite(_attackView, timeLen / 3, { y:"10" } ));
								timeline.append( new TweenLite(_attackView, timeLen/3, { y:"10"} ));
								timeline.append( new TweenLite(_attackView, timeLen/3, { y:"-20" } ));
								timeline.append( new TweenLite(_attackView, timeLen/3, {y:"10"} ));
								}*/
							break;
						case 7:
							//自身，墓地 没to
							SkillController.selfSkill(param1,param3, callback);
							break;
						case 8:
							//雕像 有to
							SkillController.statueEffect(timeLen,param1,callback);
							break;
						case 9:
							//目标（位移）
							//SkillController.targetMoveSkill(timeLen,param1,param3,callback);
							break;
						case 10:
							//目标（位移）2 快速反击
							SkillController.targetMoveSkill2(timeLen,param1,param3,callback);
							break;
						case 11:
							//墓地（指向） 没to
							SkillController.deadTargetByDire(timeLen, param1,param3, callback);
							break;
						case 12:
							//墓地（指向） 有to
							SkillController.deadTargetByDire(timeLen, param1,param3, callback,true);
							break;
						default:
							_cardActionCompleteFlag = true;
							break;
						}
						});
					}else {
						switch(param2) {
						case 1:
							//目标（单向）有to
							SkillController.targetSkill(param1,param3, callback);
							break;
						case 2:
							//目标（双向）有to
							SkillController.targetSkill(param1,param3, callback,true);
							break;
						case 3:
							//目标（指向），墓地（指向） 有to
							SkillController.targetByDire(timeLen, param1,param3, callback);
							break;
						case 4:
							//区域群体 没to
							SkillController.areaAttackSkill(param1,param3, callback);
							break;
						case 5:
							//特殊 有to
							SkillController.specialSkill(timeLen,param1,param3, callback);
							break;
						case 6:
							//全屏 没to
							//_attackView.mc_skillArea.cacheAsBitmap = true;
							SkillController.fullScreenSkill(param1, param3, tenbancallback);
							/*if (param1.act == 233) {
								//末日审判要抖动全屏
								var timeline:TimelineLite = new TimelineLite();
								timeline.append( new TweenLite(_attackView, timeLen/2, { y:"10",delay:timeLen*4} ));
								timeline.append( new TweenLite(_attackView, timeLen/2, {y:"-20"} ));
								timeline.append( new TweenLite(_attackView, timeLen/2, { y:"10" } ));
								timeline.append( new TweenLite(_attackView, timeLen/2, { y:"10"} ));
								timeline.append( new TweenLite(_attackView, timeLen/3, {y:"-20"} ));
								timeline.append( new TweenLite(_attackView, timeLen/3, { y:"10" } ));
								timeline.append( new TweenLite(_attackView, timeLen/3, { y:"10"} ));
								timeline.append( new TweenLite(_attackView, timeLen/3, { y:"-20" } ));
								timeline.append( new TweenLite(_attackView, timeLen / 3, { y:"10" } ));
								timeline.append( new TweenLite(_attackView, timeLen/3, { y:"10"} ));
								timeline.append( new TweenLite(_attackView, timeLen/3, { y:"-20" } ));
								timeline.append( new TweenLite(_attackView, timeLen/3, {y:"10"} ));
								}*/
							break;
						case 7:
							//自身，墓地 没to
							SkillController.selfSkill(param1,param3, callback);
							break;
						case 8:
							//雕像 有to
							SkillController.statueEffect(timeLen,param1, callback);
							break;
						case 9:
							//目标（位移）
							//SkillController.targetMoveSkill(timeLen,param1,param3,callback);
							break;
						case 10:
							//目标（位移）2 快速反击
							SkillController.targetMoveSkill2(timeLen,param1,param3,callback);
							break;
						case 11:
							//墓地（指向） 没to
							SkillController.deadTargetByDire(timeLen, param1,param3, callback);
							break;
						case 12:
							//墓地（指向） 有to
							SkillController.deadTargetByDire(timeLen, param1,param3, callback,true);
							break;
						default:
							_cardActionCompleteFlag = true;
							break;
						}
						}
					});
				
				var tenbancallback:Function;
				tenbancallback = function():void {
					if (param1.act == 233) {
						tianBengFunc(param1);
						return;
						}
					_attackView.mc_cardArea.unflatten();
					_cardActionCompleteFlag = true;
					return;
					}
				var callback:Function;
				callback = function():void {
					trace("callback")
					if (param1.act == 219 || param1.act == 190 || param1.act == 117) {
						//泰坦附体 加个没有伤害MC
						var nodander:MovieClip = ApplictionConfig.creaMC("attackUI",SkillClassName.NO_DANDER);
						nodander.x = card.x;
						nodander.y = card.y;
						_attackView.mc_cardArea.addChild(nodander);
						MovieClipController.onMovieClipEnd(nodander, function ():void {
							_cardActionCompleteFlag = true;
							_attackView.mc_cardArea.unflatten();
							return;
							});
						}else {
							trace("callback")
							_cardActionCompleteFlag = true;
							//_attackView.mc_cardArea.unflatten();
							return;
							}
					}
						
            }
            else
            {
                _cardActionCompleteFlag = true;
				
            }
            return;
        }// end function

		
		/**
		 * 攻击回避
		 * @param	param1
		 */
        private function missFunc(param1:ActionModel) : void
        {
			
            var mc2:MovieClip;
            var card:Card= _attackView.cardMap[param1.uid];
            if (card)
            {
                trace("未击中" + card.getCardModel().name);
                mc2 = ApplictionConfig.creaMC("attackUI",SkillClassName.MISS_ICO);
				//mc2.cacheAsBitmap = true;
                mc2.x = card.x;
                mc2.y = card.y;
                _attackView.mc_cardArea.addChild(mc2);
				MovieClipController.onMovieClipEnd(mc2, function () : void
				{
					_attackView.mc_cardArea.removeChild(mc2);
					_cardActionCompleteFlag = true;
					return;
				});
			}  
            else
            {
                _cardActionCompleteFlag = true;
            }
            return;
        }// end function

		
		/**
		 * 普通攻击 没to
		 * @param	param1
		 */
        private function attackFunc(param1:ActionModel) : void
        {
            var card:Card;
            var belong:String;
            var delay:Number=0;
            var mc:MovieClip;
           
            //var cardAction:ActionModel = param1;
            card = _attackView.cardMap[(param1 as ActionModel).uid];
            belong = param1.uid.substr(0, 1);
            if (card)
            {
                trace(card.getCardModel().name + "物理攻击");
                
                if (card.x + CARD_BATTLE_WIDTH > ApplictionConfig.STAGE_WIDTH)
                {
                    delay = timeLen;
                    moveLeftBattleAreaCards(card.x - FIVE_CARD_X);//FIVE_CARD_X第五张卡的位置
                }
                else if (card.x < (_attackView.opponentBattleInitPoint.x-1))
                {
                    delay = timeLen;
					moveLeftBattleAreaCards(card.x - _attackView.opponentBattleInitPoint.x);
                    //sortBattleCardsLocation();
                }
				SkillController.attackFun1(timeLen,card,belong, card.getCardModel().attackMode, function callback():void {
							_cardActionCompleteFlag = true;
							return;
							});
            }
            return;
        }// end function

		/**
		 * 改变士气
		 * @param	param1
		 */
        private function changeMorale(param1:ActionModel) : void
        {
            var morale:int;
            var refMorale:int;
            //var cardAction:ActionModel = param1;
            trace("改变士气");
           
                refMorale = param1.val;
                trace("士气影响：" + param1.val);
                switch(param1.uid)
                {
                    case "d0":
                    {
                        morale = parseInt(_attackView.txt_opponent_morale.text);
                        morale = morale + refMorale;
                        _attackView.txt_opponent_morale.text = morale < 0 ? ("0") : String(morale);
                        if (refMorale > 0)
                        {
                            _attackView.renderAddMorale("d");
                        }
                        else if(refMorale<0)
                        {
                            _attackView.renderReduceMorale("d");
                        }
                        CustomTool.delayRun(timeLen, function continefun():void {
							_cardActionCompleteFlag = true;
							return;
							});
                        break;
                    }
                    case "a0":
                    {
                        morale = parseInt(_attackView.txt_self_morale.text);
                        morale = morale + refMorale;
                        _attackView.txt_self_morale.text = morale < 0 ? ("0") : String(morale);
                        if (refMorale > 0)
                        {
                            _attackView.renderAddMorale("a");
                        }
                        else if(refMorale<0)
                        {
                            _attackView.renderReduceMorale("a");
                        }
                        CustomTool.delayRun(timeLen, function continefun():void {
							_cardActionCompleteFlag = true;
							return;
							});
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
            
           
            return;
        }// end function

		

		/**
		 * 显示神通
		 * @param	param1
		 */
        private function shenTongShowFunc(param1:ActionModel) : void
        {
            var subsCard:Card;
            //var cardAction:ActionModel = param1;
            var card:Card = _attackView.cardMap[param1.uid];
            if (card)
            {
                trace(card.getCardModel().name + " 神通进入展示区");
                _attackView.mc_cardArea.removeEventListener(TouchEvent.TOUCH, onSeeCardInfo);
				//技能发起效果
				var mc1:MovieClip = ApplictionConfig.creaMC("attackUI",SkillClassName.SKILL_BEFORE_EFFECT);
				mc1.x = card.x-16.95;
				mc1.y = card.y - 67;
				_attackView.mc_skillArea.addChild(mc1);
				mc1.addEventListener(Event.COMPLETE, function(e:Event):void { mc1.stop();Starling.juggler.remove(mc1);mc1.removeFromParent(true) } );
				
				
				var mc:MovieClip = ApplictionConfig.creaMC("attackUI",SkillClassName.SHENTONG_EFFECT);
				//(mc["nameText"]as TextField).text = card.getCardModel().name;
				mc.x = 0;
				mc.y = ApplictionConfig.STAGE_HEIGHT - 190 >> 1;
				_attackView.mc_skillArea.addChild(mc);
				//mc.cacheAsBitmap = true;
				/*var mc0:MovieClip = ApplictionConfig.creaMC("attackUI","skillName" + (_attackView.cardMap[param1.uid].cardId+1000));//卡的ID+1000
				mc0.x = mc.x;
				mc0.y = mc.y;
				_attackView.mc_skillArea.addChild(mc0);*/
				
				/*var mc0:ShenTongStartNameEffect = new ShenTongStartNameEffect(card.getCardModel().name, timeLen);
				CustomTool.delayRun(timeLen, function ():void {
					
					mc0.x = ApplictionConfig.STAGE_WIDTH-40*7-35;
					mc0.y = mc.y+60;
					_attackView.mc_skillArea.addChild(mc0);
					});*/
				
				
				var tempCard:Card = card.clone(0);
				tempCard.x = 20;
				tempCard.y = mc.y - (ApplictionConfig.CARD_HEIGHT - 190) / 2;
				_attackView.mc_skillArea.addChild(tempCard);
				//tempCard.swapChildren = 0;
				//Main.mStarling.juggler.tween(tempCard, timeLen, { transition: Transitions.EASE_IN_OUT, alpha:1 } );
				MovieClipController.onMovieClipEnd(mc, function callback():void {
					//CustomTool.MyRemoveChild(_attackView.mc_skillArea,mc0);
					tempCard.removeFromParent();
					_cardActionCompleteFlag = true;
					_attackView.mc_cardArea.addEventListener(TouchEvent.TOUCH, onSeeCardInfo);
					return;
					});
                
            }
            else
            {
                _cardActionCompleteFlag = true;
            }
            return;
        }// end function

		

		/**
		 * 卷轴没目标效果
		 * @param	param1
		 */
        private function noTargetFunc(param1:ActionModel) : void
        {
            var card:Card;
            var noTargetMc:MovieClip;//没目标的效果
            var subsCard:Card;
            //var cardAction:ActionModel= param1;
            card = _attackView.cardMap[param1.uid];
            if (card)
            {
				_attackView.mc_cardArea.removeEventListener(TouchEvent.TOUCH, onSeeCardInfo);
				
				//技能发起效果
				var mc0:MovieClip = ApplictionConfig.creaMC("attackUI",SkillClassName.SKILL_BEFORE_EFFECT);
				mc0.x = card.x-16.95;
				mc0.y = card.y-67;
				_attackView.mc_skillArea.addChild(mc0);
				mc0.addEventListener(Event.COMPLETE, function(e:Event):void { mc0.stop();Starling.juggler.remove(mc0);mc0.removeFromParent(true); } );
				
				var mc:MovieClip = ApplictionConfig.creaMC("attackUI",SkillClassName.SHENTONG_NO_TARGET);
				_attackView.mc_skillArea.addChild(mc);
				CustomTool.delayRun(timeLen, function callback():void {
					card.updataDataModel(new CardModel(card.getCardModel().id));//还原卡的等待时间
					mc.stop();
					Starling.juggler.remove(mc);
					mc.removeFromParent(true);
					_cardActionCompleteFlag = true;
					_attackView.mc_cardArea.addEventListener(TouchEvent.TOUCH, onSeeCardInfo);
					return;
					});
				
              
            }
            else
            {
                _cardActionCompleteFlag = true;
            }
            return;
        }// end function

		/**
		 * 改变卡的属性
		 * @param	param1
		 */
		
        private function changeCardProp(param1:ActionModel) : void
        {
			/*if (param1.act == 10 && (param1.uid == "d0" || param1.uid == "a0")) {
				//如果是改变士气时调用changeMorale
				changeMorale(param1);
				return;
				}
			var ij:int = 1;
            var mc:MovieClip;
            var cardObj:CardModel;
            var cardVo:CardModel;
            var moveY:Number;
            //var cardAction:ActionModel = param1;
            var card:Card = _attackView.cardMap[param1.uid];
            trace(card + "," + param1.uid);
            if (card != null)
            {
                trace(card.getCardModel().name + " 改变卡牌数据属性" + ",act:" + param1.act);
                if (param1.val> 0)
                {
                    mc = ApplictionConfig.creaMC("attackUI",SkillClassName.ADD_VALUE);
                }
                else
                {
                    mc =ApplictionConfig.creaMC("attackUI",SkillClassName.REDUCE_VALUE);
                }
                //mc.cacheAsBitmap = true;
                cardObj = new CardModel(_attackView.cardDataMap[param1.uid].cardId);
                cardVo = new CardModel(card.getCardModel().id);
				cardVo.sp = card.getCardModel().sp;
				cardVo.ap = card.getCardModel().ap;
				cardVo.hp = card.getCardModel().hp;
                switch(param1.act)
                {
                    case 11:
                    {
                        cardVo.ap +=param1.val;
                        if (cardVo.ap < 0)
                        {
                            cardVo.ap = 0;
                        }
                        card.updataDataModel(cardVo,true);
                        if (cardVo.ap < cardObj.ap)
                        {
							//比默认的值小
                            card._atkText.color = 0x0000ff;
                        }
                        else if (cardVo.ap > cardObj.ap)
                        {
							//比默认的值大
                            card._atkText.color = 0xff0000;
                        }
                        else
                        {
                            card._atkText.color = 0xffffff;
                        }
                        //card.mc_ready.visible = false;
                        //card.mc_big_ready.visible = false;
                        //mc.x = card.x + card.width/2 - 55;
                        mc.y = card.y + 135 - 40;
                        break;
                    }
                    case 10:
                    {
						
						if (param1.val < 0) {
							//去血时卡抖动
							SkillController.attackedFunc(timeLen, param1);
							}
                        cardVo.hp += param1.val;
						trace("test="+(ij++))
						trace("param1.val="+param1.val)
                        if (cardVo.hp < 0)
                        {
                            cardVo.hp = 0;
                        }
                        card.updataDataModel(cardVo,true);//改变属性时如果为0则不显示--
                        if (cardVo.hp < cardObj.hp)
                        {
                            card._hpText.color = 0x0000ff;
                        }
                        else if (cardVo.hp > cardObj.hp)
                        {
                            card._hpText.color = 0xff0000;
                        }
                        else
                        {
                            card._hpText.color = 0xffffff;
                        }
                        //card.mc_ready.visible = false;
                        //card.mc_big_ready.visible = false;
                        //mc.x = card.x + card.width/2 - 35;
                        mc.y = card.y + 135 - 40;
                        break;
                    }
                    case 12:
                    {
                        cardVo.sp += param1.val;
                        if (cardVo.sp <= 0)
                        {
                            cardVo.sp = 0;
                        }
                        card.updataDataModel(cardVo);
						card._spText.color = 0xffffff;
						
                        //card.showSmallImage();
                        //card.mc_big_ready.visible = false;
                        //card.mc_ready.visible = true;
                        //mc.x = card.x;
                       // mc.y = card.y ;// + ApplictionConfig.SMALL_CARD_WH / 2;
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
                _attackView.mc_skillArea.addChild(mc);
                if (param1.val > 0)
                {
                    mc.txt_value.text = "+" + param1.val;
                    moveY = mc.y - card.height * 0.15;
					switch(param1.act)
					{
						case 11:
							mc.txt_value.text = "ATK+" + param1.val;
							mc.x = card.x+(ApplictionConfig.CARD_WIDTH/2-mc.txt_value.textWidth)/2;
							break;
						case 12:
							//等待时间改变
							mc.txt_value.text = "SP+" + param1.val;
							mc.scaleX = mc.scaleY = .5;
							mc.y = card.y+(ApplictionConfig.SMALL_CARD_WH-mc.txt_value.textHeight)/2;
							mc.x = card.x +14;
							moveY = mc.y +10;
							break;
						case 10:
							mc.txt_value.color = 0x02fc37;
							mc.txt_value.filters = [new GlowFilter(0x01310c, 1, 5, 5,4)];
							mc.txt_value.text = "+" + param1.val;
							mc.x = card.x + (ApplictionConfig.CARD_WIDTH / 2 - mc.txt_value.textWidth) / 2;
							break;
					}
					
                }
                else
                {
                   
                    moveY = mc.y + card.height * 0.15;
					 switch(param1.act)
					{
						case 11:
							mc.txt_value.text = "ATK" + param1.val;
							mc.x = card.x+(ApplictionConfig.CARD_WIDTH / 2 - mc.txt_value.textWidth) / 2;
							break;
						case 12:
							//等待时间改变
							mc.txt_value.text = "SP" + param1.val;
							mc.scaleX = mc.scaleY = .5;
							mc.y = card.y+(ApplictionConfig.SMALL_CARD_WH-mc.txt_value.textHeight)/2;
							moveY = mc.y -10;
							mc.x = card.x +14;
							break;
						case 10:
							mc.txt_value.color = 0xfc091a;
							mc.txt_value.filters = [new GlowFilter(0x3b0209, 1, 5, 5,4)];
							mc.txt_value.text = param1.val;
							mc.x = card.x + (ApplictionConfig.CARD_WIDTH / 2 - mc.txt_value.textWidth) / 2;
							break;
					}
					
                }
                Main.mStarling.juggler.tween(mc, .6, {y:moveY, onComplete:function () : void
				{
					_attackView.mc_skillArea.removeChild(mc);
					mc = null;
					return;
				}// end function
				});
                CustomTool.delayRun(timeLen, function () : void
				{
					_cardActionCompleteFlag = true;
					return;
				}// end function
				);
            }
            else
            {
                _cardActionCompleteFlag = true;
            }*/
			_cardActionCompleteFlag = true;
            return;
        }// end function

        

		/**
		 * 清除战斗区中最后一张卡后面的空对象
		 * @param	param1
		 */
		private function findEndCardFromBattleArea(param1:Array):void {
			for (var i:int=param1.length-1;i>=0;--i)
				{
					if (!(param1[i] is Card)) {
						param1.splice(i,1);
						}else {
							return;
							}
				}
				return;
			}
			
		//进入战斗区
        private function moveToBattleArea(param1:ActionModel) : void
        {
			
			
            var card:Card=new Card();
            var index:int;
            var moveX:Number;
            var moveY:Number;
            var belong:String;
            var needMoveCards:Array;
            var len:int;
            var i:int;
            //var cardAction:ActionModel = param1;
            var unique:String = param1.uid;
            card = _attackView.cardMap[unique] as Card;
			
			//等待时间为零
			var tempCardModel:CardModel = card.getCardModel();
			tempCardModel.sp = 0;
			card.updataDataModel(tempCardModel);
			
			var mc:MovieClip;
			
            if (card != null)
            {
                trace(card.getCardModel().name +"uid:"+param1.uid+ " 进入战斗区");
				DepthManager.bringToTop(card);
                //card.mc_big_ready.visible = false;
                //card.mc_ready.visible = false;
                var mX:Number=0;
				var mY:Number=0;
                belong = param1.uid.substr(0, 1);
                switch(belong)
                {
                    case "d":
                    {
						findEndCardFromBattleArea(_attackView.opponentBattleAreaCards);
						
                        _attackView.opponentBattleAreaCards.push(card);
                        index = (_attackView.opponentBattleAreaCards.length - 1);//最后一张卡的索引
						trace("index--------------------="+index)
						//var templen:int = _attackView.opponentBattleAreaCards.length;
						if (index > 0) {
							moveX = _attackView.opponentBattleAreaCards[index - 1].x + _attackView.BATTLE_AREA_GAP + CARD_BATTLE_WIDTH;//最后一张卡的后面
							}else {
								moveX = _attackView.opponentBattleInitPoint.x-_leftMoveNum;//初始位置-左移（如果有左移）
								}
                        //moveX = _attackView.opponentBattleInitPoint.x + (_attackView.BATTLE_AREA_GAP + CARD_BATTLE_WIDTH) * index;
                        moveY = _attackView.opponentBattleInitPoint.y;
                        needMoveCards = new Array();//需要移动的卡，如果有卡进入战斗区后要重新排序准备区的卡
						//准备区的移入战斗区
                        if (card.state == STATE_READY)
                        {
                            len = _attackView.opponentReadyAreaCards.length;
                            index = _attackView.opponentReadyAreaCards.indexOf(card);
                            i = (index + 1);
                            while (i < len)
                            {
                                
                                needMoveCards.push(_attackView.opponentReadyAreaCards[i]);//被移到战斗区的卡后面的所有卡都要重新排序
                                i = (i + 1);
                            }
                            _attackView.opponentReadyAreaCards.splice(index, 1);
							
							//先移出屏幕外再变成中卡从屏幕外移入到战斗区
							card.showMiddleImage(true);
							card.hideAll();
							card.currentCardTye = 1;
							card.checkVisible();
							card.showMask();
							//card.y = _attackView.opponentBattleInitPoint.y;
							//--------------------------------------------------------
							Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, x:moveX, y:moveY, onComplete:function ()
							{
								
								card.mc_ready.visible = false;
								if (needMoveCards.length > 0)
								{
									//重新排列准备区中的卡
									i = 0;
									while (i < needMoveCards.length)
									{
										
										index = _attackView.opponentReadyAreaCards.indexOf(needMoveCards[i]);
										if (index < 6)
										{
											mX = _attackView.opponentReadyInitPoint.x + (_attackView.READY_AREA_GAP + CARD_OTHER_WIDTH) * index;
										}
										else
										{
											mX = _attackView.opponentReadyInitPoint.x + (_attackView.READY_AREA_GAP + CARD_OTHER_WIDTH) * 5;
										}
										mY = _attackView.opponentReadyInitPoint.y;
										if (i == (needMoveCards.length - 1))
										{
											Main.mStarling.juggler.tween(needMoveCards[i], timeLen, {transition: Transitions.EASE_IN_OUT, x:mX, y:mY, onComplete:function () : void
											{
												//重排结束
												_cardActionCompleteFlag = true;
												return;
											}// end function
											});
										}
										else
										{
											Main.mStarling.juggler.tween(needMoveCards[i], timeLen, {transition: Transitions.EASE_IN_OUT, x:mX, y:mY});
										}
										i++;
									}
								}
								else
								{
									_cardActionCompleteFlag = true;
								}
								return;
							}// end function
							});
							/*Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, x:ApplictionConfig.STAGE_WIDTH,  onComplete:function ()
							{
								
									//--------------------------------------------------------
								}
							});*/
                        }else if (card.state == STATE_DEAD) {
							//  复活动画——指向移动——小卡变中卡 (到目的时变中卡)
							mc = ApplictionConfig.creaMC("attackUI",SkillClassName.REVIVE_EFFECT);
							mc.x = _attackView.opponentDeadAreaPoint.x;
							mc.y = _attackView.opponentDeadAreaPoint.y;
							_attackView.mc_skillArea.addChild(mc);
							MovieClipController.onMovieClipEnd(mc, function callback():void {
								_attackView.mc_skillArea.removeChild(mc);
								 Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, x:moveX, y:moveY, onComplete:function ()
									{
										card.visible = true;
										CustomTool.removeValueFromVector(_deffendDeadCard, card);
										updataDeadCardVisible("d");
										
										card.showMiddleImage(true);
										card.hideAll();
										card.currentCardTye = 1;
										card.checkVisible();
										card.showMask();
										_cardActionCompleteFlag = true;
										return;
								 }});
								} );
							}else {
								Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, x:ApplictionConfig.STAGE_WIDTH,  onComplete:function ()
								{
									//先移出屏幕外再变成中卡从屏幕外移入到战斗区
									card.showMiddleImage(true);
									card.hideAll();
									card.currentCardTye = 1;
									card.checkVisible();
									card.showMask();
									card.y = _attackView.opponentBattleInitPoint.y;
									//--------------------------------------------------------
									 Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, x:moveX, y:moveY, onComplete:function ()
										{
											_cardActionCompleteFlag = true;
											return;
									 }});
								}});
								}
						
                        break;
                    }
                    case "a":
                    {
						findEndCardFromBattleArea(_attackView.selfBattleAreaCards);
						
                        _attackView.selfBattleAreaCards.push(card);
                        index = (_attackView.selfBattleAreaCards.length - 1);
						//var templen:int = _attackView.selfBattleAreaCards.length;
						if (index > 0) {
							moveX = _attackView.selfBattleAreaCards[index - 1].x + _attackView.BATTLE_AREA_GAP + CARD_BATTLE_WIDTH;//最后一张卡的后面
							}else {
								moveX = _attackView.selfBattleInitPoint.x;//初始位置
								}
                        //moveX = _attackView.selfBattleInitPoint.x + (_attackView.BATTLE_AREA_GAP + CARD_BATTLE_WIDTH) * index;
                        moveY = _attackView.selfBattleInitPoint.y;
                        needMoveCards=new Array();
                        if (card.state == STATE_READY)
                        {
                            len = _attackView.selfReadyAreaCards.length;
                            index = _attackView.selfReadyAreaCards.indexOf(card);
                            i = (index + 1);
                            while (i < len)
                            {
                                
                                needMoveCards.push(_attackView.selfReadyAreaCards[i]);
                                i = (i + 1);
                            }
                            _attackView.selfReadyAreaCards.splice(index, 1);
							
							//先移出屏幕外再变成中卡从屏幕外移入到战斗区
							card.showMiddleImage(true);
							card.hideAll();
							card.currentCardTye = 1;
							card.checkVisible();
							card.showMask();
							
							//card.y = _attackView.selfBattleInitPoint.y;
							Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, x:moveX, y:moveY, onComplete:function ()
							{
								card.mc_ready.visible = false;
								if (needMoveCards.length > 0)
								{
									i = 0;
									while (i < needMoveCards.length)
									{
										
										index = _attackView.selfReadyAreaCards.indexOf(needMoveCards[i]);
										if (index < 6)
										{
											mX = _attackView.selfReadyInitPoint.x + (_attackView.READY_AREA_GAP + CARD_OTHER_WIDTH) * index;
										}
										else
										{
											mX = _attackView.selfReadyInitPoint.x + (_attackView.READY_AREA_GAP + CARD_OTHER_WIDTH) * 5;
										}
										mY = _attackView.selfReadyInitPoint.y;
										//最后一张卡移好表示这一方法执行完_cardActionCompleteFlag = true，可以执行下一个方法
										if (i == (needMoveCards.length - 1))
										{
											Main.mStarling.juggler.tween(needMoveCards[i], timeLen, {transition: Transitions.EASE_IN_OUT, x:mX, y:mY, onComplete:function () : void
											{
												
												
												_cardActionCompleteFlag = true;
												return;
											}// end function
											});
										}
										else
										{
											Main.mStarling.juggler.tween(needMoveCards[i], timeLen, {transition: Transitions.EASE_IN_OUT, x:mX, y:mY});
										}
										i++;
									}
								}
								else
								{
									_cardActionCompleteFlag = true;
								}
								return;
							}// end function
							});
							/*Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, x:ApplictionConfig.STAGE_WIDTH,  onComplete:function ()
							{
								
							}
							});*/
                        }else if (card.state == STATE_DEAD) {
							//  复活动画——指向移动——小卡变中卡 (到目的时变中卡)
							mc = ApplictionConfig.creaMC("attackUI",SkillClassName.REVIVE_EFFECT);
							mc.x = _attackView.selfDeadAreaPoint.x;
							mc.y = _attackView.selfDeadAreaPoint.y;
							_attackView.mc_skillArea.addChild(mc);
							MovieClipController.onMovieClipEnd(mc, function callback():void {
								_attackView.mc_skillArea.removeChild(mc);
								/*card.showMiddleImage();
								card.checkVisible();*/
								 Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, x:moveX, y:moveY, onComplete:function ()
									{
										card.visible = true;
										CustomTool.removeValueFromVector(_attackDeadCard, card);
										updataDeadCardVisible("a");
										
										card.showMiddleImage();
										card.hideAll();
										card.currentCardTye = 1;
										card.checkVisible();
										card.showMask();
										_cardActionCompleteFlag = true;
										return;
								 }});
								} );
							}else {
								Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, x:ApplictionConfig.STAGE_WIDTH,  onComplete:function ()
								{
									//先移出屏幕外再变成中卡从屏幕外移入到战斗区
									card.showMiddleImage(true);
									card.hideAll();
									card.currentCardTye = 1;
									card.checkVisible();
									card.showMask();
									card.y = _attackView.selfBattleInitPoint.y;
									//--------------------------------------------------------
									 Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, x:moveX, y:moveY, onComplete:function ()
										{
											_cardActionCompleteFlag = true;
											return;
									 }});
								}});
								}
						
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
                card.state = STATE_BATTLE;
            }
            else
            {
                _cardActionCompleteFlag = true;
            }
            return;
        }// end function

		/**
		 * 清除卡中的绑定图标
		 * @param	param1
		 * @param	param2
		 */
        private function clearCardEffects(param1:String, param2:Card)
        {
            clearCardEffect(param2, param1, _cardBindJuDuMap);
            clearCardEffect(param2, param1, _cardBindXianJingMap);
            clearCardEffect(param2, param1, _cardBindBingDanMap);
            clearCardEffect(param2, param1, _cardBindXianZhouMap);
            clearCardEffect(param2, param1, _cardBindFuTiMap);
            clearCardEffect(param2, param1, _cardBindJinFeiMap);
			
            clearCardEffectLM(param2, param1, _cardBindZhiLiaoMap);
            clearCardEffectLM(param2, param1, _cardBindJianWuMap);
            clearCardEffectLM(param2, param1, _cardBindLongXiMap);
            clearCardEffectLM(param2, param1, _cardBindGongJiMap);
			
            clearCardEffect(param2, param1, _cardBindFeiXianMap);
            clearCardEffect(param2, param1, _cardBindGangLangMap);
			
            clearCardEffect(param2, param1, _cardBindEquipBarMap);//去掉装备卡上的框
			
            return;
        }// end function

		/**
		 * 进入死亡区
		 * @param	param1
		 */
        private function moveToDeadArea(param1:ActionModel) : void
        {
			var mc:MovieClip;//死亡效果MC
            var card:Card;
            var belong:String;
            var index:int;
            var moveX:Number;
            var moveY:Number;
            var needMoveCards:Array;
            var len:int;
            var i:int;
            var oppIndex:int;
            var equipCard:Card;
            //var cardAction:ActionModel = param1;
            var unique:String = param1.uid;
            card = _attackView.cardMap[unique];
			var mX:Number=0;
			var mY:Number=0;
            if (card)
            {
				
				
                belong = param1.uid.substr(0, 1);
                trace(card.getCardModel().name + " 进入死亡区,unique:" + unique);
                
                switch(belong)
                {
                    case "d":
                    {
						
						
                        moveX = _attackView.opponentDeadAreaPoint.x;
                        moveY = _attackView.opponentDeadAreaPoint.y;
                        if (card.state == STATE_READY)
                        {
							mc = ApplictionConfig.creaMC("attackUI",SkillClassName.SMALL_CARD_DEAD_EFFECT);
							mc.x = card.x;
							mc.y = card.y;
							_attackView.mc_cardArea.addChild(mc);
							
                            needMoveCards=new Array();
                            len = _attackView.opponentReadyAreaCards.length;
                            index = _attackView.opponentReadyAreaCards.indexOf(card);
                            i = (index + 1);
                            while (i < len)
                            {
                                
                                needMoveCards.push(_attackView.opponentReadyAreaCards[i]);
                                i = (i + 1);
                            }
                            _attackView.opponentReadyAreaCards.splice(index, 1);
							mc.alpha = 0;
							Main.mStarling.juggler.tween(mc, timeLen, {transition: Transitions.EASE_IN_OUT,alpha:1, onComplete:function ()
							{
								card.x = moveX;
								card.y = moveY;
								card.onlyShowSmallbg();//只显示背景图
								card.visible = false;
								mc.play();
								CustomTool.delayRun(timeLen, function delayFun():void {
									mc.stop();
									Starling.juggler.remove(mc);
									mc.removeFromParent(true);
									_attackView._defandDeadMc.currentFrame=1;
									_attackView._defandDeadMc.play();//播放墓地效果
									clearCardEffects(unique, card);
									card.updataDataModel(new CardModel(card.getCardModel().id));
									card._atkText.color = 0xffffff;//三种属性颜色为默认的白色
									card._hpText.color = 0xffffff;
									card._spText.color = 0xffffff;
									card.visible = true;
									
									_deffendDeadCard.push(card);
									updataDeadCardVisible("d");
									//------------------准备区重排--------------------------------------
									 
										if (needMoveCards.length > 0)
										{
											i = 0;
											while (i < needMoveCards.length)
											{
												
												index = _attackView.opponentReadyAreaCards.indexOf(needMoveCards[i]);
												if (index < 6)
												{
													mX = _attackView.opponentReadyInitPoint.x + (_attackView.READY_AREA_GAP + CARD_OTHER_WIDTH) * index;
												}
												else
												{
													mX = _attackView.opponentReadyInitPoint.x + (_attackView.READY_AREA_GAP + CARD_OTHER_WIDTH) * 5;
												}
												mY = _attackView.opponentReadyInitPoint.y;
												if (i == (needMoveCards.length - 1))
												{
													Main.mStarling.juggler.tween(needMoveCards[i], timeLen, {transition: Transitions.EASE_IN_OUT, x:mX, y:mY, onComplete:function () : void
													{
														
														_cardActionCompleteFlag = true;
														return;
													}// end function
													});
												}
												else
												{
													Main.mStarling.juggler.tween(needMoveCards[i], timeLen, {transition: Transitions.EASE_IN_OUT, x:mX, y:mY});
												}
												i++;
											}
										}
										else
										{
											card.onlyShowSmallbg();
											_cardActionCompleteFlag = true;
										}
										return;
									
									
									//--------------------------------------------------------
									});
								}
							});
							
                           
                        }
                        else if (card.state == STATE_BATTLE)
                        {
							mc = ApplictionConfig.creaMC("attackUI",SkillClassName.MIDDLE_CARD_DEAD_EFFECT);
							mc.x = card.x;
							mc.y = card.y;
							_attackView.mc_cardArea.addChild(mc);
							
                            oppIndex = _attackView.opponentBattleAreaCards.indexOf(card);
                            if (oppIndex > -1)
                            {
                                if (oppIndex == (_attackView.opponentBattleAreaCards.length - 1))
                                {
                                    _attackView.opponentBattleAreaCards.splice(oppIndex, 1);
                                }
                                else
                                {
                                    _attackView.opponentBattleAreaCards.splice(oppIndex, 1, new Object());
                                }
                            }
							mc.alpha = 0;
							Main.mStarling.juggler.tween(mc, timeLen, {transition: Transitions.EASE_IN_OUT,alpha:1 , onComplete:function ()
							{
								card.visible = false;
								card._atkText.color = 0xffffff;//三种属性颜色为默认的白色
								card._hpText.color = 0xffffff;
								card._spText.color = 0xffffff;
								card.x = moveX;
								card.y = moveY;
								card.hideAll();
								card.showSmallImage();
								
								mc.play();
								CustomTool.delayRun(timeLen, function delayFun():void {
									mc.stop();
									Starling.juggler.remove(mc);
									mc.removeFromParent(true);
									_attackView._defandDeadMc.currentFrame=1;
									_attackView._defandDeadMc.play();//播放墓地效果
									
									clearCardEffects(unique, card);
									card.updataDataModel(new CardModel(card.getCardModel().id));
									trace("从战斗到死亡＝"+card.getCardModel().sp)
									trace(card.getCardModel().sp)
//									trace(_attackView.cardMap["d6"].getCardModel().sp);
									
									card.visible = true;
									_deffendDeadCard.push(card);
									updataDeadCardVisible("d");
									
								_cardActionCompleteFlag = true;
								return;
								});
							}
							});
                        }
                        else
                        {
							mc = ApplictionConfig.creaMC("attackUI",SkillClassName.SMALL_CARD_DEAD_EFFECT);
							mc.x = card.x;
							mc.y = card.y;
							_attackView.mc_cardArea.addChild(mc);
                            if (card.state == STATE_EQUIP)
                            {
                                _attackView.opponentArtAreaCards.splice(_attackView.opponentArtAreaCards.indexOf(card), 1);
                            }
							mc.alpha = 0;
							Main.mStarling.juggler.tween(mc, timeLen, {transition: Transitions.EASE_IN_OUT,alpha:1 , onComplete:function ()
							{
								card.x = moveX;
								card.y = moveY;
								card.hideAll();
								card.showSmallImage();
								card.visible = false;
								card._atkText.color = 0xffffff;//三种属性颜色为默认的白色
								card._hpText.color = 0xffffff;
								card._spText.color = 0xffffff;
								mc.play();
								CustomTool.delayRun(timeLen, function delayFun():void {
									mc.stop();
									Starling.juggler.remove(mc);
									mc.removeFromParent(true);
									_attackView._defandDeadMc.currentFrame=1;
									_attackView._defandDeadMc.play();//播放墓地效果
									
									
									clearCardEffects(unique, card);
									card.updataDataModel(new CardModel(card.getCardModel().id));
									card.visible = true;
									
									_deffendDeadCard.push(card);
									updataDeadCardVisible("d");
									
								_cardActionCompleteFlag = true;
								return;
								});
							}
							});
                           
                        }
                        break;
                    }
                    case "a":
                    {
						
						
                        moveX = _attackView.selfDeadAreaPoint.x;
                        moveY = _attackView.selfDeadAreaPoint.y;
                        if (card.state == STATE_READY)
                        {
							mc = ApplictionConfig.creaMC("attackUI",SkillClassName.SMALL_CARD_DEAD_EFFECT);
							mc.x = card.x;
							mc.y = card.y;
							_attackView.mc_cardArea.addChild(mc);
							
                            needMoveCards=new Array();
                            len = _attackView.selfReadyAreaCards.length;
                            index = _attackView.selfReadyAreaCards.indexOf(card);
                            i = (index + 1);
                            while (i < len)
                            {
                                
                                needMoveCards.push(_attackView.selfReadyAreaCards[i]);
                                i = (i + 1);
                            }
                            _attackView.selfReadyAreaCards.splice(index, 1);
							mc.alpha = 0;
							Main.mStarling.juggler.tween(mc, timeLen, {transition: Transitions.EASE_IN_OUT,alpha:1 , onComplete:function ()
							{
								card.x = moveX;
								card.y = moveY;
								card.hideAll();
								card.showSmallImage();
								card.visible = false;
								card._atkText.color = 0xffffff;//三种属性颜色为默认的白色
								card._hpText.color = 0xffffff;
								card._spText.color = 0xffffff;
								mc.play();
							CustomTool.delayRun(timeLen, function delayFun():void {
								CustomTool.MyRemoveChild(_attackView.mc_cardArea, mc);
							//_attackView.mc_cardArea.removeChild(mc);
							_attackView._selfDeadMc.currentFrame=1;
							_attackView._selfDeadMc.play();//播放墓地效果
							
							DepthManager.bringToTop(card);
							clearCardEffects(unique, card);
							card.updataDataModel(new CardModel(card.getCardModel().id));
							card.visible = true;
							
							_attackDeadCard.push(card);
							updataDeadCardVisible("a");
							//------------------准备区重排--------------------------------------
                           
								if (needMoveCards.length > 0)
								{
									i = 0;
									while (i < needMoveCards.length)
									{
										
										index = _attackView.selfReadyAreaCards.indexOf(needMoveCards[i]);
										if (index < 6)
										{
											mX = _attackView.selfReadyInitPoint.x + (_attackView.READY_AREA_GAP + CARD_OTHER_WIDTH) * index;
										}
										else
										{
											mX = _attackView.selfReadyInitPoint.x + (_attackView.READY_AREA_GAP + CARD_OTHER_WIDTH) * 5;
										}
										mY = _attackView.selfReadyInitPoint.y;
										if (i == (needMoveCards.length - 1))
										{
											Main.mStarling.juggler.tween(needMoveCards[i], timeLen, {transition: Transitions.EASE_IN_OUT, x:mX, y:mY, onComplete:function () : void
											{
												
												_cardActionCompleteFlag = true;
												return;
											}// end function
											});
										}
										else
										{
											Main.mStarling.juggler.tween(needMoveCards[i], timeLen, {transition: Transitions.EASE_IN_OUT, x:mX, y:mY});
										}
										i++;
									}
								}
								else
								{
									
									_cardActionCompleteFlag = true;
									return;
								}
							});
							}});
								
                        }
                        else if (card.state == STATE_BATTLE)
                        {
							mc = ApplictionConfig.creaMC("attackUI",SkillClassName.MIDDLE_CARD_DEAD_EFFECT);
							mc.x = card.x;
							mc.y = card.y;
							_attackView.mc_cardArea.addChild(mc);
							
                            oppIndex = _attackView.selfBattleAreaCards.indexOf(card);
                            if (oppIndex > -1)
                            {
                                if (oppIndex == (_attackView.selfBattleAreaCards.length - 1))
                                {
                                    _attackView.selfBattleAreaCards.splice(oppIndex, 1);
                                }
                                else
                                {
                                    _attackView.selfBattleAreaCards.splice(oppIndex, 1, new Object());
                                }
                            }
							mc.alpha = 0;
							Main.mStarling.juggler.tween(mc, timeLen, {transition: Transitions.EASE_IN_OUT,alpha:1 , onComplete:function ()
							{
								card.x = moveX;
								card.y = moveY;
								card.hideAll();
								card.showSmallImage();
								card.visible = false;
								card._atkText.color = 0xffffff;//三种属性颜色为默认的白色
								card._hpText.color = 0xffffff;
								card._spText.color = 0xffffff;
								mc.play();
								MovieClipController.onMovieClipEnd(mc, function delayFun():void {
									CustomTool.MyRemoveChild(_attackView.mc_cardArea, mc);
									//_attackView.mc_cardArea.removeChild(mc);
									_attackView._selfDeadMc.currentFrame=1;
									_attackView._selfDeadMc.play();//播放墓地效果
									
									clearCardEffects(unique, card);
									card.updataDataModel(new CardModel(card.getCardModel().id));
									card.visible = true;
									
									_attackDeadCard.push(card);
									updataDeadCardVisible("a");
									
								_cardActionCompleteFlag = true;
								return;
								});
							}
							});
							
                            
                        }
                        else
                        {
							mc = ApplictionConfig.creaMC("attackUI",SkillClassName.SMALL_CARD_DEAD_EFFECT);
							mc.x = card.x;
							mc.y = card.y;
							_attackView.mc_cardArea.addChild(mc);
                            if (card.state == STATE_EQUIP)
                            {
                                _attackView.selfArtAreaCards.splice(_attackView.selfArtAreaCards.indexOf(card), 1);
                            }
							mc.alpha = 0;
							Main.mStarling.juggler.tween(mc, timeLen, {transition: Transitions.EASE_IN_OUT,alpha:1 , onComplete:function ()
							{
								card.x = moveX;
								card.y = moveY;
								card.hideAll();
								card.showSmallImage();
								card.visible = false;
								card._atkText.color = 0xffffff;//三种属性颜色为默认的白色
								card._hpText.color = 0xffffff;
								card._spText.color = 0xffffff;
								mc.play();
								CustomTool.delayRun(timeLen, function delayFun():void {
									CustomTool.MyRemoveChild(_attackView.mc_cardArea, mc);
									//_attackView.mc_cardArea.removeChild(mc);
									_attackView._selfDeadMc.currentFrame=1;
									_attackView._selfDeadMc.play();//播放墓地效果
									
									clearCardEffects(unique, card);
									card.updataDataModel(new CardModel(card.getCardModel().id));
									card.visible = true;
									
									_attackDeadCard.push(card);
									updataDeadCardVisible("a");
									
									_cardActionCompleteFlag = true;
									return;
									});
							}
							});
  
                        }
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
                //card.parent.setChildIndex(card, (card.parent.numChildren - 1));
				DepthManager.bringToTop(card);
                card.state = STATE_DEAD;
                for (var key:* in _cardEquipMap)
				{
					
					if (_cardEquipMap[key] == card)
					{
						delete _cardEquipMap[key];
					}
				}
            }
            else
            {
                _cardActionCompleteFlag = true;
            }
            return;
        }// end function

		/**
		 * 移入装备区
		 * @param	param1
		 */
        private function moveToEquipArea(param1:ActionModel) : void
        {
            var index:int;
            var moveX:Number;
            var moveY:Number;
            var belong:String;
            var needMoveCards:Array;
            var len:int;
            var i:int;
            //var cardAction:ActionModel = param1;
            var unique:String = param1.uid;
            var card:Card = _attackView.cardMap[unique];
            card.parent.setChildIndex(card, 0);
            if (card)
            {
                trace(card.getCardModel().name + " 进入装备区");
                card.showSmallImage();
                belong = unique.substr(0, 1);
				var mX:Number=0;
				var mY:Number=0;
                switch(belong)
                {
                    case "d":
                    {
                        _attackView.opponentArtAreaCards.push(card);
                        moveX = _attackView.opponentEquipAreaPoint.x;
                        moveY = _attackView.opponentEquipAreaPoint.y;
                        needMoveCards=new Array();
                        if (card.state == STATE_READY)
                        {
                            len = _attackView.opponentReadyAreaCards.length;
                            index = _attackView.opponentReadyAreaCards.indexOf(card);
                            i = (index + 1);
                            while (i < len)
                            {
                                
                                needMoveCards.push(_attackView.opponentReadyAreaCards[i]);
                                i = (i + 1);
                            }
                            _attackView.opponentReadyAreaCards.splice(index, 1);
                        }
						//先移出屏幕外再从屏幕外移入到战斗区
						card.state = STATE_EQUIP;
						checkCardContent(card);
						card.y = _attackView.opponentEquipAreaPoint.y;
						DepthManager.bringToTop(card);
						//--------------------------------------------------------
						Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, x:moveX, y:moveY, onComplete:function ()
						{
							
							if (needMoveCards.length > 0)
							{
								i = 0;
								while (i < needMoveCards.length)
								{
									
									index = _attackView.opponentReadyAreaCards.indexOf(needMoveCards[i]);
									if (index < 6)
									{
										mX = _attackView.opponentReadyInitPoint.x + (_attackView.READY_AREA_GAP + CARD_OTHER_WIDTH) * index;
									}
									else
									{
										mX = _attackView.opponentReadyInitPoint.x + (_attackView.READY_AREA_GAP + CARD_OTHER_WIDTH) * 5;
									}
									mY = _attackView.opponentReadyInitPoint.y;
									if (i == (needMoveCards.length - 1))
									{
										Main.mStarling.juggler.tween(needMoveCards[i], timeLen, {transition: Transitions.EASE_IN_OUT, x:mX, y:mY, onComplete:function () : void
										{
											_cardActionCompleteFlag = true;
											return;
										}// end function
										});
									}
									else
									{
										Main.mStarling.juggler.tween(needMoveCards[i], timeLen, {transition: Transitions.EASE_IN_OUT, x:mX, y:mY});
									}
									i++;
								}
							}
							else
							{
								_cardActionCompleteFlag = true;
								return;
							}
							return;
						}// end function
						});
						/*Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, x:ApplictionConfig.STAGE_WIDTH,  onComplete:function ()
						{
							
						}});*/
                        break;
                    }
                    case "a":
                    {
                        _attackView.selfArtAreaCards.push(card);
                        moveX = _attackView.selfEquipAreaPoint.x;
                        moveY = _attackView.selfEquipAreaPoint.y;
                        needMoveCards=new Array();
                        if (card.state == STATE_READY)
                        {
                            len = _attackView.selfReadyAreaCards.length;
                            index = _attackView.selfReadyAreaCards.indexOf(card);
                            i = (index + 1);
                            while (i < len)
                            {
                                
                                needMoveCards.push(_attackView.selfReadyAreaCards[i]);
                                i = (i + 1);
                            }
                            _attackView.selfReadyAreaCards.splice(index, 1);
                        }
						//先移出屏幕外再从屏幕外移入到战斗区
						card.state = STATE_EQUIP;
						checkCardContent(card);
						card.y = _attackView.selfEquipAreaPoint.y;
						DepthManager.bringToTop(card);
						//--------------------------------------------------------
						Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, x:moveX, y:moveY, onComplete:function ()
						{
							if (needMoveCards.length > 0)
							{
								i = 0;
								while (i < needMoveCards.length)
								{
									
									index = _attackView.selfReadyAreaCards.indexOf(needMoveCards[i]);
									if (index < 6)
									{
										mX = _attackView.selfReadyInitPoint.x + (_attackView.READY_AREA_GAP + CARD_OTHER_WIDTH) * index;
									}
									else
									{
										mX = _attackView.selfReadyInitPoint.x + (_attackView.READY_AREA_GAP + CARD_OTHER_WIDTH) * 5;
									}
									mY = _attackView.selfReadyInitPoint.y;
									if (i == (needMoveCards.length - 1))
									{
										Main.mStarling.juggler.tween(needMoveCards[i], timeLen, {transition: Transitions.EASE_IN_OUT, x:mX, y:mY, onComplete:function () : void
										{
											_cardActionCompleteFlag = true;
											return;
										}// end function
										});
									}
									else
									{
										Main.mStarling.juggler.tween(needMoveCards[i], timeLen, {transition: Transitions.EASE_IN_OUT, x:mX, y:mY});
									}
									i++;
								}
							}
							else
							{
								_cardActionCompleteFlag = true;
								return;
							}
							return;
						}// end function
						});
						/*Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, x:ApplictionConfig.STAGE_WIDTH,  onComplete:function ()
						{
							
						}});*/
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
              card.state = STATE_EQUIP; 
            }
            else
            {
                _cardActionCompleteFlag = true;
            }
            return;
        }// end function

		
		/**
		 * 移入准备区
		 * @param	param1
		 */
        private function moveToReadyArea(param1:ActionModel) : void
        {
            var cardVo:CardModel;
            var index:int;
            var moveX:Number;
            var moveY:Number;
            var belong:String;
            var oppIndex:int;
            //var cardAction:ActionModel = param1;
            var unique:String = param1.uid;
            var card:Card= _attackView.cardMap[unique];
			card.visible=true;
            var cardObj:CardModel = new CardModel((_attackView.cardDataMap[unique]as AttackCardModel).cardId);// (_attackView.cardDataMap[unique]as AttackCardModel).cardModel;//默认属性
			var mc:MovieClip;
            if (card && cardObj)
            {
                
                clearCardEffects(unique, card);
                //card.buttonMode = true;
				
                cardVo =cardObj;//还原默认的值
				card.currentCardTye = 2;//小卡
                card.setCardModel(cardVo);
                card._atkText.color = 0xffffff;//三种属性颜色为默认的白色
                card._hpText.color = 0xffffff;
                card._spText.color = 0xffffff;
                trace(card.getCardModel().name + "[" + unique + "] 进入准备区");
                belong = unique.substr(0, 1);
                switch(belong)
                {
                    case "d":
                    {
						//防守方
                        _attackView.opponentReadyAreaCards.push(card);
                        index = (_attackView.opponentReadyAreaCards.length - 1);
                        if (index < 6)
                        {
                            moveX = _attackView.opponentReadyInitPoint.x + (_attackView.READY_AREA_GAP + CARD_OTHER_WIDTH) * index;
                        }
                        else
                        {
							//大于6张时放到屏幕外面
                            moveX = _attackView.opponentReadyInitPoint.x + (_attackView.READY_AREA_GAP + CARD_OTHER_WIDTH) * 5;
                        }
                        moveY = _attackView.opponentReadyInitPoint.y;
                        if (card.state == STATE_BATTLE)
                        {
							//从战斗区移到准备区－－先动画再从中卡变成小卡再飞到准备区
							
                            oppIndex = _attackView.opponentBattleAreaCards.indexOf(card);
                            if (oppIndex > -1)
                            {
                                if (oppIndex == (_attackView.opponentBattleAreaCards.length - 1))
                                {
									//如果要移入的是战斗区中的最后一张卡则直接移除
                                    _attackView.opponentBattleAreaCards.splice(oppIndex, 1);
                                }
                                else
                                {
									//不是最后一张则移除后用一个空对象代替
                                    _attackView.opponentBattleAreaCards.splice(oppIndex, 1, new Object());
                                }
                            }
							
							
							card.showSmallImage();
								_attackView.mc_skillArea.removeChild(mc);
								card.parent.setChildIndex(card, 0);
								
								card.state = STATE_READY;
								checkCardContent(card);//显示等待时间图标
								Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, x:moveX, y:moveY, onComplete:function ()
								{
									_cardActionCompleteFlag = true;
									return;
								}// end function
								});
							
                        }
                        else if (card.state == STATE_DEAD)
                        {
                            mc = ApplictionConfig.creaMC("attackUI",SkillClassName.REVIVE_EFFECT);
							mc.x = card.x;
							mc.y = card.y;
							_attackView.mc_skillArea.addChild(mc);
							MovieClipController.onMovieClipEnd(mc, function callback():void {
//								_attackView.mc_skillArea.removeChild(mc);
								card.parent.setChildIndex(card, 0);
								//trace(_attackView.cardMap["d6"].getCardModel().sp)
								trace("死亡到准备＝"+card.getCardModel().sp)
								
								Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, x:moveX, y:moveY, onComplete:function ()
								{
									card.visible = true;
									CustomTool.removeValueFromVector(_deffendDeadCard, card);
									updataDeadCardVisible("d");
									
									card.state = STATE_READY;
									checkCardContent(card);//显示等待时间图标
									_cardActionCompleteFlag = true;
									return;
								}// end function
								});
								});
                        }else {
							Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, x:moveX, y:moveY, onComplete:function ()
								{
									
									trace("休眠到准备＝"+card.getCardModel().sp)
									card.state = STATE_READY;
									checkCardContent(card);//显示等待时间图标
									_cardActionCompleteFlag = true;
									return;
								}// end function
								});
							}
                        break;
                    }
                    case "a":
                    {
						//攻方
                        _attackView.selfReadyAreaCards.push(card);
                        index = (_attackView.selfReadyAreaCards.length - 1);
                        if (index < 6)
                        {
                            moveX = _attackView.selfReadyInitPoint.x + (_attackView.READY_AREA_GAP + CARD_OTHER_WIDTH) * index;
                        }
                        else
                        {
                            moveX = _attackView.selfReadyInitPoint.x + (_attackView.READY_AREA_GAP + CARD_OTHER_WIDTH) * 5;
                        }
                        moveY = _attackView.selfReadyInitPoint.y;
                        trace("card.state:" + card.state);
                        if (card.state == STATE_BATTLE)
                        {
                            oppIndex = _attackView.selfBattleAreaCards.indexOf(card);
                            if (oppIndex > -1)
                            {
                                if (oppIndex == (_attackView.selfBattleAreaCards.length - 1))
                                {
                                    _attackView.selfBattleAreaCards.splice(oppIndex, 1);//战斗列表中去掉
                                }
                                else
                                {
                                    _attackView.selfBattleAreaCards.splice(oppIndex, 1, new Object());
                                }
                            }
							
                           
							card.showSmallImage();
								
								card.parent.setChildIndex(card, 0);
								
								card.state = STATE_READY;
								checkCardContent(card);//显示等待时间图标
								Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, x:moveX, y:moveY, onComplete:function ()
								{
									_cardActionCompleteFlag = true;
									return;
								}// end function
								});
								
                        }
                        else if (card.state == STATE_DEAD)
                        {
                            mc = ApplictionConfig.creaMC("attackUI",SkillClassName.REVIVE_EFFECT);
							mc.x = card.x;
							mc.y = card.y;
							_attackView.mc_skillArea.addChild(mc);
							MovieClipController.onMovieClipEnd(mc, function callback():void {
//								_attackView.mc_skillArea.removeChild(mc);
								card.parent.setChildIndex(card, 0);
								
								
								Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, x:moveX, y:moveY, onComplete:function ()
								{
									card.visible = true;
									CustomTool.removeValueFromVector(_attackDeadCard, card);
									updataDeadCardVisible("a");
									
									card.state = STATE_READY;
									checkCardContent(card);//显示等待时间图标
									_cardActionCompleteFlag = true;
									return;
								}// end function
								});
								});
						}
						else {
						Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, x:moveX, y:moveY, onComplete:function ()
							{
								card.state = STATE_READY;
								checkCardContent(card);//显示等待时间图标
								_cardActionCompleteFlag = true;
								return;
							}// end function
							});
						}
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
				
                
				//如果该卡有装备则移除有装备字典中的该卡装备
				for (var key:* in _cardEquipMap)
                    {
                        
                        if (_cardEquipMap[key] == card)
                        {
                            delete _cardEquipMap[key];
                        }
                    }
                
            }
            else
            {
                _cardActionCompleteFlag = true;
            }
            return;
        }// end function

		//0
		/**
		 * 改变卡的等待时间
		 * @param	param1
		 */
        private function changeCardReady(param1:ActionModel) : void
        {
            var _loc_3:CardModel = null;
            var _loc_2:Card = _attackView.cardMap[param1.uid];
            if (_loc_2)
            {
                trace(_loc_2.getCardModel().name + " 准备时间变更");
                _loc_3 = _loc_2.getCardModel();
                _loc_3.sp += param1.val;
                _loc_2.updataDataModel(_loc_3);
                _cardActionCompleteFlag = true;
            }
            else
            {
                _cardActionCompleteFlag = true;
            }
            return;
        }// end function
		
		/**
		 * 移到发卡区
		 * @param	param1
		 */
        private function moveToSleepArea(param1:ActionModel) : void
        {
            var card:Card;
            var belong:String;
            var index:int;
            var moveX:Number;
            var moveY:Number;
            var needMoveCards:Array;
            var len:int;
            var i:int;
            var oppIndex:int;
            var equipCard:Card;
            //var cardAction:ActionModel = param1;
            var unique:String = param1.uid;
            card = _attackView.cardMap[unique];
			var mc:MovieClip;
			var mX:Number=0;
			var mY:Number=0;
            if (card)
            {
                belong = param1.uid.substr(0, 1);
                trace(card.getCardModel().name + " 进入手牌区,unique:" + unique + ",belong:" + belong + ",state:" + card.state);
                //card.buttonMode = false;
                clearCardEffects(unique, card);
                switch(belong)
                {
                    case "d":
                    {
                        moveX = _attackView.opponentSleepAreaPoint.x;
                        moveY = _attackView.opponentSleepAreaPoint.y;
                        if (card.state == STATE_READY)
                        {
                            needMoveCards=new Array();
                            len = _attackView.opponentReadyAreaCards.length;
                            index = _attackView.opponentReadyAreaCards.indexOf(card);
                            i = (index + 1);
                            while (i < len)
                            {
                                
                                needMoveCards.push(_attackView.opponentReadyAreaCards[i]);
                                i = (i + 1);
                            }
                            _attackView.opponentReadyAreaCards.splice(index, 1);
                            Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, x:moveX, y:moveY, onComplete:function ()
							{
								
								card.onlyShowSmallbg();
								if (needMoveCards.length > 0)
								{
									i = 0;
									while (i < needMoveCards.length)
									{
										
										index = _attackView.opponentReadyAreaCards.indexOf(needMoveCards[i]);
										mY = _attackView.opponentReadyInitPoint.y;
										if (index < 6)
										{
											mX = _attackView.opponentReadyInitPoint.x + (_attackView.READY_AREA_GAP + CARD_OTHER_WIDTH) * index;
										}
										else
										{
											mX = _attackView.opponentReadyInitPoint.x + (_attackView.READY_AREA_GAP + CARD_OTHER_WIDTH) * 5;
										}
										if (i == (needMoveCards.length - 1))
										{
											Main.mStarling.juggler.tween(needMoveCards[i], timeLen, {transition: Transitions.EASE_IN_OUT, x:mX, y:mY, onComplete:function () : void
											{
												_cardActionCompleteFlag = true;
												return;
											}// end function
											});
										}
										else
										{
											Main.mStarling.juggler.tween(needMoveCards[i], timeLen, {transition: Transitions.EASE_IN_OUT, x:mX, y:mY});
										}
										i++;
									}
								}
								else
								{
									_cardActionCompleteFlag = true;
								}
								return;
							}// end function
							});
                        }
                        else if (card.state == STATE_BATTLE)
                        {
                            oppIndex = _attackView.opponentBattleAreaCards.indexOf(card);
                            if (oppIndex > -1)
                            {
                                if (oppIndex == (_attackView.opponentBattleAreaCards.length - 1))
                                {
                                    _attackView.opponentBattleAreaCards.splice(oppIndex, 1);
                                }
                                else
                                {
                                    _attackView.opponentBattleAreaCards.splice(oppIndex, 1, new Object());//删除一个后用一个新的对象代替，之后在排序之前重新清除不是卡的对象
                                }
                            }
							card.showSmallImage();//中卡变小卡
                            Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, x:moveX, y:moveY,  onComplete:function ()
								{
									card.onlyShowSmallbg();
									_cardActionCompleteFlag = true;
									return;
								}// end function
								});
                        }
                        else if (card.state==STATE_DEAD) {
							mc = ApplictionConfig.creaMC("attackUI",SkillClassName.REVIVE_EFFECT);
							mc.x = _attackView.opponentDeadAreaPoint.x;
							mc.y = _attackView.opponentDeadAreaPoint.y;
							_attackView.mc_skillArea.addChild(mc);
							MovieClipController.onMovieClipEnd(mc, function callback():void {
								_attackView.mc_skillArea.removeChild(mc);
								Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, x:moveX, y:moveY,  onComplete:function ()
								{
									trace("死亡进入休眠＝"+card.getCardModel().sp)
									card.onlyShowSmallbg();
									_cardActionCompleteFlag = true;
									return;
									}});
							});
							}else{
								if (card.state == STATE_EQUIP)
								{
									_attackView.opponentArtAreaCards.splice(_attackView.opponentArtAreaCards.indexOf(card), 1);
								}
								Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, x:moveX, y:moveY,  onComplete:function ()
								{
									card.onlyShowSmallbg();
									_cardActionCompleteFlag = true;
									return;
								}// end function
								});
                        }
                        break;
                    }
                    case "a":
                    {
                        moveX = _attackView.selfSleepAreaPoint.x;
                        moveY = _attackView.selfSleepAreaPoint.y;
                        if (card.state == STATE_READY)
                        {
                            needMoveCards=new Array();
                            len = _attackView.selfReadyAreaCards.length;
                            index = _attackView.selfReadyAreaCards.indexOf(card);
                            i = (index + 1);
                            while (i < len)
                            {
                                
                                needMoveCards.push(_attackView.selfReadyAreaCards[i]);
                                i = (i + 1);
                            }
                            _attackView.selfReadyAreaCards.splice(index, 1);
                            Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, x:moveX, y:moveY,  onComplete:function ()
							{
								card.onlyShowSmallbg();
								if (needMoveCards.length > 0)
								{
									i = 0;
									while (i < needMoveCards.length)
									{
										
										index = _attackView.selfReadyAreaCards.indexOf(needMoveCards[i]);
										if (index < 6)
										{
											mX = _attackView.selfReadyInitPoint.x + (_attackView.READY_AREA_GAP + CARD_OTHER_WIDTH) * index;
										}
										else
										{
											mX = _attackView.selfReadyInitPoint.x + (_attackView.READY_AREA_GAP + CARD_OTHER_WIDTH) * 5;
										}
										mY = _attackView.selfReadyInitPoint.y;
										if (i == (needMoveCards.length - 1))
										{
											Main.mStarling.juggler.tween(needMoveCards[i], timeLen, {transition: Transitions.EASE_IN_OUT, x:mX, y:mY, onComplete:function () : void
											{
												_cardActionCompleteFlag = true;
												return;
											}// end function
											});
										}
										else
										{
											Main.mStarling.juggler.tween(needMoveCards[i], timeLen, {transition: Transitions.EASE_IN_OUT, x:mX, y:mY});
										}
										i++;
									}
								}
								else
								{
									_cardActionCompleteFlag = true;
								}
								return;
							}// end function
							});
                        }
                        else if (card.state == STATE_BATTLE)
                        {
                            oppIndex = _attackView.selfBattleAreaCards.indexOf(card);
                            if (oppIndex > -1)
                            {
                                if (oppIndex == (_attackView.selfBattleAreaCards.length - 1))
                                {
                                    _attackView.selfBattleAreaCards.splice(oppIndex, 1);
                                }
                                else
                                {
                                    _attackView.selfBattleAreaCards.splice(oppIndex, 1, new Object());
                                }
                            }
                            Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, x:moveX, y:moveY,  onComplete:function ()
							{
								card.onlyShowSmallbg();
								_cardActionCompleteFlag = true;
								return;
							}// end function
							});
                        }else if (card.state==STATE_DEAD) {
							mc = ApplictionConfig.creaMC("attackUI",SkillClassName.REVIVE_EFFECT);
							mc.x = _attackView.selfDeadAreaPoint.x;
							mc.y = _attackView.selfDeadAreaPoint.y;
							_attackView.mc_skillArea.addChild(mc);
							MovieClipController.onMovieClipEnd(mc, function callback():void {
								_attackView.mc_skillArea.removeChild(mc);
								Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, x:moveX, y:moveY,  onComplete:function ()
								{
									card.onlyShowSmallbg();
									_cardActionCompleteFlag = true;
									return;
									}});
							});
							}
                        else
                        {
                            if (card.state == STATE_EQUIP)
                            {
                                _attackView.selfArtAreaCards.splice(_attackView.selfArtAreaCards.indexOf(card), 1);
                            }
                            Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, x:moveX, y:moveY,  onComplete:function ()
							{
								card.onlyShowSmallbg();
								_cardActionCompleteFlag = true;
								return;
							}// end function
							});
                        }
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
                card.state = STATE_SLEEP;
				for (var key:* in _cardEquipMap)
                    {
                        
                        if (_cardEquipMap[key] == card)
                        {
                            delete _cardEquipMap[key];
                        }
                    }
               /* if (card.getCardVo().tag == 2)
                {
                    for (key in _cardEquipMap)
                    {
                        
                        if (_cardEquipMap[key] == card)
                        {
                            delete _cardEquipMap[key];
                        }
                    }
                }
                else
                {
                    equipCard = _cardEquipMap[card];
                    if (equipCard)
                    {
                        delete _cardEquipMap[card];
                        Main.mStarling.juggler.tween(equipCard, timeLen, {transition: Transitions.EASE_IN_OUT, x:moveX, y:moveY, scaleX:0.33333, scaleY:0.33333, onComplete:function ()
            {
                equipCard.hideAll();
                return;
            }// end function
            });
                        equipCard.state = STATE_SLEEP;
                    }
                }*/
            }
            else
            {
                _cardActionCompleteFlag = true;
            }
            return;
        }// end function

		//--------------------------------------------------------------------------------------------------------------------------------------------------
		/**
		 * 传入回合数据
		 * @param	param1
		 */
        public function registerTurns(param1:Vector.<RoundModel>) : void
        {
            _turns = param1;
            _turnsLen = _turns.length;
            return;
        }// end function

		/**
		 * 开始播放
		 */
        public function play() : void
        {
			_restartFlag = false;
			
            var _loc_1:Object = null;
			//清空所有的绑定字典及装备字典
		
            for (_loc_1 in _cardBindJuDuMap)
            {
                
                delete _cardBindJuDuMap[_loc_1];
            }
            for (_loc_1 in _cardBindXianJingMap)
            {
                
                delete _cardBindXianJingMap[_loc_1];
            }
            for (_loc_1 in _cardBindBingDanMap)
            {
                
                delete _cardBindBingDanMap[_loc_1];
            }
            for (_loc_1 in _cardBindXianZhouMap)
            {
                
                delete _cardBindXianZhouMap[_loc_1];
            }
            for (_loc_1 in _cardBindFuTiMap)
            {
                
                delete _cardBindFuTiMap[_loc_1];
            }
            for (_loc_1 in _cardBindJinFeiMap)
            {
                
                delete _cardBindJinFeiMap[_loc_1];
            }
            for (_loc_1 in _cardBindZhiLiaoMap)
            {
                
                delete _cardBindZhiLiaoMap[_loc_1];
            }
            for (_loc_1 in _cardBindJianWuMap)
            {
                
                delete _cardBindJianWuMap[_loc_1];
            }
            for (_loc_1 in _cardBindLongXiMap)
            {
                
                delete _cardBindLongXiMap[_loc_1];
            }
			for (_loc_1 in _cardBindGongJiMap)
            {
                
                delete _cardBindGongJiMap[_loc_1];
            }
			for (_loc_1 in _cardBindFeiXianMap)
            {
                
                delete _cardBindFeiXianMap[_loc_1];
            }
			for (_loc_1 in _cardBindGangLangMap)
            {
                
                delete _cardBindGangLangMap[_loc_1];
            }
			for (_loc_1 in _cardBindEquipBarMap)
            {
                
                delete _cardBindEquipBarMap[_loc_1];
            }
            for (_loc_1 in _cardEquipMap)
            {
                
                delete _cardEquipMap[_loc_1];
            }
            _attackView.mc_cardArea.addEventListener(TouchEvent.TOUCH, onSeeCardInfo);
            timeLen = timeLenMap[_attackView.txt_speed];
            //_attackView.stage.frameRate = stageFrameMap[_attackView.txt_speed];
            _currentTurn = 0;
            if (_attackView)
            {
				
                _playTimer.start();
                playTurn(_currentTurn);
				
            }
			SkillController._attackPanel=AttackPanel.getInstance();
			SkillController._skillControler=skillTest.getInstance();
            return;
        }// end function

		/**
		 * 单击弹出卡的信息
		 * @param	event
		 */
        private function onSeeCardInfo(event:TouchEvent) : void
        {
            /*var card:Card;
           
			
            if (event.target is Card)
            {
                card = event.target as Card;
                if (card.state == 1)
                {
					//摸卡区中点击不显示
                    return;
                }
                _attackView.mc_cardArea.removeEventListener(TouchEvent.TOUCH, onSeeCardInfo);//保证每次只能点出一张
				//如果当前已经有显示出来的卡时
                if (_showCard != null)
                {
					
					_showCard = card;
					_substituteCardContent.visible = true;
					creaBigCardAndBack(_showCard);
					_attackView.mc_cardArea.addEventListener(TouchEvent.TOUCH, onSeeCardInfo);
					return;
                   
                }
                else
                {
					//停止播放，用替换卡复制要显示的卡属性，再放大弹出
                    stop();
                    //copyProperties(card);
                    _showCard = card;
                    //_showCard.visible = false;
                    _substituteCardContent.visible = true;
					
					creaBigCardAndBack(_showCard);
					_attackView.mc_cardArea.addEventListener(TouchEvent.TOUCH, onSeeCardInfo);

                }
				
				_substituteCardContent.addEventListener(TouchEvent.TOUCH, _substituteCardContentClick);
            }*/
            return;
        }// end function
		
		//弹出卡点击隐藏
		private function _substituteCardContentClick(event:TouchEvent):void {
			//if (event.target ==_substituteCardContent) {
				//点的是弹出的卡牌显示信息容器
				_substituteCardContent.visible = false;
				while (_substituteCardContent.numChildren > 0) {
				(_substituteCardContent.getChildAt(0) as Card).disposeBM();
				(_substituteCardContent.getChildAt(0) as Card).dispose();
				_substituteCardContent.removeChildAt(0);
				}
				_attackView.changePlayBtnStatus(1);
				continuePlay();
				_attackView.mc_cardArea.addEventListener(TouchEvent.TOUCH, onSeeCardInfo);
				
				return;
				
				//}
			}

		/**
		 * 建立弹出卡
		 * @param	param1
		 */
		private function creaBigCardAndBack(param:Card):void {
			
			while (_substituteCardContent.numChildren > 0) {
				(_substituteCardContent.getChildAt(0) as Card).disposeBM();
				(_substituteCardContent.getChildAt(0) as Card).dispose();
				_substituteCardContent.removeChildAt(0);
				}
				
				if (_bigCard) {
					_bigCard.disposeBM();
					_bigCard.dispose();
					}
				_bigCard = CardFactary.creaCard(param.cardId, 1, 0, false);
				_bigCard.touchable = false;
				
				
				/*if (_backCard) {
					_backCard.disposeBM();
					_backCard.dispose();
					}
				_backCard=CardFactary.creaCard(param.cardId, 3, 0, false);
				_backCard.showCardDes();
				_backCard.touchable = false;
				//_backCard.enable = true;
				_backCard.x = ApplictionConfig.CARD_WIDTH - 1;*/
				_substituteCardContent.addChild(_bigCard);
				//_substituteCardContent.addChild(_backCard);
				_substituteCardContent.x = (ApplictionConfig.STAGE_WIDTH - _substituteCardContent.width) >> 1;
				_substituteCardContent.y = (ApplictionConfig.STAGE_HEIGHT - _substituteCardContent.height) >> 1;
				//_substituteCardContent.mouseChildren = false;
				_substituteCardContent.touchable = true;
		}
		
		/**
		 * 检查卡的状态
		 * @param	param1
		 */
        private function checkCardContent(param1:Card) : void
        {
            switch(param1.state)
            {
                case STATE_READY:
                {
                    
                    param1.mc_ready.visible = true;
                    param1.smallSpText.visible = true;
                    break;
                }
                case STATE_BATTLE:
                {
                    param1.mc_ready.visible = false;
                    param1.smallSpText.visible = false;
                    break;
                }
                case STATE_EQUIP:
                {
					param1.mc_ready.visible = false;
                    param1.smallSpText.visible = false;
                    break;
                }
                case STATE_DEAD:
                {
                   param1.mc_ready.visible = false;
                   param1.smallSpText.visible = false;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

		/**
		 * 100毫秒检查一次是否要播放下一步
		 * @param	event
		 */
        private function onCheckPlaySteps(event:TimerEvent) : void
        {
			//_cardActionCompleteFlag表示当前卡牌动作是否完成了，如技能特效是否播放完了
            if (_cardActionCompleteFlag)
            {
                _currentCardIndex++;
				
                _cardActionCompleteFlag = false;
                playCardAction(_currentCardIndex);
                if (_turnCompleteFlag)
                {
					//如果回合结束则进入下一回合
                   _currentTurn++;
                    _turnCompleteFlag = false;
                    playTurn(_currentTurn);
                }
            }
            return;
        }// end function

		/**
		 * 播放下一个的动作
		 * @param	param1
		 */
        private function playCardAction(param1:int) : void
        {
			trace("playCardAction")
            var _loc_2:ActionModel = null;
            var _loc_3:Function = null;
            if (param1 < _currentCardActions.length)
            {
                _loc_2 = _currentCardActions[param1];
                trace("技能ID："+_loc_2.act);
                _loc_3 = _actHandlerMap[_loc_2.act];
                if (_loc_3 != null)
                {
					try{
                    _loc_3(_loc_2);
					}catch (e:ArgumentError) {
						trace("ArgumentError")
						}
                }
                else
                {
                    trace("播放出现错误，cardAction找不到------Act：" + _loc_2.act);
					//该动作结束
                    _cardActionCompleteFlag = true;
                }
            }
            else
            {
				//该回合结束
                _turnCompleteFlag = true;
            }
            return;
        }// end function

		/**
		 * 播放下一回合
		 * @param	param1
		 */
        private function playTurn(param1:int) : void
        {
			trace("playTurn")
            var turnObj:RoundModel;
            var card:Card;
            //var turn:int = param1;
            if (param1 < _turnsLen)
            {
                turnObj = _turns[param1];
                _attackView.txt_step.text = String(param1 + 1);
                trace("第[" + _attackView.txt_step.text + "]回合");
				var callback:Function = function():void {
					if (_attackView.opponentBattleAreaCards.length == 0 && _attackView.selfBattleAreaCards.length == 0 && _attackView.opponentReadyAreaCards.length == 0 && _attackView.selfReadyAreaCards.length == 0)
					{
						trace("第一回合")
						//刚开始第一回合时
						startCardActions(turnObj);
					}
					else
					{
						
//						if(param1==20) _attackView.mc_cardArea.flatten();
						//对方等待区中所有的卡等待时间减一
						for (var i:String in _attackView.opponentReadyAreaCards) {
							card = _attackView.opponentReadyAreaCards[i];
							Main.mStarling.juggler.tween(card.mc_ready, timeLen, {rotation:360, onComplete:reduceCardReady(card)});
							}
						//我方等待区中所有的卡等待时间减一
						for (var j:String in _attackView.selfReadyAreaCards) {
							card = _attackView.selfReadyAreaCards[j];
							Main.mStarling.juggler.tween(card.mc_ready, timeLen, {rotation:360, onComplete:reduceCardReady(card)});
							}
						
						sortBattleCardsLocation();
						CustomTool.delayRun(timeLen, function () : void
						{
							trace("不是第一回合")
							//等待动画效果放完后开始卡的动作
							startCardActions(turnObj);
							return;
						}// end function
						);
					}
					}
				//根据这一回合是哪一方而改变箭头的指向  ---0表示攻方行动，为1表示守方行动
                switch(turnObj.side)
                {
                    case 0:
                    {
                        //Main.mStarling.juggler.tween(_attackView.mc_arrow, timeLen, {transition: Transitions.EASE_IN_OUT, rotation:45});
						_attackView.arrowIsAttackOrDefend(0);
						CustomTool.delayRun(timeLen * 4, callback);
                        break;
                    }
                    case 1:
                    {
                        //Main.mStarling.juggler.tween(_attackView.mc_arrow, timeLen, {transition: Transitions.EASE_IN_OUT, rotation:-45});
						_attackView.arrowIsAttackOrDefend(1);
						CustomTool.delayRun(timeLen * 4, callback);
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
				
            }
            else
            {
				//战斗结束
                _attackView.battleOver();
				
				battleOverClear();
            }
            return;
        }// end function

		/**
		 * 战斗结束清除相关内容
		 */
		public function battleOverClear():void{
			diposeArray(_deffendDeadCard);
			diposeArray(_attackDeadCard);
			
			diposeDictionary(_cardBindJuDuMap);
			diposeDictionary(_cardBindXianJingMap);
			diposeDictionary(_cardBindBingDanMap);
			diposeDictionary(_cardBindXianZhouMap);
			diposeDictionary(_cardBindFuTiMap);
			diposeDictionary(_cardBindJinFeiMap);
			diposeDictionary(_cardBindZhiLiaoMap);
			diposeDictionary(_cardBindJianWuMap);
			diposeDictionary(_cardBindLongXiMap);
			diposeDictionary(_cardBindGongJiMap);
			diposeDictionary(_cardBindFeiXianMap);
			diposeDictionary(_cardBindGangLangMap);
			diposeDictionary(_cardBindEquipBarMap);
			diposeDictionary(_cardEquipMap);
			
			
			SkillController._skillControler.removeTAFromAssets();
			var disposeCard:Card;
			for each(disposeCard in _attackView.cardMap){
				disposeCard.dispose();
				disposeCard.removeFromParent();
				delete _attackView.cardMap[disposeCard];
			}
			_attackView.cardMap=null;
			Starling.juggler.purge();//清除所有的侦听对象
//			Root.vmgr.removeView(project.view.scene.battleScene.BattleReadyPanel);
			ApplictionConfig.assets.clearRuntimeLoadTexture();
			(Root.vmgr.getView(BottonBar) as BottonBar).showScene(MainScene);
			
//			dispatchEventWith(MainScene.TRUNSCENE, true, ApplictionConfig.MAIN_SCENE);
		}
		
		
		
		/**
		 * 释放一个DICT中的卡
		 */
		private function diposeDictionary(value:Dictionary):void{
			for (var keyobj:Object in value) {
				delete value[keyobj];
			}
			value=null;
		}
		/**
		 * 释放一个数组中的卡
		 */
		private function diposeArray(value:Vector.<Card>):void{
			var disposeCard:Card;
			for each(disposeCard in value){
				disposeCard.dispose();
				delete value[disposeCard];
			}
			value=null;
		}
		
		/**
		 * 重新排列战斗区中的卡
		 * 
		 * @param	param1
		 */
		
        private function sortBattleCardsLocation() : void
        {
            var _loc_1:Card = null;
            var _loc_2:Number = 0;
            var _loc_3:Number = 0;
            var _loc_4:Card = null;
            clearBattleAreaCardsFlag(_attackView.opponentBattleAreaCards);
            clearBattleAreaCardsFlag(_attackView.selfBattleAreaCards);
            for each (_loc_1 in _attackView.opponentBattleAreaCards)
            {
                
                _loc_2 = _attackView.opponentBattleInitPoint.x + (_attackView.BATTLE_AREA_GAP + CARD_BATTLE_WIDTH) * _attackView.opponentBattleAreaCards.indexOf(_loc_1);
                _loc_3 = _attackView.opponentBattleInitPoint.y;
                Main.mStarling.juggler.tween(_loc_1, timeLen, {transition: Transitions.EASE_IN_OUT, x:_loc_2, y:_loc_3});
                _loc_4 = _cardEquipMap[_loc_1];
                if (_loc_4)
                {
                    Main.mStarling.juggler.tween(_loc_4, timeLen, {transition: Transitions.EASE_IN_OUT, x:_loc_2,y:_attackView.opponentBattleInitPoint.y-20});
                }
            }
            for each (_loc_1 in _attackView.selfBattleAreaCards)
            {
                
                _loc_2 = _attackView.selfBattleInitPoint.x + (_attackView.BATTLE_AREA_GAP + CARD_BATTLE_WIDTH) * _attackView.selfBattleAreaCards.indexOf(_loc_1);
                _loc_3 = _attackView.selfBattleInitPoint.y;
                Main.mStarling.juggler.tween(_loc_1, timeLen, {transition: Transitions.EASE_IN_OUT, x:_loc_2, y:_loc_3});
                _loc_4 = _cardEquipMap[_loc_1];//有装备也一起排列
                if (_loc_4)
                {
                    Main.mStarling.juggler.tween(_loc_4, timeLen, {transition: Transitions.EASE_IN_OUT, x:_loc_2,y:_attackView.selfBattleInitPoint.y-20});
                }
            }
			_leftMoveNum = 0;
            return;
        }// end function

		/**
		 * 去除数组中不是卡的
		 * @param	param1
		 */
		
        private function clearBattleAreaCardsFlag(param1:Array) : void
        {
           for (var i:int=param1.length-1;i>=0;--i)
			{
				if (!(param1[i] is Card)) {
					param1.splice(i,1);
					}
			}
            return;
        }// end function

		/**
		 * 每回合漏斗转完一圈后动作
		 * 等待时间减1
		 * @param	param1
		 */
        private function reduceCardReady(param1:Card) : void
        {
            var _loc_2:CardModel=param1.getCardModel();
			/*_loc_2 = new CardModel(param1.getCardModel().id);
			_loc_2.sp = param1.getCardModel().sp;
			_loc_2.ap = param1.getCardModel().ap;
			_loc_2.hp = param1.getCardModel().hp;*/
			
            _loc_2.sp --;
            if (_loc_2.sp < 0)
            {
                _loc_2.sp = 0;
            }
			param1.updataDataModel(_loc_2);
            param1.smallSpText.text = String(_loc_2.sp);

			_loc_2 = null;
			//trace(_attackView.cardDataMap[param1.uniquesId].cardModel.sp)
            //param1.showImageOnly(true);
            //param1.mc_big_ready.visible = true;
            return;
        }// end function
		
		/**
		 * 新手引导继续
		 * 下一步：女神像受伤
		 * @param	e
		 */
		/*private function newbiePanelContinue(e:SMZTDataChangeEvent):void 
		{
			NewbiePane.getInstance().removeEventListener(SMZTDataChangeEvent.ON_DATA_CHANGE, newbiePanelContinue);
			NewbiePane.getInstance().hide();
			continuePlay();
		}*/

		/**
		 * 开始这回合的动作
		 * @param	param1
		 */
        private function startCardActions(param1:RoundModel) : void
        {
		trace("param1.id="+param1.id)
		trace("_currentTurn="+_currentTurn)
            _cardActionCompleteFlag = false;
			_currentCardActions = new Vector.<ActionModel>();
            _currentCardActions = param1.actions;
			if ((_currentTurn + 1) != param1.id || _restartFlag) {
				trace("当前回调的不是当前回合数的方法--重播时可能触发"+"/"+_restartFlag)
				_turnCompleteFlag = false;
                _cardActionCompleteFlag = false;
				return;
				}
            if (_currentCardActions.length > 0)
            {
                _currentCardIndex = 0;
                playCardAction(_currentCardIndex);
            }
            else
            {
                trace("cardactions为空--------------------");
                _turnCompleteFlag = true;
                _cardActionCompleteFlag = true;
            }
            return;
        }// end function

       /* private function copyProperties(param1:Card) : void
        {
            _substituteCard.clearImages();
            _substituteCard.mc_skill_desc.visible = true;
            _substituteCard.mc_skill_name.visible = false;
            _substituteCard.setCardVo(param1.getCardVo());
            _substituteCard.x = param1.x;
            _substituteCard.y = param1.y;
            _substituteCard.width = param1.width;
            _substituteCard.height = param1.height;
            return;
        }// end function*/

       
		/**
		 * 停止
		 */
        public function stop() : void
        {
            _playTimer.stop();
            _attackView._playBt.visible = true;
            _attackView._pauseBt.visible = false;
            return;
        }// end function

		
		/**
		 * 点帮助时检查是否有弹出的卡，如果有就隐藏
		 */
		public function checkPopCard():void {
			if (_showCard != null)
            {
				_showCard = null;
				_substituteCardContent.visible = false;
            }	
			}
		
		/**
		 * 重放
		 */
        public function restart() : void
        {
			_leftMoveNum = 0;
			_restartFlag = true;
			while (_substituteCardContent.numChildren > 0) {
				(_substituteCardContent.getChildAt(0) as Card).disposeBM();
				(_substituteCardContent.getChildAt(0) as Card).dispose();
				_substituteCardContent.removeChildAt(0);
				}
			/*while (_substituteCardContent.numChildren > 0) {
				_substituteCardContent.removeChildAt(0);
				}*/
			if (_showCard != null)
            {
				_showCard.disposeBM();
				_showCard.dispose();
				_showCard = null;
				_substituteCardContent.visible = false;
            }	
			
			_currentCardActions = new Vector.<ActionModel>();
            _turns = new Vector.<RoundModel>();
            _turnsLen = 0;
			_currentTurn = 0;
            _playTimer.reset();
            _cardActionCompleteFlag = false;
            _turnCompleteFlag = false;
            _attackView._playBt.visible = false;
            _attackView._pauseBt.visible = true;
            return;
        }// end function

		/**
		 * 继续播放
		 */
        public function continuePlay() : void
        {
            if (_showCard != null)
            {
				_showCard = null;
				_substituteCardContent.visible = false;
				//如果当时是在显示大卡状态时，先恢复去掉大卡
                /*Main.mStarling.juggler.tween(_substituteCardContent, timeLen * 0.5, {transition: Transitions.EASE_IN_OUT, scaleX:_showCard.scaleX, scaleY:_showCard.scaleY, x:_showCard.x, y:_showCard.y, onComplete:function () : void
				{
					//_showCard.visible = true;
					_showCard = null;
					_substituteCardContent.visible = false;
					return;
				}// end function
				});*/
            }
            _playTimer.start();
            _attackView.changePlayBtnStatus(1);
            return;
        }// end function

		/**
		 * 加速
		 */
        public function speedUp() : void
        {
            CustomTool.greyDisplayObject(_attackView.btn_gearDown, false, false);
            switch(_attackView.txt_speed)
            {
                case "X1":
                {
                    _attackView.txt_speed = "X2";
                    timeLen = timeLenMap["X2"];
                    //_attackView.stage.frameRate = stageFrameMap[_attackView.txt_speed];
                    break;
                }
                case "X2":
                {
                    _attackView.txt_speed = "X4";
                    timeLen = timeLenMap["X4"];
                    //_attackView.stage.frameRate = stageFrameMap[_attackView.txt_speed];
                    CustomTool.greyDisplayObject(_attackView.btn_speedUp, false, true);
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

		/**
		 * 减速
		 */
        public function gearDown() : void
        {
            CustomTool.greyDisplayObject(_attackView.btn_speedUp, false, false);
            switch(_attackView.txt_speed)
            {
                case "X2":
                {
                    _attackView.txt_speed = "X1";
                    timeLen = timeLenMap["X1"];
                    //_attackView.stage.frameRate = stageFrameMap[_attackView.txt_speed];
                    CustomTool.greyDisplayObject(_attackView.btn_gearDown, false, true);
                    break;
                }
                case "X4":
                {
                    _attackView.txt_speed = "X2";
                    timeLen = timeLenMap["X2"];
                    //_attackView.stage.frameRate = stageFrameMap[_attackView.txt_speed];
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

       /**
        * 更新墓区中的卡的visible
        */
			public function updataDeadCardVisible(a_d:String = "a"):void {
				var l:uint;
				switch(a_d) {
					case "a":
						l = _attackDeadCard.length;
						for (var i:int = 0; i < l; i++ ) {
							if (i == (l - 1)) {
								_attackDeadCard[i].visible = true;
								}else {
									_attackDeadCard[i].visible = false;
									}
							}
						break;
					case "d":
						l = _deffendDeadCard.length;
						for (var j:int = 0; j < l; j++ ) {
							if (j == (l - 1)) {
								_deffendDeadCard[j].visible = true;
								}else {
									_deffendDeadCard[j].visible = false;
									}
							}
						break;
					}
				}

    }
}