package bbjxl.com.content.three{
	/**
	作者：被逼叫小乱
	入门培训表头
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import bbjxl.com.ui.FormCell;
	import bbjxl.com.Gvar;
	public class RMPX_FormHead extends Sprite {
		private var _gvar:Gvar=Gvar.getInstance();
		private var _exam:Boolean=false;
		//===================================================================================================================//
		
		//===================================================================================================================//
		public function RMPX_FormHead() {
			_exam=_gvar.T_EXAM_RM;
			init();
		}//End Fun
		
		protected function init():void{
			//故障名称
			var h1:FormCell=new FormCell("故障名称",80,60,0x6699FF,0xffffff);
			//不是考试增加该列
			if(!_exam)
			addChild(h1);
			
			//测量状态
			var h2:FormCell=new FormCell("测量状态",80,60,0x6699FF,0xffffff);
			
			if(!_exam)
			h2.x=h1.x+h1.width;
			
			addChild(h2);
			
			
			//测量内容
			var h3:FormCell=new FormCell("测量内容",80,60,0x6699FF,0xffffff);
			h3.x=h2.x+h2.width;
			addChild(h3);
			
			//测量位置
			var h4:FormCell=new FormCell("测量位置",80,60,0x6699FF,0xffffff);
			h4.x=h3.x+h3.width;
			if(!_exam)
			addChild(h4);
			
			//数据记录
			var h5:FormCell=new FormCell("数据记录",80,30,0x6699FF,0xffffff);
			if(!_exam){
			h5.x=h4.x+h4.width;
			}else{
				h5.x=h3.x+h3.width;
				}
			var h51:FormCell=new FormCell("V",40,30,0x6699FF,0xffffff);
			h51.x=h5.x;
			h51.y=h5.y+h5.height-1;
			
			var h52:FormCell=new FormCell("Ω",40,30,0x6699FF,0xffffff);
			h52.x=h51.x+h51.width-1;
			h52.y=h51.y;
			addChild(h5);
			addChild(h51);
			addChild(h52);
			
			//症状描述
			var h6:FormCell=new FormCell("症状描述",80,60,0x6699FF,0xffffff);
			h6.x=h5.x+h5.width;
			addChild(h6);
			
			//标准数据
			var h7:FormCell=new FormCell("标准数据",80,30,0x6699FF,0xffffff);
			h7.x=h6.x+h6.width;
			var h71:FormCell=new FormCell("V",40,30,0x6699FF,0xffffff);
			h71.x=h7.x;
			h71.y=h7.y+h7.height-1;
			
			var h72:FormCell=new FormCell("Ω",40,30,0x6699FF,0xffffff);
			h72.x=h71.x+h71.width-1;
			h72.y=h71.y;
			if(!_exam){
			addChild(h7);
			addChild(h71);
			addChild(h72);
			}
			
			//性能评判
			var h8:FormCell=new FormCell("性能评判",80,60,0x6699FF,0xffffff);
			if(!_exam){
				h8.x=h7.x+h7.width;
			}else{
				h8.x=h6.x+h6.width;
				}
			addChild(h8);
			
			//如果是考试结果时就增加一个分数列
			if(_gvar.T_EXAM_OVER){
				//性能评判
				var h9:FormCell=new FormCell("分数",80,60,0x6699FF,0xffffff);
				h9.x=h8.x+h8.width;
				addChild(h9);
				}
			}
		//--------------------------------------------------------------------------------------------------------------------//
		
		//===================================================================================================================//
	}
}