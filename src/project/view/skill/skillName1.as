package project.view.skill
{
	import starling.animation.Juggler;
	import starling.core.Starling;
	import starling.display.DisplayObjectContainer;
	import starling.display.MovieClip;
	import starling.events.Event;
	import starling.textures.TextureAtlas;
	
	/**
	 * 暴风雪
	 * @author bbjxl
	 */
	public class skillName1 extends SkillBase
	{
		
		
		public function skillName1(id:int,rootContainer:DisplayObjectContainer, judgger:Juggler, frame:int = 60, callBack:Function = null,statue:int=-1)
		{
			super(id,rootContainer, judgger, frame, callBack);
			creaSkillEffect();
		
		}
		
		private function creaSkillEffect():void
		{
			_textureAils = ApplictionConfig.assets.getTextureAtlas("skill"+_id);
			var snow:MovieClip;
			for (var i:int = 0; i < 20; i++)
			{
				snow = new MovieClip(_textureAils.getTextures("暴風雪元件"), Math.random() * _frame+_frame/2);
				
				snow.x = 100+Math.random() * 924;
				snow.y = Math.random() * 200;
				
				addChild(snow);
				snow.addEventListener(Event.COMPLETE, completeHandler);
				_juggler.add(snow);
			}
			_textureAils=null;
		}
		
		override protected function completeHandler(e:Event):void
		{
			_cont++;
			if (_cont == 20)
			{
				if (_callBack != null)
				{
					_callBack.call(null);
				}
				
				this.removeFromParent(true);
				//ApplictionConfig.assets.removeTextureAtlas("skill"+_id);
			}
			_juggler.remove(e.currentTarget);
			(e.currentTarget as MovieClip).stop();
			(e.currentTarget as MovieClip).removeEventListener(Event.COMPLETE, completeHandler);
			(e.currentTarget as MovieClip).removeFromParent(true);
			
		}
	}

}