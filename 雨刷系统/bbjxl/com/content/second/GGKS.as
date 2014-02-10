package bbjxl.com.content.second{
	/**
	作者：被逼叫小乱
	
	www.bbjxl.com/Blog
	**/
	import bbjxl.com.content.first.MNKSClickEvent;
	import bbjxl.com.display.B_Alert;
	import bbjxl.com.ui.CommonlyClass;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import bbjxl.com.Gvar;
	import flash.display.SimpleButton;
	import bbjxl.com.net.MyWebservice;
	import bbjxl.com.net.MyWebserviceSingle;
	public class GGKS extends MNKS {
		private var _xml:String = "<?xml version=\"1.0\" encoding=\"utf-8\" ?>";
		private var _lineexamuseranswerdetail:String = "";//试题部分信息
		//===================================================================================================================//
		
		//===================================================================================================================//
		public function GGKS() {
			super();
			
		}//End Fun
		
		
		//加载配置XML
		override protected function loadConfigXml():void {
			mnks_Ws = MyWebserviceSingle.getInstance();
			mnks_Ws.myOp.LineExamValid( { UserId:Gvar.getInstance().UserId, CoursewareId:Gvar.getInstance().CoursewareId } );
			mnks_Ws.myOp.addEventListener("complete", mnks_Ws.onResult);
			mnks_Ws.myOp.addEventListener("failed", mnks_Ws.onFault);
			mnks_Ws.addEventListener(MyWebservice.WSCOMPLETE, ggks_WsComplete);

			}
		
		//
		private function ggks_WsComplete(e:Event):void {
			mnks_Ws.myOp.removeEventListener("complete", mnks_Ws.onResult);
			mnks_Ws.myOp.removeEventListener("failed", mnks_Ws.onFault);
			mnks_Ws.removeEventListener(MyWebservice.WSCOMPLETE, ggks_WsComplete);
			switch(String(e.target.data)) {
				case "0":
				mnks_Ws.myOp.LineExam({CoursewareId:Gvar.getInstance().CoursewareId});
				mnks_Ws.myOp.addEventListener("complete", mnks_Ws.onResult);
				mnks_Ws.myOp.addEventListener("failed", mnks_Ws.onFault);
				mnks_Ws.addEventListener(MyWebservice.WSCOMPLETE, mnks_WsComplete);
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
		//提交按钮点击
		override protected function setUpClickHandler(e:S_MNKSEvent):void {
			//记录考试结束时间
			Gvar.getInstance().ExamOverTime = CommonlyClass.DateTodate(new Date());
			
			_errorArr=new Array();
			_errorArr=e.errorArr;
			if (_errorArr == null)_errorArr = new Array();
			
			//返回连接错误的信息
			for (var i:uint = 0; i < _errorArr.length; i++ ) {
				var tempStr:String="<lineexamuseranswerdetail starpointnumber="+returnStr(_errorArr[i].startId)+"endpointnumber="+returnStr(_errorArr[i].endId)+"resultscore="+returnStr(-gvar.S_MNKS_ERROERSCORE)+"description=\"起始点编号、结束点编号、得到分值\"></lineexamuseranswerdetail>";
				_lineexamuseranswerdetail += tempStr;
				}
			
			//计算分数:连错的分数,蓄电池未接的分数,未操作的分数
			var _allSubScore:Number = _errorArr.length * gvar.S_MNKS_ERROERSCORE;
			//连接完成后未正常运行检验-15
			if (_contectLineOverWorkFlag == false && _contectLineOverFlag == true) {
				_allSubScore+= gvar.comparedNoOpration;
				_lineexamuseranswerdetail+="<lineexamuseranswerdetail starpointnumber="+returnStr("连接完成后未操作系统正常运行")+"endpointnumber="+returnStr("0")+"resultscore="+returnStr(-gvar.comparedNoOpration)+"description=\"起始点编号、结束点编号、得到分值\"></lineexamuseranswerdetail>";
				}
			//电池未接
			var tempArr:Array = gvar._rightLineArr;
			var find:Boolean = false;
			for (var j:String in tempArr) {
				if (tempArr[j].id == 1) {
					//说明电池的线已经连上了
					find = true;
					break;
					}
				}
			if (!find) {
				_allSubScore += gvar.barrayNoContactScore;
				_lineexamuseranswerdetail+="<lineexamuseranswerdetail starpointnumber="+returnStr("电瓶地线未连接")+"endpointnumber="+returnStr("0")+"resultscore="+returnStr(-gvar.barrayNoContactScore)+"description=\"起始点编号、结束点编号、得到分值\"></lineexamuseranswerdetail>";
				}
			//传给后台所有正确的线路
			for (var n:String in tempArr) {
				_lineexamuseranswerdetail+="<lineexamuseranswerdetail starpointnumber="+returnStr(tempArr[n].starId)+"endpointnumber="+returnStr(tempArr[n].endId)+"resultscore="+returnStr(tempArr[n].score)+"description=\"起始点编号、结束点编号、得到分值\"></lineexamuseranswerdetail>";
				}
			
			
			if((e.score-_allSubScore)>0){
			_score=e.score-_allSubScore;
			}else{
				_score=0;
				}
			
			
			creabg();
			
			
			//弹出提示信息
			var popInfor:AlertShow=new AlertShow("总分:"+_score,200,100);
			
			popInfor.x=(Gvar.STAGE_X-popInfor.width) / 2;
			popInfor.y=(Gvar.STAGE_Y-popInfor.height) / 2;
			bgSp.addChild(popInfor);
			
			
			//关闭按钮
			var closePop:SimpleButton=createButton("closeBt");
			closePop.x=popInfor.x+popInfor.width-closePop.width-10;
			closePop.y=popInfor.y+5;
			closePop.addEventListener(MouseEvent.CLICK,closePopHandler);
			bgSp.addChild(closePop);
			
			//返回给后台信息
			 _xml += "<data>";
                _xml += "<lineexamuseranswer name=\"examid\" description=\"考试ID\"><![CDATA["+gvar.Examid+"]]></lineexamuseranswer>";
                _xml += "<lineexamuseranswer name=\"userid\" description=\"用户ID\"><![CDATA["+gvar.UserId+"]]></lineexamuseranswer>";
                _xml += "<lineexamuseranswer name=\"status\" description=\"考试状态\"><![CDATA[1]]></lineexamuseranswer>";
                _xml += "<lineexamuseranswer name=\"sumscore\" description=\"考试成绩\"><![CDATA["+_score+"]]></lineexamuseranswer>";
                _xml += "<lineexamuseranswer name=\"startdate\" description=\"开始考试时间\"><![CDATA["+gvar.ExamStartTime+"]]></lineexamuseranswer>";
                _xml += "<lineexamuseranswer name=\"enddate\" description=\"结束考试时间\"><![CDATA[" +gvar.ExamOverTime+"]]></lineexamuseranswer>";
			
			_xml += _lineexamuseranswerdetail;
			_xml += "</data>";
			
			trace(XML(_xml));
			
			mnks_Ws.myOp.LineExamUserAnswer( { xml:_xml } );
			mnks_Ws.myOp.addEventListener("complete", mnks_Ws.onResult);
			mnks_Ws.myOp.addEventListener("failed", mnks_Ws.onFault);
			mnks_Ws.addEventListener(MyWebservice.WSCOMPLETE, examOverComplete);
			
			
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//返回加双引号的字符串
		private function returnStr(_str:Object):String {
			var tempStr:String = String(_str);
			return "\""+tempStr + "\""+" ";
			}
		//--------------------------------------------------------------------------------------------------------------------//

		private function examOverComplete(e:Event):void {
			mnks_Ws.myOp.removeEventListener("complete", mnks_Ws.onResult);
			mnks_Ws.myOp.removeEventListener("failed", mnks_Ws.onFault);
			mnks_Ws.removeEventListener(MyWebservice.WSCOMPLETE, examOverComplete);
			
			trace(e.target.data);
			if (e.target.data == "true") {
				trace("保存成功")
				}else {
					trace("保存失败")
					}
			}
		//===================================================================================================================//
	}
}