package bbjxl.com.content.three{
	/**
	作者：被逼叫小乱
	
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import bbjxl.com.ui.FormCell;
	import bbjxl.com.ui.FormCellNext;
	import fl.data.DataProvider;
	import bbjxl.com.Gvar;
	import bbjxl.com.event.FormCellNextEvent;
	public class RMPX_QDJ_FormCommon extends RMPX_FormCommon {
		private var _gvar:Gvar=Gvar.getInstance();
		private var _exam:Boolean=false;
		//===================================================================================================================//
		
		//===================================================================================================================//
		public function RMPX_QDJ_FormCommon(_value:Object,_sco:Number) {
			_score=_sco;
			_exam=_gvar.T_EXAM_RM;
			super(_value,_sco);
		}//End Fun
		//------------------------------------------------------重写--------------------------------------------------------------//
		override protected function init():void{
			
			//测量内容
			var h3:FormCell=new FormCell(dataObj._name,formWidth,formHeight,0xF1F1F1,0x000000);
			addChild(h3);
			
			//测量位置
			var LocalArr:Array=new Array();
			LocalArr=dataObj.LocArr;
			var h41:FormCell=new FormCell(LocalArr[0],formWidth/2,formHeight,0xF1F1F1,0x000000);
			h41.x=h3.x+h3.width;
			if(!_exam)
			addChild(h41);
			var h42:FormCell=new FormCell(LocalArr[1],formWidth/2,formHeight,0xF1F1F1,0x000000);
			if(!_exam){
			h42.x=h41.x+h41.width-1;
			addChild(h42);
			}
			
			//数据记录
			h51=new FormCell(dataObj.recordV,formWidth/2,formHeight,0xFF6666,0x000000);
			if(!_exam){
				h51.x=h42.x+h42.width;
			}else{
				h51.x=h3.x+h3.width;
				}
			addChild(h51);
			h52=new FormCell(dataObj.recordO,formWidth/2,formHeight,0xFF6666,0x000000);
			h52.x=h51.x+h51.width-1;
			addChild(h52);
			
			//症状描述
			var combox1:Array = String(dataObj.symptomsOps).split(",");
			var comboxid1:Array = String(dataObj.symptomsOpsId).split(",");
			
			var symptomsObj:Object=new Object();
			symptomsObj.init=dataObj.symptoms;
			symptomsObj.id=comboxid1;
			symptomsObj.arr = combox1;
			
			var h61:FormCellNext=new FormCellNext(symptomsObj,formWidth,formHeight,0xF1F1F1,0x000000);
			h61.x=h52.x+h52.width;
			addChild(h61);
			
			h61.addEventListener(FormCellNextEvent.FORMCELLNEXTEVENT,SymformCellNextEventHandler);
			
			
			//标准数据
			var h71:FormCell=new FormCell(dataObj.standardV,formWidth/2,formHeight,0xF1F1F1,0x000000);
			h71.x=h61.x+formWidth;
			if(!_exam)
			addChild(h71);
			var h72:FormCell=new FormCell(dataObj.standardO,formWidth/2,formHeight,0xF1F1F1,0x000000);
			h72.x=h71.x+h71.width-1;
			if(!_exam)
			addChild(h72);
			
			//性能评判
			var combox:Array = String(dataObj.performanceOps).split(",");
			var comboxid:Array = String(dataObj.performanceOpsId).split(",");
			var comObj:Object=new Object();
			comObj.init=dataObj.performance;
			comObj.arr=combox;
			comObj.id=comboxid;

			h8=new FormCellNext(comObj,formWidth,formHeight,0xF1F1F1,0x000000);
			if(!_exam){
				h8.x=h72.x+h72.width;
			}else{
				h8.x=h61.x+formWidth;
				}
			addChild(h8);
			
			h8.addEventListener(FormCellNextEvent.FORMCELLNEXTEVENT,formCellNextEventHandler);
			
			//如果要显示分数
			if(_gvar.T_EXAM_OVER){
				var h9=new FormCell(String(_score),formWidth,formHeight,0xF1F1F1,0x000000);
				h9.x=h8.x+formWidth;
				addChild(h9);
				}
			}
		//--------------------------------------------------------------------------------------------------------------------//
		/*//症状描述下拉条变化
		protected function SymformCellNextEventHandler(e:FormCellNextEvent):void{
			
			var thisChangeEvent:FormCellNextEvent=new FormCellNextEvent(FormCellNextEvent.FORMCOMMONCHANGEEVENT);
			thisChangeEvent.thisSelect=e.thisSelect;
			thisChangeEvent.thisSelectId=e.thisSelectId;
			thisChangeEvent.thisid=_Id;
			thisChangeEvent.parentId=parentId;
			thisChangeEvent.changeRow="_symptoms";
			dispatchEvent(thisChangeEvent);
			
			}*/
		//--------------------------------------------------------------------------------------------------------------------//
		
		//===================================================================================================================//
	}
}