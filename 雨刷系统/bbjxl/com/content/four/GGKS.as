package bbjxl.com.content.four{
	/**
	作者：被逼叫小乱
	
	www.bbjxl.com/Blog
	**/
	import bbjxl.com.content.first.MNKSClickEvent;
	import bbjxl.com.loading.xmlReader;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import bbjxl.com.ui.CountDown;
	import bbjxl.com.event.CountDownEvent;
	import bbjxl.com.content.three.MNKS_Botton;
	import flash.utils.getQualifiedSuperclassName;
	import bbjxl.com.content.second.ParentClass;
	import flash.utils.getDefinitionByName;
	import flash.utils.getQualifiedClassName;
	import bbjxl.com.ui.CommonlyClass;
	import bbjxl.com.content.three.RMPX_Fault_Select;
	import bbjxl.com.content.first.MNKS_Botton_PageClickEvent;
	import bbjxl.com.content.three.FaultOptionClickEvent;
	import bbjxl.com.Gvar;
	import org.aswing.BorderLayout;
	import org.aswing.CenterLayout;
	import org.aswing.event.FrameEvent;
	import org.aswing.event.AWEvent;
	import org.aswing.JFrame;
	import org.aswing.JScrollPane;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import org.aswing.AsWingManager;
	import bbjxl.com.display.B_Alert;
	import bbjxl.com.event.WebServeResultEvent;
	import org.aswing.table.DefaultTableModel;
	import bbjxl.com.net.MyWebserviceSingle;
	
	import bbjxl.com.net.MyWebservice;
	import com.greensock.*;
	import com.greensock.easing.*;
	import bbjxl.com.content.second.AlertShow;
	
	import be.wellconsidered.services.WebService;
import be.wellconsidered.services.Operation;

import be.wellconsidered.services.events.OperationEvent;
	public class GGKS extends MNKS {
		private var _Examxml:String = "<?xml version=\"1.0\" encoding=\"utf-8\" ?>";
		protected var examEndfr:JFrame = new JFrame(this, "考试结果", true);//考试结果提示窗口
		private var _examuseranswerdetail:String = "";//试题部分信息
		
		private var rmpx_Ws:MyWebserviceSingle;
		//===================================================================================================================//
		private var ws:WebService;
		private var op:Operation;
		//===================================================================================================================//
		public function GGKS() {
			super();
		}//End Fun
		
		/*override protected function completeHandler(e:Event):void {
			trace("ggks_completeHandler")
			(_contectSwf.content)["puseOP"]("DiagnosisExamValid", _gvar.CoursewareId, _gvar.UserId );
			
			(_contectSwf.content)["puseOP"]("ResistanceVoltage", 1, 1 );
			(_contectSwf.content)["puseOP"]("ResistanceVoltage", 1, 2 );
			(_contectSwf.content)["puseOP"]("ResistanceVoltage", 1, 3 );
			
			(_contectSwf.content).addEventListener(WebServeResultEvent.COMPLETE, examInfoloadXmloverHandler);
			}*/
			
		//--------------------服务端返回的数据----------------------------------	
		override protected function loadXmloverHandler(e:WebServeResultEvent):void {
			trace("e.methName="+e.methName)
			switch(e.methName) {
				case "ResistanceVoltage":
					if (_resultXml == null) {
					_resultXml = new XML();
					_resultXml = XML(e.data);
					}else {
						_resultXml.insertChildAfter(_resultXml.SwitchState,XML(e.data).SwitchState);
						}
					trace("_resultXml.children().length()="+_resultXml.children().length())
					if(_resultXml.children().length()==3){
						loadxmloverhandler1(_resultXml);
						trace(_resultXml.SwitchState.@stateid)//输出的顺序是跟读到的相反：321
					}
					break;
				case "SymptomsLibrary":
					loadDiagnsisXmlHandler(e.data);
					break;
				case "SymptomsTable":
					loadSymptomsTableHandler(e.data);
					break;
				case "ReasonLibrary":
					loadReasonLibHandler(e.data);
					break;
				case "ReasonTable":
					loadReasonTableHandler(e.data);
					break;
				case "DiagnosisExam":
					loadMnksXmloverhandler(e.data);
					break;
				case "DiagnosisExamValid":
					examInfoloadXmloverHandler(String(e.data));
					break;
				default :
					break;
				}
			/*trace(e.data)
			trace(e.methName)*/
			}	
			
		//考试信息加载完
		private function examInfoloadXmloverHandler(value:String):void {
			trace("String(e.data)="+value)
			switch(value) {
				case "0":
				trace("examInfoloadXmloverHandler_0")
				
				break;
				case "1":
				creaAlert("不存在考试!");
				(_contectSwf.content).removeEventListener(WebServeResultEvent.COMPLETE, loadXmloverHandler);
				break;
				case "2":
				creaAlert("不在规定考试时间内!");
				(_contectSwf.content).removeEventListener(WebServeResultEvent.COMPLETE, loadXmloverHandler);
				break;
				case "3":
				creaAlert("不允许重考!");
				(_contectSwf.content).removeEventListener(WebServeResultEvent.COMPLETE, loadXmloverHandler);
				break;
				case "4":
				creaAlert("重考次数已经到了!");
				(_contectSwf.content).removeEventListener(WebServeResultEvent.COMPLETE, loadXmloverHandler);
				break;
				}
			}
		
		//创建弹出窗口
		private function creaAlert(alertText:String):void {
			var _alert:B_Alert = new B_Alert(alertText);
			addChild(_alert);
			_alert.addEventListener("CLOSEALERTWINDOW", closeAlertWindowHandler);
			}
		//回到二次菜单
		private function closeAlertWindowHandler(e:Event):void {
			var tempEvent:MNKSClickEvent=new MNKSClickEvent("closemnksevent");
			dispatchEvent(tempEvent);
			}	
			
		//提交按钮点击
		override protected function setUpEventHandler(e:Event):void {
			//记录考试结束时间
			Gvar.getInstance().ExamOverTime = CommonlyClass.DateTodate(new Date());
			
			trace("提交")
			_reTime.timerStop();
			_reTimeSp.removeChild(_reTime);
			_bottonSp.removeChild(_reTimeSp);
			_reTime.removeEventListener(CountDownEvent.COUNTDOWNEVENT,countdownOver);
			setUpClickHandler();
			//如果有诊断表就要隐藏该表
			if (_diagnosis) {
				_diagnosis.closeFrame();
				_diagnosis.Idispose();
				removeChild(_diagnosis);
				_diagnosis = null;
				}
			}
		//提交
		protected function setUpClickHandler():void {
				getTotalTableMode();
			}
			
		//获取所有的表信息
		private function getTotalTableMode():void {
			
			_examuseranswerdetail+=diagnosisexamuseranswerdetail_symptoms(_diagnosis._totalTabelModeArr[0].model as DefaultTableModel);
			_examuseranswerdetail+=diagnosisexamuseranswerdetail_analysis(_diagnosis._totalTabelModeArr[1].model as DefaultTableModel);
			_examuseranswerdetail+=diagnosisexamuseranswerdetail_process(_diagnosis._totalTabelModeArr[2].model as DefaultTableModel);
			_examuseranswerdetail+=diagnosisexamuseranswerdetail_point(_diagnosis._totalTabelModeArr[3].model as DefaultTableModel);
			_examuseranswerdetail+=diagnosisexamuseranswerdetail_verification(_diagnosis._totalTabelModeArr[4].model as DefaultTableModel);
			_examuseranswerdetail+=diagnosisexamuseranswerdetail_toolmarking(_diagnosis._totalTabelModeArr[5].model as DefaultTableModel);
			
			//返回给后台信息
			 _Examxml += "<data>";
                _Examxml += "<diagnosisexamuseranswer  name=\"examid\" description=\"考试ID\"><![CDATA["+_gvar.Examid+"]]></diagnosisexamuseranswer >";
                _Examxml += "<diagnosisexamuseranswer  name=\"positionid\" description=\"故障点ID\"><![CDATA["+_gvar._currentFaultId+"]]></diagnosisexamuseranswer >";
                _Examxml += "<diagnosisexamuseranswer  name=\"userid\" description=\"用户ID\"><![CDATA["+_gvar.UserId+"]]></diagnosisexamuseranswer >";
                _Examxml += "<diagnosisexamuseranswer  name=\"status\" description=\"考试状态\"><![CDATA[1]]></diagnosisexamuseranswer >";
                _Examxml += "<diagnosisexamuseranswer  name=\"sumscore\" description=\"考试成绩\"><![CDATA["+_gvar._endExamScore+"]]></diagnosisexamuseranswer >";
                _Examxml += "<diagnosisexamuseranswer  name=\"startdate\" description=\"开始考试时间\"><![CDATA["+_gvar.ExamStartTime+"]]></diagnosisexamuseranswer >";
                _Examxml += "<diagnosisexamuseranswer  name=\"enddate\" description=\"结束考试时间\"><![CDATA[" +_gvar.ExamOverTime+"]]></diagnosisexamuseranswer >";
			
			_Examxml += _examuseranswerdetail;
			_Examxml += "</data>";
			
			trace((_Examxml));
			ws=new WebService(Gvar.WebServerUrl);
			op = new Operation(ws);
			op.addEventListener(OperationEvent.FAILED, onFault);
			op.addEventListener(OperationEvent.COMPLETE, examOverComplete);
			op.DiagnosisExamUserAnswer({xml:_Examxml});
			/*rmpx_Ws = MyWebserviceSingle.getInstance();
			rmpx_Ws.myOp.DiagnosisExamUserAnswer({xml:_Examxml});
			rmpx_Ws.myOp.addEventListener("complete", rmpx_Ws.onResult);
			rmpx_Ws.myOp.addEventListener("failed", rmpx_Ws.onFault);
			rmpx_Ws.addEventListener(MyWebservice.WSCOMPLETE, examOverComplete);*/
			}
		
		
		private function onFault(e:OperationEvent):void
		{
			trace("onFault="+e.data);
		}
		//给出提示
		private function examOverComplete(e:OperationEvent):void {
			/*rmpx_Ws.myOp.removeEventListener("complete", rmpx_Ws.onResult);
			rmpx_Ws.myOp.removeEventListener("failed", rmpx_Ws.onFault);
			rmpx_Ws.removeEventListener(MyWebservice.WSCOMPLETE, examOverComplete);*/
			trace(e.data)	
			if (e.data == "true" || e.data==true) {
				trace("保存成功");
				var mnksEnd:GGKS_end = new GGKS_end(_gvar._endExamScore);
				var tmepJs:JScrollPane = mnksEnd.tabelPanel;
				examEndfr.setContentPane(tmepJs);
				AsWingManager.getStage().align =StageAlign.TOP;
				AsWingManager.getStage().scaleMode = StageScaleMode.SHOW_ALL;
				examEndfr.setClosable(true);
				examEndfr.setResizable(false);
				examEndfr.setDragable(false);
				examEndfr.setComBoundsXYWH((Gvar.STAGE_X-400) / 2, (Gvar.STAGE_Y-200) / 2, 400,200);
				examEndfr.show();
				examEndfr.addEventListener(FrameEvent.FRAME_CLOSING, examEndCloseHandler);
				
				//弹出提示信息
				/*var popInfor:AlertShow=new AlertShow("考试结束，请点击菜单返回！",400,200);
				popInfor.x=(Gvar.STAGE_X-popInfor.width) / 2;
				popInfor.y=(Gvar.STAGE_Y-popInfor.height) / 2;
				addChild(popInfor);
				TweenLite.from(popInfor, .5, {x:Gvar.STAGE_X/2,y:Gvar.STAGE_Y/2,scaleX:.1,scaleY:.1,alpha:.1, ease:Back.easeOut});*/
				}else {
					trace("保存失败");
					creaAlert("保存失败!请检查网络是否连接!");
					}
			}
		//-----diagnosisexamuseranswerdetail_symptoms----------------------------------------------
		private function diagnosisexamuseranswerdetail_symptoms(value:DefaultTableModel):String {
			var returnString:String = "";
			for (var i:int = 0; i < (value as DefaultTableModel).getRowCount(); i++ ) {
				var tempStr:String = "<diagnosisexamuseranswerdetail_symptoms partname=" + returnStr((value as DefaultTableModel).getValueAt(i, 0)) + "symptomname=" + returnStr((value as DefaultTableModel).getValueAt(i, 1)) + "score=" + returnStr((value as DefaultTableModel).getValueAt(i, 3),true) + "description=\"症状部件、症状描述、分数\"></diagnosisexamuseranswerdetail_symptoms>";
				returnString += tempStr;
				}
				return returnString;
			}
		//-----diagnosisexamuseranswerdetail_analysis----------------------------------------------
		private function diagnosisexamuseranswerdetail_analysis(value:DefaultTableModel):String {
			// <diagnosisexamuseranswerdetail_analysis partname="请选择" positionname="请选择" score="1"  description="故障部件、故障点、分数"></diagnosisexamuseranswerdetail_analysis>
			var returnString:String = "";
			for (var i:int = 0; i < (value as DefaultTableModel).getRowCount(); i++ ) {
				var tempStr:String = "<diagnosisexamuseranswerdetail_analysis partname=" + returnStr((value as DefaultTableModel).getValueAt(i, 0)) + "positionname=" + returnStr((value as DefaultTableModel).getValueAt(i, 1)) + "score=" + returnStr((value as DefaultTableModel).getValueAt(i, 3),true) + "description=\"故障部件、故障点、分数\"></diagnosisexamuseranswerdetail_analysis>";
				returnString += tempStr;
				}
				return returnString;
			}
		//-----diagnosisexamuseranswerdetail_process----------------------------------------------
		private function diagnosisexamuseranswerdetail_process(value:DefaultTableModel):String {
			//<diagnosisexamuseranswerdetail_process partname="请选择" inspectionmanner="在线" pointname1="请选择" pointname2="请选择" measuringvalue="12" measuringresult="请选择" score="1" description="故障部件、检查方式选择、测量点1、测量点2、测量数值、测量结果判断、分数"></diagnosisexamuseranswerdetail_process>
			var returnString:String = "";
			for (var i:int = 0; i < (value as DefaultTableModel).getRowCount(); i++ ) {
				var tempStr:String = "<diagnosisexamuseranswerdetail_process partname=" + returnStr((value as DefaultTableModel).getValueAt(i, 0)) + "inspectionmanner=" + returnStr((value as DefaultTableModel).getValueAt(i, 1)) + "pointname1=" + returnStr((value as DefaultTableModel).getValueAt(i, 2)) + "pointname2=" + returnStr((value as DefaultTableModel).getValueAt(i, 3))
									+ "measuringvalue=" + returnStr((value as DefaultTableModel).getValueAt(i, 4)) + "measuringresult=" + returnStr((value as DefaultTableModel).getValueAt(i, 5))+ "score=" + returnStr((value as DefaultTableModel).getValueAt(i, 7)) + "description=\"故障部件、检查方式选择、测量点1、测量点2、测量数值、测量结果判断、分数\"></diagnosisexamuseranswerdetail_process>";
				returnString += tempStr;
				}
				return returnString;
			}
		//-----diagnosisexamuseranswerdetail_point----------------------------------------------
		private function diagnosisexamuseranswerdetail_point(value:DefaultTableModel):String {
			//<diagnosisexamuseranswerdetail_point partname="请选择" positionname="请选择" score="1"  description="故障部件、故障点、分数"></diagnosisexamuseranswerdetail_point>
			var returnString:String = "";
			for (var i:int = 0; i < (value as DefaultTableModel).getRowCount(); i++ ) {
				var tempStr:String = "<diagnosisexamuseranswerdetail_point partname=" + returnStr((value as DefaultTableModel).getValueAt(i, 0)) + "positionname=" + returnStr((value as DefaultTableModel).getValueAt(i, 1)) + "score=" + returnStr((value as DefaultTableModel).getValueAt(i, 2)) + "description=\"故障部件、故障点、分数\"></diagnosisexamuseranswerdetail_point>";
				returnString += tempStr;
				}
				return returnString;
			}
		//-----diagnosisexamuseranswerdetail_verification----------------------------------------------
		private function diagnosisexamuseranswerdetail_verification(value:DefaultTableModel):String {
			//<diagnosisexamuseranswerdetail_verification excludemanner="未选择" score1="0" judgment="图中排除点击" score2="0" startconfirmation="打点火开关ST档" score3="0" prompt="未排除故障"  description="故障排除方式选择、得分、故障排除确认判断、得分、起动确认判断、得分、提示"></diagnosisexamuseranswerdetail_verification>
			var returnString:String = "";
			for (var i:int = 0; i < (value as DefaultTableModel).getRowCount(); i++ ) {
				var tempStr:String = "<diagnosisexamuseranswerdetail_verification excludemanner=" + returnStr((value as DefaultTableModel).getValueAt(i, 0)) + "score1=" + returnStr((value as DefaultTableModel).getValueAt(i, 1)) + "judgment=\"图中排除点击\"" + " score2=" + returnStr((value as DefaultTableModel).getValueAt(i, 4))
									+ "startconfirmation=\"打点火开关ST档\"" + " score3=" + returnStr((value as DefaultTableModel).getValueAt(i, 7))+ "prompt=" + returnStr((value as DefaultTableModel).getValueAt(i, 8)) + "description=\"故障排除方式选择、得分、故障排除确认判断、得分、起动确认判断、得分、提示\"></diagnosisexamuseranswerdetail_verification>";
				returnString += tempStr;
				}
				return returnString;
			}
		//-----diagnosisexamuseranswerdetail_toolmarking----------------------------------------------
		private function diagnosisexamuseranswerdetail_toolmarking(value:DefaultTableModel):String {
			//<diagnosisexamuseranswerdetail_toolmarking errorprompt="万用表电压档测电阻" errornumber="0" marking="0"  description="错误提示、错误次数、扣分"></diagnosisexamuseranswerdetail_toolmarking>
			var returnString:String = "";
			for (var i:int = 0; i < (value as DefaultTableModel).getRowCount(); i++ ) {
				var tempStr:String = "<diagnosisexamuseranswerdetail_toolmarking errorprompt=" + returnStr((value as DefaultTableModel).getValueAt(i, 0)) + "errornumber=" + returnStr((value as DefaultTableModel).getValueAt(i, 1)) +  "marking=" + returnStr((value as DefaultTableModel).getValueAt(i, 2)) + "description=\"错误提示、错误次数、扣分\"></diagnosisexamuseranswerdetail_toolmarking>";
				returnString += tempStr;
				}
				return returnString;
			}
		//---------------------------------------------------
		//返回加双引号的字符串
		private function returnStr(_str:Object,_flag:Boolean=false):String {
			var tempStr:String = String(_str);
			if (tempStr == " " && _flag) {
				return "\""+0 + "\""+" ";
				}
			return "\""+tempStr + "\""+" ";
			}		
		//关闭结束窗口
		protected function examEndCloseHandler(e:FrameEvent):void {
			var retunrSecondSecen:MNKSClickEvent = new MNKSClickEvent(MNKSClickEvent.CLOSEMNKSEVENT);
			dispatchEvent(retunrSecondSecen);
			examEndfr.dispose();
			}
		//--------------------------------------------------------------------------------------------------------------------//
		
		//===================================================================================================================//
	}
}