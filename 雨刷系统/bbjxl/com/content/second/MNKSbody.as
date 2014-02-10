package bbjxl.com.content.second{
	/**
	作者：被逼叫小乱
	
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.display.SimpleButton;
	import flash.utils.getDefinitionByName;
	import com.greensock.*;
	import com.greensock.easing.*;
	import bbjxl.com.Gvar;
	import bbjxl.com.content.second.S_MNKSEvent;
	import bbjxl.com.ui.CreaText;
	import flash.utils.Timer;
	import bbjxl.com.ui.CountDown;
	import bbjxl.com.event.CountDownEvent;
	import flash.events.Event;
	import bbjxl.com.TotallDispather;

	public class MNKSbody extends TeatchMode {
		private var _setUp:SimpleButton;//提交按钮
		private var _score:Number=0;//初始分数
		
		private var _showRightOrFalse:Sprite;//用于显示对错的容器；
		
		private var _reTime:CountDown;//倒计时
		private var gvar:Gvar=Gvar.getInstance();
		
		//===================================================================================================================//
		
		//===================================================================================================================//
		public function MNKSbody() {
			super();
			addSetUp();
			_showRightOrFalse=new Sprite();
			addChild(_showRightOrFalse);
			addTime();
		}//End Fun
		
		//--------------------------------------------------------------------------------------------------------------------//
		//增加倒计时
		protected function addTime():void{
			_reTime=new CountDown(gvar.S_MNKS_TIMER);
			
			var temp:Class= getDefinitionByName("timeBg") as Class;
			var _timeBg:MovieClip=new temp();
			_timeBg.x=30;
			_timeBg.y=Gvar.STAGE_Y-_timeBg.height-30;
			_reTime.x=_timeBg.x+30;
			_reTime.y=_timeBg.y+10;
			addChild(_timeBg);
			addChild(_reTime);
			_reTime.addEventListener(CountDownEvent.COUNTDOWNEVENT,countdownOver);
			}
		
		//考试时间到
		private function countdownOver(e:CountDownEvent):void{
			setUpClickHandler(null);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//增加提交按钮
		private function addSetUp():void{
			var temp:Class= getDefinitionByName("setUpBt") as Class;
			_setUp=new temp();
			_setUp.x=Gvar.STAGE_X-_setUp.width-40;
			_setUp.y=600;
			addChild(_setUp);
			_setUp.addEventListener(MouseEvent.CLICK,setUpClickHandler);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//重载
		
		override protected function contectLineOverHandler(e:ContectLineOverEvent):void {
			trace("lineArr.length="+lineArr.length)
			for(var i:uint=0;i<lineArr.length;i++){
				if((lineArr[i].starId==e.fPinId && lineArr[i].endId==e.zPinId )||(lineArr[i].endId==e.fPinId && lineArr[i].starId==e.zPinId)){
					//如果是蓄电池接地时要判断是否其他线都连好后
					if (lineArr[i].id == 1) {
						if (lineArr.length == 1) {
								Gvar.getInstance()._rightLineArr.push(lineArr[i]);
								 //连对加分
								_score+=Number(lineArr[i].score);
								showAddScore(lineArr[i].score);
								//只有蓄电池的线,表示可以连接蓄电池线
								addContectLine(lineArr[i].id);
								lineArr.splice(i, 1);//删除已经连好的线
								//如果已经连好线了那就告诉父类可以打点火开关
								dispatchEvent(new Event("contectLineOver"));
								Gvar.getInstance().S_MNKS_BARRAY = true;
								
								Gvar.getInstance()._startKey.updata();//更新点火天关状态
								
								}else {
									//连接出错,表示蓄电池不是最后接的-20
									 showSubScore(gvar.barrayNoContactScore);
									pushErrorLine(e.fPinId,e.zPinId);
									}
						}else {
							 //除蓄电池接线以外连对的情况
							 //线路2.3.4只能有两条存在
							  /*if (lineArr[i].id == 4) {
								  var _totalLine234:int = 0;
								  for (var j:String in lineArr) {
									  if (lineArr[j].id == 2 || lineArr[j].id == 3 || lineArr[j].id == 4) {
										  _totalLine234++;
										  }
									  }
								  if (_totalLine234 < 2) {
									  //说明三条中只剩一条了,此时不能连线,应该从数组中去掉这条线
									  lineArr.splice(i,1);//删除已经连好的线
									  }else {
										  Gvar.getInstance()._rightLineArr.push(lineArr[i]);
										 _score+=Number(lineArr[i].score);
										showAddScore(lineArr[i].score);
										
										addContectLine(lineArr[i].id);
										lineArr.splice(i, 1);//删除已经连好的线
										
										  }
								  }else {*/
										Gvar.getInstance()._rightLineArr.push(lineArr[i]);
										trace(lineArr[i].id)
										trace(i)
										_score+=Number(lineArr[i].score);
										showAddScore(lineArr[i].score);
										
										addContectLine(lineArr[i].id);
										lineArr.splice(i, 1);//删除已经连好的线
										
										
									  //}
							
							}
						//找到就退出FOR
						break;
					}
					//没找到对的线
					if(i==lineArr.length-1){
						showSubScore(gvar.S_MNKS_ERROERSCORE);
						//连错了就把连的点的ID记录进错误数组中
						pushErrorLine(e.fPinId,e.zPinId);
						
						//如果连错的次数超过设定的次数就返回入门培训
						if(errorLineArr.length>=gvar.S_MNKS_ERROERNUM){
							dispatchEvent(new Event("returnRMPX"));
							}
						}
					
				}
			
			
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//提交
		private function setUpClickHandler(e:MouseEvent):void {
			TotallDispather._currentToolOrLoadSwf = 1;
			Gvar._TotallDispather.MydispatchEvent(TotallDispather.SWAP_TOOL_AND_LOADSWF_INDEX);
			
			_reTime.timerStop();//停止倒计时
			
			var mnksOver:S_MNKSEvent=new S_MNKSEvent();
			mnksOver.errorArr=errorLineArr;
			mnksOver.score=_score;
			dispatchEvent(mnksOver);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//显示连对加几分
		private function showAddScore(_value:uint):void{
			var rightShow:CreaText=new CreaText("加"+_value+"分",0xff0000,30,true);
			rightShow.x=(Gvar.STAGE_X-rightShow.width) / 2;
			rightShow.y=(Gvar.STAGE_Y-rightShow.height) / 2;
			_showRightOrFalse.addChild(rightShow);
			TweenLite.from(rightShow, 1, {y:Gvar.STAGE_Y/2+100,alpha:0.1, onComplete:removeMy});
			function removeMy():void{
				_showRightOrFalse.removeChild(rightShow);
				
				}
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//显示连错减几分
		private function showSubScore(_value:uint):void{
			var rightShow:CreaText=new CreaText("减"+_value+"分",0x0000ff,30,true);
			rightShow.x=(Gvar.STAGE_X-rightShow.width) / 2;
			rightShow.y=(Gvar.STAGE_Y-rightShow.height) / 2;
			_showRightOrFalse.addChild(rightShow);
			TweenLite.from(rightShow, 1, {y:Gvar.STAGE_Y/2+100,alpha:0.1, onComplete:removeMy});
			function removeMy():void{
				_showRightOrFalse.removeChild(rightShow);
				
				}
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//===================================================================================================================//
	}
}