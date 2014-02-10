package bbjxl.com.content.four{
	/**
	作者：被逼叫小乱
	//第四部分下面的页码
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import bbjxl.com.content.three.MNKS_Botton;
	import flash.utils.getDefinitionByName;
	import bbjxl.com.Gvar;
	public class F_MNKS_Botton extends MNKS_Botton {
		
		//===================================================================================================================//
		
		//===================================================================================================================//
		public function F_MNKS_Botton(_value:uint) {
			super(_value);
		}//End Fun
		
		override protected function init():void{
			
			var tempPre:Class=getDefinitionByName("prevBt") as Class;
			_prvBt=new tempPre();
			_prvBt.addEventListener(MouseEvent.CLICK,prvClickEventHandler);
			var tempNext:Class=getDefinitionByName("nextBt") as Class;
			_nextBt=new tempNext();
			_prvBt.x=30;
			_prvBt.y=10;
			addChild(_prvBt);
			addChild(_allPageDisplay);
			addChild(_mask);
			
			_Gvar = Gvar.getInstance();
			addDashed();
		}
		//--------------------------------------------------------------------------------------------------------------------//
		
		//===================================================================================================================//
	}
}