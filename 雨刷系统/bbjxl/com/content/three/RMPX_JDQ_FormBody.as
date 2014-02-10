package bbjxl.com.content.three{
	/**
	作者：被逼叫小乱
	入门培训继电器表身
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import bbjxl.com.ui.FormCell;
	import bbjxl.com.event.FormCellNextEvent;
	import bbjxl.com.Gvar;
	public class RMPX_JDQ_FormBody extends Sprite {
		protected var _gvar:Gvar=Gvar.getInstance();
		protected var _exam:Boolean=false;
		
		protected var formWidth:uint=80;
		protected var formHeight:uint=60;
		
		protected var thisXMl:XML=new XML();
		
		private var _currentFaultOption:uint;//当前故障类型
		protected var _rightXml:XMLList = new XMLList();
		
		public var _totalFormCommon:Array;
		
		protected var _currentPartName:String;//当前表属于哪个部件
		//===================================================================================================================//
		//考试结束后返回:性能检测数据记录表ID、数据记录1、数据记录2、症状描述ID、性能评判ID、得到分值 的数组(即每一行一个对象)
		public var _examOverReturnArr:Array = new Array();
		//===================================================================================================================//
		public function RMPX_JDQ_FormBody(_xml:XML, _optionId:uint = 0) {
			_currentPartName = Gvar.YSJDQ;//其他表的基类这里随机哪个名称
			_currentFaultOption=_optionId;
			_exam=_gvar.T_EXAM_RM;
			thisXMl=_xml;
			//trace("thisXMl="+thisXMl)
			_totalFormCommon=new Array();
			init();
			
		}//End Fun
		
		protected function init():void{
			//故障名称
			//trace(thisXMl.@faultname)
			//trace(thisXMl.state[0].@statename)
			var h1:FormCell=new FormCell(thisXMl.@faultname,formWidth,formHeight*2,0xF1F1F1,0x000000);
			if(!_exam)
			addChild(h1);
			
			//测量状态
			var h21:FormCell=new FormCell(thisXMl.state[1].@statename,formWidth,formHeight,0xF1F1F1,0x000000);
			if(!_exam){
				h21.x=h1.x+h1.width;
				}
			addChild(h21);
			var h22:FormCell=new FormCell(thisXMl.state[0].@statename,formWidth,formHeight,0xF1F1F1,0x000000);
			h22.x=h21.x;
			h22.y=h21.y+h21.height-1;
			addChild(h22);
			
			//增加四行共有的
			var formComm:RMPX_FormCommon=returnCell(0,0);
			formComm.x=h21.x+h21.width;
			
			addChild(formComm);
			
			var formComm1:RMPX_FormCommon=returnCell(0,1);
			formComm1.x=formComm.x;
			formComm1.y=formHeight/2-1;
			
			addChild(formComm1);
			
			var formComm2:RMPX_FormCommon=returnCell(1,0);
			formComm2.x=formComm.x;
			formComm2.y=h22.y-1;
			addChild(formComm2);
			
			var formComm3:RMPX_FormCommon=returnCell(1,1);
			formComm3.x=formComm.x;
			formComm3.y=h22.y+formHeight/2-1;
			addChild(formComm3);
			
			_totalFormCommon.push(formComm);
			_totalFormCommon.push(formComm1);
			_totalFormCommon.push(formComm2);
			_totalFormCommon.push(formComm3);
			}
		
		//根据两个ID找到相应的行，并更改数据;_parentId,_Id用于找到变更哪一行，rowId用于找到变更哪一列，_value变更的内容
		public function modify(_parentId:uint, _id:uint, rowId:uint, _value:*, flash:uint = 0):void {
			 var tempT_D_Str:String = "通电";
			 if (_parentId == 0) 
			 tempT_D_Str="断电";
			
			for(var i:uint=0;i<this.numChildren;i++){
				var temp:*=this.getChildAt(i);
				if(temp is RMPX_FormCommon){
					if(temp.parentId==findChildIndexByStatename(tempT_D_Str) && temp.Id==_id )
					{
						if (flash == 0) {
							//0为修改数据状态
							temp.modify(rowId,_value);
							}else {
								temp.flashBg(rowId,flash);
								}
						
						break;
					}
					}
				}
			}
			
			
		//根据通电还是断电找到该state属于哪个子child
		protected function findChildIndexByStatename(value:String):uint {
			for (var i:String in thisXMl.state) {
				if (thisXMl.state[i].@statename == value) {
					trace("i"+i)
					return uint(i);
					}
				}
			return 0;
			}
			
			
		//返回一行
		protected function returnCell(id1:uint, id2:uint):RMPX_FormCommon {
			 var tempT_D_Str:String = "通电";
			 if (id1 == 0) 
			 tempT_D_Str="断电";
			
			//共同点-一行九列
			var formComm:RMPX_FormCommon;
			
			
			var tempObj:Object = new Object();
			tempObj._performanceid = thisXMl.state.(@statename==tempT_D_Str).performance[id2].@performanceid;
			tempObj._name=thisXMl.state.(@statename==tempT_D_Str).performance[id2].@measurementsname;
			
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
			
			if(_gvar.T_EXAM_RM || _gvar.T_EXAM_OVER)
			formComm=new RMPX_FormCommon(tempObj,Judge(id1,id2,tempObj));
			else
			formComm=new RMPX_FormCommon(tempObj,0);
			formComm.parentId=findChildIndexByStatename(tempT_D_Str);//断电
			formComm.Id=id2;
			//formComm.score=Judge(id1,id2,tempObj);
			return formComm;
			}
		
		protected function returnCurrentId():uint{
			return 3;
			}
		
		//判断分数
		protected function Judge(id1:uint, id2:uint, _value:Object):Number {
			var tempT_D_Str:String = "通电";
			 if (id1 == 0) 
			 tempT_D_Str = "断电";
			 
			var returnScore:Number=0;
			
			_rightXml = _gvar._T_PartRightXml.part.(@partname == _currentPartName);
			trace("_currentPartName="+_currentPartName)
			trace("_rightXml="+_rightXml)
			var tempRightXml:XML=new XML();
			tempRightXml = (_rightXml.fault[_currentFaultOption]);
			
			trace("_currentFaultOption="+_currentFaultOption)
			var tempObj:Object=new Object();
			tempObj.recordV=tempRightXml.state.(@statename==tempT_D_Str).performance[id2].performancedetail.(@name=="standard3data")[0];
			tempObj.recordO=tempRightXml.state.(@statename==tempT_D_Str).performance[id2].performancedetail.(@name=="standard4data")[0];
			tempObj.recordScore=tempRightXml.state.(@statename==tempT_D_Str).performance[id2].performancedetail.(@name=="standarddatascore")[0];
			
			tempObj.symptoms=tempRightXml.state.(@statename==tempT_D_Str).performance[id2].performancedetail.(@name=="symptom")[0];
			tempObj.symScore=tempRightXml.state.(@statename==tempT_D_Str).performance[id2].performancedetail.(@name=="symptomscore")[0];
			
			tempObj.performance =tempRightXml.state.(@statename==tempT_D_Str).performance[id2].performancedetail.(@name=="judge")[0];
			tempObj.perScore= tempRightXml.state.(@statename==tempT_D_Str).performance[id2].performancedetail.(@name=="judgescore")[0];
			
			//判断数据记录列
			if(String(_value.recordV)==String(tempObj.recordV) && String(_value.recordO)==String(tempObj.recordO)){
			returnScore+=Number(tempObj.recordScore);
			}
			
			if(String(_value.symptoms)==String(tempObj.symptoms))
			returnScore+=Number(tempObj.symScore);

			if(String(_value.performance)==String(tempObj.performance))
			returnScore+=Number(tempObj.perScore);
			
			//记录数据用于返回平台
			var ReturnObj:Object = new Object();
			ReturnObj.performanceid = _value._performanceid;
			ReturnObj.standarddata3 = _value.recordV;
			ReturnObj.standarddata4 = _value.recordO;
			ReturnObj.symptomid = _value.symptomsId;
			ReturnObj.judgeid = _value.performanceId;
			ReturnObj.resultscore = returnScore;
			_examOverReturnArr.push(ReturnObj);
			trace("returnScore="+returnScore)
			
			return returnScore;
			}
		//--------------------------------------------------------------------------------------------------------------------//
		
		//===================================================================================================================//
	}
}