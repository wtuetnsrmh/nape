package project.view.skill
{
	import starling.animation.Juggler;
	import starling.animation.Transitions;
	import starling.core.Starling;
	import starling.display.DisplayObjectContainer;
	import starling.display.MovieClip;
	import starling.events.Event;
	import starling.textures.TextureAtlas;
	
	/**
	 * 销毁元件
	 * @author bbjxl
	 */
	public class skillName38 extends SkillBase
	{
		
		
		public function skillName38(id:int,rootContainer:DisplayObjectContainer, judgger:Juggler, frame:int = 60, callBack:Function = null,statue:int=-1)
		{
			super(id,rootContainer, judgger, frame, callBack,statue);
			creaSkillEffect();
		
		}
		
		private function creaSkillEffect():void
		{
			_textureAils = ApplictionConfig.assets.getTextureAtlas("skill"+_id);
			var snow:MovieClip;
			
				
			snow = new MovieClip(_textureAils.getTextures("销毁元件"),_frame);
			_textureAils=null;
				
			addChild(snow);
			snow.addEventListener(Event.COMPLETE, completeHandler);
			_juggler.add(snow);
			snow.x = ApplictionConfig.STAGE_WIDTH;
			Starling.juggler.tween(snow, 0.2, { transition: Transitions.EASE_IN_OUT, x:0 } );
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