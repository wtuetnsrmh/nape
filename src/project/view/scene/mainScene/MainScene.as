package project.view.scene.mainScene
{
	import flash.display.SpreadMethod;
	import flash.filesystem.File;
	
	import khaos.interfaces.IamView;
	import khaos.view.ViewType;
	
	import project.Cellcard.Card;
	import project.model.item.CardModel;
	import project.utils.CardFactary;
	import project.view.bottonBar.BottonBar;
	import project.view.common.LogicView;
	import project.view.scene.BaseScene;
	import project.view.scene.CardMap;
	import project.view.scene.IScene;
	
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	
	/**
	 * 主场景
	 * @author bbjxl
	 */
	public class MainScene extends LogicView implements IScene
	{
		public static const TRUNSCENE:String = "TrunScene";
		public static const CARD_MAP:String = "view.scene.CardMap";
		private var _mainSceneUI:Image;
		private var _stauteBt:Button; //女神像
		private var _arenaBt:Button; //
		private var _trainingBt:Button; //
		private var _tavernBt:Button; //酒馆
		private var _towerBt:Button; //塔
		private var _assetsUrl:File;
		
//		private static var _mainScene:MainScene;
		
		/**
		 * 传入上一场景名称，用于返回按钮时指向
		 * @param	value
		 */
		public function MainScene()
		{
			super(ViewType.MULTI_DIALOG);
			
			SceneName = MainScene;
		
		/*_assetsUrl=ApplictionConfig.appDir.resolvePath("senceLib");
		
		   ApplictionConfig.assets.enqueue(_assetsUrl);
		   ApplictionConfig.assets.loadQueue(function onProgress(ratio:Number):void
		   {
		   //progressBar.ratio = ratio;
		
		   if (ratio == 1)
		   {
		   init();
		   }
		   });
		 */
		
		}
		private var a:Card;
		private var b:Card;
		
		override public function initUI():void
		{
			cardTexturUI();
			/*b = new Card();
			   b.setCardModel(new CardModel(1));
			   addChild(b);
			 b.x=200;*/
			
			var _returnMainScene:Button = new Button(ApplictionConfig.assets.getTexture(ApplictionConfig.add0000("buttonBg")), "返回主场景");
			_returnMainScene.fontColor = 0xffffff;
			addChild(_returnMainScene);
			_returnMainScene.x = 10;
			_returnMainScene.y = 400;
			_returnMainScene.addEventListener(Event.TRIGGERED, triggeredHandler);
		/*a = new Card();
		   a.setCardModel(new CardModel(1));
		   addChild(a);
		   b = new Card();
		   b.setCardModel(new CardModel(1));
		   b.x = 200;
		   addChild(b);
		   _stauteBt = new Button(ApplictionConfig.assets.getTexture(ApplictionConfig.add0000("buttonBg")));
		   addChild(_stauteBt);
		   _stauteBt.x = 200;
		   _stauteBt.y = 100;
		 _stauteBt.addEventListener(Event.TRIGGERED, clickHandler);*/
		}
		
		/*public static function getInstance():MainScene
		   {
		   if (_mainScene == null)
		   {
		   _mainScene = new MainScene();
		   }
		   return _mainScene;
		 }*/ // end function
		
		override protected function cardTexturUI():void
		{
			if(!_mainSceneUI){
			_mainSceneUI = new Image(ApplictionConfig.assets.getTexture(ApplictionConfig.add0000("mainSceneUI")));
			addChild(_mainSceneUI);
			}
		}
		override protected function disposeTexturUI():void
		{
			if(_mainSceneUI){
			_mainSceneUI.dispose();
			_mainSceneUI.removeFromParent(true);
			_mainSceneUI = null;
			}
		}
		
		protected function triggeredHandler(e:Event):void
		{
			(a.currentCardTye == 1) ? a.currentCardTye = 2 : a.currentCardTye = 1;
			a.setCardModel(new CardModel(a.cardModle.id + 1));
		/*if(a && contains(a)){removeChild(a)
		   a.dispose();
		   a=null;}
		   b = new Card();
		   b.setCardModel(new CardModel(2));
		   addChild(b);
		 b.x=200;*/
		}
		
		override protected function internalHide():void
		{
			//删除UI层以外的对象
			if (this.visible)
			{
				if (contains(a))
					removeChild(a)
				a.dispose();
				a = null;
				disposeTexturUI();
				ApplictionConfig.assets.removeTextureAtlas("senceLibUI");
				
			}
		}
		
		override protected function internalShow():void
		{
			//增加ui层以外的单独材质的（主要是卡）对象
			a = CardFactary.creaCard(1, 1, 1);
			addChild(a);
			cardTexturUI();
		}
		
		private function clickHandler(e:Event):void
		{
		
		/*if (!contains(a)) b.removeFromParent(true)
		 a.removeFromParent(true);*/
			 //dispatchEventWith(MainScene.TRUNSCENE, true, "CardMap");
		}
		
		override public function dispose():void
		{
			super.dispose();
			//ApplictionConfig.assets.removeTextureAtlas("MainScene");
		}
		
		public function updata():void
		{
		}
	
	}

}