package khaos.sound
{
	import flash.utils.Dictionary;

	public class SoundManager
	{
		private static var _instance: SoundManager;
		private var _soundMap: Dictionary;
		private var _infinitSound:ISoundable;
		
		public var lastPlayID:String=null;
		
		public function SoundManager()
		{
			_soundMap = new Dictionary();
		}
		
		public static function getInstance(): SoundManager {
			if(_instance == null){
				_instance = new SoundManager();
			} 
			
			return _instance;
		}
		
		public function playInfinitSound():void{
			_infinitSound = new BackgroundSound ("nosound");
			_infinitSound.play();
		}
		
		public function createAndPlay(type: int, id: String): void {
			var soundable: ISoundable;
			
			if ( _soundMap[id] == null ){
				switch(type) {
					case SoundType.BACKGROUND:
						soundable = new BackgroundSound(id);
						break;
					case SoundType.NORMAL:
						soundable = new NormalSound(id);
						break;
				}
				if(soundable) {
					_soundMap[id] = soundable;
				}
			}
			
			play(id);
			
			lastPlayID = id;
		}
		
		public function stopAllSound(): void {
			for(var s: Object in _soundMap) {
				var item: ISoundable = _soundMap[s] as ISoundable;
				item.stop();
			}
		}
		
		private function play(id:String): void {
			if(_soundMap[id] == null){
				throw new Error("sound hasn't been created!");
				return;
			}
			var soundable:ISoundable = _soundMap[id] as ISoundable;
			
			if(soundable.isPlaying()) {
				return ;
			}
			
			soundable.play();
		
		}
		
		
		public function clear(): void {
			for(var s: Object in _soundMap) {
				delete _soundMap[s];
			}
		}
		
		private function stop(type: int): void {
			for(var s: Object in _soundMap) {
				if(_soundMap[s].type == type ) {
					var item: ISoundable = _soundMap[s] as ISoundable;
					item.stop();
				}
			}
		}
	}
}