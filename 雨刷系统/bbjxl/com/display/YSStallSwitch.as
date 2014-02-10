package bbjxl.com.display
{
	/**
	作者：被逼叫小乱
	//雨刷开关
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.geom.Rectangle;
	import flash.utils.getDefinitionByName;
	import flash.events.Event;
	import bbjxl.com.event.StallSwitchEvent;

	public class YSStallSwitch extends Sprite
	{
		private var _btn_0:Sprite = new Sprite();
		private var _btn_1:Sprite = new Sprite();
		private var _btn_2:Sprite = new Sprite();
		private var _btn_3:Sprite = new Sprite();
		private var _btn_t:Sprite = new Sprite();
		private var _brush_sw:MovieClip = new MovieClip();//档位
		public var currentState:uint=0;//当前处于哪一档
		
		private var _stallSwitchEvent:StallSwitchEvent;

		//===================================================================================================================//

		//===================================================================================================================//
		public function YSStallSwitch()
		{
			_btn_0 = this.getChildByName("btn_0") as Sprite;
			_btn_1 = this.getChildByName("btn_1") as Sprite;
			_btn_2 = this.getChildByName("btn_2") as Sprite;
			_btn_3 = this.getChildByName("btn_3") as Sprite;
			_btn_t = this.getChildByName("btn_t") as Sprite;
			_btn_0.buttonMode = true;
			_btn_1.buttonMode = true;
			_btn_2.buttonMode = true;
			_btn_3.buttonMode = true;
			_btn_t.buttonMode = true;
			_btn_0.addEventListener(MouseEvent.MOUSE_DOWN, _btn_0MouseDown);
			_btn_1.addEventListener(MouseEvent.MOUSE_DOWN, _btn_1MouseDown);
			_btn_2.addEventListener(MouseEvent.MOUSE_DOWN, _btn_2MouseDown);
			_btn_3.addEventListener(MouseEvent.MOUSE_DOWN, _btn_3MouseDown);
			_btn_t.addEventListener(MouseEvent.MOUSE_DOWN, _btn_tMouseDown);
			_btn_t.addEventListener(MouseEvent.MOUSE_UP, _btn_0MouseDown);
			
			_brush_sw = this.getChildByName("brush_sw") as MovieClip;
			

		}//End Fun
		
		
		
		private function _btn_0MouseDown(e:MouseEvent):void {
			_brush_sw.gotoAndStop(1);
			_stallSwitchEvent=new StallSwitchEvent();
			_stallSwitchEvent.switchId=1;
			currentState=1;
			dispatchEvent(_stallSwitchEvent);
			}
		
		private function _btn_1MouseDown(e:MouseEvent):void {
			_brush_sw.gotoAndStop(2);
			_stallSwitchEvent=new StallSwitchEvent();
			_stallSwitchEvent.switchId=2;
			currentState=2;
			dispatchEvent(_stallSwitchEvent);
			}
			
		private function _btn_2MouseDown(e:MouseEvent):void {
			_brush_sw.gotoAndStop(3);
			_stallSwitchEvent=new StallSwitchEvent();
			_stallSwitchEvent.switchId=3;
			currentState=3;
			dispatchEvent(_stallSwitchEvent);
			}
			
		private function _btn_3MouseDown(e:MouseEvent):void {
			_brush_sw.gotoAndStop(4);
			_stallSwitchEvent=new StallSwitchEvent();
			_stallSwitchEvent.switchId=4;
			currentState=4;
			dispatchEvent(_stallSwitchEvent);
			}
			
		private function _btn_tMouseDown(e:MouseEvent):void {
			_brush_sw.gotoAndStop(5);
			_stallSwitchEvent=new StallSwitchEvent();
			_stallSwitchEvent.switchId=5;
			currentState=5;
			dispatchEvent(_stallSwitchEvent);
			}
		
		//到第几位
		public function gotoNum(frame:uint):void
		{
			_brush_sw.gotoAndStop(frame);
			
		}
		
		//--------------------------------------------------------------------------------------------------------------------//
		
	//===================================================================================================================//
}
}