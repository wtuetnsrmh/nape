package project.view.scene
{
	import starling.display.Sprite;
	
	public class BaseScene extends Sprite
	{
		private var _prevScene:Class;//上一场景名称
		public var SceneName:Class;//自己的场景名称
		public function BaseScene()
		{
			
			super();
		}
		public function get prevScene():Class
		{
			return _prevScene;
		}
		
		public function set prevScene(value:Class):void
		{
			_prevScene = value;
		}
	}
}