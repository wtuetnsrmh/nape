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
	public class RMPX_QDJ_FormBody extends RMPX_JDQ_FormBody {
		private var _currentFaultOption:uint;
		//===================================================================================================================//
		
		//===================================================================================================================//
		public function RMPX_QDJ_FormBody(_xml:XML, _optionId:uint = 0) {
			
			_currentFaultOption=_optionId;
			super(_xml,_optionId);
			
			
		}//End Fun
		//-----------------------------------------------重写---------------------------------------------------------------------//
		override protected function init():void {
			_currentPartName = Gvar.QDJ;
			//故障名称
			var h1:FormCell=new FormCell(thisXMl.@faultname,formWidth,formHeight*3,0xF1F1F1,0x000000);
			if(!_exam)
			addChild(h1);
			
			//测量状态
			var h21:FormCell=new FormCell(thisXMl.state[1].@statename,formWidth,formHeight*2,0xF1F1F1,0x000000);
			if(!_exam){
				h21.x=h1.x+h1.width;
				}
			addChild(h21);
			var h22:FormCell=new FormCell(thisXMl.state[0].@statename,formWidth,formHeight,0xF1F1F1,0x000000);
			h22.x=h21.x;
			h22.y=h21.y+h21.height-1;
			addChild(h22);
			
			//增加六行共有的
			var formComm:RMPX_QDJ_FormCommon=returnCell1(0,0);
			formComm.x=h21.x+h21.width;
			
			addChild(formComm);
			
			var formComm1:RMPX_QDJ_FormCommon=returnCell1(0,1);
			formComm1.x=formComm.x;
			formComm1.y=formHeight/2;
			
			addChild(formComm1);
			
			var formComm2:RMPX_QDJ_FormCommon=returnCell1(0,2);
			formComm2.x=formComm.x;
			formComm2.y=formComm1.y+formHeight/2;
			addChild(formComm2);
			
			var formComm3:RMPX_QDJ_FormCommon=returnCell1(0,3);
			formComm3.x=formComm.x;
			formComm3.y=formComm2.y+formHeight/2;
			addChild(formComm3);
			
			var formComm4:RMPX_QDJ_FormCommon=returnCell1(1,0);
			formComm4.x=formComm.x;
			formComm4.y=h22.y;
			addChild(formComm4);
			
			var formComm5:RMPX_QDJ_FormCommon=returnCell1(1,1);
			formComm5.x=formComm.x;
			formComm5.y=formComm4.y+formHeight/2;
			addChild(formComm5);
			_totalFormCommon.push(formComm);
			_totalFormCommon.push(formComm1);
			_totalFormCommon.push(formComm2);
			_totalFormCommon.push(formComm3);
			_totalFormCommon.push(formComm4);
			_totalFormCommon.push(formComm5);
			
			}
			
		//返回一行
		 protected function returnCell1(id1:uint, id2:uint):RMPX_QDJ_FormCommon {
			 var tempT_D_Str:String = "通电";
			 if (id1 == 0) 
			 tempT_D_Str="断电";
			 
			//共同点-一行九列
			var formComm:RMPX_QDJ_FormCommon;

			var tempObj:Object = new Object();
			tempObj._performanceid = thisXMl.state.(@statename==tempT_D_Str).performance[id2].@performanceid;
			tempObj._name=thisXMl.state.(@statename==tempT_D_Str).performance[id2].@measurementsname;
			trace("tempObj._performanceid="+tempObj._performanceid)
			//测量位置
			var tempLoc:Array=new Array();
			var tempStr:String=thisXMl.state.(@statename==tempT_D_Str).performance[id2].performancedetail.(@name=="point1number")[0];
			tempLoc.push(tempStr);
			var tempStr2:String=thisXMl.state.(@statename==tempT_D_Str).performance[id2].performancedetail.(@name=="point2number")[0];
			tempLoc.push(tempStr2);
			tempObj.LocArr=tempLoc;
			
			//数据记录V,Ω
			tempObj.recordV=thisXMl.state.(@statename==tempT_D_Str).performance[id2].performancedetail.(@name=="standard3data")[0];
			tempObj.recordO=thisXMl.state.(@statename==tempT_D_Str).performance[id2].performancedetail.(@name=="standard4data")[0];
			
			//症状描述
			tempObj.symptoms=thisXMl.state.(@statename==tempT_D_Str).performance[id2].performancedetail.(@name=="symptom")[0];
			tempObj.symptomsId = thisXMl.state.(@statename==tempT_D_Str).performance[id2].performancedetail.(@name == "symptomid")[0];
			//症状描述选项
			tempObj.symptomsOps = thisXMl.state.(@statename==tempT_D_Str).performance[id2].performancedetail.(@name == "symptomoptions")[0];
			tempObj.symptomsOpsId =thisXMl.state.(@statename==tempT_D_Str).performance[id2].performancedetail.(@name == "symptomoptionsid")[0];
			
			//标准数据
			tempObj.standardV=thisXMl.state.(@statename==tempT_D_Str).performance[id2].performancedetail.(@name == "standard1data")[0];
			tempObj.standardO=thisXMl.state.(@statename==tempT_D_Str).performance[id2].performancedetail.(@name == "standard2data")[0];
			
			//性能评判
			tempObj.performance=thisXMl.state.(@statename==tempT_D_Str).performance[id2].performancedetail.(@name == "judge")[0];
			tempObj.performanceId = thisXMl.state.(@statename==tempT_D_Str).performance[id2].performancedetail.(@name == "judgeid")[0];
			//性能评判选项
			tempObj.performanceOps=thisXMl.state.(@statename==tempT_D_Str).performance[id2].performancedetail.(@name == "judgeoptions")[0];//////////////
			tempObj.performanceOpsId = thisXMl.state.(@statename==tempT_D_Str).performance[id2].performancedetail.(@name == "judgeoptionsid")[0];////////
			
			if (_gvar.T_EXAM_RM || _gvar.T_EXAM_OVER)
			formComm=new RMPX_QDJ_FormCommon(tempObj,Judge(id1,id2,tempObj));
			else
			formComm=new RMPX_QDJ_FormCommon(tempObj,0);
			formComm.parentId=findChildIndexByStatename(tempT_D_Str);//断电
			formComm.Id = id2;

			return formComm;
			}
			
		/*//根据通电还是断电找到该state属于哪个子child
		protected function findChildIndexByStatename(value:String):uint {
			for (var i:String in thisXMl.state) {
				if (thisXMl.state[i].@statename == value) {
					trace("i"+i)
					return uint(i);
					}
				}
			return 0;
			}*/
			
		override protected function returnCurrentId():uint{
			return 4;
			}
		//--------------------------------------------------------------------------------------------------------------------//
		
		//===================================================================================================================//
	}
}