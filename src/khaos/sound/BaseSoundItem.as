package khaos.sound
{
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.media.SoundTransform;
	import flash.net.URLRequest;

	public class BaseSoundItem implements ISoundable
	{
		private var _type: int;
		private var _id: String = "";
		private var _isPlaying: Boolean = false;
		private var _opened: Boolean = false;
		
		protected var _snd: Sound;
		protected var _snc: SoundChannel;
		protected var _sndTm: SoundTransform;
		
		public function BaseSoundItem(id: String, type: int = SoundType.NORMAL)
		{
			_type = type;
			_id = id;
			_snd = new Sound();
			_snd.addEventListener(IOErrorEvent.IO_ERROR, onIoError);
			_snd.addEventListener(Event.OPEN, onOpen);
			
			_sndTm = new SoundTransform(1);
		}
		
		public function play():void
		{
			if(_id == "") throw new Error("sound id error!");
			
			if(!_opened) {
				_snd.load(new URLRequest(getUrlById(_id)));
			}
			
			try {
				_snc = _snd.play();
				_snc.soundTransform = _sndTm;
				_snc.addEventListener(Event.SOUND_COMPLETE, onSoundComplete);
			}catch(error: Error) {
				trace(error.toString());
			}
			_isPlaying = true;
		}
		
		public function get type(): int {
			return _type;
		}
		
		public function get id(): String {
			return _id;
		}
		
		public function stop(): void {
			if(_isPlaying)
			{
				try {
					_snc.stop();
					_snd.close();
				}catch(error:Error ) {
					trace(error.message);
				}
				_isPlaying = false;
			}
			
		}
		
		public function isPlaying(): Boolean {
			return _isPlaying;
		}
		
		protected function getUrlById(id: String): String {
			return "assets/mp3/" + id + ".mp3";
		}
		
		private function onIoError(event: IOErrorEvent): void {
			trace("BaseSoundItem onIoError");
		}
		
		protected function onSoundComplete(event: Event): void {
			_isPlaying = false;
//			trace("BaseSoundItem onSoundComplete");
		}
		
		private function onOpen(event: Event): void {
			_opened = true;
		}
	}
}