package bbjxl.com.content.first{
	/**
	作者：被逼叫小乱
	部件认识
	入门培训
	www.bbjxl.com/Blog
	**/
	import bbjxl.com.display.StartKey;
	import bbjxl.com.display.YSStallSwitch;
	import bbjxl.com.Gvar;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import bbjxl.com.display.StartSystem;
	import bbjxl.com.event.StallSwitchEvent;
	import bbjxl.com.event.StartKeyEvent;

	public class RMPX extends StartSystem {
		
		private var _partArr:Array=new Array();//所有的部件存入数组
		//===================================================================================================================//
		
		//===================================================================================================================//
		public function RMPX() {
			init();
		}//End Fun
		//---------------------------------测试-----------------------------------------------------------------------------------//
		private var _startKey:StartKey = new StartKey();
		private var _YsSwitceh:YSStallSwitch = new YSStallSwitch();
		private var _currentStarKeyState:uint = 0;
		private var _currentStallSwitchState:uint = 0;
		private function test():void {
			_startKey = this["startKey"];
			_YsSwitceh = this["YsSwitceh"];
			_startKey.addEventListener(StartKeyEvent.STARTKEYEVENT,startKeyEventHandler);
			_YsSwitceh.addEventListener(StallSwitchEvent.STALLSWITCHEVENT,stallSwitchEventHandler);
			}
		//点火开关点击事件
		private function startKeyEventHandler(e:StartKeyEvent):void{
			
			_currentStarKeyState=e.startId;
			flashStar(_currentStarKeyState,_currentStallSwitchState);
			}
			
		//档位开关切换事件
		private function stallSwitchEventHandler(e:StallSwitchEvent):void{
			
			_currentStallSwitchState=e.switchId;
			flashStar(_currentStarKeyState,_currentStallSwitchState);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		private function init():void{
			//test();
			
			
			_partArr.push(_ysjdq);
			
			_partArr.push(_ysdj);
			
			_partArr.push(_psdj);
			
			_partArr.push(_yskg);
			
			//_partArr.push(_ign);
			
			
			thisAddListener();
			
			}
		//---------------------------------------------------
		//点火开关，档位开关状态变化时调用
		override public function flashStar(startKeyId:uint,switchId:uint):void{
			trace(startKeyId,switchId)
			if(_ign.currentFrame!=startKeyId ||_yskg.currentState!=switchId){
				_ign.gotoAndStop(startKeyId);
				_yskg["bru_sw"].gotoAndStop(switchId);
				if (_ign.currentFrame == 1) {
					//OFF档时
					goto0();
					}else {
						switch(switchId) {
							case 1:
							goto0();
							break;
							case 2:
							goto1();
							break;
							case 3:
							goto2();
							break;
							case 4:
							goto3();
							break;
							case 5:
							goto4();
							break;
							}
						}
			}
			}	
		//-------------IGN状态下--------------------------------------	
		//0档时
		private function goto0():void {
			_ysjdq.Relay.gotoAndStop(1);
			_ysdj.motor_brush.gotoAndStop(1);
			_psdj.gotoAndStop(1);
			
			}
		//1档时
		private function goto1():void {
			goto0();
			_ysdj.motor_brush.gotoAndPlay("fast");
			}
		//2档时
		private function goto2():void {
			goto0();
			_ysdj.motor_brush.gotoAndPlay("slow");
			}
		//3档时
		private function goto3():void {
			goto0();
			_ysjdq.Relay.gotoAndPlay("three");
			_ysdj.motor_brush.gotoAndPlay("rep");
			
			}
		//t档时
		private function goto4():void {
			goto3();
			_psdj.gotoAndStop(2);
			}
		//---------------------------------------------------
		//所以部件增加侦听
		private function thisAddListener():void{
			for(var i:uint=0;i<_partArr.length;i++){
				_partArr[i].addEventListener(MouseEvent.CLICK,partClickhandler);
				_partArr[i].buttonMode=true;
				_partArr[i].mouseChildren=false;
				}
			}
			
		private function partClickhandler(e:MouseEvent):void{
			var partClickEvent:RMPXClickEvent=new RMPXClickEvent();
			trace(e.target.name)
			switch(e.target.name){
				case Gvar.YSJDQ:
				partClickEvent.clickPartId = 0;
				partClickEvent.clickPartName = Gvar.YSJDQ;
				dispatchEvent(partClickEvent);
				break;
				case Gvar.YSDJ:
				partClickEvent.clickPartId = 1;
				partClickEvent.clickPartName = Gvar.YSDJ;
				dispatchEvent(partClickEvent);
				break;
				case Gvar.PSDJ:
				partClickEvent.clickPartId = 2;
				partClickEvent.clickPartName = Gvar.PSDJ;
				dispatchEvent(partClickEvent);
				break;
				case Gvar.YSKG:
				partClickEvent.clickPartId = 3;
				partClickEvent.clickPartName = Gvar.YSKG;
				dispatchEvent(partClickEvent);
				break;
				case Gvar.DHKG:
				partClickEvent.clickPartId = 4;
				partClickEvent.clickPartName = Gvar.DHKG;
				dispatchEvent(partClickEvent);
				break;
				
				}
			}
		//===================================================================================================================//
	}
}