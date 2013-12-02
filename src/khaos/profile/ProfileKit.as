package khaos.profile
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.system.System;
	import flash.text.TextField;
	import flash.utils.getTimer;
	
	public class ProfileKit extends Sprite
	{
		private var _frames:int = 0;
		private var _fps:int;
		private var _usedMem:int;
		private var _lastUpdateTime:int;
		private var _textField:TextField = new TextField;;
		public function ProfileKit()
		{
			super();
			this.mouseEnabled = false;
			this.mouseChildren = false;
			_textField.background = true;
			_textField.backgroundColor = 0xcdcdcd;
			_textField.textColor = 0xFFFFFF;
			this.addChild(_textField);
			_textField.height = 50;
			_lastUpdateTime = getTimer();
			addEventListener(Event.ENTER_FRAME, _onEnterFrame);
		}
		
		private function _onEnterFrame(event:Event):void
		{
			_frames++;
			if(_frames == 10)
			{
				var now:int = getTimer();
				_fps = _frames * 1000 / (now - _lastUpdateTime);
				_usedMem = System.totalMemory / 1024 / 1024;
				_frames = 0;
				_lastUpdateTime = now;
				
				_textField.text = _text();
			}
		}
		
		private function _text():String
		{
			return "FPS: " + _fps + "\n" + "Memory: " + _usedMem + " M";
		}
	}
}