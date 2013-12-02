package project.view.skill
{
	import starling.animation.Juggler;
	import starling.core.Starling;
	import starling.display.DisplayObjectContainer;
	import starling.display.MovieClip;
	import starling.events.Event;
	import starling.textures.TextureAtlas;
	
	/**
	 * 亡灵意志36_
	 * @author bbjxl
	 */
	public class skillName36 extends SkillBase
	{
		
		
		public function skillName36(id:int,rootContainer:DisplayObjectContainer, judgger:Juggler, frame:int = 60, callBack:Function = null,statue:int=-1)
		{
			super(id,rootContainer, judgger, frame, callBack,statue);
			creaSkillEffect();
		
		}
		
		private function creaSkillEffect():void
		{
			_textureAils = ApplictionConfig.assets.getTextureAtlas("skill"+_id);
			var snow:MovieClip;
			
				
			snow = new MovieClip(_textureAils.getTextures("亡灵意志36_"),_frame);
			_textureAils=null;
				
			addChild(snow);
			snow.addEventListener(Event.COMPLETE, completeHandler);
			_juggler.add(snow);
			
		}
		
		override protected function completeHandler(e:Event):void
		{
			if (_callBack != null)
			{
				_callBack.call(null);
			}
			_juggler.remove(e.currentTarget);
			(e.currentTarget as MovieClip).stop();
			(e.currentTarget as MovieClip).removeEventListener(Event.COMPLETE, completeHandler);
			(e.currentTarget as MovieClip).removeFromParent(true);
			this.removeFromParent(true);
		}
	}

}