package bbjxl.com.content.three{
	/**
	作者：被逼叫小乱
	
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import bbjxl.com.ui.FormCell;
	import bbjxl.com.event.FormCellNextEvent;
	import bbjxl.com.Gvar;
	public class RMPX_DHKG_FormBody extends RMPX_JDQ_FormBody {
		private var _currentFaultOption:uint;
		//===================================================================================================================//
		
		//===================================================================================================================//
		public function RMPX_DHKG_FormBody(_xml:XML, _optionId:uint = 0) {
			
			_currentFaultOption=_optionId;
			super(_xml,_optionId);
			
			
		}//End Fun
		//-----------------------------------------------重写---------------------------------------------------------------------//
		override protected function init():void {
			_currentPartName = Gvar.YSDJ;
			//故障名称
			//trace(thisXMl.attribute("_name"))
			var h1:FormCell =new FormCell(thisXMl.@faultname,formWidth,formHeight* 3 / 2,0xF1F1F1,0x000000);
			if(!_exam)
			addChild(h1);
			
			//测量状态
			var h21:FormCell=new FormCell(thisXMl.state[0].@statename,formWidth,formHeight*3/2,0xF1F1F1,0x000000);
			if(!_exam){
				h21.x=h1.x+h1.width;
				}
			addChild(h21);
			/*var h22:FormCell=new FormCell(thisXMl.child(1).attribute("_name"),formWidth,formHeight,0xF1F1F1,0x000000);
			h22.x=h21.x;
			h22.y=h21.y+h21.height-1;
			addChild(h22);*/
			
			//增加三行共有的
			var formComm:RMPX_FormCommon=returnCell(0,0);
			formComm.x=h21.x+h21.width;
			
			addChild(formComm);
			
			var formComm1:RMPX_FormCommon=returnCell(0,1);
			formComm1.x=formComm.x;
			formComm1.y=formHeight/2-1;
			
			addChild(formComm1);
			
			var formComm2:RMPX_FormCommon=returnCell(0,2);
			formComm2.x=formComm.x;
			formComm2.y=formComm1.y+formHeight/2;
			addChild(formComm2);
			
			/*var formComm3:RMPX_FormCommon=returnCell(1,1);
			formComm3.x=formComm.x;
			formComm3.y=h22.y+formHeight/2-1;
			addChild(formComm3);*/
			_totalFormCommon.push(formComm);
			_totalFormCommon.push(formComm1);
			_totalFormCommon.push(formComm2);
			
			}
		override protected function returnCurrentId():uint{
			return 1;
			}
		//--------------------------------------------------------------------------------------------------------------------//
		
		//===================================================================================================================//
	}
}