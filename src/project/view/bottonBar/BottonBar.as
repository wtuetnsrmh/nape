package project.view.bottonBar 
{
	import khaos.view.ViewType;
	
	import project.Cellcard.Card;
	import project.controller.AttackController;
	import project.model.item.CardModel;
	import project.view.attack.skillTest;
	import project.view.common.LogicView;
	import project.view.scene.EditDeckPanel;
	import project.view.scene.battleScene.BattleReadyPanel;
	import project.view.scene.editDeckPanel.CreaDeckPanel;
	import project.view.scene.mainScene.MainScene;
	import project.view.scene.soldierLib.SoldierLibScene;
	import project.view.skill.SkillBase;
	
	import starling.animation.Tween;
	import starling.core.Starling;
	import starling.display.Button;
	import starling.display.DisplayObject;
	import starling.display.DisplayObjectContainer;
	import starling.display.Image;
	import starling.display.MovieClip;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.utils.VAlign;

	/**
	 * 下面一排导航菜单栏
	 * @author bbjxl
	 */
	public class BottonBar extends LogicView 
	{
//		private var _bg:Image;
		
		private var _returnMainScene:Button;
		private var _achvimentBt:Button;
		private var _edick:Button;
		private var _soldierLib:Button;
		public static var _sceneList:Vector.<Class>=new Vector.<Class>();
		private static var _instance:BottonBar;
		protected var _rootContainer:DisplayObjectContainer;//显示的父层
		private var _currentSceneClass:Class;
		public function BottonBar() 
		{
			super(ViewType.CHAT);
			_returnMainScene = new Button(ApplictionConfig.assets.getTexture(ApplictionConfig.add0000("buttonBg")),"返回主场景");
			_returnMainScene.fontColor=0xffffff;
			addChild(_returnMainScene);
			_returnMainScene.x = 10;
			_returnMainScene.y =ApplictionConfig.STAGE_HEIGHT-_returnMainScene.height- 10;
			_returnMainScene.addEventListener(Event.TRIGGERED, triggeredHandler);
			
			_achvimentBt = new Button(ApplictionConfig.assets.getTexture(ApplictionConfig.add0000("buttonBg")),"战斗");
			_achvimentBt.fontColor=0xffffff;
			addChild(_achvimentBt);
			_achvimentBt.x = _returnMainScene.x+_returnMainScene.width + 10;
			_achvimentBt.y = _returnMainScene.y;
			_achvimentBt.addEventListener(Event.TRIGGERED, triggeredHandler);
			
			_edick = new Button(ApplictionConfig.assets.getTexture(ApplictionConfig.add0000("buttonBg")),"编辑卡组");
			_edick.fontColor=0xffffff;
			addChild(_edick);
			_edick.x = _achvimentBt.x+_achvimentBt.width + 10;
			_edick.y = _achvimentBt.y;
			_edick.addEventListener(Event.TRIGGERED, triggeredHandler);
			
			_soldierLib = new Button(ApplictionConfig.assets.getTexture(ApplictionConfig.add0000("buttonBg")),"佣兵团");
			_soldierLib.fontColor=0xffffff;
			addChild(_soldierLib);
			_soldierLib.x = _edick.x+_edick.width + 10;
			_soldierLib.y = _edick.y;
			_soldierLib.addEventListener(Event.TRIGGERED, triggeredHandler);
			
			if(!_currentSceneClass)_currentSceneClass=MainScene;
			}
			
		/*public function show() : void
		{
			if (rootContainer)
			{
				rootContainer.addChild(this);
				
			}
			return;
		}*/// end function
		
		/* public function hide(event:Event = null) : void
		{
			if (rootContainer)
			{
				removeFromParent();
				
			}
			return;
		}*/// end function
		
		override protected function internalHide():void
		{
		}
		
		override protected function internalShow():void
		{
		}
		 
		 public function showScene(screen:Class):void
		 {
			 
			 if(_currentSceneClass==screen)return;
			 
			 switch(screen) {
				 case EditDeckPanel:
					 //有返回按钮时加入队列
					 _sceneList.push(_currentSceneClass);
					 trace("_sceneList="+_sceneList.length);
					 Root.vmgr.showView(EditDeckPanel,null);
					 Root.vmgr.getView(BottonBar).hide();
					 Starling.current.nativeStage.frameRate=60;
					 break;
				 case MainScene:
					 Root.vmgr.getView(BottonBar).show();
					 Root.vmgr.showView(MainScene,null,["senceLib"]);
					 Starling.current.nativeStage.frameRate=60;
					 break;
				 case BattleReadyPanel:
					 Root.vmgr.showView(BattleReadyPanel,null,["battleLib"]);
					 break;
				 case SoldierLibScene:
					 Starling.current.nativeStage.frameRate=60;
					 Root.vmgr.getView(BottonBar).hide();
					 _sceneList.push(_currentSceneClass);
					 Root.vmgr.showView(SoldierLibScene);
					 
					 break;
				 default:
					 trace("没有这个场景名")
					 break;
			 }
			 _currentSceneClass=screen;
			 
			
		 }
		 
			private function triggeredHandler(e:Event):void 
			{
				
				switch(e.currentTarget) {
					case _soldierLib:
						showScene(SoldierLibScene);
//						dispatchEventWith(MainScene.TRUNSCENE, true, "editDeck");
						break;
					case _edick:
						showScene(EditDeckPanel);
//						dispatchEventWith(MainScene.TRUNSCENE, true, "editDeck");
						break;
					case _returnMainScene:
						showScene(MainScene);
//						dispatchEventWith(MainScene.TRUNSCENE, true, "MainScene");
						break;
					case _achvimentBt:
						showScene(BattleReadyPanel);
						//--------------------------------------------------------
							/*var a:MovieClip = ApplictionConfig.creaMC("attackUI", "装备装饰框");
							a.x = a.y = 200;
							(Main.mStarling.root as Root).topLayer.addChild(a);
							
							var timeline:TimelineLite=new TimelineLite()
							timeline.append( new TweenLite(a, 1, {y:"-30"}));
							timeline.append( new TweenLite(a, 1, {y:"30",delay:1, onComplete:function () : void
								{
									trace("com")
								 }}));*/
							
							/*var tempArr:Array = new Array();
							var temp:Object = new Object();
							temp.property = "y";
							temp.value = 170;
							tempArr.push(temp);
							var temp1:Object = new Object();
							temp1.property = "y";
							temp1.delay = 1;
							temp1.value = 230;
							tempArr.push(temp1);
							temp1 = null;
							animateMul(tempArr,a);*/
							
							//--------------------------------------------------------
						
							//所需的技能素材加载完
//							dispatchEventWith(MainScene.TRUNSCENE, true, "battleReady");
							
							
						/*var a:SkillBase= skillTest.getInstance().skillFactery(2);
							addChild(a);
							a.x=a.y=200;*/	
						/*for (var i:int = 0; i < 2; i++)
							{
								for (var j:int = 0; j < 4; j++)
								{
									var temp:Card = new Card();// (ApplictionConfig.CARD_WIDTH >> 1, ApplictionConfig.CARD_HEIGHT >> 1);
									temp.x = 100+j * (ApplictionConfig.CARD_WIDTH) + j * 2;
									temp.y = 100+i * (ApplictionConfig.CARD_HEIGHT) + i * 2;
									
									
									temp.currentCardTye=0;
									temp.setCardModel(new CardModel(1), true, setFlatten);
									(Main.mStarling.root as Root).topLayer.addChild(temp);
									temp = null;
								}
							}*/
							
						break;
					}
				
			}
			/*private var _num:int = 0;
			private function setFlatten():void 
			{
				
				_num++;
				trace(_num)
				if (_num == 8) {
					(Main.mStarling.root as Root).topLayer.flatten();
					}
				
			}
			
			private function animateMul(value:Array,target:DisplayObject):void {
				
				var tween:Tween = new Tween(target, 1);
				var temp:Object = value.shift();
					tween.animate(temp.property, temp.value);
					Starling.juggler.add(tween);
					if(temp.delay){
					tween.delay = temp.delay;
					}
					tween.onComplete=function () : void
						{
							trace(value.length)
							if (value.length == 0) return;
							animateMul(value,target);
						 }
				}
		*/
			
			/*public static function getInstance():BottonBar
			{
			if (_instance == null)
			{
			_instance = new BottonBar;
			}
			return _instance;
			} */// end function
	}

}