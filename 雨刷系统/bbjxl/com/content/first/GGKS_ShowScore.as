package bbjxl.com.content.first{
	/**
	作者：被逼叫小乱
	
	www.bbjxl.com/Blog
	**/
	import bbjxl.com.net.MyWebservice;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.display.DisplayObjectContainer;
	import com.adobe.utils.ArrayUtil;
	import bbjxl.com.Gvar;
	import com.greensock.*;
	import com.greensock.easing.*;
	import bbjxl.com.ui.FormCell;
	import bbjxl.com.ui.GG_FormC;
	import bbjxl.com.ui.FormCellClickEvent;
	import bbjxl.com.ui.CommonlyClass;
	import flash.geom.Point;
	import flash.events.Event;

	public class GGKS_ShowScore extends Sprite {
		
		private var _tryArr:Array=new Array();//试题数据
		private var _headTitle:Sprite=new Sprite();//标题容器
		private var _centerPart:Sprite=new Sprite();//中间部分容器
		private var _allMyScore:Number=0;//总得分
		
		private var _enterTi:Sprite=new Sprite();//进入该题目的容器
		
		private var _Gvar:Gvar;
		
		//返回给后台的XML数据
		private var _xml:String = "<?xml version=\"1.0\" encoding=\"utf-8\" ?>";
		private var _partexamuseranswerdetail:String = "";//试题部分信息
		
		//测试数据
		private var _testUrl:String="../";
		//===================================================================================================================//
		
		//===================================================================================================================//
		public function GGKS_ShowScore(tryArr:Array) {
			addChild(_headTitle);
			addChild(_centerPart);
			addChild(_enterTi);
			_tryArr=tryArr;
			_Gvar=Gvar.getInstance();
			
			creaFormHead();
			
			creaFormBody();
			
			creaAllScore();
			
		}//End Fun
		//--------------------------------------------------------------------------------------------------------------------//
		//建立表头
		private function creaFormHead():void{
			//序号
			var hId:FormCell=new FormCell("序号",100,42,0xCFF0F9,0x000000,15,true);
			_headTitle.addChild(hId);
			//您所选的答案
			var hselected:FormCell=new FormCell("您所选的答案",150,42,0xCFF0F9,0x000000,15,true);
			hselected.x=hId.x+hId.width-1;
			_headTitle.addChild(hselected);
			
			//得分
			var hscore:FormCell=new FormCell("得分",100,42,0xCFF0F9,0x000000,15,true);
			hscore.x=hselected.x+hselected.width-1;
			_headTitle.addChild(hscore);
			
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//增加中间部分
		private function creaFormBody():void{
			for(var i:uint=0;i<_tryArr.length;i++){
				var tempNewC:GG_FormC=new GG_FormC(_tryArr[i],i);
				//trace(_headTitle.height)
				tempNewC.y=_headTitle.y+_headTitle.height+tempNewC.height*i-i;
				_allMyScore+=Number(tempNewC.myScore);
				_centerPart.addChild(tempNewC);
				
				if (_tryArr[i].toPlatformSubjectoption == "undefined")_tryArr[i].toPlatformSubjectoption = "";
				//trace("题ID="+_tryArr[i].subjectid)
				//trace("考生答案undefined="+_tryArr[i].toPlatformSubjectoption)
				//trace("得到分值=" + Number(tempNewC.myScore))
				var tempStr:String="<partexamuseranswerdetail subjectid="+returnStr(_tryArr[i].subjectid)+"answer="+returnStr(_tryArr[i].toPlatformSubjectoption)+"resultscore="+returnStr(tempNewC.myScore)+"description=\"试题ID、考生答案、得到分值\"></partexamuseranswerdetail>";
				_partexamuseranswerdetail += tempStr;
				}
			}
		//返回加双引号的字符串
		private function returnStr(_str:Object):String {
			var tempStr:String = String(_str);
			return "\""+tempStr + "\""+" ";
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//后面的灰背景
		private function creabg():void
		{
			var bgSpObj:Sprite=new Sprite();
			bgSpObj.graphics.lineStyle(10,0x222222,0);
			bgSpObj.graphics.beginFill(0x112122,.8);
			bgSpObj.graphics.drawRect(0,0,stage.stageWidth,stage.stageHeight);
			bgSpObj.graphics.endFill();
			bgSpObj.x=(globalToLocal(new Point(0,0)).x);
			bgSpObj.y=(globalToLocal(new Point(0,0)).y);
			_enterTi.addChild(bgSpObj);
		}
		
		
		
		//增加总得分
		private function creaAllScore():void{
			var allScore:FormCell=new FormCell("总分："+String(_allMyScore),_headTitle.width-1,60,0xCFF0F9,0xff0000,20,true,false,0,"right");
			allScore.y=_centerPart.y+_centerPart.height+42;
			_headTitle.addChild(allScore);
			
			//返回给后台信息
			 _xml += "<data>";
                _xml += "<partexamuseranswer name=\"examid\" description=\"考试ID\"><![CDATA["+_Gvar.Examid+"]]></partexamuseranswer>";
                _xml += "<partexamuseranswer name=\"userid\" description=\"用户ID\"><![CDATA["+_Gvar.UserId+"]]></partexamuseranswer>";
                _xml += "<partexamuseranswer name=\"status\" description=\"考试状态\"><![CDATA[1]]></partexamuseranswer>";
                _xml += "<partexamuseranswer name=\"sumscore\" description=\"考试成绩\"><![CDATA["+_allMyScore+"]]></partexamuseranswer>";
                _xml += "<partexamuseranswer name=\"startdate\" description=\"开始考试时间\"><![CDATA["+_Gvar.ExamStartTime+"]]></partexamuseranswer>";
                _xml += "<partexamuseranswer name=\"enddate\" description=\"结束考试时间\"><![CDATA[" +_Gvar.ExamOverTime+"]]></partexamuseranswer>";
			
			_xml += _partexamuseranswerdetail;
			_xml += "</data>";
			
			trace(XML(_xml));
			
			
			var examOver:MyWebservice = new MyWebservice();
			examOver.myOp.addEventListener("complete", examOver.onResult);
			examOver.myOp.addEventListener("failed", examOver.onFault);
			examOver.addEventListener(MyWebservice.WSCOMPLETE, examOverComplete);
			examOver.myOp.PartExamUserAnswer( { xml:_xml } );
			}
		//
		private function examOverComplete(e:Event):void {
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