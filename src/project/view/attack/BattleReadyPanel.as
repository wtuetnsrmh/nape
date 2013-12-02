package project.view.attack
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.system.System;
	import flash.ui.Mouse;
	import flash.utils.Dictionary;
	import project.config.ApplicationConfig;
	import project.config.ErrorZhCn;
	import project.config.LocalConfig;
	import project.controller.ApplicationController;
	import project.controller.AttackController;
	import project.controller.NewBieControler;
	import project.controller.SMZTController;
	import project.core.SMZTDomainManager;
	import project.events.SMZTDataChangeEvent;
	import project.model.data.PlayerData;
	import project.model.newBie.NewBieModelId;
	import project.utils.CustomTool;
	import project.utils.Reflection;
	import project.view.artplug.MovieClipButton;
	import project.view.base.BaseTitleWindow;
	import project.view.layout.BaseGridContainer;
	import project.view.module.alert.AlertConfirmPane;
	import project.view.module.alert.AlertMasterPane;
	import project.view.module.cell.Card;
	import project.view.module.DeckPane.AddDeckCell;
	import project.view.module.helppane.NewbiePane;
	import project.view.ui.MyScrollBar;
	import com.greensock.easing.*;
	import com.greensock.*;
	
	/**
	 * 出战设置界面
	 * @author bbjxl 2012
	 */
	public class BattleReadyPanel extends BaseTitleWindow
	{
		//----------------------容器---------------------------------
		
		//-----------------------UI---------------------------------
		private var _settledBt:MovieClipButton; //入驻按钮
		private var _cancelBt:MovieClipButton; //撤销按钮
		private var _attackBt:MovieClipButton; //出击按钮
		private var _armsContent:MovieClip; //兵卡容器
		
		/*
		   "人族" id="3"
		   "希腊神族" id="4"
		   "北欧神族" id="5"
		   "异界神族" id="6"
		
		 */
		private var _v1_0:RaceIcoBar;
		private var _v1_1:RaceIcoBar;
		private var _v2_0:RaceIcoBar;
		private var _v2_1:RaceIcoBar;
		private var _v3_0:RaceIcoBar;
		private var _v3_1:RaceIcoBar;
		private var _v4_0:RaceIcoBar;
		private var _v4_1:RaceIcoBar;
		
		private var _gridContainer:BaseGridContainer; //卡组英雄卡
		private var _armsCotainer:BaseGridContainer; //兵的容器
		private var _heroGrid:Sprite; //卡组英雄卡容器
		private var _scroll:MyScrollBar; //滚动条类
		//-----------------------数据---------------------------------
		private var _battleType:int = 0; //战斗的类型 -根据战斗类型判断是PVP，还是PVE
		private var _battleModel:int = 0; //战斗模式 1:1v1， 2:2v2， 3:3v3， 4:4v4
		private var _totalDeckHeroCardArr:Array; //所有的卡组英雄
		private var _crrentSelectedDeck:AddDeckCell; //当前选中的卡组
		private var _sixArms:Vector.<Card>; //六个兵
		private var _currentCreaDeckId:int = 0; //当前要创建的卡组ID
		private static const MAX_DECK:int = 20; //总共20个槽
		
		public static const CHALLENGE_FRIENDS_TYPE = 1; // 挑战好友 PVP
		public static const ENSLAVE_FRIENDS_TYPE = 2; // 奴役好友 PVP
		public static const SAVE_FRIENDS_TYPE = 3; // 解救好友 PVP
		public static const ARENA_TYPE = 4; //竞技场 PVP
		public static const TRAINING_TYPE = 5; //战争学院 PVe
		public static const TOWER_TYPE = 6; //宿命之塔 PVP
		
		private var _currentSelectedHero:RaceIcoBar; //当前选中的已入驻种族图标槽
		private var _totalBar:Array; //所有可放入图标的槽
		private var _limit:Boolean = true;//是否限制出战的卡组数
		
		private var playerData:PlayerData;
		//-----------------------事件--------------------------------
		
		private static var _instance:BattleReadyPanel = null;
		
		public function BattleReadyPanel()
		{
			if (_instance != null)
			{
				throw(new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE));
			}
			setSpriteInstance("battleReadyPanel");
			configerUIInstance();
			this.playerData = PlayerData.getInstance();
			this.playerData.addEventListener(SMZTDataChangeEvent.ON_DATA_REFRESH, this.onPlayerDataRefresh);//用户个人数据刷新之后触发
			//System.gc();
		}
		
		//--------------------------------------------------------
		/**
		 * 数据更新
		 * @param	e
		 */
		private function onPlayerDataRefresh(e:SMZTDataChangeEvent):void {
			if (e.dataType == "CreaCardGroupPanel") {
				updataUI();
				}
			
			}
		/**
		 * 入驻
		 */
		private function settledClickHandler(e:MouseEvent):void
		{
			_settledBt.clickEnable = false; //入驻按钮不可点
			var tempArr:Array = returnBarArrByBattleModel();
			if (judgestSetteled(tempArr))
			{
				//已经入驻
				return;
			}
			for (var i:String in tempArr)
			{
				if (tempArr[i].deckId == -1)
				{
					//如果有槽则放入种族图标
					(tempArr[i] as RaceIcoBar).setIco(returnCurrentDeckHeroRaceFrame());
					tempArr[i].buttonMode = true;
					tempArr[i].addEventListener(MouseEvent.CLICK, raceIcoClickHandler);
					tempArr[i].deckId = _crrentSelectedDeck.deckId;
					
					//图标选中,撤销可点
					_currentSelectedHero = tempArr[i];
					_currentSelectedHero.selected(true);
					_cancelBt.clickEnable = true;
					
					setBattleBtClickEnable();
					return;
				}
			}
		}
		
		/**
		 * 判断出击是否可点
		 * @param	tempArr
		 * @return
		 */
		private function setBattleBtClickEnable():void
		{
			
			var tempLen:int = 0;
			var tempArr:Array = returnBarArrByBattleModel();
			for (var i:String in tempArr)
			{
				if (tempArr[i].deckId != -1)
				{
					tempLen++;
				}
			}
			if (tempLen >= tempArr.length)
			{
				//全满出击按钮可点
				_attackBt.clickEnable = true;
				
				//------------------新手引导用---(获取战斗记录就表示这个子阶段完成)-----------------------------------
				if (!NewBieControler.getInstance().finishDic[NewBieModelId.FISET]) {
					NewBieControler.getInstance().nextStep();
					}
				
				//---------------------end-----------------------------------
			}
			else
			{
				_attackBt.clickEnable = false;
			}
			if (!_limit && tempLen>0) {
				//没有限制出战个数
				_attackBt.clickEnable = true;
				
				}
			tempArr = null;
		}
		
		/**
		 * 判断要入驻的卡组是否已经入驻,当前是否还有空的槽可以入驻
		 * @param	e
		 */
		private function judgestSetteled(tempArr:Array):Boolean
		{
			if (_crrentSelectedDeck == null)
				return true;
			
			var setteled:Boolean = false;
			var tempLen:int = 0;
			for (var i:String in tempArr)
			{
				if (tempArr[i].deckId == _crrentSelectedDeck.deckId)
				{
					setteled = true;
					return setteled;
				}
				if (tempArr[i].deckId != -1)
				{
					tempLen++;
				}
			}
			if (tempLen >= tempArr.length)
			{
				//全满
				return true;
			}
			return setteled;
		}
		
		/**
		 * 如果当前选中的卡组已经入驻则已入驻图标为选中状态
		 */
		private function setSettledStateBySelectedDeck():void
		{
			var tempArr:Array = returnBarArrByBattleModel();
			for (var i:String in tempArr)
			{
				if (tempArr[i].deckId == _crrentSelectedDeck.deckId)
				{
					_currentSelectedHero = tempArr[i];
					for (var j:String in _totalBar)
					{
						_totalBar[j].selected(false);
					}
					_cancelBt.clickEnable = true;
					_currentSelectedHero.selected(true);
					return;
				}
			}
			for (var n:String in tempArr)
			{
				tempArr[n].selected(false);
			}
			_currentSelectedHero = null;
			_cancelBt.clickEnable = false;
			
			tempArr = null;
		}
		
		/**
		 * 判断入驻按钮当前是否可点击
		 * @param	e
		 */
		private function settledBtClickEnable():void
		{
			var tempArr:Array = returnBarArrByBattleModel();
			if (judgestSetteled(tempArr))
			{
				_settledBt.clickEnable = false; //已入驻
			}
			else
			{
				_settledBt.clickEnable = true; //入驻可以点击
			}
			if (_crrentSelectedDeck.card==null) {
				_settledBt.clickEnable = false; //已入驻
				}
			tempArr = null;
		}
		
		private function raceIcoClickHandler(e:MouseEvent):void
		{
			if ((e.currentTarget as RaceIcoBar).deckId == -1)
			{
				//如果方框没有图标不能显示选中状态
				return;
			}
			for (var i:String in _totalBar)
			{
				_totalBar[i].selected(false);
			}
			_currentSelectedHero = e.currentTarget as RaceIcoBar;
			trace(_currentSelectedHero.deckId);
			setLocationByDeckId(_currentSelectedHero.deckId);
			_cancelBt.clickEnable = true;
			_currentSelectedHero.selected(true);
		}
		
		/**
		 * 根据卡组ID定位到相应的卡组
		 * @param 卡组ID
		 */
		private function setLocationByDeckId(param:int):void
		{
			for (var i:String in _totalDeckHeroCardArr)
			{
				if (_totalDeckHeroCardArr[i].deckId == param)
				{
					_crrentSelectedDeck = _totalDeckHeroCardArr[i];
					selectedDeck(null);
					_scroll.setLocationByRate(returnScorlLoc(Math.floor((_crrentSelectedDeck.deckId - 1) / 4)));
					return;
				}
			}
		}
		
		//根据行返回定位的比例
		private function returnScorlLoc(row:int = 0):Number
		{
			var loc:Array = [0, 0.2, 0.5, 0.8, 1.05];
			return loc[row];
		}
		
		/**
		 * 返回当前选择的卡组英雄种族对应的帧数
		 * @return
		 */
		private function returnCurrentDeckHeroRaceFrame():uint
		{
			return _crrentSelectedDeck.card.getCardModel().race;
		}
		
		/**
		 * 根据战斗模式返回相应的方框数组
		 * @param	e
		 */
		private function returnBarArrByBattleModel():Array
		{
			var tempArr:Array = new Array();
			switch (_battleModel)
			{
				case 1: 
					tempArr.push(_v2_0);
					break;
				case 2: 
					tempArr.push(_v1_0);
					tempArr.push(_v2_0);
					break;
				case 3: 
					tempArr.push(_v3_0);
					tempArr.push(_v1_0);
					tempArr.push(_v2_0);
					
					break;
				case 4: 
					tempArr.push(_v3_0);
					tempArr.push(_v1_0);
					tempArr.push(_v2_0);
					tempArr.push(_v4_0);
					break;
			}
			return tempArr;
		}
		
		/**
		 * 取消
		 */
		private function cancelClickHandler(e:MouseEvent):void
		{
			if (_currentSelectedHero == null)
				return;
			_currentSelectedHero.deckId = -1;
			_currentSelectedHero.selected(false);
			if (_currentSelectedHero.hasEventListener(MouseEvent.CLICK))
			{
				_currentSelectedHero.removeEventListener(MouseEvent.CLICK, selectedDeck);
			}
			
			_currentSelectedHero.buttonMode = false;
			_currentSelectedHero.removeEventListener(MouseEvent.CLICK, raceIcoClickHandler);
			
			_currentSelectedHero = null;
			_cancelBt.clickEnable = false;
			
			settledBtClickEnable();
			setBattleBtClickEnable();
		
		}
		
		/**
		 * 攻击
		 */
		private function attackClickHandler(e:MouseEvent):void
		{
			var tempArr:Array = returnBarArrByBattleModel();
			var attackDeck:Array = new Array();
			for (var i:String in tempArr)
			{
				if(tempArr[i].deckId!=-1){
					attackDeck.push(tempArr[i].deckId);
					}
			}
			
			AttackController.getInstance().onAttack(attackDeck);
		}
		
		//--------------------------------------------------------
		override public function show(param1:Boolean = false):void
		{
			if (isOpened)
			{
			}
			else if (rootContainer)
			{
				if (param1)
				{
					drawModalRect();
				}
				rootContainer.addChild(this);
				this.x = (ApplicationConfig.STAGE_WIDTH - 748) / 2;
				this.y = (ApplicationConfig.STAGE_HEIGHT - 630.1) / 2 - 40;
				if (showEffect)
				{
					this.alpha = 0.5;
					TweenLite.to(this, 0.3, {alpha:1, y: this.y + 40});
				}
				this.isOpened = true;
				this.isPopUP = true;
				this.addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
				if(_scroll) {
				_scroll.setLocationByRate();
				}
				
				//如果有关闭按钮添加ＥＳＣ键关闭功能
				if (closeButton) {
					ApplicationController.pushWin(this);
					}
			}
			this.playShowSound();
			return;
		} // end function
		
		//--------------------------------------------------------
		private function configerUIInstance():void
		{
			//raceIcoContent = new Sprite();
			//addChild(raceIcoContent);
			
			_armsContent = getChild("armsContent") as MovieClip;
			
			_settledBt = getChild("settledBt") as MovieClipButton;
			//_settledBt.clickEnable = false;//默认先不可点
			_settledBt.onClick = settledClickHandler;
			_cancelBt = getChild("cancelBt") as MovieClipButton;
			_cancelBt.onClick = cancelClickHandler;
			_cancelBt.clickEnable = false; //默认先不可点
			_attackBt = getChild("attackBt") as MovieClipButton;
			_attackBt.clickEnable = false; //默认先不可点
			_attackBt.onClick = attackClickHandler;
			_v1_0 = getChild("v1_0") as RaceIcoBar;
			_v1_1 = getChild("v1_1") as RaceIcoBar;
			_v2_0 = getChild("v2_0") as RaceIcoBar;
			_v2_1 = getChild("v2_1") as RaceIcoBar;
			_v3_0 = getChild("v3_0") as RaceIcoBar;
			_v3_1 = getChild("v3_1") as RaceIcoBar;
			_v4_0 = getChild("v4_0") as RaceIcoBar;
			_v4_1 = getChild("v4_1") as RaceIcoBar;
			_totalBar = new Array();
			_totalBar.push(_v1_0);
			_totalBar.push(_v2_0);
			_totalBar.push(_v3_0);
			_totalBar.push(_v4_0);
			
			_crrentSelectedDeck = new AddDeckCell();
			_sixArms = new Vector.<Card>();
			_totalDeckHeroCardArr = new Array();
			//增加卡组英雄卡区
			var temprow:int = 5;
			
			this._gridContainer = new BaseGridContainer(temprow, 4, 2, 110, 154);
			this._gridContainer.setLocation(232, 51);
			_heroGrid = new Sprite();
			addChild(_heroGrid);
			_heroGrid.addChild(this._gridContainer);
			
			//兵
			_armsCotainer = new BaseGridContainer(1, 6, 15.5, ApplicationConfig.CARD_WIDTH / 2, ApplicationConfig.CARD_HEIGHT / 2);
			_armsCotainer.setLocation(48.8, 450)
			_armsContent.addChild(_armsCotainer);
			for (var i:uint = 0; i < 6; i++)
			{
				var tempArm:Card = new Card();
				tempArm.showTip = true;
				tempArm._currentCardTye = 1;
				tempArm.hideAll();
				tempArm.showMask();
				
				tempArm.addEventListener(MouseEvent.ROLL_OVER, rollOverHandler);
				tempArm.addEventListener(MouseEvent.ROLL_OUT, rollOutHandler);
				_armsCotainer.appendChild(tempArm);
				_sixArms.push(tempArm);
			}
		}
		
		//--------------------------------------------------------
		
		private function rollOverHandler(e:MouseEvent):void
		{
			(e.currentTarget as Card).selected = true;
		}
		
		private function rollOutHandler(e:MouseEvent):void
		{
			(e.currentTarget as Card).selected = false;
		}
		
		//--------------------------------------------------------
		/**
		 * 根据战斗模式更新界面 几Ｖ几
		 * 根据战斗类型判断是PVP，还是PVE
		 * @param	bm 战斗模式
		 * @param	bt 战斗类型
		 * @param	limit 是否限制出战的个数
		 */
		public function initUIByBattleModel(bm:int, bt:int,limit:Boolean=true,icos:Array=null):void
		{
			_limit = limit;
			if (limit) {
				//如果限制出战个数，则判断卡组是否足够
				if (playerData.validDecksNum < bm) {
					AlertMasterPane.getInstance().showMessage(String(LocalConfig.LOCAL_LAN.BattleReadyPanel.Tip.@Text).replace("{deckNum}",bm.toString()), function ():void {
						hide();
						});
					}
				}
			
			for (var i:String in _totalBar)
			{
				_totalBar[i].deckId = -1;
				_totalBar[i].selected(false);
				_totalBar[i].buttonMode = false;
				if (_totalBar[i].hasEventListener(MouseEvent.CLICK))
				{
					_totalBar[i].removeEventListener(MouseEvent.CLICK, selectedDeck);
				}
			}
			_currentSelectedHero = null;
			_currentCreaDeckId = 0;
			_cancelBt.clickEnable = false;
			_attackBt.clickEnable = false;
			
			_battleModel = bm;
			_battleType = bt;
			resetTotalBar();
			switch (bm)
			{
				case 1: 
					_v2_0.visible = true;
					_v2_1.visible = true;
					break;
				case 2: 
					_v1_0.visible = true;
					_v1_1.visible = true;
					_v2_0.visible = true;
					_v2_1.visible = true;
					break;
				case 3: 
					_v1_0.visible = true;
					_v1_1.visible = true;
					_v2_0.visible = true;
					_v2_1.visible = true;
					_v3_0.visible = true;
					_v3_1.visible = true;
					break;
				case 4: 
					_v1_0.visible = true;
					_v1_1.visible = true;
					_v2_0.visible = true;
					_v2_1.visible = true;
					_v3_0.visible = true;
					_v3_1.visible = true;
					_v4_0.visible = true;
					_v4_1.visible = true;
					break;
				default: 
					trace("没有这个战斗模式！");
					break;
			}
			switch (bt)
			{
				case TOWER_TYPE: 
					pvpORpve();
					break;
				case TRAINING_TYPE: 
					pvpORpve("pve",icos);
					break;
				case CHALLENGE_FRIENDS_TYPE: 
					pvpORpve();
					break;
				case ENSLAVE_FRIENDS_TYPE: 
					pvpORpve();
					break;
				case SAVE_FRIENDS_TYPE: 
					pvpORpve();
					break;
				case ARENA_TYPE: 
					pvpORpve();
					break;
				default: 
					trace("没有这个战斗类型！");
					break;
			}
			//CustomTool.delayRun(.2, updataUI);//延迟0.2秒刷新界面
			//updataUI();
			settledBtClickEnable();
		}
		
		/**
		 * pvp or pve
		 */
		private function pvpORpve(t:String = "pvp",icos:Array=null):void
		{
			if (t == "pvp")
			{
				for (var i:int = 1; i < 5; i++)
				{
					(this["_v" + i + "_1"] as RaceIcoBar).showPVP();
				}
			}
			else
			{
				for (var j:int = 1; j < 5; j++)
				{
					(this["_v" + j + "_1"] as RaceIcoBar).onlyShowBarBg();
					
				}
			}
			//如果有要显示的种族图标
			if (icos == null) return;
			for (var m:int = 1; m < 5; m++) {
				if ((this["_v" + m + "_1"] as RaceIcoBar).visible) {
					if (icos.length > 0) {
						(this["_v" + m + "_1"] as RaceIcoBar).setIco(icos.shift());
						}else {
							return;
							}
					}
				}
		}
		
		/**
		 * 八个框都为第二帧－空底
		 */
		private function resetTotalBar():void
		{
			for (var i:int = 1; i < 5; i++)
			{
				(this["_v" + i + "_0"] as RaceIcoBar).onlyShowBarBg();
				(this["_v" + i + "_1"] as RaceIcoBar).onlyShowBarBg();
				(this["_v" + i + "_0"] as RaceIcoBar).visible = false;
				(this["_v" + i + "_1"] as RaceIcoBar).visible = false;
			}
		}
		
		//--------------------------------------------------------
		//刷新UI
		private function updataUI(e:*=null):void
		{
			var playerData:PlayerData = PlayerData.getInstance();
			//清空之前的
			_gridContainer.removeAll();
			if (_totalDeckHeroCardArr.length > 0)
			{
				for (var j:String in _totalDeckHeroCardArr)
				{
					(_totalDeckHeroCardArr[j] as AddDeckCell).card.disposeBM();
					(_totalDeckHeroCardArr[j] as AddDeckCell).card.dispose();
					if ((_totalDeckHeroCardArr[j] as AddDeckCell).hasEventListener(MouseEvent.CLICK))
					{
						(_totalDeckHeroCardArr[j] as AddDeckCell).removeEventListener(MouseEvent.CLICK, selectedDeck);
					}
				}
			}
			_totalDeckHeroCardArr = new Array();
			
			for (var i:uint = 0; i < MAX_DECK; i++)
			{
				var tempCell:AddDeckCell = new AddDeckCell();
				tempCell.deckId = playerData.decks[i].id;
				tempCell.cards = playerData.decks[i].cards;
				tempCell.locked = 0; //不显示加锁图标
				if (tempCell.cards)
				{
					tempCell.addCard();
					_totalDeckHeroCardArr.push(tempCell);
					tempCell.buttonMode = true;
					tempCell.addEventListener(MouseEvent.CLICK, selectedDeck);
					tempCell.addEventListener(MouseEvent.DOUBLE_CLICK, doubleClickDeck);
				}
				_gridContainer.appendChild(tempCell);
				tempCell = null;
			}
			
			//增加滚动条控制
			if (!_scroll)
			{
				var offerX:Number = 0;
				if (_gridContainer.width > 447)
				{
					//表示最右边有卡，（）大卡的宽度算上了）
					offerX = -68;
				}
				else
				{
					offerX = 5;
				}
				_scroll = new MyScrollBar(_gridContainer, "R", offerX, -27, "L", 1, 15, true, true, _gridContainer.width, 310, 176, Reflection.getClass("ScroStrye", SMZTDomainManager.getInstance().currentUIAppDomain));
				_scroll.x = 0;
				_scroll.y = 46;
				addChild(_scroll)
			}
			
			//如果有卡组，默认选择第一个卡组
			if (_totalDeckHeroCardArr.length > 0)
			{
				_crrentSelectedDeck = _totalDeckHeroCardArr[0];
				selectedDeck(null);
				_armsCotainer.visible = true;
			}
			else
			{
				currentCreaDeckId = 0;
				_armsCotainer.visible = false; //隐藏下面的六张图
			}
		}
		
		//--------------------------------------------------------
		/**
		 * 双击卡组入驻
		 * @param	e
		 */
		private function doubleClickDeck(e:MouseEvent):void
		{
			_crrentSelectedDeck = e.currentTarget as AddDeckCell;
			settledClickHandler(null);
		}
		
		//选择卡组时，对应的显示他们所带的兵
		private function selectedDeck(e:MouseEvent):void
		{
			resetHeroCardSelectState();
			if (e)
			{
				if (_crrentSelectedDeck)
				{
					if (_crrentSelectedDeck != (e.currentTarget as AddDeckCell))
					{
						//当前点击不是之前的英雄
						_crrentSelectedDeck = (e.currentTarget as AddDeckCell);
						//判断要入驻的卡组是否已经入驻
						settledBtClickEnable();
						setSettledStateBySelectedDeck();
					}
				}
			}
			
			_crrentSelectedDeck.card.selected = true;
			for (var i:String in _crrentSelectedDeck.arms)
			{
				
				_sixArms[i].setCardModel(_crrentSelectedDeck.arms[i]);
			}
			
			_currentCreaDeckId = _crrentSelectedDeck.deckId;
		}
		
		//所有英雄卡未选中状态
		private function resetHeroCardSelectState():void
		{
			for (var i:String in _totalDeckHeroCardArr)
			{
				_totalDeckHeroCardArr[i].card.selected = false;
			}
		}
		
		//--------------------------------------------------------
		public function get battleType():int
		{
			return _battleType;
		} // end function
		
		public function set battleType(param1:int):void
		{
			_battleType = param1;
			return;
		} // end function
		
		public function get currentCreaDeckId():int
		{
			return _currentCreaDeckId;
		} // end function
		
		public function set currentCreaDeckId(param1:int):void
		{
			_currentCreaDeckId = param1;
			return;
		} // end function
		
		public function get battleModel():int
		{
			return _battleModel;
		} // end function
		
		public function set battleModel(param1:int):void
		{
			_battleModel = param1;
			return;
		} // end function
		
		//--------------------------------------------------------
		public static function getInstance():BattleReadyPanel
		{
			if (_instance == null)
			{
				_instance = new BattleReadyPanel;
			}
			return _instance;
		} // end function
	}

}