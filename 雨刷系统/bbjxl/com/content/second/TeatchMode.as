package bbjxl.com.content.second
{
	/**
	作者：被逼叫小乱
	
	www.bbjxl.com/Blog
	**/
	import bbjxl.com.net.MyWebservice;
	import bbjxl.com.net.MyWebserviceSingle;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.display.SimpleButton;
	import bbjxl.com.Gvar;
	import com.greensock.*;
	import com.greensock.easing.*;
	import bbjxl.com.loading.xmlReader;
	import flash.events.Event;
	import flash.geom.Rectangle;
	import flash.display.Stage;
	import be.wellconsidered.services.WebService;
	import be.wellconsidered.services.Operation;
	import bbjxl.com.Gvar;
	import be.wellconsidered.services.events.OperationEvent;
	import com._public._displayObject.IntroductionText;

	public class TeatchMode extends ParentClass
	{
		
		protected var _pinLocaleArr:Array = new Array( { x:141.5, y:127.95 }, { x:268.3, y:126.95 }, { x:267.3, y:153.05 },
														{x:298.3, y:147.7 }, { x:362.45, y:299.2 }, { x:430.6, y:488 }, 
														{ x:452.35, y:488 }, { x:476.85, y:488 }, { x:501.6, y:488 }, 
														{ x:522.9, y:488 }, { x:548.9, y:488 }, { x:684.05, y:261.2 },
														{x:577.5, y:261.2 }, { x:716.8, y:261.8 }, { x:697, y:140.15 }, 
														{ x:596.7, y:138.8 }, { x:560.2, y:139.65 }, { x:144.05, y:371.25 }, 
														{ x:208.35, y:371.75 }, { x:246.85, y:372.5 }, { x:99.55, y:371.75 }, 
														{ x:144.55, y:530.3 }, { x:719.45, y:406.7 }, { x:718.8, y:476 }, 
														{ x:141.6, y:257.6 }, { x:178.6, y:258.45 }, { x:718.8, y:365.15 }, 
														{ x:718.8, y:500.5 }, { x:144.75, y:550.3 },{x:577.5,y:282.4} );
												  
		protected var _pinSp:Sprite=new Sprite();//点容器
		protected var _lineSp:Sprite=new Sprite();//线容器
		
		protected var _contectLineTool:ContectLine;//连线工具
		
		protected var lineXml:XML=new XML();//连线的数据
		protected var lineArr:Array;
		
		protected var errorLineArr:Array;//所有连错线的数据

		protected var _gvar:Gvar = Gvar.getInstance();
		//===================================================================================================================//
		protected var ws:WebService;
		protected var op:Operation;
		protected var second_rmpxWs:MyWebserviceSingle
		//===================================================================================================================//
		public function TeatchMode()
		{
			
			addChild(_lineSp);
			addChild(_pinSp);
			loadXml();
			
		}//End Fun
		//--------------------------------------------------------------------------------------------------------------------//
		//加载XML
		public function loadXml():void {
			second_rmpxWs= MyWebserviceSingle.getInstance();
			second_rmpxWs.myOp.Line({CoursewareId:_gvar.CoursewareId});
			second_rmpxWs.myOp.addEventListener("complete", second_rmpxWs.onResult);
			second_rmpxWs.myOp.addEventListener("failed", second_rmpxWs.onFault);
			second_rmpxWs.addEventListener(MyWebservice.WSCOMPLETE, second_rmpxWsComplete);
			
		}
		
		public function second_rmpxWsComplete(e:Event):void
		{
			second_rmpxWs.removeEventListener(MyWebservice.WSCOMPLETE, second_rmpxWsComplete);
			lineArr=new Array();
			lineXml = e.target.data;
			_gvar._lineXml = lineXml;
			trace("lineXml="+lineXml)
			for (var i:uint=0; i<lineXml.children().length(); i++)
			{
				var temp:Object=new Object();
				temp.score=lineXml.child(i).linedetail.(@name=="score");//分数
				temp.id=lineXml.child(i).@linenumber;//线路编号,即MC帧
				temp.starId=lineXml.child(i).linedetail.(@name=="starpointnumber");//开始点
				temp.starName=lineXml.child(i).linedetail.(@name=="starpointname");//开始点名称
				temp.endId=lineXml.child(i).linedetail.(@name=="endpointnumber");//结束点
				temp.endName=lineXml.child(i).linedetail.(@name=="endpointname");//结束点名称
				lineArr.push(temp);
			}
			creaPin();
		}
		//--------------------------------------------------------------------------------------------------------------------//
		//使用工具接口
		public function UseTool():void
		{
			
			_contectLineTool=ContectLine.getInstance();
			//是否已经初始化了
			if(!_contectLineTool.initFlag){
			errorLineArr=new Array();
			var qz:MovieClip=createClip("qinzhi");//钳子
			var line:MovieClip=createClip("lineTool");//线
			_contectLineTool.qinzhi=qz;
			_contectLineTool.line=line;
			_contectLineTool.init();
			_contectLineTool.x=760;
			_contectLineTool.y=535;
			_pinSp.addChild(_contectLineTool);
			_contectLineTool.addEventListener(ContectLineOverEvent.CONTECTLINEOVEREVENT,contectLineOverHandler);
			}
			
		}
		
		//一条线连好事件
		protected function contectLineOverHandler(e:ContectLineOverEvent):void{
			for(var i:uint=0;i<lineArr.length;i++){
				if((lineArr[i].starId==e.fPinId && lineArr[i].endId==e.zPinId )||(lineArr[i].endId==e.fPinId && lineArr[i].starId==e.zPinId)){
					//如果是蓄电池接地时要判断是否其他线都连好后
					if (lineArr[i].id == 1) {
						 /*if (lineArr.length == 2) {
							if (lineArr[1].id == 2 || lineArr[1].id == 3 || lineArr[1].id == 4) {
								 //只剩2.3.4哪条线都表示可以连接蓄电池接地
								 addContectLine(lineArr[i].id);
								lineArr.splice(i, 1);//删除已经连好的线
								//如果已经连好线了那就告诉父类可以打点火开关
								dispatchEvent(new Event("contectLineOver"));
								Gvar.getInstance().S_MNKS_BARRAY = true;
								 }else {
									 //连错了就把连的点的ID记录进错误数组中-蓄电池接地早了
									 pushErrorLine(e.fPinId,e.zPinId);
									 }
							}else */
							if (lineArr.length == 1) {
								//只有蓄电池的线,表示可以连接蓄电池线
								addContectLine(lineArr[i].id);
								lineArr.splice(i, 1);//删除已经连好的线
								//如果已经连好线了那就告诉父类可以打点火开关
								dispatchEvent(new Event("contectLineOver"));
								Gvar.getInstance().S_MNKS_BARRAY = true;
								}else {
									//连接出错,表示蓄电池不是最后接的
									pushErrorLine(e.fPinId,e.zPinId);
									}
						}else {
							//除蓄电池接地外的线
							addContectLine(lineArr[i].id);
							lineArr.splice(i,1);//删除已经连好的线
							}
					
					}else{
						//连错了就把连的点的ID记录进错误数组中
						pushErrorLine(e.fPinId,e.zPinId);
						}
				}
			//trace(e.fPinId+"/"+e.zPinId);
			}
		
		//把连错的点放入错误数组中
		protected function pushErrorLine(_sid:uint,_eid:uint):void {
			var tempErrorLine:Object=new Object();
				tempErrorLine.startId=_sid;
				tempErrorLine.endId=_eid;
				errorLineArr.push(tempErrorLine);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//如果连线正确就增加一条
		protected function addContectLine(lineId:uint):void{
			var tempLine:MovieClip=createClip("YSallLines");
			tempLine.x=82.75;
			tempLine.y=93.5;
			tempLine.gotoAndStop(lineId);
			_lineSp.addChild(tempLine);
			
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//建立所有的点
		private function creaPin():void
		{
			
			//_control_bg = createClip("controlBg");
			for(var i:uint=0;i<_pinLocaleArr.length;i++){
				var newPin:Pin=new Pin();
				newPin.x=_pinLocaleArr[i].x;
				newPin.y=_pinLocaleArr[i].y;
				newPin.pinId=i+1;
				_pinSp.addChild(newPin);
				//设置连线部分不用连线的点不能响应工具
				if ((i + 1) == 4) {
					newPin.enable = false;
					}
				}

		}
		
		
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		
		//--------------------------------------------------------------------------------------------------------------------//
		
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//===================================================================================================================//
	}
}