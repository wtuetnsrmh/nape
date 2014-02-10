package bbjxl.com.display{
	/**
	作者：被逼叫小乱
	//点火开关
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.utils.getDefinitionByName;
	import flash.display.Shape;
	import flash.geom.Point;
	import bbjxl.com.event.StartKeyEvent;
	public class StartKey extends MovieClip {
		private var _startKey:MovieClip;
		
		//热区
		private var _startbg:Sprite=new Sprite();
		private var _ignbt:Sprite=new Sprite();
		private var _offbt:Sprite = new Sprite();
		
		public var _currentState:uint = 1;//当前点火开处于的状态
		public var _updataSartKey:Boolean = false;
		
		//事件
		private var _starkeyEvent:StartKeyEvent;
		//===================================================================================================================//
		
		//===================================================================================================================//
		public function StartKey() {
			_offbt = this.getChildByName("offbt") as Sprite;
			_ignbt = this.getChildByName("ignbt") as Sprite;
			
			//热区
			
			_ignbt.buttonMode=true;
		
			_offbt.buttonMode=true;
			
			_ignbt.addEventListener(MouseEvent.CLICK,gotoIgn);
			_offbt.addEventListener(MouseEvent.CLICK,gotoOff);
			
			
		}//End Fun
		
		//START只响应点击，用于第三部分性能检测
		/*public function onlyListenClick():void {
			trace("click")
			_startbg.removeEventListener(MouseEvent.MOUSE_DOWN,gotoStart);
			_startbg.removeEventListener(MouseEvent.MOUSE_UP, gotoIgn);
			_startbg.addEventListener(MouseEvent.CLICK, gotoStart);
			}*/
		
		//START响应DOWN，UP
		/*public function addListenDownUp():void {
			trace("down up")
			_startbg.removeEventListener(MouseEvent.CLICK, gotoStart);
			_startbg.addEventListener(MouseEvent.MOUSE_DOWN,gotoStart);
			_startbg.addEventListener(MouseEvent.MOUSE_UP, gotoIgn);
			
			}*/
		
		/*public function gotoStart(e:MouseEvent):void {
			//if(_startKey.currentFrame!=3){
			_starkeyEvent=new StartKeyEvent();
			_starkeyEvent.startId = 3;
			_currentState = 3;
			_startKey.gotoAndStop(3);
			dispatchEvent(_starkeyEvent);
			}*/
		public function gotoIgn(e:MouseEvent):void{
			_starkeyEvent=new StartKeyEvent();
			_starkeyEvent.startId = 2;
			_currentState = 2;
			this.gotoAndStop(2);
			dispatchEvent(_starkeyEvent);
			}
		public function gotoOff(e:MouseEvent):void{
			_starkeyEvent=new StartKeyEvent();
			_starkeyEvent.startId = 1;
			_currentState = 1;
			this.gotoAndStop(1);
			dispatchEvent(_starkeyEvent);
			}
		
		public function updata():void {
			_updataSartKey = true;
			switch(_currentState) {
				case 1:
				gotoOff(null);
				break;
				case 2:
				gotoIgn(null);
				break;
				/*case 3:
				gotoStart(null);
				break;*/
				}
			}
		//返回一个热区
		private function returnRec(_width:uint,_height:uint):Sprite{
			var formBg:Sprite=new Sprite();
			formBg.graphics.lineStyle(1,0x666666,1);
			formBg.graphics.beginFill(0x44ffff,1);
			formBg.graphics.drawRect(0,0,_width,_height);
			return formBg;
			}
		//--------------------------------------------------------------------------------------------------------------------//
		
		//===================================================================================================================//
	}
}