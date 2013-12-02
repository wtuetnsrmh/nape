package
{
	import flash.display.StageDisplayState;
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.net.dns.AAAARecord;
	import flash.utils.Timer;
	import flash.utils.getDefinitionByName;
	import flash.utils.getTimer;
	
	import de.polygonal.core.ObjectPool;
	
	import fr.kouma.starling.utils.Stats;
	
	import khaos.view.ViewMgr;
	
	import project.Cellcard.Card;
	import project.config.ApplicationConfig;
	import project.config.ConfigXML;
	import project.config.ErrorZhCn;
	import project.config.ItemConfig;
	import project.config.LocalConfig;
	import project.controller.AttackController;
	import project.controller.SMZTController;
	import project.model.ModelLocator;
	import project.utils.CardPoolFactary;
	import project.utils.ProgressBar;
	import project.view.attack.skillTest;
	import project.view.bottonBar.BottonBar;
	import project.view.scene.BaseScene;
	import project.view.scene.CardMap;
	import project.view.scene.EditDeckPanel;
	import project.view.scene.IScene;
	import project.view.scene.battleScene.BattleReadyPanel;
	import project.view.scene.editDeckPanel.CreaDeckPanel;
	import project.view.scene.mainScene.MainScene;
	
	import starling.animation.Juggler;
	import starling.animation.Transitions;
	import starling.animation.Tween;
	import starling.core.Starling;
	import starling.core.StatsDisplay;
	import starling.display.DisplayObjectContainer;
	import starling.display.Image;
	import starling.display.Quad;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.Touch;
	import starling.events.TouchPhase;
	import starling.textures.Texture;
	import starling.utils.AssetManager;

	/**
	 * ...
	 * @author bbjxl 2013
	 */
	public class Root extends Sprite
	{
		public static var _currentSceneId:uint = 0;
		/*private var _topLayer:Sprite;
		private var _bgLayer:Sprite;
		private var _uiLayer:Sprite;
		private var _sceneLayer:Sprite;
		private var _rootLayer:Sprite;*/
		
		private var _mActiveScene:BaseScene;
		private var _newScene:Sprite;
		private var _currentSceneName:String;
		
		
		public static var vmgr:khaos.view.ViewMgr;
		//----------------场景----------------------------------
		private var _mainScene:MainScene;
		private var _cardMap:CardMap;
		private var _EditDeckPanel:EditDeckPanel;
		//--------------------------------------------------
		public function Root()
		{
			
			
		}
		
		public function get mActiveScene():BaseScene
		{
			return _mActiveScene;
		}

		public function set mActiveScene(value:BaseScene):void
		{
			_mActiveScene = value;
		}


		
		public function start(background:Texture):void
		{
			var tempBg:Image = new Image(background);
			tempBg.width = ApplictionConfig.STAGE_WIDTH;
			tempBg.height = ApplictionConfig.STAGE_HEIGHT;
			this.addChild(tempBg);
			
			ViewMgr.initViewMgr(this, ApplictionConfig.STAGE_WIDTH, ApplictionConfig.STAGE_HEIGHT);
			vmgr = ViewMgr.getInstance();//ViewType的各个层级配置完成
			
			var progressBar:ProgressBar = new ProgressBar(175, 20);
			progressBar.x = (background.width  - progressBar.width)  / 2;
			progressBar.y = (background.height - progressBar.height) / 2;
			progressBar.y = background.height * 0.85;
			vmgr.setLoading( progressBar); //new LoadingBar1(APP_WIDTH, APP_HEIGHT));
			
			

			
//			(vmgr._defaultLoading as ProgressBar).visible=true;
			progressBar.visible=true;
           
            ApplictionConfig.assets.loadQueue(function onProgress(ratio:Number):void
            {
                progressBar.ratio = ratio;
              
                if (ratio == 1)
                    Starling.juggler.delayCall(function():void
                    {
                        progressBar.visible=false;
						initXML();
                        vmgr.showView(MainScene,null,["senceLib"]);
						vmgr.showView(BottonBar);
						//loadConfig("test.xml");
						
                    }, 0.15);
            });
		}
		
		private function loadConfig(value:String):void{
			var _loc_2:URLLoader = new URLLoader();
			_loc_2.load(new URLRequest(value));
			_loc_2.addEventListener(flash.events.Event.COMPLETE, this.onMainConfigLoad);
		}
		
		//配置文件加载完
		private function onMainConfigLoad(event:flash.events.Event):void
		{
			
			ApplicationConfig.mainConfig = new XML((event.target as URLLoader).data);
			ApplicationConfig.FONT = ApplicationConfig.mainConfig.appFont;
			ModelLocator.getInstance().snsType = ApplicationConfig.mainConfig.snsType;
			ModelLocator.getInstance().dynamicURL = ApplicationConfig.mainConfig.dynamicURL;
			ModelLocator.getInstance().dynamicURLArr.push(ModelLocator.getInstance().dynamicURL);
			ModelLocator.getInstance().staticURL = ApplicationConfig.mainConfig.staticURL;
			//------------------测试 ---------------------------------
			Json_test();
			/*SMZTController.getInstance().getCode(function (param:String):void {
			ApplicationConfig._code = param;
			Debug.log("ApplicationConfig._code=" + ApplicationConfig._code);
			
			checkExist(); //正式
			} );*/
			return;
		} // end function
		
		private function Json_test():void
		{
			//checkExist();
			var loginCallBack:Function = function(param1:Object):void
			{
				//trace(param1);
				checkExist();
				//
				//SMZTController.getInstance().CreaCardGroup();
			}
			
			SMZTController.getInstance().Login(loginCallBack);
			
		}
		
		/*检查是否已经登陆
		*/
		private function checkExist():void
		{
			
			SMZTController.getInstance().GetStatus(onCheckBack);
			return;
		} // end function
		
		private function onCheckBack(param1:Object):void
		{
			SMZTController.getInstance().Initialize();//初始化用户信息
		}
		
		private function loadLocal():void
		{
			var _loc_1:URLLoader = new URLLoader();
			_loc_1.load(new URLRequest(ModelLocator.getInstance().staticURL + ApplicationConfig.mainConfig.localization + "?" + getTimer()));
			_loc_1.addEventListener(flash.events.Event.COMPLETE, this.onLoadLocal);
			return;
		} // end function
		
		private function onLoadLocal(event:flash.events.Event):void
		{
			trace("本地XML加载完")
			LocalConfig.LOCAL_LAN = new XML((event.target as URLLoader).data);
		}
		
		private function initXML():void 
		{
			ItemConfig.ACHV_CONFIG = ConfigXML.ACHV_CONFIG;
			ItemConfig.CARD_CONFIG = ConfigXML.CARDS_CONFIG;
			ItemConfig.SKILL_CONFIG = ConfigXML.SKILL_CONFIG;
			ItemConfig.ITEM_CONFIG = ConfigXML.ITEM_CONFIG;
			ErrorZhCn.ERROR_MESSAGE = ConfigXML.ERROR_MESSAGE;
		}
		

		
		public function get cardMap():CardMap 
		{
			return _cardMap;
		}
		
		public function get mainScene():MainScene 
		{
			return _mainScene;
		}
		
	}
	
}