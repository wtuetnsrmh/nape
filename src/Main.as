package
{
	import flash.desktop.NativeApplication;
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.display3D.Context3DProfile;
	import flash.events.Event;
	import flash.filesystem.File;
	import flash.geom.Rectangle;
	import flash.system.Capabilities;
	import flash.ui.Multitouch;
	import flash.ui.MultitouchInputMode;
	
	import lzm.starling.STLConstant;
	import lzm.starling.STLRootClass;
	import lzm.util.Mobile;
	
	import starling.core.Starling;
	import starling.events.Event;
	import starling.events.Touch;
	import starling.textures.Texture;
	import starling.utils.AssetManager;
	import starling.utils.HAlign;
	import starling.utils.RectangleUtil;
	import starling.utils.ScaleMode;
	import starling.utils.formatString;

	//	import org.zengrong.ane.enum.PowerType;
	/**
	 * ...
	 * @author bbjxl 2013
	 */
	
	[SWF(frameRate="30")]
	public class Main extends Sprite
	{
		
		[Embed(source="/msyh.ttf", embedAsCFF="false", fontFamily="微软雅黑")]
		private static const wlyhFont:Class;
		
		// Startup image for SD screens
		[Embed(source="/startup.jpg")]
		private static var Background:Class;
		
		
		public static var mStarling:Starling;
		
		public function Main():void
		{
			init();
		}
		
		
		/**
		 * 根据宽高来创建starling 
		 * @param mainClass
		 * @param width
		 * @param height
		 * @param debug
		 * @param isPc		是否是在pc上
		 * @param pullUp	是否拉伸(不拉伸就留黑边)
		 * 
		 */		
		
		
		private function init():void{
			//			ANEToolkit.power.flagKeepScreenOn();
			
			/*stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;*/
			//stage.addEventListener(flash.events.Event.DEACTIVATE, deactivate);
			
			// touch or gesture?
			Multitouch.inputMode = MultitouchInputMode.TOUCH_POINT;
			
			ApplictionConfig.STAGE_WIDTH = 960;
			ApplictionConfig.STAGE_HEIGHT = 640;
			var iOS:Boolean = Capabilities.manufacturer.indexOf("iOS") != -1;
			
			Starling.multitouchEnabled = false; // useful on mobile devices
			Starling.handleLostContext =true;//!iOS; // not necessary on iOS. Saves a lot of memory!
			
			// create a suitable viewport for the screen size
			// 
			// we develop the game in a *fixed* coordinate system of 320x480; the game might 
			// then run on a device with a different resolution; for that case, we zoom the 
			// viewPort to the optimal size for any display and load the optimal textures.
			var isPc:Boolean=false;
			var pullUp:Boolean=false;
			var stageFullScreenWidth:Number = isPc ? stage.stageWidth : stage.fullScreenWidth;
			var stageFullScreenHeight:Number = isPc ? stage.stageHeight : stage.fullScreenHeight;
			
			var viewPort:Rectangle;// =RectangleUtil.fit(new Rectangle(0, 0, stage.fullScreenWidth, stage.fullScreenHeight), new Rectangle(0, 0, stage.stageWidth, stage.stageHeight), ScaleMode.SHOW_ALL);// new Rectangle(0, 0, ApplictionConfig.STAGE_WIDTH, ApplictionConfig.STAGE_HEIGHT);// 
			if(pullUp){
				viewPort = new Rectangle(0,0,stageFullScreenWidth,stageFullScreenHeight);
			}else{
				viewPort = RectangleUtil.fit(
					new Rectangle(0, 0, ApplictionConfig.STAGE_WIDTH, ApplictionConfig.STAGE_HEIGHT), 
					new Rectangle(0, 0,stageFullScreenWidth,stageFullScreenHeight), 
					ScaleMode.SHOW_ALL);
			}
			var scaleFactor:int =1;//viewPort.width > 960 ? 2 : 1;//viewPort.width <= ApplictionConfig.STAGE_WIDTH ? 1 : 2; // midway between 320 and 640
			ApplictionConfig.SCALE = scaleFactor;
			
			// While Stage3D is initializing, the screen will be blank. To avoid any flickering, 
			// we display a startup image now and remove it below, when Starling is ready to go.
			// This is especially useful on iOS, where "Default.png" (or a variant) is displayed
			// during Startup. You can create an absolute seamless startup that way.
			// 
			// These are the only embedded graphics in this app. We can't load them from disk,
			// because that can only be done asynchronously (resulting in a short flicker).
			// 
			// Note that we cannot embed "Default.png" (or its siblings), because any embedded
			// files will vanish from the application package, and those are picked up by the OS!
			
			var background:Bitmap = new Background();
			Background = null; // no longer needed!
			ApplictionConfig.FULL_STAGE_WIDTH=viewPort.width;
			ApplictionConfig.FULL_STAGE_HEIGHT=viewPort.height;
			background.x =viewPort.x;
			background.y = viewPort.y;
			background.width = viewPort.width;
			background.height = viewPort.height;
			background.smoothing = true;
			addChild(background);
			
			// launch Starling
			/*_mStarling = new Starling(STLRootClass, stage, viewPort,null,"auto","baseline");
			_mStarling.antiAliasing = 0;
			_mStarling.stage.stageWidth  = width;
			_mStarling.stage.stageHeight = height;
			_mStarling.simulateMultitouch  = false;
			_mStarling.enableErrorChecking = Capabilities.isDebugger;*/
			
			mStarling = new Starling(Root, stage, viewPort,null,"auto");
			mStarling.antiAliasing = 0;
			mStarling.stage.stageWidth  = ApplictionConfig.STAGE_WIDTH;
			mStarling.stage.stageHeight = ApplictionConfig.STAGE_HEIGHT;
			mStarling.simulateMultitouch  = false;
			mStarling.enableErrorChecking = Capabilities.isDebugger;
			
			mStarling.showStats=true;
			mStarling.showStatsAt("right");
			
			mStarling.addEventListener(starling.events.Event.ROOT_CREATED, function onRootCreated(event:Object, app:Root):void
			{
				mStarling.removeEventListener(starling.events.Event.ROOT_CREATED, onRootCreated);
				removeChild(background);
				
				var bgTexture:Texture = Texture.fromBitmap(background, false, false, scaleFactor);
				background.bitmapData.dispose();
				background=null;
				
				mStarling.start();
				
				var appDir:File = File.applicationDirectory;
				var assets:AssetManager = new AssetManager(scaleFactor,false);
				
				assets.verbose = Capabilities.isDebugger;
				assets.enqueue(
					//				appDir.resolvePath("assets/audio"),
					appDir.resolvePath("attack"),
					appDir.resolvePath("fonts")
				);
				ApplictionConfig.assets = assets;
				ApplictionConfig.appDir = appDir;
				
				app.start(bgTexture);
			});
			
			// When the game becomes inactive, we pause Starling; otherwise, the enter frame event
			// would report a very long 'passedTime' when the app is reactivated. 
			
			NativeApplication.nativeApplication.addEventListener(flash.events.Event.ACTIVATE, function(e:*):void
			{
				mStarling.start();
			});
			
			NativeApplication.nativeApplication.addEventListener(flash.events.Event.DEACTIVATE, function(e:*):void
			{
				mStarling.stop();
			});
		}
		
		private function deactivate(e:flash.events.Event):void
		{
			// auto-close
			NativeApplication.nativeApplication.exit();
		}
		
	}
	
}