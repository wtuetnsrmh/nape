package project.view.attack
{
	import flash.utils.getDefinitionByName;
	import project.config.ErrorZhCn;
	import project.controller.SkillController;
	import project.model.attack.AttackModel;
	import starling.animation.Juggler;
	import starling.core.Starling;
	import starling.display.MovieClip;
	import starling.display.Sprite;
	import starling.display.Stage;
	import starling.events.Event;
	import starling.textures.Texture;
	import starling.textures.TextureAtlas;
	import project.view.skill.RegisteSkillClass;
	import project.view.skill.SkillBase;
	
	/**
	 * ...
	 * @author bbjxl
	 */
	public class skillTest extends Sprite
	{
		public static const Complete:String = "Complete";
		private var _judggler:Juggler = Starling.juggler;
		private var _frame = 60;
		private var textureAils:TextureAtlas;
		private var _loadId:Array = new Array(); //要加载的技能
		
		private var _count:int = 0;
		
		private static var _instance:skillTest;
		
		public function skillTest()
		{
			if (_instance != null)
			{
				throw Error(new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE));
			}
			
		}
		
		/**
		 * 初始化要加载的战斗技能
		 * @return
		 */
		public function initLoadSkillAssets():void {
			_loadId = AttackModel.getInstance().skillUsed;
			
			_count = 0;
			RegisteSkillClass.initData();
			for (var i:int = 0; i < _loadId.length; i++)
			{
				//trace(ApplictionConfig.assets.getTextureAtlas("skill" + _loadId[i]))
				if (ApplictionConfig.assets.getTextureAtlas("skill" + _loadId[i]) == undefined)
				{
					//trace("skill" + _loadId[i])
					ApplictionConfig.assets.enqueue(ApplictionConfig.appDir.resolvePath("skill/" + "skill" + _loadId[i]));
				}
			}
			/**
			 * 如果没有所需的技能纹理则加载
			 */
			ApplictionConfig.assets.loadQueue(function onProgress(ratio:Number):void
				{
					//progressBar.ratio = ratio;
					
					if (ratio == 1)
					{
						dispatchEvent(new Event("Complete"));
						/*addChild(skillFactery(1, function():void {
						   trace("play over");
						   removeTAFromAssets();
						   },100,384));
						   addChild(skillFactery(2, function():void {
						   trace("play over");
						   removeTAFromAssets();
						   }));
						
						   addChild(skillFactery(3, function():void {
						   trace("play over");
						   removeTAFromAssets();
						   },100, 100, 0));
						
						   addChild(skillFactery(29, function():void {
						   trace("play over");
						   removeTAFromAssets();
						 }));*/
						
					}
				});
			}
		
		public static function getInstance():skillTest
		{
			if (_instance == null)
			{
				_instance = new skillTest();
			}
			return _instance;
		} // end function
		
		/**
		 * 战斗全结束时移除所有的技能纹理
		 */
		public function removeTAFromAssets():void
		{
			/*_count++;
			if (_count < _loadId.length)
				return;*/
			for (var i:int = 0; i < _loadId.length; i++)
			{
				ApplictionConfig.assets.removeTextureAtlas("skill" + _loadId[i]);
			}
		}
		
		public function skillFactery(skillId:int, callBack:Function = null, setX:Number = 0, setY:Number = 0, statue:int = -1):SkillBase
		{
			var temp:Class;
			temp = RegisteSkillClass.returnSkill(skillId);
			var tempSkill:SkillBase = new temp(skillId, this, _judggler, _frame, callBack, statue);
			tempSkill.setLocation(setX, setY);
			trace("tempSkill")
			return tempSkill;
		}
	
	}

}