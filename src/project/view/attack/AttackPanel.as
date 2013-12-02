package project.view.attack 
{
	import com.adobe.protocols.dict.Dict;
	import com.adobe.serialization.json.JSON;
	import com.adobe.utils.DictionaryUtil;
	
	import flash.events.MouseEvent;
	import flash.events.TimerEvent;
	import flash.geom.Point;
	import flash.utils.Dictionary;
	import flash.utils.Timer;
	
	import project.Cellcard.Card;
	import project.base.BaseTitleWindow;
	import project.config.ErrorZhCn;
	import project.events.SMZTDataChangeEvent;
	import project.model.ModelLocator;
	import project.model.attack.AttackCardModel;
	import project.model.attack.AttackModel;
	import project.model.attack.AttackPlayerModel;
	import project.model.item.CardModel;
	import project.utils.Base64;
	import project.utils.CardFactary;
	import project.utils.CustomTool;
	import project.utils.Reflection;
	import project.view.scene.mainScene.MainScene;
	
	import starling.core.Starling;
	import starling.display.Button;
	import starling.display.MovieClip;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.text.TextField;

	//import project.view.controls.ToolTip;
	//import project.view.module.helppane.NewbiePane;
	/**
	 * 战斗场景
	 * @author bbjxl 2012
	 */
	public class AttackPanel extends BaseTitleWindow 
	{
		//----------------------容器---------------------------------
		private var _mapbg:Sprite;//背景容器
		
		//-----------------------UI---------------------------------
		//public var vip0_mc:MovieClip;
        //public var vip1_mc:MovieClip;
		private var _textContent:Sprite;
        public var txt_step:TextField;//回合数
        public var txt_opponent_name:TextField;//对方玩家名字
        public var txt_self_name:TextField;//我方名字
        public var txt_opponent_morale:TextField;//对方土气
        public var txt_self_morale:TextField;//我方士气
        public var mc_opponent_morale:MovieClip;//对方士气MC
        public var mc_self_morale:MovieClip;
        //public var mask_opponent_morale:MovieClip;
        //public var mask_self_morale:MovieClip;
        public var btn_visite_defend:MovieClip;//访问防守方
        public var btn_visite_attack:MovieClip;//访问攻方
        public var mc_arrow:MovieClip;
        public var mc_opponent_img:Sprite;//头像
        public var mc_self_img:Sprite;
        public var mc_cardArea:Sprite;//战斗场景容器
		public var mc_skillArea:Sprite;//技能层
        public var sp_helpView:Sprite;//帮助界面
        public var mc_guide:Sprite;//引导界面
        public var btn_start:Button;//开始战斗按钮
        public var _pauseBt:Button;
        public var _playBt:Button;
        public var btn_speedUp:Button;
        public var btn_gearDown:Button;
        public var btn_restart:Button;
        public var btn_help:Button;//帮助按钮
        public var btn_skip:Button;
		
		public var _selfDeadMc:MovieClip;//我方墓地效果
		public var _defandDeadMc:MovieClip;//对方墓地效果
		
		
		//private var mapBgImage:MyImage;
		//-----------------------数据---------------------------------
		public var txt_speed:String;//速度
		private var _attackModel:AttackModel;
		//private var _skipEnableTimer:Timer;//5秒后判断是否显示跳过按钮
		public var _attackPlayer:AttackPlayer;//战斗播放器
		public var cardMap:Dictionary;//这场战斗中用到的所有卡（敌我两方）card
        public var cardDataMap:Dictionary;//这场战斗中用到的所有卡模型（敌我两方） AttackCardModel
        public var opponentReadyAreaCards:Array;//敌方准备区数组
        public var opponentBattleAreaCards:Array;//敌方战斗区卡牌数组
        public var opponentArtAreaCards:Array;///装备区
        public var selfReadyAreaCards:Array;//自己准备区卡
		public var selfBattleAreaCards:Array;
		public var selfArtAreaCards:Array;
		
        public var opponentSleepAreaPoint:Point;//对方摸牌区坐标
        public var opponentReadyInitPoint:Point;//对方准备区坐标
        public var opponentBattleInitPoint:Point;
        public var opponentDeadAreaPoint:Point;
        public var opponentEquipAreaPoint:Point;
		
        public var selfSleepAreaPoint:Point;
        public var selfReadyInitPoint:Point;
        public var selfBattleInitPoint:Point;
        public var selfDeadAreaPoint:Point;
        public var selfEquipAreaPoint:Point;
		
        public const MORALE_LEN:Number = 240;//士气高度
        public var initOppoMorale:int = 0;//对方初始士气
        public var initSelfMorale:int = 0;//我方初始士气
		
        public const READY_AREA_GAP:Number = 11.5;//准备区卡的间隔
        public const BATTLE_AREA_GAP:Number = 16.9;//战斗区卡的间隔
        public var result:int;//战斗结果
        public var resultType:int;//战斗结果类型
        public var battleUrl:String = "";
        private var resultData:Object;//返回战斗的数据
        //private var _defendUID:String = "";
        //private var _attackUID:String = "";
        //public var attackUserId:String = "";//攻方ID
        //public var sharedObject:SharedObject;
        private var _isHideVisiteProfile:Boolean = false//是否隐藏访问主页
        //private var greyfilter:ColorMatrixFilter;//灰色
        public static const HANDLER_BATTLE_OVER:String = "battleOver";
        public static const HANDLER_START_BATTLE:String = "startBattle";
        public static const HANDLER_VISITE_PROFILE:String = "visiteProfile";
		//-----------------------事件--------------------------------
		
		private static var _instance:AttackPanel = null;
		
		public function AttackPanel() 
		{
			if (_instance != null)
            {
                throw new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE);
            }
			setSpriteInstance("AttackPanel");
			configerUIInstance();
			
			_attackModel = AttackModel.getInstance();
            dataModel = _attackModel;
		}
		
		override public function show(param1:Boolean = false) : void
        {
			if (isOpened)
            {
				return;
            }
            else if (rootContainer)
            {
                if (param1)
                {
                    drawModalRect();
                }
                rootContainer.addChild(this);
                this.x =0;
                this.y = 0;
                if (showEffect)
                {
                    this.alpha = 0.5;
					//Starling.juggler.tween(this, 0.2, { alpha:1, y:this.y + 40 });
                    //TweenLite.to(this, 0.3, {alpha:1, y:this.y + 40});
                }
                this.isOpened = true;
                this.isPopUP = true;
                //this.addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
				
            }
           
            return;
        }// end function
			
		private function configerUIInstance():void {
			trace("configerUIInstance-----------------------------------------------------------------------------")
			//_skipEnableTimer = new Timer(5000, 1);
            opponentSleepAreaPoint = new Point(187.05, 24.4);//对手各区域坐标 发卡区
            opponentReadyInitPoint = new Point(307.05, 23.4);
            opponentBattleInitPoint = new Point(218.05, 124.9);
            opponentDeadAreaPoint = new Point(859.2, 7.4);
            opponentEquipAreaPoint = new Point(112, 148.45);
			
            selfSleepAreaPoint = new Point(187, 540.55);
            selfReadyInitPoint = new Point(308, 539.55);
            selfBattleInitPoint = new Point(218.05, 338.95);
            selfDeadAreaPoint = new Point(857.15, 554.55);
            selfEquipAreaPoint = new Point(112, 415.55);
			
            //greyfilter = new ColorMatrixFilter([0.3, 0.59, 0.11, 0, 0, 0.3, 0.59, 0.11, 0, 0, 0.3, 0.59, 0.11, 0, 0, 0, 0, 0, 1, 0]);
			
            /*sp_helpView = Reflection.createInstance("AttackHelpPanel");
            sp_helpView.mouseChildren = false;
            sp_helpView.visible = false;
            sp_helpView.addEventListener(MouseEvent.CLICK, onHelpViewClick);
            addChild(sp_helpView);*/
			_textContent=new Sprite();
//			_textContent.unflatten();
			txt_step = creaText(50, 50, "0", 0, ApplictionConfig.STAGE_HEIGHT >> 1);
			
			txt_opponent_name=creaText(100, 50, "防守方", 0, 0);
            
			txt_self_name= creaText(100, 50, "攻方", 0, ApplictionConfig.STAGE_HEIGHT-50);
            
			txt_opponent_morale= creaText(100, 50, "0", 50, 100);
			txt_self_morale= creaText(100, 50, "0", 50, ApplictionConfig.STAGE_HEIGHT-100);
//			_textContent.flatten();
			
			_pauseBt = new Button(ApplictionConfig.assets.getTexture(ApplictionConfig.add0000("buttonBg")), "暂停");
			addChild(_pauseBt);
			_playBt = new Button(ApplictionConfig.assets.getTexture(ApplictionConfig.add0000("buttonBg")), "播放");
			addChild(_playBt);
			_playBt.visible = false;
			
            //txt_speed.selectable = false;
            txt_speed= "X1";
			
            
            cardMap = new Dictionary();
            cardDataMap = new Dictionary();
            opponentReadyAreaCards = [];//对方准备区卡
            opponentBattleAreaCards = [];//对方战斗区卡
            opponentArtAreaCards = [];//对方装备区卡
            selfReadyAreaCards = [];//自己准备区卡
            selfBattleAreaCards = [];
            selfArtAreaCards = [];
			
			_mapbg = new Sprite();
			
			_selfDeadMc = ApplictionConfig.creaMC("attackUI", "墓地动画效果");
			_defandDeadMc = ApplictionConfig.creaMC("attackUI", "墓地动画效果");
			_selfDeadMc.stop();
			_selfDeadMc.loop=false;
			_defandDeadMc.loop=false;
			_defandDeadMc.stop();
			_defandDeadMc.y = ApplictionConfig.STAGE_HEIGHT - _defandDeadMc.height;
			
//			_textContent.unflatten();
			_textContent.addChild(_selfDeadMc);
			_textContent.addChild(_defandDeadMc);
			
			mc_cardArea = new Sprite();
			addChild(mc_cardArea);
			/*mc_opponent_morale = getChild("opponent_morale") as MovieClip;
			mc_self_morale = getChild("self_morale") as MovieClip;*/
            
			mc_arrow =  ApplictionConfig.creaMC("attackUI", "战斗指向");
			mc_arrow.x = 100;
			mc_arrow.y = ApplictionConfig.STAGE_HEIGHT >> 1;
			_textContent.addChild(mc_arrow);
			
			addChild(_textContent);
//			_textContent.flatten();
            //mc_arrow.cacheAsBitmap = true;
			/*mc_opponent_img = getChild("opponent_img") as MovieClip;
			mc_self_img = getChild("self_img") as MovieClip;*/
            //vip1_mc.visible = false;
            //vip0_mc.visible = false;
            btn_start = new Button(ApplictionConfig.assets.getTexture(ApplictionConfig.add0000("buttonBg")), "开始");
			addChild(btn_start);
			btn_start.y=250;
			btn_start.addEventListener(Event.TRIGGERED, onStart);
            btn_restart = new Button(ApplictionConfig.assets.getTexture(ApplictionConfig.add0000("buttonBg")), "重播");
			addChild(btn_restart);
			btn_restart.y=100;
			btn_restart.addEventListener(Event.TRIGGERED, onRestart);
			//btn_restart.toolTip = "重播";
            btn_speedUp =new Button(ApplictionConfig.assets.getTexture(ApplictionConfig.add0000("buttonBg")), "加速");
            btn_gearDown = new Button(ApplictionConfig.assets.getTexture(ApplictionConfig.add0000("buttonBg")), "减速");
			

			btn_help = new Button(ApplictionConfig.assets.getTexture(ApplictionConfig.add0000("buttonBg")), "帮助");
			//btn_help.toolTip = "帮助";
			btn_skip = new Button(ApplictionConfig.assets.getTexture(ApplictionConfig.add0000("buttonBg")), "跳过");
			//btn_skip.toolTip = "跳过";
			btn_skip.y=ApplictionConfig.STAGE_HEIGHT>>1;
			addChild(btn_skip);
			
            btn_skip.addEventListener(Event.TRIGGERED, onSkip);
			
            //_skipEnableTimer.addEventListener(TimerEvent.TIMER, onSkiptimer);//5秒后提示一次跳过图标可用
			//onSkiptimer(null);
            //addEventListener(Event.ADDED_TO_STAGE, onAddtoStage);
            //loadSharedObjectData();
			
			mc_skillArea = new Sprite();
			addChild(mc_skillArea);
			//changePlayBtnStatus(1);
			}
			
		private function creaText(w:int, h:int, t:String, _x:Number = 0, _y:Number = 0):TextField {
			var tempText:TextField = new TextField(w, h, t,"cotfont_0",15,0xffffff);
			tempText.x = _x;
			tempText.y = _y;
			_textContent.addChild(tempText);
			return tempText;
			}

		
		/**
		 * 加载背景
		 * @param	event
		 */	
		/*public function loadMapBgImage(bgUrl:String):void {
			if (mapBgImage && mapBgImage._bitmap) {
				mapBgImage._bitmap.bitmapData.dispose();
				}
			while (_mapbg.numChildren > 0) {
				_mapbg.removeChildAt(0);
				}
			mapBgImage = new MyImageLoad(bgUrl);
			mapBgImage.addEventListener(MyImageLoad.LOADIMAGEOVER,loadover);
			function loadover(e:Event):void {
				_mapbg.addChild(mapBgImage._bitmap)
				//trace(mapBgImage._bitmap.width);
				}
			}*/
			
		//跳过可用
        private function onSkiptimer(event:TimerEvent) : void
        {
			 //btn_skip.filter = [];
            /*if (PlayerData.getInstance().ownVip)
            {
                btn_skip.filters = [];
            }*/
            btn_skip.touchable = true;
            return;
        }// end function
		//跳过
        private function onSkip(event:Event) : void
        {
          
			battleOver();
            return;
        }// end function


        public function loadBackgroundImg(param1:String) : void
        {
			//战斗场景背景
           /* var _loc_2:* = new (ApplicationDomain.currentDomain.getDefinition("attack.AttackPanel") as Class)() as Sprite;
            addChild(_loc_2);
            setChildIndex(_loc_2, 0);
            _loc_2.mouseEnabled = false;*/
            return;
        }// end function

		//加载玩家之前设置的战斗速度
       /* private function loadSharedObjectData() : void
        {
            sharedObject = SharedObject.getLocal("COT_battle");
            if (sharedObject.data.playSpeed == null)
            {
                sharedObject.data.playSpeed = "X2";
            }
            txt_speed = sharedObject.data.playSpeed;
            return;
        }// end function*/

		override protected function onAddToStage(event:Event) : void
        {
			removeEventListener(Event.ADDED_TO_STAGE, onAddToStage);
            addEventListener(Event.REMOVED_FROM_STAGE, onRemoveFromStage);
            /*_pauseBt.onClick = onStartAndStop; 
            _playBt.onClick = onStartAndStop; 
            btn_speedUp.onClick = onSpeedUp;
            btn_gearDown.onClick = onGearDown;
            btn_restart.onClick = onRestart;
            btn_help.onClick = onHelp;*/
            btn_start.addEventListener(Event.TRIGGERED,onStart); 
            return;
        }// end function

        override protected function onRemoveFromStage(event:Event) : void
        {
			removeEventListener(Event.REMOVED_FROM_STAGE, onRemoveFromStage);
            addEventListener(Event.ADDED_TO_STAGE, onAddToStage);
			btn_start.removeEventListener(Event.TRIGGERED,onStart); 
            return;
        }// end function
       

		
		
		/**
		 * 增加士气时的状态
		 * @param	param1要增加敌或我方士气
		 */
        public function renderAddMorale(param1:String) : void
        {
			switch(param1) {
				case "d":
					/*mc_opponent_morale["addEffectMc"].gotoAndPlay(1);//播放加士气效果
					mc_opponent_morale.gotoAndStop(judgstStatueState(parseInt(txt_opponent_morale.text), _attackModel.defender.faith));*/
					break;
				case "a":
					/*mc_self_morale["addEffectMc"].gotoAndPlay(1);//播放加士气效果
					mc_self_morale.gotoAndStop(judgstStatueState(parseInt(txt_self_morale.text), _attackModel.attacker.faith));*/
					break;
				}
				
			
            return;
        }// end function

		/**
		 * 减士气时的状态
		 * @param	param1
		 */
        public function renderReduceMorale(param1:String) : void
        {
			switch(param1) {
				case "d":
					/*mc_opponent_morale["effectMc"].gotoAndPlay(1);//播放落石
					mc_opponent_morale.gotoAndStop(judgstStatueState(parseInt(txt_opponent_morale.text), _attackModel.defender.faith));*/
					break;
				case "a":
					
					/*mc_self_morale["effectMc"].gotoAndPlay(1);//播放落石
					mc_self_morale.gotoAndStop(judgstStatueState(parseInt(txt_self_morale.text), _attackModel.attacker.faith));*/
					break;
				}
			
            return;
        }// end function
		//根据雕像的值来判断雕像当前处于哪一帧
		private function judgstStatueState(currentValue:int, initValue:int):int {
				var temp:Number = (1 - currentValue / initValue);
				if ( temp< 0.3) {
					return 1;
					}else if (temp < 0.6) {
						return 2;
						}else if (temp ==1) {
							return 4;
							}else {
								return 3;
								}
				return 1;
				}

		/**
		 * 恢复士气
		 * @param	param1
		 */
        public function clearMorale(param1:MovieClip) : void
        {
			/*param1["effectMc"].stop();
            param1.stop();*/
            return;
        }// end function

		/**
		 * 当前是攻方还是守方 若为0表示攻方行动，为1表示守方行动
		 * @param	arg
		 */
		public function arrowIsAttackOrDefend(arg:int = 0) {
			if (arg == 0) {
				//mc_arrow.gotoAndPlay(20);
				}else {
					//mc_arrow.gotoAndPlay(2);
					}
			}
		//初始数据
        public function initBattleView(param1:Object) : void
        {
//			mc_cardArea.unflatten();
			//loadMapBgImage(ModelLocator.getInstance().dynamicURL+"assets/images/battle/"+"1.jpg");
			
			//trace("战斗记录：" + (Base64.decode( param1.data.battle )));
			//myDebug.Console("战斗记录：" + (Base64.decode( param1.data.battle )));
			_attackModel.setData(param1);
			resultData = param1;
			//trace(com.adobe.serialization.json.JSON.decode(resultStr));
			//trace("比赛结果:::::::：" + com.adobe.serialization.json.JSON.decode(Base64.decode( param1.data.battle ))["result"]);
			resultType = _attackModel.type;
			result = _attackModel.result;
			
			arrowIsAttackOrDefend(_attackModel.rounds[0].side);//初始行动为哪方
            txt_step.text = "0";//回合数
            opponentReadyAreaCards.splice(0);//清空等待区卡
            opponentBattleAreaCards.splice(0);
            opponentArtAreaCards.splice(0);
            selfReadyAreaCards.splice(0);
            selfBattleAreaCards.splice(0);
            selfArtAreaCards.splice(0);
			mc_cardArea.removeChildren();
			
			mc_skillArea.removeChildren();
			
            for (var keyobj:Object in cardMap) {
				cardMap[keyobj].disposeBM();
				cardMap[keyobj].dispose();
				delete cardMap[keyobj];
				}
			for (var keyobjm:Object in cardDataMap) {
				cardDataMap[keyobjm].cardModel = null;
				delete cardDataMap[keyobjm];
				}
			cardDataMap = new Dictionary();
			
            /*while (mc_opponent_img.numChildren > 0)
            {
                mc_opponent_img.removeChildAt(0);//清除头像
            }
            while (mc_self_img.numChildren > 0)
            {
                mc_self_img.removeChildAt(0);
            }*/
            txt_opponent_name.text = String(_attackModel.defender.name);
            txt_self_name.text = String(_attackModel.attacker.name);
            txt_opponent_morale.text = String(_attackModel.defender.faith);//士气值
            txt_self_morale.text =String(_attackModel.attacker.faith);//士气值
            initOppoMorale = _attackModel.defender.faith;//初始士气值
            initSelfMorale = _attackModel.attacker.faith;
			//mc_opponent_morale.stop();
			//mc_self_morale.stop();
            //vip1_mc.visible = true;
            //vip0_mc.visible = true;
			//VIP
            /*if (_attackModel.defender.vip>0)
            {
                vip1_mc.gotoAndStop(2);
            }*/
            /*else if (resultData["dplayer"].is_vip == 1)
            {
                if (vip1_mc.currentFrame != 2)
                {
                    vip1_mc.stop();
                }
            }
            else
            {
                vip1_mc.visible = false;
            }
            if (resultData["fplayer"].is_year_vip == 1)
            {
                vip0_mc.gotoAndStop(2);
            }
            else if (resultData["fplayer"].is_vip == 1)
            {
                if (vip0_mc.currentFrame != 2)
                {
                    vip0_mc.stop();
                }
            }
            else
            {
                vip0_mc.visible = false;
            }*/
			//头像
			/*var icoBox:BaseIcoCellLoader;//头像图标
			icoBox = new BaseIcoCellLoader();
            icoBox.showBg = false;
            icoBox.restrictHW = 61;
			icoBox.ico = _attackModel.defender.head;
			mc_opponent_img.addChild(icoBox);
			
			var selficoBox:BaseIcoCellLoader;//头像图标
			selficoBox = new BaseIcoCellLoader();
            selficoBox.showBg = false;
            selficoBox.restrictHW = 61;
			selficoBox.ico = _attackModel.attacker.head;
			mc_self_img.addChild(selficoBox);*/
            
			
			//敌我两方的发卡区显示一张背景卡
            var card:Card =  CardFactary.creaCard(1, 1, 2, false);
            card.x = opponentSleepAreaPoint.x;
            card.y = opponentSleepAreaPoint.y;//放在发卡区
            mc_cardArea.addChild(card);
           
			card.onlyShowSmallbg()
			card.disposeBM();
			
			
            card =CardFactary.creaCard(1, 1, 2, false);
            card.x = selfSleepAreaPoint.x;
            card.y = selfSleepAreaPoint.y;
			
            mc_cardArea.addChild(card);
           
			card.onlyShowSmallbg()
			card.disposeBM();
			
            btn_start.visible = true;
            //forbidPlayButtons(true);
            //_skipEnableTimer.reset();
//			mc_cardArea.flatten();
//			onStart();
            return;
        }// end function

		/**
		 * 战斗结束后清空一些数据
		 * @param	param1
		 * @param	param2
		 */
		public function disposeData():void {
			opponentReadyAreaCards.splice(0);//清空等待区卡
            opponentBattleAreaCards.splice(0);
            opponentArtAreaCards.splice(0);
            selfReadyAreaCards.splice(0);
            selfBattleAreaCards.splice(0);
            selfArtAreaCards.splice(0);
            if (mc_cardArea.numChildren > 0)
            {
                mc_cardArea.removeChildren();
            }
			if (mc_skillArea.numChildren > 0)
            {
                mc_skillArea.removeChildren();
            }
            if (mc_opponent_img.numChildren > 0)
            {
                mc_opponent_img.removeChildren();
            }
            if (mc_self_img.numChildren > 0)
            {
                mc_self_img.removeChildren();
            }
			 btn_start.visible = true;
            //forbidPlayButtons(true);
			
			}
		 
		/**
		 * 显示访问对方主页的按钮显示隐藏状态
		 * @param	param1对方
		 * @param	param2我方
		 */
        public function showVisiteBtnVisibleStatus(param1:Boolean = true, param2:Boolean = true) : void
        {
            if (_isHideVisiteProfile)
            {
                btn_visite_defend.visible = false;
                btn_visite_attack.visible = false;
            }
            else
            {
                if (param1)
                {
                    btn_visite_defend.visible = true;
                }
                else
                {
                    btn_visite_defend.visible = false;
                }
                if (param2)
                {
                    btn_visite_attack.visible = true;
                }
                else
                {
                    btn_visite_attack.visible = false;
                }
            }
            return;
        }// end function

		/**
		 * 禁止/解禁播放等按钮
		 * @param	param1
		 */
        private function forbidPlayButtons(param1:Boolean = true) : void
        {
            if (param1)
            {
                CustomTool.greyDisplayObject(_playBt, true, true);//是否响应鼠标，是否加灰色滤镜
                CustomTool.greyDisplayObject(_pauseBt, true, true);//是否响应鼠标，是否加灰色滤镜
                CustomTool.greyDisplayObject(btn_speedUp, true, true);
                CustomTool.greyDisplayObject(btn_gearDown, true, true);
                CustomTool.greyDisplayObject(btn_restart, true, true);
                CustomTool.greyDisplayObject(btn_help, true, true);
            }
            else
            {
                CustomTool.greyDisplayObject(_playBt, true, false);
                CustomTool.greyDisplayObject(_pauseBt, true, false);
                CustomTool.greyDisplayObject(btn_speedUp, true, false);
                CustomTool.greyDisplayObject(btn_gearDown, true, false);
                CustomTool.greyDisplayObject(btn_restart, true, false);
                CustomTool.greyDisplayObject(btn_help, true, false);
            }
            //btn_skip.filters = [greyfilter];//跳过先加灰色，五秒后判断是否显示
            return;
        }// end function

		/**
		 * 暂停/播放
		 * @param	event
		 */
		public function onStartAndStop(event:Event) : void
        {
            if (event.target==_playBt)
            {
				changePlayBtnStatus(1);
                _attackPlayer.continuePlay();
            }
            else
            {
				changePlayBtnStatus(2);
                _attackPlayer.stop();
            }
            return;
        }// end function

		/**
		 * 加速
		 * @param	event
		 */
        private function onSpeedUp(event:Event):void
        {
            //SoundManager.getInstance().playButtonClickMusic();
            _attackPlayer.speedUp();
           
        }// end function

		/**
		 * 减速
		 * @param	event
		 */
        private function onGearDown(event:Event):void
        {
            //SoundManager.getInstance().playButtonClickMusic();
            _attackPlayer.gearDown();
            return;
        }// end function

		/**
		 * 重播
		 * @param	event
		 */
        public function onRestart(event:Event) : void
        {
            //SoundManager.getInstance().playButtonClickMusic();
            _attackPlayer.restart();
			changePlayBtnStatus(1);
            if (resultData)
            {
                initBattleView(resultData);
            }
            return;
        }// end function

		/**
		 * 控制播放还是暂停
		 * @param	param1
		 */
		public function changePlayBtnStatus(param1:int) : void
        {
            switch(param1)
            {
                case 1:
                {
					
					_playBt.visible = true;
					_pauseBt.visible = true;
					btn_restart.visible = true;
					btn_help.visible = true;
					btn_skip.visible = true;
                    break;
                }
                case 2:
                {
					
					_playBt.visible = true;
					_pauseBt.visible = false;
					btn_restart.visible = true;
					btn_help.visible = true;
					btn_skip.visible = true;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

		/**
		 * 显示引导
		 * @param	param1
		 */
        public function showGuide(param1:int) : void
        {
           /* var step:int = param1;
            if (mc_guide == null)
            {
                mc_guide = getMovieClip("attack.GuidePanel");
                mc_guide.mouseChildren = false;
                mc_guide.addEventListener(MouseEvent.CLICK, function () : void
            {
                mc_cardArea.mouseEnabled = true;
                mc_cardArea.mouseChildren = true;
                btn_help.mouseEnabled = true;
                mc_guide.visible = false;
                //Tip.show(btn_startAndStop, _("BATTLE_PLAYER_PAUSE"));
                _attackPlayer.continuePlay();
                return;
            }// end function
            );
                addChild(mc_guide);
            }
            mc_cardArea.mouseEnabled = false;
            mc_cardArea.mouseChildren = false;
            btn_help.mouseEnabled = false;
            mc_guide.gotoAndStop(step);
            mc_guide.visible = true;
            setChildIndex(sp_helpView, (numChildren - 1));
            //Tip.show(btn_startAndStop, _("BATTLE_PLAYER_PLAY"));
            _attackPlayer.stop();
            return;*/
        }// end function

		/**
		 * 帮助按钮点击
		 * @param	event
		 */
        protected function onHelp(event:MouseEvent) : void
        {
            sp_helpView.visible = true;
            setChildIndex(sp_helpView, (numChildren - 1));
            _attackPlayer.stop();
			_attackPlayer.checkPopCard();
            
        }// end function

		/**
		 * 帮助界面点击后隐藏
		 * @param	event
		 */
        private function onHelpViewClick(event:MouseEvent) : void
        {
            sp_helpView.visible = false;
            _attackPlayer.continuePlay();
            return;
        }// end function

		/**
		 * 开始战斗
		 * @param	event
		 */
        public function onStart(event:Event=null) : void
        {
			if(cardMap==null) cardMap=new Dictionary();
			for (var keyobj:Object in cardMap) {
				cardMap[keyobj].disposeBM();
				cardMap[keyobj].dispose();
				delete cardMap[keyobj];
				}
			for (var keyobjm:Object in cardDataMap) {
				cardDataMap[keyobjm].cardModel = null;
				delete cardDataMap[keyobjm];
				}
				
			if(_attackPlayer==null){
			_attackPlayer = new AttackPlayer();
//			_attackPlayer.addEventListener(MainScene.TRUNSCENE, showTurScene);
			}
			
            var _loc_3:AttackCardModel = null;
           
            var _loc_5:Card = null;
           
            //getHandler(HANDLER_START_BATTLE)();
            btn_start.visible = false;
            //forbidPlayButtons(false);//都不加灰色，播放控制按钮
            //_skipEnableTimer.start();//开始计时，5秒后判断是否显示跳过按钮
            /*if (txt_speed == "X1")
            {
                CustomTool.greyDisplayObject(btn_gearDown, false, true);
            }
            else if (txt_speed == "X4")
            {
                CustomTool.greyDisplayObject(btn_speedUp, false, true);
            }*/
           
			mc_cardArea.removeChildren();
			//保存原始卡牌数据模型
			var _loc_2:Vector.<AttackCardModel>= _attackModel.defender.cards;
			/*for (var i:String in _attackModel.defender.cards) {
				var tempCard:AttackCardModel = new AttackCardModel();
				tempCard.uniqueId = _attackModel.defender.cards[i].uniqueId;
				tempCard.cardId = _attackModel.defender.cards[i].cardId;
				_loc_2.push(tempCard);
				}*/
//			mc_cardArea.unflatten();
            for each (_loc_3 in _loc_2)
            {
                
                _loc_5 = CardFactary.creaCard(_loc_3.cardId,1,2);
				/*var tempCM:CardModel = new CardModel(_loc_3.cardId);
				_loc_5.currentCardTye = 2;
				_loc_5.setCardModel(tempCM,true);*/
				_loc_5.uniquesId = (_loc_3.uniqueId);
				//_loc_5.onlyShowSmallbg()
                
                cardMap[_loc_3.uniqueId] = _loc_5;//用到的卡用唯一ID为键保存
				
                cardDataMap[_loc_3.uniqueId] = _loc_3;//用到的卡模型用唯一ID为键保存
                _loc_5.x = opponentSleepAreaPoint.x;//发卡区
                _loc_5.y = opponentSleepAreaPoint.y;
                _loc_5.state = 1;//在发卡区状态
                mc_cardArea.addChild(_loc_5);
				_loc_5.visible=false;
				_loc_5 = null;
               
                //_loc_5.hideAll(true);//增加所有的卡到发卡区
            }
			
			_loc_2 = null;
			
			//增加我方卡到发卡区
			 var _loc_4:Vector.<AttackCardModel> =  _attackModel.attacker.cards;
            /*for (var j:String in _attackModel.attacker.cards) {
				var tempCard:AttackCardModel = new AttackCardModel();
				tempCard.uniqueId = _attackModel.attacker.cards[j].uniqueId;
				tempCard.cardId = _attackModel.attacker.cards[j].cardId;
				_loc_4.push(tempCard);
				}*/
            for each (_loc_3 in _loc_4)
            {
                
                _loc_5 = new Card();
				var tempCM:CardModel = new CardModel(_loc_3.cardId);
				_loc_5.currentCardTye = 2;
				_loc_5.setCardModel(tempCM,true);
				_loc_5.uniquesId = (_loc_3.uniqueId);
				
				//_loc_5.onlyShowSmallbg();
                cardMap[_loc_3.uniqueId] = _loc_5;
				
                cardDataMap[_loc_3.uniqueId] = _loc_3;
                _loc_5.x = selfSleepAreaPoint.x;
                _loc_5.y = selfSleepAreaPoint.y;
                _loc_5.state = 1;
                mc_cardArea.addChild(_loc_5);
				_loc_5.visible=false;
               _loc_5 = null;
                //_loc_5.hideAll(true);
            }
			//mc_cardArea.flatten();
			_loc_4 = null;
			_attackPlayer.restart();
			
            _attackPlayer.registerTurns(_attackModel.rounds);//播放器注册战斗数据
            _attackPlayer.play();//开始播放
			
			changePlayBtnStatus(1);

            return;
        }// end function

		private function showTurScene(e:Event, sceneClass:String):void 
		{
			trace("sceneClass: " + sceneClass);
			//var temp:Class = getDefinitionByName(sceneClass) as Class;
			dispatchEventWith(MainScene.TRUNSCENE, true, ApplictionConfig.MAIN_SCENE);
		}
		
		//战斗结束
		public function battleOver() : void
        {
            _attackPlayer._playTimer.stop();//停止战斗播放器
			_attackPlayer.battleOverClear();
            //stage.frameRate = 30;
            //sharedObject.data.playSpeed = txt_speed;
            //sharedObject.flush();
            getHandler(HANDLER_BATTLE_OVER)();
			this.hide();
            return;
        }// end function

        public function get isHideVisiteProfile() : Boolean
        {
            return _isHideVisiteProfile;
        }// end function

        public function set isHideVisiteProfile(param1:Boolean) : void
        {
            _isHideVisiteProfile = param1;
            return;
        }// end function
		//--------------------------------------------------------
		public static function getInstance() :AttackPanel
        {
            if (_instance == null)
            {
                _instance = new AttackPanel();
            }
            return _instance;
        }// end function
	}

}