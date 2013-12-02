package  
{
	import flash.filesystem.File;
	import flash.geom.Rectangle;
	
	import feathers.display.Scale9Image;
	import feathers.textures.Scale9Textures;
	
	import project.view.common.MyButton;
	
	import starling.animation.Juggler;
	import starling.core.Starling;
	import starling.display.Button;
	import starling.display.MovieClip;
	import starling.filters.ColorMatrixFilter;
	import starling.textures.Texture;
	import starling.utils.AssetManager;

	/**
	 * ...
	 * @author bbjxl
	 */
	public class ApplictionConfig
	{
		public static const MAIN_SCENE:String = "MainScene";
		public static const BATTLE_READY:String = "battleReady";//出战设置
		public static const CREA_DECK_PANEL:String = "creaDeckPanel";//编辑卡组界面一
		/*public static const ARENA_SCENE:String ="MainScene";
		public static const TRAINING_SCENE:String ="MainScene";
		public static const STATUE_SCENE:String = "MainScene";
		public static const TOWER_SCENE:String ="MainScene";
		public static const CULTIVATION_SCENE:String = "MainScene";
		public static const TAVERN_SCENE:String ="MainScene";
		public static const SLAVE_SCENE:String ="MainScene";
		public static const SKYCITY_SCENE:String ="MainScene";
		public static const LONGBAO_SCENE:String ="MainScene";
		public static const CRYSTAL_HOLE_SCENE:String = "MainScene";
		public static const EXPEDITOIN_SCENE:String ="MainScene";*/
		
		public static var FULL_STAGE_WIDTH:int = 1024;
		public static var FULL_STAGE_HEIGHT:int = 768;
		public static var STAGE_WIDTH:int = 960;
		public static var STAGE_HEIGHT:int = 640;
		public static const CARD_WIDTH:int = 184;
		public static const CARD_HEIGHT:int = 256;
		public static const MIDDLE_CARD_WIDTH:Number = 117.76;
		public static const MIDDLE_CARD_HEIGHT:Number =163.84;
		public static const MIDDLEN_CARD_SCALE:Number = 0.64;
		public static const SMALL_CARD_WH:int = 100;
		public static var assets:AssetManager
		public static var _assetsUrl:String="assets/"
		public static var appDir:File=File.applicationDirectory;
		public static var SCALE:int;
		
		public function ApplictionConfig() 
		{
			
		}
		
		/*var filter:ColorMatrixFilter = new ColorMatrixFilter();
		filter.adjustHue(-1);
		_bt.filter=filter;*/
		
		/**
		 * 创建9宫格图片
		 * */
		public static function createS9Image(w:Number,h:Number,type:int=1):Scale9Image{
			var ret:Rectangle;
			var s9Texture:Scale9Textures;
			switch(type)
			{
				case 1:
				{
					ret=new Rectangle(80.5,34.25,24.25,12.25);
					s9Texture = new Scale9Textures(assets.getTexture("panelBg0000"),ret);
					break;
				}
				case 2:
				{
					ret=new Rectangle(4.1,3.95,9.85,5);
					s9Texture = new Scale9Textures(assets.getTexture("barBg0000"),ret);
					break;
				}
					
				default:
				{
					break;
				}
			}
			
			var s9image:Scale9Image = new Scale9Image(s9Texture);
			s9image.width=w;
			s9image.height=h;
			return s9image;
		}
		
		public static function creaBt(tt:String, text:String="",downTT:String=""):Button {
			var bt:Button = new Button(assets.getTexture(tt),text,(downTT=="")?null:assets.getTexture(downTT));
			
			return bt;
		}
		
		public static function creaMC(atlasName:String, mcName:String, frame:int = 60):MovieClip {
			var mc:MovieClip = new MovieClip(assets.getTextureAtlas(atlasName).getTextures(mcName), frame);
			mc.touchable=false;
//			mc.Myname=atlasName;
			Starling.juggler.add(mc);
			return mc;
			}
		
		public static function add0000(value:String):String {
			return value + "0000";
			}
		
	}

}