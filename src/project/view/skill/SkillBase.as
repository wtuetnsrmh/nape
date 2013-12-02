package project.view.skill 
{
	import starling.animation.Juggler;
	import starling.core.Starling;
	import starling.display.DisplayObjectContainer;
	import starling.display.MovieClip;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.textures.TextureAtlas;
	
	/**
	 * ...
	 * @author bbjxl
	 */
	public class SkillBase extends Sprite 
	{
		protected var _cont:int = 0;
		protected var _frame:int = 0;
		//protected var _skillName:String;
		protected var _root:DisplayObjectContainer;
		protected var _juggler:Juggler;
		protected var _callBack:Function;
		protected var _id:int;
		protected var _textureAils:TextureAtlas;
		protected var _statue:int;
		public function SkillBase(id:int,rootContainer:DisplayObjectContainer, judgger:Juggler,frame:int=60,callBack:Function=null,statue:int=-1) 
		{
			this.touchable=false;
			_id = id;
			_callBack = callBack;
			_frame = frame;
			_root = rootContainer;
			_juggler = judgger;
			_statue = statue;//如果是用三个阶段时,以这个参数表示各阶段
		}
		
		public function setLocation(setx:Number = 0, sety:Number = 0):void {
			this.x = setx;
			this.y = sety;
			}
		protected function completeHandler(e:Event):void
		{
			_cont++;
			if (_cont == 1) {
				if (_callBack != null) {
					_callBack.call(null);
					}
				this.removeFromParent(true);
				}
			(e.currentTarget as MovieClip).removeFromParent(true);
		}
		
		public function get statue():int 
		{
			return _statue;
		}
		
		public function set statue(value:int):void 
		{
			_statue = value;
		}
	}

}