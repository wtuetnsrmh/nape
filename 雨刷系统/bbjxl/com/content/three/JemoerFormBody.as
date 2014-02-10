package bbjxl.com.content.three{
	/**
	作者：被逼叫小乱
	扣分表表身
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import bbjxl.com.ui.FormCell;
	import bbjxl.com.event.FormCellNextEvent;
	import bbjxl.com.Gvar;
	public class JemoerFormBody extends Sprite {
		protected var _gvar:Gvar=Gvar.getInstance();

		protected var formWidth:uint=80;
		protected var formHeight:uint=60;
		//===================================================================================================================//

		//===================================================================================================================//
		public function JemoerFormBody(arr:Array) {
			//项目
			var h1:FormCell=new FormCell("操作规范（20）",formWidth*2,formHeight*arr.length,0xF1F1F1,0x000000);
			addChild(h1);
			
			//内容
			//增加2行共有的
			for (var i:uint = 0; i < arr.length; i++ ) {
				var formComm:Sprite = returnCell(arr[i]);
				formComm.x=h1.x+h1.width;
				formComm.y=formComm.height*i-i;
				addChild(formComm);
				}
			}
		
		//返回一行
		protected function returnCell(_value:Object):Sprite{
			var returnSp:Sprite = new Sprite();
			var h1:FormCell = new FormCell(_value.content, formWidth * 5, formHeight, 0xF1F1F1, 0x000000);
			returnSp.addChild(h1);
			var h2:FormCell = new FormCell(_value.num, formWidth, formHeight, 0xF1F1F1, 0x000000);
			h2.x = h1.x + h1.width;
			returnSp.addChild(h2);
			var h3:FormCell = new FormCell("扣:" +String(Number(_value.jemoScore)*Number(_value.num)), formWidth, formHeight, 0xF1F1F1, 0x000000);
			h3.x = h2.x + h2.width;
			returnSp.addChild(h3);
			return returnSp;
			}
	
		//--------------------------------------------------------------------------------------------------------------------//
		
		//===================================================================================================================//
	}
}