package bbjxl.com.content.three{
	/**
	作者：被逼叫小乱
	扣分表表头
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import bbjxl.com.ui.FormCell;
	import bbjxl.com.Gvar;
	public class JemoeFormHead extends Sprite {
		
		//===================================================================================================================//
		
		//===================================================================================================================//
		public function JemoeFormHead() {
			
			init();
		}//End Fun
		
		protected function init():void{
			//项目
			var h1:FormCell=new FormCell("项目",160,60,0x6699FF,0xffffff);
			addChild(h1);
			
			//内容
			var h2:FormCell=new FormCell("扣分内容",400,60,0x6699FF,0xffffff);
			h2.x=h1.x+h1.width;
			addChild(h2);
			
			//次数
			var h3:FormCell=new FormCell("次数",80,60,0x6699FF,0xffffff);
			h3.x=h2.x+h2.width;
			addChild(h3);
			
			//扣分
			var h4:FormCell=new FormCell("扣分",80,60,0x6699FF,0xffffff);
			h4.x=h3.x+h3.width;
			addChild(h4);
			
			}
		//--------------------------------------------------------------------------------------------------------------------//
		
		//===================================================================================================================//
	}
}