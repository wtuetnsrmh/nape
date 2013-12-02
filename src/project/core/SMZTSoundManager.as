package project.core
{
	/*
	* 描述：声音管理类
	* 控制声音的停止
	*/
   
    import flash.events.*;
    import flash.media.*;
    import flash.system.*;
	import project.config.ApplicationConfig;
	import project.debug.Debug;
	import project.model.ModelLocator;
	import project.utils.Reflection;
	import flash.events.Event; 
	import flash.media.Sound; 
	import flash.net.URLRequest; 
	
    public class SMZTSoundManager extends EventDispatcher
    {
        private static var soundTransForm:SoundTransform = new SoundTransform(1);
        private static var soundChannel:SoundChannel = new SoundChannel();
        private static var musicChannel:SoundChannel = new SoundChannel();
        private static var musicPause:Number=0;
        private static var xaIndex:int = 0;
		public static var _bgMusic:Sound = null;//背景音乐
		public static var _battleBgMusic:Sound = null;//战斗背景音乐
		
		
        private static const XIAO_AO_ARRAY:Array = ["6_1", "5_1", "3_1", "2_1", "1_1", "3_1", "2_1", "1_1", "6_2", "5_2", "5_2", "6_2", "5_2", "6_2", "1_1", "2_1", "3_1", "5_1", "6_1", "5_1", "3_1", "2_1", "1_1", "2_1", "6_1", "5_1", "3_1", "2_1", "1_1", "3_1", "2_1", "1_1", "6_2", "5_2", "5_2", "6_2", "5_2", "6_2", "1_1", "2_1", "3_1", "5_1", "6_1", "5_1", "3_1", "2_1", "1_1", "1_1"];

        public function SMZTSoundManager(param1:IEventDispatcher = null)
        {
            super(param1);
            return;
        }// end function

		/*静音
		*/
        public static function stopAll() : void
        {
            SoundMixer.stopAll();
            return;
        }// end function

		/*
		*/
        public static function playXiaoAo() : void
        {
            if (xaIndex < XIAO_AO_ARRAY.length)
            {
                playSimpleSound("XA_" + XIAO_AO_ARRAY[xaIndex], 0.4);
                xaIndex++;
                if (xaIndex == XIAO_AO_ARRAY.length)
                {
                    xaIndex = 0;
                }
            }
            return;
        }

		/*停止所有音乐（背景音乐等）
		*/
        public static function stopAllMusic() : void
        {
            musicChannel.stop();
            return;
        }// end function

		/**
		 * 播放背景音乐
		 */
		public static var BMLoaded:Boolean = false;
		public static function playBgMusic(param1:String, param2:Number = 1):void {
			musicPause = 0;
			musicChannel.stop();
			if (ModelLocator.getInstance().isMute)
            {
                return;
            }
			
			if(!BMLoaded){
				_bgMusic = new Sound();
				_bgMusic.addEventListener(Event.COMPLETE, onSoundLoaded); 
				var req:URLRequest = new URLRequest(param1); 
				_bgMusic.load(req,new SoundLoaderContext(1000,true)); 
					function onSoundLoaded(event:Event):void 
					{
						BMLoaded = true;
						musicChannel = _bgMusic.play(0, 10000, soundTransForm);
						return;
					} 
				}else {
					musicChannel = _bgMusic.play(0, 10000, soundTransForm);
					}
			}
		
		/**
		 * 战斗背景音乐
		 * @param	param1
		 * @param	param2
		 */	
		public static var battltBMLoaded:Boolean = false;
		public static function playBattleBgMusic(param1:String, param2:Number = 1):void {
			musicChannel.stop();
			if (ModelLocator.getInstance().isMute)
            {
                return;
            }
			if(!battltBMLoaded){
				_battleBgMusic = new Sound();
				_battleBgMusic.addEventListener(Event.COMPLETE, onSoundLoaded); 
				var req:URLRequest = new URLRequest(param1); 
				_battleBgMusic.load(req,new SoundLoaderContext(1000,true)); 
					function onSoundLoaded(event:Event):void 
					{
						battltBMLoaded = true;
						musicChannel = _battleBgMusic.play(0, 10000, soundTransForm);
						return;
					} 
			}else {
				musicChannel = _battleBgMusic.play(0, 10000, soundTransForm);
				}
			}
			
		/*播放音乐（背景音乐等），循环播放
		* @ param 声音类名
		* @ param 音量
		*/
        public static function playMusic(param1:String, param2:Number = 1) : SoundChannel
        {
            var _loc_3:Class = null;
            
            if (ModelLocator.getInstance().isMute)
            {
                return new SoundChannel();
            }
            if (ApplicationDomain.currentDomain.hasDefinition(param1))
            {
                setVolume(param2);
                _loc_3 = Reflection.getClass(param1, ApplicationDomain.currentDomain);
                _bgMusic = new _loc_3 as Sound;
                musicChannel = _bgMusic.play(0, 10000, soundTransForm);
                return musicChannel;
            }
            throw new Error("SoundClass [" + param1 + "] Not Found In RSL");
        }// end function

		/*播放一个声音
		* @ param 声音类名
		* @ param 音量
		* @ param 循环几次
		*/
        public static function playSimpleSound(param1:String, param2:Number = 0.4, param3:int = 0) : SoundChannel
        {
            var _loc_4:Class = null;
            var _loc_5:Sound = null;
            if (ModelLocator.getInstance().isMute)
            {
                return new SoundChannel();
            }
            if (ApplicationDomain.currentDomain.hasDefinition(param1))
            {
                setVolume(param2);
                _loc_4 = Reflection.getClass(param1, ApplicationDomain.currentDomain);
                _loc_5 = new _loc_4 as Sound;
                soundChannel = _loc_5.play(0, param3, soundTransForm);
                return soundChannel;
            }
            throw new Error("SoundClass [" + param1 + "] Not Found In RSL");
        }// end function

		/*设置音量
		* @ param 音量
		*/
        public static function setVolume(param1:Number) : void
        {
            soundTransForm.volume = param1;
            return;
        }// end function

		/*设置静音
		* @ param 是否静音
		*/
        public static function mute(param1:Boolean = false) : void
        {
            if (param1)
            {
                soundTransForm.volume = 0;
				if (musicChannel) {
					musicPause = musicChannel.position;
					musicChannel.stop();
					}
            }
            else
            {
                soundTransForm.volume = 0.4;
				if (musicChannel && _bgMusic) {
					musicChannel = _bgMusic.play(musicPause, 10000, soundTransForm);
					musicPause = 0;
					}else {
						//如果之前没有加载，则重新加载
						if (ApplicationConfig.mainConfig) {
							playBgMusic(String(ApplicationConfig.mainConfig.staticURL[0])+String(ApplicationConfig.mainConfig.bgMusic[0]));
							}
						}
            }
            return;
        }// end function

    }
}
