package  khaos.sound
{
	import flash.events.Event;

	public class BackgroundSound extends BaseSoundItem
	{
		private var _curTime: int;
		
		public function BackgroundSound(id: String)
		{
			super(id,SoundType.BACKGROUND);
		}
		
		override protected function onSoundComplete(event:Event):void {
			super.onSoundComplete(event);
			//return; //暂时去掉背景音乐
			this.play();
		}
		
		override public function stop():void {
			super.stop();
			_curTime = _snd.length;
		}
	}
}