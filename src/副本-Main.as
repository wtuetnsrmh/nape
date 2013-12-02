package
{
	import flash.desktop.NativeApplication;
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.filesystem.File;
	import flash.geom.Rectangle;
	import flash.system.Capabilities;
	import flash.ui.Multitouch;
	import flash.ui.MultitouchInputMode;
	
	import starling.core.Starling;
	import starling.events.Event;
	import starling.events.Touch;
	import starling.textures.Texture;
	import starling.utils.AssetManager;
	import starling.utils.RectangleUtil;
	import starling.utils.ScaleMode;
	import starling.utils.formatString;
	
	/**
	 * ...
	 * @author bbjxl 2013
	 */
	
	[SWF(frameRate="60",height="768",width="1024")]
	public class Main extends Sprite
	{
		
		
		
		// Startup image for SD screens
		[Embed(source="/assets/startup.jpg")]
		private static var Background:Class;
		
		// Startup image for HD screens
		[Embed(source="/assets/startupHD.jpg")]
		private static var BackgroundHD:Class;
		
		public static var mStarling:Starling;
		
		public function Main():void
		{
			if(stage){
			init();
			return;
			}
			this.addEventListener(flash.events.Event.ADDED_TO_STAGE,addtoStage);
		}
		
		private function addtoStage(e:flash.events.Event):void{
			this.removeEventListener(flash.events.Event.ADDED_TO_STAGE,addtoStage);
			init();
		}
		
		private function init():void{
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			stage.addEventListener(flash.events.Event.DEACTIVATE, deactivate);
			
			// touch or gesture?
			Multitouch.inputMode = MultitouchInputMode.TOUCH_POINT;
			
			ApplictionConfig.STAGE_WIDTH = stage.stageWidth;
			ApplictionConfig.STAGE_HEIGHT = stage.stageHeight;
			var iOS:Boolean = Capabilities.manufacturer.indexOf("iOS") != -1;
			
			Starling.multitouchEnabled = false; // useful on mobile devices
			Starling.handleLostContext = !iOS; // not necessary on iOS. Saves a lot of memory!
			
			// create a suitable viewport for the screen size
			// 
			// we develop the game in a *fixed* coordinate system of 320x480; the game might 
			// then run on a device with a different resolution; for that case, we zoom the 
			// viewPort to the optimal size for any display and load the optimal textures.
			
			var viewPort:Rectangle =RectangleUtil.fit(new Rectangle(0, 0, stage.fullScreenWidth, stage.fullScreenHeight), new Rectangle(0, 0, stage.stageWidth, stage.stageHeight), ScaleMode.SHOW_ALL);// new Rectangle(0, 0, ApplictionConfig.STAGE_WIDTH, ApplictionConfig.STAGE_HEIGHT);// 
			
			// create the AssetManager, which handles all required assets for this resolution
			
			var scaleFactor:int = viewPort.width <= ApplictionConfig.STAGE_WIDTH ? 1 : 2; // midway between 320 and 640
			ApplictionConfig.SCALE = scaleFactor;
			var appDir:File = File.applicationDirectory;
			var assets:AssetManager = new AssetManager(scaleFactor);
			
			assets.verbose = Capabilities.isDebugger;
			assets.enqueue(
				appDir.resolvePath("assets/audio"),
				appDir.resolvePath("assets/attack"),
				appDir.resolvePath("assets/cardAsstes"),
				appDir.resolvePath(formatString("assets/fonts", scaleFactor)),
				//appDir.resolvePath(formatString("assets/fonts/{0}x", scaleFactor)),
				appDir.resolvePath(formatString("assets/textures/{0}x", scaleFactor)),
				//appDir.resolvePath("assets/skill"),
				appDir.resolvePath("assets/senceLib")
			);
			ApplictionConfig.assets = assets;
			ApplictionConfig.appDir = appDir;
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
			
			var background:Bitmap = scaleFactor == 1 ? new Background() : new BackgroundHD();
			Background = BackgroundHD = null; // no longer needed!
			
			background.x = viewPort.x;
			background.y = viewPort.y;
			background.width = viewPort.width;
			background.height = viewPort.height;
			background.smoothing = true;
			addChild(background);
			
			// launch Starling
			
			mStarling = new Starling(Root, stage, viewPort);
			mStarling.stage.stageWidth = stage.stageWidth; // <- same size on all devices!
			mStarling.stage.stageHeight = stage.stageHeight; // <- same size on all devices!
			mStarling.simulateMultitouch = false;
			mStarling.enableErrorChecking = Capabilities.isDebugger;
			
			mStarling.addEventListener(starling.events.Event.ROOT_CREATED, function onRootCreated(event:Object, app:Root):void
			{
				mStarling.removeEventListener(starling.events.Event.ROOT_CREATED, onRootCreated);
				removeChild(background);
				
				var bgTexture:Texture = Texture.fromBitmap(background, false, false, scaleFactor);
				background.bitmapData.dispose();
				background=null;
				app.start(bgTexture);
				mStarling.start();
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