package bbjxl.com.content.three{
	/**
	作者：被逼叫小乱
	
	www.bbjxl.com/Blog
	**/
	import bbjxl.com.content.first.MNKSClickEvent;
	import bbjxl.com.display.B_Alert;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import bbjxl.com.content.first.MNKS_Botton_PageClickEvent;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import com.greensock.*;
	import bbjxl.com.ui.CommonlyClass;
	import com.greensock.easing.*;
	import bbjxl.com.content.second.AlertShow;
	import bbjxl.com.Gvar;
	import bbjxl.com.net.MyWebserviceSingle;
	import bbjxl.com.net.MyWebservice;
	
	public class GGKS extends MNKS {
		private var _xml:String = "<?xml version=\"1.0\" encoding=\"utf-8\" ?>";
		private var _examuseranswerdetail:String = "";//试题部分信息
		private var totalJeomScore:Number = 0;//总共操作扣的分数
		//===================================================================================================================//
		
		//===================================================================================================================//
		public function GGKS() {
			super();
		}//End Fun
		
		
		
		//--------------------------------------------------------重写------------------------------------------------------------//
		override protected function init():void{
			rmpx_Ws = MyWebserviceSingle.getInstance();
			rmpx_Ws.myOp.PerformanceExamValid({CoursewareId:Gvar.getInstance().CoursewareId,UserId:Gvar.getInstance().UserId});
			rmpx_Ws.myOp.addEventListener("complete", rmpx_Ws.onResult);
			rmpx_Ws.myOp.addEventListener("failed", rmpx_Ws.onFault);
			rmpx_Ws.addEventListener(MyWebservice.WSCOMPLETE, ggks_WsComplete);
			
			
			}
			
		private function ggks_WsComplete(e:Event):void {
			
			rmpx_Ws.myOp.removeEventListener("complete", rmpx_Ws.onResult);
			rmpx_Ws.myOp.removeEventListener("failed", rmpx_Ws.onFault);
			rmpx_Ws.removeEventListener(MyWebservice.WSCOMPLETE, ggks_WsComplete);
			switch(String(e.target.data)) {
				case "0":
				rmpx_Ws.myOp.Performance({CoursewareId:Gvar.getInstance().CoursewareId});
				rmpx_Ws.myOp.addEventListener("complete", rmpx_Ws.onResult);
				rmpx_Ws.myOp.addEventListener("failed", rmpx_Ws.onFault);
				rmpx_Ws.addEventListener(MyWebservice.WSCOMPLETE, mnks_WsComplete);
				break;
				case "1":
				creaAlert("不存在考试!");
				break;
				case "2":
				creaAlert("不在规定考试时间内!");
				break;
				case "3":
				creaAlert("不允许重考!");
				break;
				case "4":
				creaAlert("重考次数已经到了!");
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
			
		//提交
		override protected function setUpClickHandler(e:MNKS_Botton_PageClickEvent):void{
			//记录考试结束时间
			Gvar.getInstance().ExamOverTime = CommonlyClass.DateTodate(new Date());
			
			//考试时间停止
			_reTime.timerStop();
			
			CommonlyClass.cleaall(this);
			
			//所有得分情况数组
			var totalScoreArr:Array = new Array();
			
			//设置此时显示所有的列
			_gvar.T_EXAM_RM=false;
			_gvar.T_EXAM_OVER=true;
			for(var i:uint=0;i<_examNum;i++){
				var tempForm:*;
				tempForm=retrunForm(_examArr[i].name);
				if(tempForm){
				tempForm.examOver(_examArr[i].currentSelecteFaultOption);
				totalScoreArr.push(tempForm.formBody._examOverReturnArr);
				}
				}
			
			//操作规范扣分部分
			for (var n:uint = 0; n < _jeomArr.length; n++ ) {
				switch(_jeomArr[n]) {
					case 0:
					trace("万用表使用错误，电阻档测电压");
					trace("扣:" + Gvar._T_Un_Jeom);
					totalJeomScore += Gvar._T_Un_Jeom;
					break;
					case 1:
					trace("万用表使用错误，电压档测电阻");
					trace("扣:" + Gvar._T_Un_Jeom);
					totalJeomScore += Gvar._T_Un_Jeom;
					break;
					case 2:
					trace("万用表使用错误，电压档测电阻");
					trace("扣:" + Gvar._T_Un_Jeom);
					totalJeomScore += Gvar._T_Un_Jeom;
					break;
					default:
					trace("出错")
					break;
					}
				}
			if (totalJeomScore >= Gvar._T_Total_Jeom) {
				totalJeomScore = Gvar._T_Total_Jeom;
				}
			//返回平台考试信息
			returnPlanExamInfo(totalScoreArr);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//返回平台考试信息
		private function returnPlanExamInfo(_value:Array):void {
			var _score:Number = 0;//总分
			/*ReturnObj.performanceid = _value._performanceid;
			ReturnObj.standarddata3 = _value.recordV;
			ReturnObj.standarddata4 = _value.recordO;
			ReturnObj.symptomid = _value.symptomsId;
			ReturnObj.judgeid = _value.performanceId;
			ReturnObj.resultscore = _value.returnScore;*/
			
			for (var i:uint = 0; i < _value.length; i++ ) {
				for (var j:uint = 0; j < _value[i].length; j++ ) {
					var tempStr:String="<performanceexamuseranswerdetail performanceid="+returnStr(_value[i][j].performanceid)+"standarddata3="+returnStr(_value[i][j].standarddata3)+"standarddata4="+returnStr(_value[i][j].standarddata4)+"symptomid="+returnStr(_value[i][j].symptomid)+"judgeid="+returnStr(_value[i][j].judgeid)+"resultscore="+returnStr(_value[i][j].resultscore)+"description=\"性能检测数据记录表ID、数据记录1、数据记录2、症状描述ID、性能评判ID、得到分值\"></performanceexamuseranswerdetail>";
					_examuseranswerdetail += tempStr;
					_score += Number(_value[i][j].resultscore);
					}
				}
			_score-= totalJeomScore;
			//返回给后台信息
			 _xml += "<data>";
                _xml += "<performanceexamuseranswer  name=\"examid\" description=\"考试ID\"><![CDATA["+_examId+"]]></performanceexamuseranswer >";
                _xml += "<performanceexamuseranswer  name=\"userid\" description=\"用户ID\"><![CDATA["+_gvar.UserId+"]]></performanceexamuseranswer >";
                _xml += "<performanceexamuseranswer  name=\"status\" description=\"考试状态\"><![CDATA[1]]></performanceexamuseranswer >";
                _xml += "<performanceexamuseranswer  name=\"sumscore\" description=\"考试成绩\"><![CDATA["+_score+"]]></performanceexamuseranswer >";
                _xml += "<performanceexamuseranswer  name=\"startdate\" description=\"开始考试时间\"><![CDATA["+_gvar.ExamStartTime+"]]></performanceexamuseranswer >";
                _xml += "<performanceexamuseranswer  name=\"enddate\" description=\"结束考试时间\"><![CDATA[" +_gvar.ExamOverTime+"]]></performanceexamuseranswer >";
			
			_xml += _examuseranswerdetail;
			_xml += "</data>";
			
			trace(XML(_xml));
			
			rmpx_Ws.myOp.PerformanceExamUserAnswer({xml:_xml});
			rmpx_Ws.myOp.addEventListener("complete", rmpx_Ws.onResult);
			rmpx_Ws.myOp.addEventListener("failed", rmpx_Ws.onFault);
			rmpx_Ws.addEventListener(MyWebservice.WSCOMPLETE, examOverComplete);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//返回加双引号的字符串
		private function returnStr(_str:Object):String {
			var tempStr:String = String(_str);
			return "\""+tempStr + "\""+" ";
			}	
		//--------------------------------------------------------------------------------------------------------------------//
		//给出提示
		private function examOverComplete(e:Event):void {
			rmpx_Ws.myOp.removeEventListener("complete", rmpx_Ws.onResult);
			rmpx_Ws.myOp.removeEventListener("failed", rmpx_Ws.onFault);
			rmpx_Ws.removeEventListener(MyWebservice.WSCOMPLETE, examOverComplete);

			if (e.target.data == "true") {
				trace("保存成功");
				//弹出提示信息
				var popInfor:AlertShow=new AlertShow("考试结束，请点击菜单返回！",400,200);
				popInfor.x=(Gvar.STAGE_X-popInfor.width) / 2;
				popInfor.y=(Gvar.STAGE_Y-popInfor.height) / 2;
				addChild(popInfor);
				TweenLite.from(popInfor, .5, {x:Gvar.STAGE_X/2,y:Gvar.STAGE_Y/2,scaleX:.1,scaleY:.1,alpha:.1, ease:Back.easeOut});
				}else {
					trace("保存失败");
					creaAlert("保存失败!请检查网络是否连接!");
					}
			
			
			}
		//===================================================================================================================//
	}
}