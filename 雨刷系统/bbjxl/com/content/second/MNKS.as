package bbjxl.com.content.second{
	/**
	作者：被逼叫小乱
	
	www.bbjxl.com/Blog
	**/
	import bbjxl.com.net.MyWebservice;
	import bbjxl.com.net.MyWebserviceSingle;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.display.LoaderInfo;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.utils.getDefinitionByName;
	import bbjxl.com.Gvar;
	import com.greensock.*;
	import com.greensock.easing.*;
	import lt.uza.ui.Scale9BitmapSprite;
	import lt.uza.ui.Scale9SimpleStateButton;
	import bbjxl.com.loading.xmlReader;
	import bbjxl.com.ui.CommonlyClass;
	import bbjxl.com.ui.CreaText;
	import bbjxl.com.content.first.MNKSClickEvent;
	import flash.geom.Rectangle;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.SimpleButton;
	import be.wellconsidered.services.WebService;
	import be.wellconsidered.services.Operation;
	import be.wellconsidered.services.events.OperationEvent;
	import bbjxl.com.TotallDispather;
	public class MNKS extends ParentClass {
		protected var body:MNKSbody;
		protected var bgSp:Sprite=new Sprite();//背景容器
		protected var bgSpObj:Sprite=new Sprite();//背景
		protected var contentSp:Sprite=new Sprite();//内容容器
		
		
		protected var _alertBgScale9:Scale9BitmapSprite;//背景
		protected var scale9_example:Rectangle;//九宫格区域
		
		protected var _score:Number;
		protected var _errorArr:Array;
		
		protected var _contectLineOverFlag:Boolean=false;//连线是否已经完成
		protected var _contectLineOverWorkFlag:Boolean=false;//连接完成后是否操作系统正常运行
		
		protected var gvar:Gvar=Gvar.getInstance();
		
		protected var _showScore:MNKS_ShowScore;//最后显示的分数线表格
		
		private var _currentSelecteToolId:uint=1000;//当前选择的工具类
		private var _currentSelecteToolItem:uint = 1000;//当前选择的工具项
		
		protected var _examId:String = "";//考试ID
		
		protected var _TotallDispather:TotallDispather = TotallDispather.getInstance();
		//===================================================================================================================//
		protected var ws:WebService;
		protected var op:Operation;
		protected var mnks_Ws:MyWebserviceSingle
		//===================================================================================================================//
		public function MNKS() {
			gvar.S_MNKS_BARRAY = false;
			gvar._rightLineArr = new Array();//清空连对线的数组
			addChild(contentSp);
			addChild(bgSp);
		}//End Fun
		//--------------------------------------------------------------------------------------------------------------------//
		//建立主程序,供主程序传入皮肤
		public function creaBody(_value:LoaderInfo,_stage:Stage):void{
			_loaderInfo=_value;
			loadConfigXml();
			
			}
		//----------------------------------------------------//重载父类方法----------------------------------------------------------------//
		//点火开关，档位开关状态变化时调用
		override public function flashStar(startKeyId:uint,switchId:uint):void{
			trace(startKeyId,switchId)
			if(_ign.currentFrame!=startKeyId ||_yskg.currentState!=switchId){
				_ign.gotoAndStop(startKeyId);
				_yskg["bru_sw"].gotoAndStop(switchId);
				
				//如果连线已经完成
				if (_contectLineOverFlag) {
					_contectLineOverWorkFlag = true;
					
				if (_ign.currentFrame == 1) {
					//OFF档时
					goto0();
					}else {
						switch(switchId) {
							case 1:
							goto0();
							break;
							case 2:
							goto1();
							break;
							case 3:
							goto2();
							break;
							case 4:
							goto3();
							break;
							case 5:
							goto4();
							break;
							}
						}
				}
			}
			}	
		//-------------IGN状态下--------------------------------------	
		//0档时
		private function goto0():void {
			_ysjdq.Relay.gotoAndStop(1);
			_ysdj.motor_brush.gotoAndStop(1);
			_psdj.gotoAndStop(1);
			
			}
		//1档时
		private function goto1():void {
			goto0();
			_ysdj.motor_brush.gotoAndPlay("fast");
			}
		//2档时
		private function goto2():void {
			goto0();
			_ysdj.motor_brush.gotoAndPlay("slow");
			}
		//3档时
		private function goto3():void {
			goto0();
			_ysjdq.Relay.gotoAndPlay("three");
			_ysdj.motor_brush.gotoAndPlay("rep");
			
			}
		//t档时
		private function goto4():void {
			goto3();
			_psdj.gotoAndStop(2);
			}
		//--------------------------------------------------------------------------------------
		//加载配置XML
		protected function loadConfigXml():void {
			trace("loadConfigXml")
			
			mnks_Ws = MyWebserviceSingle.getInstance();
			mnks_Ws.myOp.LineExam({CoursewareId:Gvar.getInstance().CoursewareId});
			mnks_Ws.myOp.addEventListener("complete", mnks_Ws.onResult);
			mnks_Ws.myOp.addEventListener("failed", mnks_Ws.onFault);
			mnks_Ws.addEventListener(MyWebservice.WSCOMPLETE, mnks_WsComplete);
			
			}
		
		protected function mnks_WsComplete(e:Event):void
		{
			mnks_Ws.myOp.removeEventListener("complete", mnks_Ws.onResult);
			mnks_Ws.myOp.removeEventListener("failed", mnks_Ws.onFault);
			mnks_Ws.removeEventListener(MyWebservice.WSCOMPLETE, mnks_WsComplete);
			var configXml:XML=new XML();
			configXml=e.target.data;
			gvar.S_MNKS_ERROERSCORE=configXml.lineexam.lineexamdetail.(@name=="erroescore");//连接错一次扣多少分(除最后的蓄电池接地线外)
			gvar.S_MNKS_TIMER=configXml.lineexam.@time;//考试时间
			gvar.S_MNKS_ERROERNUM=configXml.lineexam.lineexamdetail.(@name=="erroenum");//允许错的次数
			gvar.S_MNKS_PASSSCORE = configXml.lineexam.lineexamdetail.(@name == "passscore");//考试通过成绩
			_examId = configXml.lineexam.@examid;//考试ID
			gvar.Examid = _examId;
			
			
			body=new MNKSbody();
			body.loaderInfo=_loaderInfo;
			body.addEventListener(S_MNKSEvent.SMNKSEVENT,setUpClickHandler);
			body.addEventListener("contectLineOver",contectLineOverHandler);
			body.addEventListener("returnRMPX",returnRMPX);
			contentSp.addChild(body);
			
			//记录考试开始时间
			Gvar.getInstance().ExamStartTime = CommonlyClass.DateTodate(new Date());
			
			TotallDispather._currentToolOrLoadSwf = 0;
			_TotallDispather.MydispatchEvent(TotallDispather.SWAP_TOOL_AND_LOADSWF_INDEX);
		}
		
		//连线完成
		private function contectLineOverHandler(e:Event):void {
			trace("_contectLineOverFlag")
			_contectLineOverFlag=true;
			}
		
		//返回入门培训
		protected function returnRMPX(e:Event):void{
			creabg();
			//弹出提示信息
			var popInfor:AlertShow=new AlertShow("很遗憾！您连错的次数过多请返\n回入门培训重新学习");
			
			popInfor.x=(Gvar.STAGE_X-popInfor.width) / 2;
			popInfor.y=(Gvar.STAGE_Y-popInfor.height) / 2;
			bgSp.addChild(popInfor);
			
			//关闭按钮
			var closePop:SimpleButton=createButton("closeBt");
			closePop.x=popInfor.x+popInfor.width-closePop.width-10;
			closePop.y=popInfor.y+5;
			closePop.addEventListener(MouseEvent.CLICK,closePopHandler);
			bgSp.addChild(closePop);
			}
		
		//提交按钮点击
		protected function setUpClickHandler(e:S_MNKSEvent):void{
			_errorArr=new Array();
			_errorArr=e.errorArr;
			_score=Number(e.score);
			
			creabg();
			
			if(_errorArr==null)_errorArr=new Array();
			_showScore=new MNKS_ShowScore(_errorArr,_score,_contectLineOverWorkFlag==false && _contectLineOverFlag==true);
			_showScore.x=(Gvar.STAGE_X-_showScore.width) / 2;
			_showScore.y=(Gvar.STAGE_Y-_showScore.height) / 2;
			TweenLite.from(_showScore, .8, {x:Gvar.STAGE_X/2,y:Gvar.STAGE_Y/2,scaleX:.1,scaleY:.1, onComplete:showScore});
			}
		
		//显示最后的分数
		protected function showScore():void{
			
			//关闭按钮
			var closePop:SimpleButton=createButton("closeBt");
			closePop.x=_showScore.x+_showScore.width-closePop.width-10;
			closePop.y=_showScore.y+5;
			closePop.addEventListener(MouseEvent.CLICK,closePopHandler);
			
			bgSp.addChild(_showScore);
			bgSp.addChild(closePop);
			
			}
		
		//关闭弹出窗口
		protected function closePopHandler(e:MouseEvent):void{
			//CommonlyClass.cleaall(bgSp);
			var closeMNKS:MNKSClickEvent=new MNKSClickEvent("closemnksevent");
			dispatchEvent(closeMNKS);
			}
		
		//使用工具接口
		public function UseTool(toolId:uint,toolItemId:uint):void
		{
			if(_currentSelecteToolId!=toolId || _currentSelecteToolItem!=toolItemId){
				if(toolId==1 && toolItemId==0){
					body.UseTool();
					_currentSelecteToolId=toolId;
					_currentSelecteToolItem=toolItemId;
				}
			}
			/*if(toolId==1 && toolItemId==0){
			body.UseTool();
			}*/
		}
		
		//建立灰背景
		protected function creabg(_value:uint=0x112122,aphla:Number=0.8):void
		{
			bgSpObj=new Sprite();
			bgSpObj.graphics.lineStyle(10,0x222222,0);
			bgSpObj.graphics.beginFill(_value,aphla);
			bgSpObj.graphics.drawRect(0,0,Gvar.STAGE_X,Gvar.STAGE_Y);
			bgSpObj.graphics.endFill();
			bgSp.addChild(bgSpObj);
			TweenLite.from(bgSpObj, .5, {x:Gvar.STAGE_X/2,y:Gvar.STAGE_Y/2,scaleX:.1,scaleY:.1});
			
		}
		//===================================================================================================================//
	}
}