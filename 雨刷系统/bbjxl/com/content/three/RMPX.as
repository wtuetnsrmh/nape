package bbjxl.com.content.three{
	/**
	作者：被逼叫小乱
	//性能检测--入门培训
	www.bbjxl.com/Blog
	**/
	import bbjxl.com.net.MyWebserviceSingle;
	import bbjxl.com.net.MyWebservice;
	import bbjxl.com.ui.FormCell;
	import bbjxl.com.ui.MyLoading;
	import com.adobe.air.filesystem.VolumeMonitor;
	import flash.display.MovieClip;
	import flash.display.DisplayObject;
	import flash.display.LoaderInfo;
	import flash.display.Shape;
	import flash.display.Stage;
	import flash.geom.Point;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import bbjxl.com.display.StartSystem;
	//import bbjxl.com.display.LoadAllPartXml;
	import flash.utils.getDefinitionByName;
	import flash.utils.getQualifiedClassName;
	import flash.system.ApplicationDomain;
	import com.adobe.utils.ArrayUtil;
	import bbjxl.com.event.UniversalEvent;
	import bbjxl.com.event.PowerEvent;
	import flash.events.Event;
	import bbjxl.com.display.Part;
	import bbjxl.com.content.three.MNKS_Part;
	import bbjxl.com.Gvar;
	import bbjxl.com.content.second.AlertShow;
	import bbjxl.com.ui.CreaText;
	import com.greensock.*;
	import bbjxl.com.ui.CommonlyClass;
	import com.greensock.easing.*;
	import bbjxl.com.content.second.Pin;
	import bbjxl.com.display.Universal;
	import bbjxl.com.event.FormCellNextEvent;
	import bbjxl.com.content.second.ParentClass;
	import bbjxl.com.content.three.RMPX_DHKG_FORM;
	import bbjxl.com.display.Power;
	import bbjxl.com.display.B_Alert;
	import flash.geom.Rectangle;
	import flash.display.SimpleButton;
	import bbjxl.com.content.second.ContectLine;
	import bbjxl.com.content.second.ContectLineOverEvent;

	public class RMPX extends ParentClass {
		
		//private var _loadAllPartXml:LoadAllPartXml;
		private var _allXml:XML;//所有的XML
		private var _allPartArr:Array=new Array();//所有的部件
		private var _gvar:Gvar=Gvar.getInstance();

		private var _currentClickPart:Part=new Part();//当前点击部件
		private var _currentShowForm:*;//当前显示的表;
		private var _currentFormed:Boolean=false;//当前是否有表在显示
		private var _currentPartD_T:String="断电";//当前的部件是通电还是断电
		private var _currentState:uint=10;//当前的状态，10表示故障设置,20表示故障排除
		
		private var _zzty:MovieClip;//症状体验的按钮-故障设置
		private var _xnjc:MovieClip;//性能检测按钮-故障排除
		private var _resetBt:SimpleButton;//复位按钮
		private var stateText:CreaText=new CreaText("",0xffffff,15,true,"left",false);//状态栏
		//private var _lines:MovieClip=new MovieClip();//所有的线
		
		private var _PopFormSp:Sprite=new Sprite();//用于放弹出表格的容器
		protected var _toolSp:Sprite=new Sprite();//工具容器
		private var _stateSp:Sprite=new Sprite();//用于放状态按钮的容器
		
		private var _currentUseToolArr:Array=new Array();//当前使用的工具
		
		private var _jdqForm:RMPX_JDQ_FORM;//继电器表格
		private var _dhkgForm:RMPX_DHKG_FORM;//点火开关表格
		private var _dwkgForm:RMPX_DWKG_FORM;//档位开关
		private var _bxsForm:RMPX_BXS_FORM;//保险丝
		//private var _qdjForm:RMPX_QDJ_FORM;//启动机
		private var _qdjLine:Shape = new Shape();//用于启动机的连线
		private var _qdjLined:Boolean = false;//启动机的线是否连好
		
		private var _powerReady:Boolean = false;//电源是否已经接好
		
		private var _faultOptionId:uint=0;//故障选项的ID
		
		private var _Universal:Universal;//万用表
		private var _UniversalZFArr:String;//万用表正负端接的点ID
		private var _universalDrag:CreaText;//万用表拖动部分
		
		private var _power:Power;//电源
		private var _powerZFArr:String;//电源正负端接的点ID
		
		protected var _contectLineTool:ThreeContectLine;//连线工具
		
		private var _totalFormCommon:Array;//当前表可以被碰撞的单元格数组
		private var _currentHitFormCell:FormCell;//当前碰撞到的单元格
		
		private var _loading:MovieClip;//加载前的loading
		//private var _loading:MovieClip;//加载前的loading
		
		//===================================================================================================================//
		protected var rmpx_Ws:MyWebserviceSingle;
		//===================================================================================================================//
		public function RMPX() {
			_gvar.T_EXAM_RM = false;
			_gvar.T_EXAM_OVER=false;
			//_lines=this.getChildByName("lines") as MovieClip;
			super();
			init();
			
			addChild(_stateSp);
			
			addChild(_PopFormSp);
			addChild(_toolSp);
			
			//creaStateObj();
			
			
			
		}//End Fun
		
		public function setLoadinfo(value:LoaderInfo):void {
			_loaderInfo = value;
			}
		
		//-------------------------------------------------------------------------------------------------------------------//
		public function creaStateObj():void {
			_loading = createClip("loadingMc");
			addChild(_loading)
			
			_zzty = createClip("zzty");//故障设置
			_zzty.gotoAndStop(2);
			_zzty.x = 758.7;
			_zzty.y = 86;
			_xnjc = createClip("xnjc");//故障排除
			//_xnjc.alpha = .5;
			_xnjc.x=_zzty.x+_zzty.width-7;
			_xnjc.y=_zzty.y;
			_resetBt=createButton("resetBt");//复位
			_resetBt.x=710;
			_resetBt.y=_zzty.y-4;
			_stateSp.addChild(_zzty);
			_stateSp.addChild(_xnjc);
			stateText.x=Gvar.STAGE_X-200;
			stateText.y = Gvar.STAGE_Y - 60;
			_stateSp.addChild(stateText);
			_stateSp.addChild(_resetBt);
			
			_zzty.addEventListener(MouseEvent.CLICK,zztyClick);
			_xnjc.addEventListener(MouseEvent.CLICK,xnjcClick);
			_resetBt.addEventListener(MouseEvent.CLICK,resetBtClick);
			
			}
		//故障设置点击事件
		private function zztyClick(e:MouseEvent):void{
			_xnjc.gotoAndStop(1);
			_zzty.gotoAndStop(2);
			//_xnjc.alpha = .5;
			//_zzty.alpha = 1;
			_resetBt.alpha = 1;
			_resetBt.addEventListener(MouseEvent.CLICK,resetBtClick);
			if (_currentState == 20) {
				//关闭当前打开的工具
				if(_power)
				if(_toolSp.contains(_power))
				closePowerEventHandler(null);
				if(_Universal)
				if(_toolSp.contains(_Universal))
				closeUniversalHandler(null);
				if(_contectLineTool)
				if(_toolSp.contains(_contectLineTool))
				closeLineHandler(null);
				
				showTotalPart();
				_currentClickPart.x=(_currentClickPart._point).x;
				_currentClickPart.y=(_currentClickPart._point).y;
				//TweenLite.to(_currentClickPart, .5, {x:(_currentClickPart._point).x,y:(_currentClickPart._point).y,ease:Back.easeIn});
				closeFaultSelecteOptionHandler(null);//关闭当前表格
				
				//点火开关设为OFF
				_gvar._startKey.gotoOff(null);
				
				//如果当前检查部件是启动机，且为正常选项时要清除连线工具连的线且设为正常状态
				/*if (_currentClickPart.name == "fdj") {
					_qdjLine.graphics.clear();
					_qdjLined = false;
					if(_faultOptionId==0)
					_fdj.fault = false;
					
					}*/
				}
			_currentState=10;
			}
		//故障排除点击事件
		private function xnjcClick(e:MouseEvent):void {
			_zzty.removeEventListener(MouseEvent.CLICK,zztyClick);
			
			if (stateText._textContent != "") {
			_xnjc.gotoAndStop(2);
			_zzty.gotoAndStop(1);
			_resetBt.alpha = 0;
			
			closeTotalPartMenu();
			
			_currentState=20;
			hideTotalPart();
			//已经有选择了部件
			switch (_currentClickPart.name){
			case "雨刮继电器":
			//_allPartArr=[_ysjdq,_ysdj,_psdj,_yskg];
			setPartCenter(_ysjdq);
			//用保险丝表代替
			showBXS();
			break;
			case "雨刷电机":
			setPartCenter(_ysdj);
			//用点火开关表代替
			showDHKG();
			break;
			case "喷水电机":
			setPartCenter(_psdj);
			
			showDWKG();
			break;
			case "雨刮开关":
			setPartCenter(_yskg);
			
			showJDQ();
			break;
			/*case "fdj":
			//如果当前选的部件为正常时，设置启动机为故障，要用边线工具连了之后才能正常
			if(_faultOptionId!=0){
			_fdj.fault = true;
			}
			setPartCenter(_fdj);
			
			
			showQDJ();
			break;*/
			default:
			trace("出错")
			}
			
			//当前表可以拖动
			_currentShowForm.addEventListener(MouseEvent.MOUSE_DOWN,mouseDownHandler);
			_currentShowForm.addEventListener(MouseEvent.MOUSE_UP, mouseUpHandler);
			
			_resetBt.removeEventListener(MouseEvent.CLICK, resetBtClick);
			
			//点火开关设为OFF
			_gvar._startKey.gotoOff(null);
			}else{
				var popInfor:B_Alert=new B_Alert("请先设置故障!",400,200);
				//popInfor.x=(Gvar.STAGE_X-popInfor.width) / 2;
				//popInfor.y=(Gvar.STAGE_Y-popInfor.height) / 2;
				addChild(popInfor);
				
				}
			
			
			}
		//复位点击事件
		private function resetBtClick(e:MouseEvent):void{
			if(_currentState==10){
				resetTotalPartFault();
				//去掉故障菜单
				closeTotalPartMenu();
				//状态为空
				stateText.updataText("");
				}
			}
		
		//关闭所有的部件的故障菜单
		private function closeTotalPartMenu():void{
			for(var i:String in _allPartArr){
				_allPartArr[i].closeFaultSelecteOption();
				}
			}
		
		//请所有的部件都没有故障
		private function resetTotalPartFault():void{
			for(var i:String in _allPartArr){
				_allPartArr[i].fault=false;
				_allPartArr[i]._RMPX_Fault_Select.initOption();//所有选择没选中
				//_allPartArr[i]._RMPX_Fault_Select.currentSelecteOptionIndex=0;//默认正常
				}
			_faultOptionId=1000;
			}
		//---------------------------------------------重写-----------------------------------------------------------------------//
		//点火开关，档位开关状态变化时调用
		override public function flashStar(startKeyId:uint, switchId:uint):void {
			/*trace(_faultOptionId+"/"+startKeyId)
			//如果设了故障发动机就不工作
				if (_faultOptionId != 0) {
					//发动机停止工作
					_fdj.gotoAndStop(1);
					_jdq.gotoAndStop(1);//继电器动作
					}
					
			//if(_dfkg.currentFrame!=startKeyId ||_dwkg.currentFrame!=switchId){
				_dfkg.gotoAndStop(startKeyId);
				_dfkg.currentState=startKeyId-1;
				_dwkg.gotoAndStop(switchId);
				_dwkg.currentState=returneSwitchState(switchId);
				
				universalUpdata();
				
				//如果点火开关和保险丝没有设置故障
				if(!_dfkg.fault && !_bxs.fault){
				//如果点火开关为start
					if(startKeyId==3){
					//如果继电器没有设置故障
					if(!_jdq.fault)
						{
							_jdq.gotoAndStop(2);//继电器动作
							
								//如果档位开关没有故障
								if(!_dwkg.fault){
								//如果档位开关为p,n
								if (switchId == 1 || switchId == 3) {
								//如果发动机没有设置故障
								if (!_fdj.fault) {
									 if(_currentState == 10 || (_currentState == 20 && _qdjLined && _currentClickPart.name=="fdj" && _currentPartD_T=="通电")){
									//在设故状态时启动机没故障则有动画,如果在排故状态时启动机没故障且当前的部件是启动机,接上蓄电池则有动画
									_fdj.gotoAndStop(2);
									 }
								}else if(_faultOptionId == 4 && _currentClickPart.name=="fdj" &&_qdjLined && _currentState==20 && _currentPartD_T=="通电"){
									//排故状态且已经连好线，且为保持线圈故障
									_fdj.gotoAndStop(3);
									}else if(_faultOptionId == 4 && _currentClickPart.name=="fdj" && _currentState==10){
									//设故状态且为保持线圈故障
									_fdj.gotoAndStop(3);
									}
								}
							}
						}
					}else{
						//不为start
						if(!_jdq.fault)//如果继电器没有设置故障
						_jdq.gotoAndStop(1);//继电器动作
						
						//发动机停止工作
						_fdj.gotoAndStop(1);
						}
				}*/
				
			}
		
		//根据ID返回相应的状态
		/*private function returnStartKeyState(_value:uint):String{
			var returnStr:String;
			switch(_value){
				case 1:
				returnStr="OFF档";
				break;
				case 2:
				returnStr="ON档";
				break;
				case 3:
				returnStr="ST档";
				break;
				default:
				break;
				}
			return returnStr;
			}*/
		
		private function returneSwitchState(_value:uint):uint{
			var returnStr:uint;
			switch(_value){
				case 1:
				returnStr=0;
				break;
				case 2:
				returnStr=1000;
				break;
				case 3:
				returnStr=1;
				break;
				case 4:
				returnStr=1000;
				break;
				case 5:
				returnStr=1000;
				break;
				case 6:
				returnStr=1000;
				break;
				default:
				break;
				}
			return returnStr;
			}
		//--------------------------------------------------------------------------------------------------------------------//
		/*//建立主程序,供主程序传入皮肤
		public function creaBody(_value:LoaderInfo,_stage:Stage):void{
			_loaderInfo=_value;
			_stage=stage;
			}*/
		
		//使用工具接口
		public function UseTool(toolId:uint,toolItemId:uint):void
		{
			if(_currentState==20){
			//只有在性能检测状态才能用工具
			//万用表
			if(toolId==0 && toolItemId==0){
					if(toolUsed("万用表")){
						//trace("万用表")
					//使用万用表
					_Universal=new Universal(this);
					_Universal.x=80;//Gvar.STAGE_X-_Universal.width-100;
					_Universal.y=100;//Gvar.STAGE_Y-_Universal.height-50;
					_toolSp.addChild(_Universal);
				
					_Universal.addEventListener(UniversalEvent.UNIVERSSALEVENT,universalEventHandler);
					_Universal.addEventListener("closeUniversal",closeUniversalHandler);
					_Universal.addEventListener(UniversalEvent.UNIVERSSALSELECTEEVENT, slectetUniversal);
					_Universal.addEventListener("startDragShowText", startDragShowTextHandler);
					_currentUseToolArr.push("万用表");
					}
				}
			
			//连接
			if(toolId==1 && toolItemId==0){
					if(toolUsed("连接")){
						_contectLineTool=ThreeContectLine.getInstance();
						//是否已经初始化了
						if(!_contectLineTool.initFlag){
						
						var Lineqz:MovieClip=createClip("qinzhi");//钳子
						var Lineline:MovieClip=createClip("lineTool");//线
						_contectLineTool.qinzhi=Lineqz;
						_contectLineTool.line=Lineline;
						_contectLineTool.setParent(this);
						_contectLineTool.x=50;
						_contectLineTool.y=500;
						_toolSp.addChild(_contectLineTool);
						_contectLineTool.addEventListener(ContectLineOverEvent.CONTECTLINEOVEREVENT,contectLineOverHandler);
						}
						_currentUseToolArr.push("连接");
						}else{
							//已经初始化过
							_toolSp.addChild(_contectLineTool);
							_contectLineTool.addEventListener(ContectLineOverEvent.CONTECTLINEOVEREVENT,contectLineOverHandler);
							}
						}
					
			//电源
			if(toolId==2 && toolItemId==0){
					if(toolUsed("电源")){
						//trace("电源")
						_power=Power.getInstance();
						if(!_power.initFlag){
						var qzz:MovieClip=createClip("powerqzz");//正钳子
						var qz:MovieClip=createClip("powerqz");//钳子
						var line:MovieClip=createClip("powerBody");//线
						
						var closePowerBt:SimpleButton=createButton("closePower");//关闭按钮
						_power.qinzhiz=qzz;
						_power.qinzhi=qz;
						_power.closeBt=closePowerBt;
						_power.line=line;
						_power.init(this);
						_toolSp.addChild(_power);
						_power.x=80;//Gvar.STAGE_X-_power.width-250;;
						_power.y=400;//Gvar.STAGE_Y-_power.height-120;
						
						_power.addEventListener(PowerEvent.POWEREVENT,powerEventHandler);
						_power.addEventListener(PowerEvent.POWERCLICKEVENT,powerClickEventHandler);
						_power.addEventListener("closePowerEvent",closePowerEventHandler);
						_currentUseToolArr.push("电源");
						}else{
							//已经初始化过
							_toolSp.addChild(_power);
							}
						}
					}
				
					
			}
		}
		
		//连线后
		protected function contectLineOverHandler(e:ContectLineOverEvent):void {
			//当前部件是启动机时,30,50脚可以用连线工具连线
			trace("_currentClickPart.name="+_currentClickPart.name)
			if (_currentClickPart.name == "fdj") {
				if ((e.fPinId == 21 && e.zPinId == 22) || (e.fPinId == 22 && e.zPinId == 21)) {
					//两点间画线
					_qdjLine.graphics.lineStyle(4,0xff0000,2);
					_qdjLine.graphics.moveTo(_contectLineTool.currentZPin.x+_contectLineTool.currentZPin.width/2, _contectLineTool.currentZPin.y+_contectLineTool.currentZPin.height/2);
					_qdjLine.graphics.lineTo(_contectLineTool.currentFPin.x+_contectLineTool.currentFPin.width/2, _contectLineTool.currentFPin.y+_contectLineTool.currentFPin.height/2);
					_currentClickPart.addChild(_qdjLine);
					_qdjLined = true;
					
					//trace("_powerReady="+_powerReady)
					(_powerReady)?_currentPartD_T = "通电":_currentPartD_T = "断电";
					
					//如果点火开关为START则让启动机运动
					trace("_faultOptionId=" + _faultOptionId);
					trace("_currentState=" + _gvar._startKey._currentState);
					if (_gvar._startKey._currentState == 3) {
						if (_faultOptionId == 4 && _currentPartD_T=="通电") {
							//保持线圈故障时
							trace("保持线圈故障时")
							_fdj.gotoAndStop(3);
							}else if (_faultOptionId == 0 && _currentPartD_T == "通电") {
								trace("22")
								_fdj.fault = false;
								_fdj.gotoAndStop(2);
								}
						}
					}
				universalUpdata();
				}
			
			trace(e.fPinId+"/"+e.zPinId);
			}
			
		//关闭电源工具
		private function closePowerEventHandler(e:Event):void{
			
			ArrayUtil.removeValueFromArray(_currentUseToolArr,"电源");
			_power.resetDocument("all");//复位
			powerClickEventHandler(null);
			
			if(_toolSp.contains(_power)){
			_toolSp.removeChild(_power);
			
			//trace(_currentUseToolArr)
			}
			}
		
		//设置当前工具为最上层
		private function setUniversalAndPowerDepth(_value:*):void{
			_toolSp.setChildIndex(_value,_toolSp.numChildren-1);
			}
		
		//当前选择的是万用表
		private function slectetUniversal(e:UniversalEvent):void{
			setUniversalAndPowerDepth(_Universal);
			}
		
		//电源钳子点击事件----一点击当前部件就为断路
		private function powerClickEventHandler(e:PowerEvent):void{
			_currentPartD_T="断电";
			
			setUniversalAndPowerDepth(_power);
			
			//更新万用表
				if(_Universal)
				if(_toolSp.contains(_Universal))
				_Universal.UniversalStart();
			}
		
		//判断当前是否所选的工具已经点出来了
		private function toolUsed(_value:String):Boolean{
			var returnValue:Boolean=true;
			for(var i:String in _currentUseToolArr){
				if(_value==_currentUseToolArr[i]){
					returnValue=false;
					break;
					}
				}
			return returnValue;
			}
		//关闭连线工具
		private function closeLineHandler(e:Event):void {
			if(_toolSp.contains(_contectLineTool)){
			_toolSp.removeChild(_contectLineTool);
			ArrayUtil.removeValueFromArray(_currentUseToolArr, "连线");
			_contectLineTool.removeEventListener(ContectLineOverEvent.CONTECTLINEOVEREVENT,contectLineOverHandler);
			}
		}
		//关闭万用表
		
		private function closeUniversalHandler(e:Event):void{
			if(_toolSp.contains(_Universal)){
			_toolSp.removeChild(_Universal);
			ArrayUtil.removeValueFromArray(_currentUseToolArr,"万用表");
			_Universal.removeEventListener("startDragShowText", startDragShowTextHandler);
			_Universal.removeEventListener(UniversalEvent.UNIVERSSALEVENT,universalEventHandler);
			_Universal.removeEventListener("closeUniversal",closeUniversalHandler);
			_Universal.removeEventListener(UniversalEvent.UNIVERSSALSELECTEEVENT, slectetUniversal);
			//trace(_currentUseToolArr)
			}
			}
		
		//--------------------------------------------------------------------------------------------------------------------//
		//电源接好事件
		protected function powerEventHandler(e:PowerEvent):void {
			
			if(e.ZbHitPart==e.FbHitPart && e.ZbHitPart==_currentClickPart){
				//两个笔接的部件相同且与当前点击的部件相同
				var tempPinIdArr:Array=new Array(e.ZbHitPinId,e.FbHitPinId);
				_powerZFArr=e.ZbHitPinId+"/"+e.FbHitPinId;
				trace("_powerZFArr="+_powerZFArr)
				tempPinIdArr.sort(order);
				
				modifyCurrentD_T(tempPinIdArr,e.ZbHitPart);
				
			}else{
				_currentPartD_T="断电";
				}
			}
		
		//判断当前的部件是断电还是通电
		protected function modifyCurrentD_T(_value:Array,_valueP:Part):void{
			var tempXml:XML=new XML();
			tempXml = _valueP.Xml;
			//tempXml=_allXml[findPartIndex(_valueP)];
			
			//找出电源线正确的连接点ID,数据记录V不为/
			var rightPinId1:String = String(tempXml.fault[_valueP.returnOptionSelect()].state.(@statename == "通电").performance[findperformanceIndex()].performancedetail.(@name == "point1number")[0]);
			var rightPinId2:String = String(tempXml.fault[_valueP.returnOptionSelect()].state.(@statename == "通电").performance[findperformanceIndex()].performancedetail.(@name == "point2number")[0]);
			var tempPinIdArr:Array = new Array(rightPinId1, rightPinId2);
			tempPinIdArr.sort(order);
			
			//tempXml.child(_faultOptionId)._state._content.(_record.@v!="/")._locale.@pointId;
			//如果当前电源连接正确
			/*if (findRightValue(tempXml, _value[0]+","+_value[1], _value[1]+","+_value[0], "standard3data",true).finded) {
				_currentPartD_T="通电";
				}else {
					_currentPartD_T="断电";
					}*/
			trace(tempPinIdArr+"//"+_value)
			if (String(_value) == String(tempPinIdArr)) {
				if (_currentClickPart.name == "fdj") {
					_powerReady = true;
					if(_qdjLined)
					_currentPartD_T = "通电";
					else
					_currentPartD_T="断电";
					}else {
						_powerReady = false;
						_currentPartD_T="通电";
						}
				
				}else {
					_powerReady = false;
					
					_currentPartD_T="断电";
				}
			trace("_currentPartD_T="+_currentPartD_T)
			universalUpdata();
			
			//---------------------------------------------------
			//找到standard1data不为/和0的index
			function findperformanceIndex():uint {
				for (var i:String in tempXml.fault[_valueP.returnOptionSelect()].state.(@statename == "通电").performance) {
					var tempStr:String = String(tempXml.fault[_valueP.returnOptionSelect()].state.(@statename == "通电").performance[i].performancedetail.(@name == "standard1data")[0]);
					if (tempStr != "/" && tempStr != "0") {
						return uint(i);
						}
					}
					return 1;
				}
				
			}
			
		
		//---------------------------------------------------
		//--------------------------------------------------------------------------------------------------------------------//
		//万用表运行事件
		protected function universalEventHandler(e:UniversalEvent):void{
			
			if(e.ZbHitPart==e.FbHitPart && e.ZbHitPart==_currentClickPart && _Universal.currenselectObject!="OFF"){
				//两个笔接的部件相同且与当前点击的部件相同
				var tempPinIdArr:Array=new Array(e.ZbHitPinId,e.FbHitPinId);
				//_UniversalZFArr=new Array();
				//trace("a"+e.ZbHitPinId+"/"+e.FbHitPinId)
				_UniversalZFArr=e.ZbHitPinId+"/"+e.FbHitPinId;
				//trace("_UniversalZFArr="+_UniversalZFArr)
				tempPinIdArr.sort(order);
				var tempStr:String=String(tempPinIdArr[0])+","+String(tempPinIdArr[1]);
				var tempStr1:String=String(tempPinIdArr[1])+","+String(tempPinIdArr[0]);
				
				//只有当前有表时
				if(_currentShowForm){
					modifyForm(tempStr,tempStr1,e.ZbHitPart);
				}
				
				}
			}
		//从小到大排序
		private function order(a,b){
				if(a>b){
				return 1;//返回1，要求把a排在b的后面
				}else if(a<b){
				return -1;//返回-1，把a排在b的前面
				}else{
				return 0;//返回0，保持不变
				}
			}

		//--------------------------------------------------------------------------------------------------------------------//
		//显示万用表数据
		private function modifyForm(_value:String,_value1:String,_valueP:Part):void{
			var tempXMl:XML=new XML();
			//取出当前表原先的数据
			tempXMl=_currentShowForm.allXml;
			//找出正确的数据记录
			var rightXml:XML=new XML();
			var currentPartIndex:uint=findPartIndex(_valueP);
			rightXml=XML(_allXml.part.(@partname==_valueP._partName));
			var rightValue:String;
			var point1:String;
			var point2:String;
			var rowId:uint;
			var cellId:int;
			trace("_currentClickPart.currentState=" + _currentClickPart.currentState)
			//根据万用表现在要测试的是电压还是电阻不同而更改不同的内容
			if(_Universal.currenselectObject=="V"){
				rowId = 0;
				//如果是点火开关和档位开关还要加一个判断，即根据当前他们的状态
				if (currentPartIndex == 2 || currentPartIndex == 1) {
					
					if(_currentClickPart.currentState!=1000){
						point1=String(rightXml.fault[_faultOptionId].state.(@statename == _currentPartD_T).performance[_currentClickPart.currentState].performancedetail.(@name=="point1number")[0]);
						point2 = String(rightXml.fault[_faultOptionId].state.(@statename == _currentPartD_T).performance[_currentClickPart.currentState].performancedetail.(@name == "point2number")[0]);
						//trace("point1+point2=" + point1 + "/" + point2);
						//trace("_value+_value1=" + _value + "/" + _value1);
						if (point1 + "," + point2 == _value || point1 + "," + point2 == _value1) {
							rightValue=String(rightXml.fault[_faultOptionId].state.(@statename == _currentPartD_T).performance[_currentClickPart.currentState].performancedetail.(@name=="standard3data")[0]);
							cellId = _currentClickPart.currentState;
							}else {
								rightValue="";
								}
						//trace("rightValue=" + rightValue)
					}else {
							rightValue="";
						}
					}else {
						var tempObj:Object = findRightValue(rightXml, _value, _value1, "standard3data");
						//是否找到正确的数据
						if(tempObj.finded){
						rightValue=tempObj.right;
						cellId=tempObj.index;
						}else {
							rightValue="";
							}
						}
				
				}else{
					rowId = 1;
					if (currentPartIndex == 2 || currentPartIndex == 1) {
						if(_currentClickPart.currentState!=1000){
							point1=String(rightXml.fault[_faultOptionId].state.(@statename == _currentPartD_T).performance[_currentClickPart.currentState].performancedetail.(@name=="point1number")[0]);
							point2 = String(rightXml.fault[_faultOptionId].state.(@statename == _currentPartD_T).performance[_currentClickPart.currentState].performancedetail.(@name == "point2number")[0]);
							if (point1 + "," + point2 == _value || point1 + "," + point2 == _value1) {
								rightValue=String(rightXml.fault[_faultOptionId].state.(@statename == _currentPartD_T).performance[_currentClickPart.currentState].performancedetail.(@name=="standard4data")[0]);
								cellId = _currentClickPart.currentState;
								}else {
								rightValue="";
								}
						}else {
							rightValue="";
						}
					}else {
						var temp4Obj:Object = findRightValue(rightXml, _value, _value1, "standard4data");
						if(temp4Obj.finded){
						rightValue=temp4Obj.right;
						cellId=temp4Obj.index;
						}else {
							rightValue="";
							}
						}
					
					}
				
			//如果当前测试的是电压且电压有数据则有正负之分
			if(rightValue!=null && rightValue!="/" && rightValue!="" && _currentPartD_T=="通电" &&_Universal.currenselectObject=="V"){
				if(String(_UniversalZFArr)==String(_powerZFArr)){
					_Universal.updataText(rightValue);
					}else{
						_Universal.updataText("-"+uint(rightValue));
						}
					
				}else {
					
					if (rightValue != null) {
						trace(rightValue)
						_Universal.updataText(rightValue);
					}
					}
			

			if (rightValue != "/" && rightValue != "") {
				//让指定的单元格背景闪动
					var paretnId:uint;
					
					trace("_currentPartD_T="+_currentPartD_T)
					if (_currentPartD_T == "断电") {
						paretnId = 0;
						}else {
							paretnId = 1;
						}
					_currentShowForm.updata(_faultOptionId);
					_currentShowForm.modify(paretnId, cellId, rowId, 0, 1);
					trace(paretnId+"/"+cellId+"/"+ rowId)
				
			}
			}
		
		//------------------------------找出正确的数据--------------------------------------------------------------------------------------//
		private function findRightValue(thisRightXml:XML, value:String, value1:String,vΩ:String="standard3data",D_T:Boolean=false):Object {
			var returnObj:Object = new Object();
			var tempStr1:String = "";
			var tempStr2:String = "";
			trace("_faultOptionId=" + _faultOptionId);
			var tempXML:XMLList;
			if (!D_T) {
				//万用表时
				tempXML = XMLList((thisRightXml.fault[_faultOptionId].state.(@statename == _currentPartD_T).performance).toXMLString());
				}else {
					//蓄电池用时
					tempXML = XMLList((thisRightXml.fault[_faultOptionId].state.(@statename == "通电").performance).toXMLString());
					}
			for(var i:String in tempXML) {
				tempStr1 = String(tempXML[i].performancedetail.(@name == "point1number")[0]);
				trace("tempStr1="+tempStr1)
				tempStr2=String(tempXML[i].performancedetail.(@name=="point2number")[0]);
				if (tempStr1 + "," + tempStr2 == value || tempStr1 + "," + tempStr2 == value1) {
					returnObj.right = String(tempXML[i].performancedetail.(@name==vΩ)[0]);
					returnObj.index = i;
					returnObj.finded = true;
					return returnObj;
					break;
					}
				}
			returnObj.finded = false;
			return returnObj;
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//万用表测好后拖动上面的文字事件
		private function startDragShowTextHandler(e:Event):void {
			_totalFormCommon = new Array();
			_totalFormCommon = _currentShowForm.formBody._totalFormCommon;
			if (_Universal._currentContectText != "" || _Universal._currentContectText != "V" || _Universal._currentContectText != "Ω") {
				if (_universalDrag) removeChild(_universalDrag);
				_universalDrag = new CreaText(_Universal._currentContectText, 0x000000,20,true,"left",true);
				
				addChild(_universalDrag);
				_universalDrag.startDrag(true);
				_universalDrag.addEventListener(MouseEvent.MOUSE_UP, dragUpEventHandler);
				this.addEventListener(MouseEvent.MOUSE_MOVE, mouseMoveHandler);
				}
			
			}
		
		//让所有的单元格恢复
		private function resetTotalCellBg():void {
			for (var j:String in _totalFormCommon) {
				_totalFormCommon[j].h51.changeBg(0xFF6666);
				_totalFormCommon[j].h52.changeBg(0xFF6666);
				_currentHitFormCell = null;
				}
			}
		
		//鼠标移动时如果跟表格可以拖动的单元格碰到就让该单元格变颜色
		private function mouseMoveHandler(e:MouseEvent):void {
			resetTotalCellBg();
			
			for (var i:String in _totalFormCommon) {
				
				if (_universalDrag.hitTestObject(_totalFormCommon[i].h51)){
				_totalFormCommon[i].h51.changeBg(0x00FF40);
				_currentHitFormCell = _totalFormCommon[i].h51;
				_currentHitFormCell._parentId = _totalFormCommon[i].parentId;
				_currentHitFormCell._Id = _totalFormCommon[i].Id;
				_currentHitFormCell._VO = "V";
				break;
				}
				else{
				_totalFormCommon[i].h51.changeBg(0xFF6666);
				_currentHitFormCell = null;
				}
				
				if (_universalDrag.hitTestObject(_totalFormCommon[i].h52)){
				_totalFormCommon[i].h52.changeBg(0x00FF40);
				_currentHitFormCell = _totalFormCommon[i].h52;
				_currentHitFormCell._parentId = _totalFormCommon[i].parentId;
				_currentHitFormCell._Id = _totalFormCommon[i].Id;
				_currentHitFormCell._VO = "O";
				break;
				}
				else{
				_totalFormCommon[i].h52.changeBg(0xFF6666);
				_currentHitFormCell = null;
				}
				}
			
			}
		
		//鼠标释放拖动
		private function dragUpEventHandler(e:MouseEvent):void {
			if(_currentHitFormCell){
			var unText:String = _universalDrag._textContent;
			trace("////"+_currentHitFormCell._parentId+"/"+_currentHitFormCell._Id)
			
			var tempXMl:XML = new XML();
			tempXMl = _currentShowForm.allXml;
			
			if (_currentHitFormCell._VO == "V") {
				tempXMl.fault[_faultOptionId].state[_currentHitFormCell._parentId].performance[_currentHitFormCell._Id].performancedetail.(@name=="standard3data")[0]=unText;
				}else {
					tempXMl.fault[_faultOptionId].state[_currentHitFormCell._parentId].performance[_currentHitFormCell._Id].performancedetail.(@name=="standard4data")[0]=unText;
					}
			
				_currentShowForm.allXml=tempXMl;
				_currentShowForm.updata(_faultOptionId);
			}
			removeChild(_universalDrag);
			_universalDrag.removeEventListener(MouseEvent.MOUSE_UP, dragUpEventHandler);
			_universalDrag = null;
			
			resetTotalCellBg();
			this.removeEventListener(MouseEvent.MOUSE_MOVE, mouseMoveHandler);
			
			}
		
		//根据部件找到在部件数组中的ID
		private function findPartIndex(_value:Part):uint{
			var temp:uint;
			for(var i:String in _allPartArr){
				if(_allPartArr[i]==_value){
					temp=uint(i);
					//trace("temp="+temp)
					}
				}
			
			return temp;
			}
		//--------------------------------------------------------------------------------------------------------------------//
		private function init():void{
			/*_loadAllPartXml=new LoadAllPartXml();
			_loadAllPartXml.addEventListener("allPartXmlLoadOver", allPartXmlLoadOverHandler);*/
			
			rmpx_Ws = MyWebserviceSingle.getInstance();
			rmpx_Ws.myOp.Performance({CoursewareId:Gvar.getInstance().CoursewareId});
			rmpx_Ws.myOp.addEventListener("complete", rmpx_Ws.onResult);
			rmpx_Ws.myOp.addEventListener("failed", rmpx_Ws.onFault);
			rmpx_Ws.addEventListener(MyWebservice.WSCOMPLETE, mnks_WsComplete);
			
			}
		
		
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//所有的XML都读完事件
		private function mnks_WsComplete(e:Event):void {
			removeChild(_loading);
			
			rmpx_Ws.myOp.removeEventListener("complete", rmpx_Ws.onResult);
			rmpx_Ws.myOp.removeEventListener("failed", rmpx_Ws.onFault);
			rmpx_Ws.removeEventListener(MyWebservice.WSCOMPLETE, mnks_WsComplete);
			_allXml=new XML();
			_allXml = e.target.data;
			_gvar._T_PartRightXml = _allXml;

			addPartInfo();
			PartCreaPin();
			partInitLocale();
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//给各部件增加点
		private function PartCreaPin():void{
			var ysjdqArr:Array=new Array({x:"61",y:"-4.3"},{x:"97.05",y:"-5.05"},{x:"197.4",y:"-4.05"},{x:"78.55",y:"116.9"},{x:"78.55",y:"134.1"},{x:"184.8",y:"116.9"},{x:"217.3",y:"117.45"});
			var ysdjArr:Array=new Array({x:"40",y:"-3.7"},{x:"84.75",y:"-4.05"},{x:"148.9",y:"-4.05"},{x:"187.6",y:"-4.05"},{x:"85.45",y:"154.35"},{x:"85.45",y:"174.85"});
			var psdjArr:Array=new Array({x:"29.85",y:"-7"},{x:"29.85",y:"62"},{x:"29.85",y:"87"});
			var yskgArr:Array=new Array({x:"51.6",y:"141.35"},{x:"74.6",y:"141.35"},{x:"98.6",y:"141.35"},{x:"123.6",y:"141.35"},{x:"144.6",y:"141.35"},{x:"171.65",y:"141.35"});
			
			
			_allPartArr[0].creaPin(ysjdqArr);
			_allPartArr[2].creaPin(psdjArr);
			_allPartArr[1].creaPin(ysdjArr);
			_allPartArr[3].creaPin(yskgArr);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//各部件初始坐标
		private function partInitLocale():void{
			
			for(var i:String in _allPartArr){
				var tempX:int=_allPartArr[i].x;
				var tempY:int=_allPartArr[i].y;
				var tempPoint:Point=new Point(tempX,tempY);
				_allPartArr[i]._point=tempPoint;
				}
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//传入各部件信息
		private function addPartInfo():void {
			
			_allPartArr = [_ysjdq, _ysdj, _psdj, _yskg];
			
			for(var i:uint=0;i<_allPartArr.length;i++){
				//trace(_allPartArr[i])
				_allPartArr[i].interfaceOut(_allXml.part.(@partname==_allPartArr[i]._partName));
				_allPartArr[i].addEventListener(FaultOptionClickEvent.FAULTOPTIONCLICKEVENT,faultOptionClickEventHandler,true);
				_allPartArr[i].addEventListener(PartClickEvent.PARTCLICKEVENT,partClickEventHandler);
				//_allPartArr[i].addEventListener("closeFaultSelecteOption",closeFaultSelecteOptionHandler,true);
				}
			
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//把XML中的数据记录中的V，O去掉
		private function removeVO(_value:XML):XML{
			var returnXml:XML=new XML();
			var _valueCopy:XML = _value.copy();
			//trace("valuecopy="+_valueCopy)
			for each(var i:XML in _valueCopy.fault){
				for each (var j:XML in i.state.performance){
					//如果不为/的就设为空，表示用户要自己输入
					if(j.performancedetail.(@name=="standard3data")[0]!="/"){
						j.performancedetail.(@name=="standard3data")[0]="___";
						}
					if(j.performancedetail.(@name=="standard4data")[0]!="/")
						j.performancedetail.(@name=="standard4data")[0]="___";
					
					}
				
				}
			//_value.child(i)._state._content._record.@v="";
			//_value.tool._state._content._record.@Ω="";
			returnXml=_valueCopy;
			//trace(_valueCopy.tool._state._content._record.@v)
			//trace(_value.tool._state._content._record.@v)
			return returnXml;
			}
		
		//给出提示
		private function closeOtherPartFaultHnadler(e:Event):void{
			/*//弹出提示信息
			var popInfor:AlertShow=new AlertShow("请先关闭其他部件故障菜单",400,200);
			popInfor.x=(Gvar.STAGE_X-popInfor.width) / 2;
			popInfor.y=(Gvar.STAGE_Y-popInfor.height) / 2;
			addChild(popInfor);*/
			
			/*tempText.x=_currentClickPart.x+_currentClickPart.width/2;
			tempText.y=_currentClickPart.y+_currentClickPart.height/2;
			if(contains(tempText))
			removeChild(tempText);
			tempText.alpha=1;
			addChild(tempText);
			TweenLite.to(tempText, .5, {y:"-100",alpha:0,delay:2,onComplete:removeTemp});
			function removeTemp(){
				removeChild(tempText);
				}*/
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//关闭故障菜单
		private function closeFaultSelecteOptionHandler(e:Event):void{
			//trace("closeFaultSelecteOptionHandler")
			CommonlyClass.cleaall(_PopFormSp);
			//_PopFormSp.removeChildAt(0);
			//_currentShowForm=null;
			_currentFormed=false;
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//部件点击事件
		private function partClickEventHandler(e:PartClickEvent):void{
			
			var temp:Part=new Part();
			temp=e.target as Part;
			//10表示故障设置,20表示故障排除
			if(_currentState==10){
				//显示当前点击部件的故障菜单
				temp.showFaultMenu();
				
				if(_currentClickPart!=temp){
				if(_gvar.T_RMPX_PARTED){
					//是否是初始状态
					_currentClickPart.closeFaultSelecteOption();//关闭故障菜单
					//closeFaultSelecteOptionHandler(null);//关闭当前表格
				}
				resetTotalPartFault();//复位
				_currentClickPart=temp;
				stateText.updataText("故障部件："+_currentClickPart._partName+"\n"+"故障部位：无");
				}
			}
			//第二次点击断开
			/*if(e.clicked){
				//更新电源
				if(_power)_power.Start();
				switch (_currentClickPart.name){
					case "bxs":
					showBXS();
					break;
					case "dfkg":
					trace("clickdhkg");
					showDHKG();
					break;
					case "dwkg":
					trace("clickdwkg");
					showDWKG();
					break;
					case "jdq":
					trace("jdq")
					showJDQ();
					break;
					case "fdj":
					showQDJ();
					break;
					default:
					trace("出错")
					}
					
				//当前表可以拖动
				_currentShowForm.addEventListener(MouseEvent.MOUSE_DOWN,mouseDownHandler);
				_currentShowForm.addEventListener(MouseEvent.MOUSE_UP,mouseUpHandler);
				
				}*/
			
			}
		
		//设置指定部件移动到场景中间
		private function setPartCenter(_value:*):void{
			_value.visible=true;
			TweenLite.to(_value, .1, { x:(Gvar.STAGE_X - _value.width) / 2, y:90, onComplete:function completeOver() {
				_zzty.addEventListener(MouseEvent.CLICK,zztyClick);
				}});
			}
		
		//隐藏所有部件
		private function hideTotalPart():void{
			for(var i:String in _allPartArr){
				_allPartArr[i].visible=false;
			}
			lines.visible=false;
		}
		
		//显示所有部件
		private function showTotalPart():void{
			for(var i:String in _allPartArr){
				_allPartArr[i].visible=true;
			}
			lines.visible=true;
		}
		//根据部件名显示部件
		/*private function showPart(_value:String):void{
			var returnValue:String;
			switch(_value){
				case "dfkg":
				_allPartArr[1].visible=true;
				break;
				case "jdq":
				_allPartArr[3].visible=true;
				break;
				case "dwkg":
				_allPartArr[2].visible=true;
				break;
				case "bxs":
				_allPartArr[0].visible=true;
				break;
				case "fdj":
				_allPartArr[4].visible=true;
				break;
				default:
				trace("eroor")
				}
			return returnValue;
			}*/
		
		
		//表格点击可以拖动表格
		protected function mouseDownHandler(e:MouseEvent):void{
			var tempRect:Rectangle=new Rectangle(-this.width/2,-this.height/2,Gvar.STAGE_X,Gvar.STAGE_Y);
			_currentShowForm.startDrag(false);
			}
		//停止拖动
		protected function mouseUpHandler(e:MouseEvent):void{
			_currentShowForm.stopDrag();
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//启动机
		/*private function showQDJ():void{
			
			_faultOptionId=_currentClickPart.returnOptionSelect();//当前部件的当前选项
			_qdjForm=RMPX_QDJ_FORM.getInstance();
			
			trace("_qdjForm.allXml="+_qdjForm.allXml)
			if(_qdjForm.allXml==""){
				_qdjForm.CreaFoem(removeVO(_currentClickPart.Xml),_faultOptionId);
				_qdjForm.x=(Gvar.STAGE_X-_qdjForm.width)/2;
				_qdjForm.y=90+_currentClickPart.height+20;
			}else {
				_qdjForm.updata(_faultOptionId);
				}
			
			_PopFormSp.addChild(_qdjForm);
			
			var tempClassType:String=getQualifiedClassName(_qdjForm);
			var tempClass:Class=getDefinitionByName(tempClassType) as Class;
			_currentShowForm=new tempClass();
			_currentShowForm=_qdjForm;
			
			_currentFormed=true;
			
			universalUpdata();
			_qdjForm.addEventListener(FormCellNextEvent.FORMCOMMONCHANGEEVENT,formCellNextEventHanlder);
			}*/
		//显示保险丝
		private function showBXS():void{
			_faultOptionId = _currentClickPart.returnOptionSelect();//当前部件的当前选项
			trace("_faultOptionId="+_faultOptionId)
			_bxsForm=RMPX_BXS_FORM.getInstance();
			
			//trace(_jdqForm.allXml)
			if(_bxsForm.allXml==""){
				_bxsForm.CreaFoem(removeVO(_currentClickPart.Xml),_faultOptionId);
				_bxsForm.x=(Gvar.STAGE_X-_bxsForm.width)/2;
				_bxsForm.y=(Gvar.STAGE_Y-_bxsForm.height)/2;
			}else {
				_bxsForm.allXml = removeVO(_currentClickPart.Xml);
				_bxsForm.updata(_faultOptionId);
				}
			
			_PopFormSp.addChild(_bxsForm);
			
			var tempClassType:String=getQualifiedClassName(_bxsForm);
			var tempClass:Class=getDefinitionByName(tempClassType) as Class;
			_currentShowForm=new tempClass();
			_currentShowForm=_bxsForm;
			
			_currentFormed=true;
			
			universalUpdata();
			_bxsForm.addEventListener(FormCellNextEvent.FORMCOMMONCHANGEEVENT,formCellNextEventHanlder);
			}
			
		//显示档位开关
		private function showDWKG():void{
			_faultOptionId=_currentClickPart.returnOptionSelect();//当前部件的当前选项
			_dwkgForm=RMPX_DWKG_FORM.getInstance();
			
			//trace(_jdqForm.allXml)
			if(_dwkgForm.allXml==""){
				_dwkgForm.CreaFoem(removeVO(_currentClickPart.Xml),_faultOptionId);
				_dwkgForm.x=(Gvar.STAGE_X-_dwkgForm.width)/2;
				_dwkgForm.y=(Gvar.STAGE_Y-_dwkgForm.height)/2;
			}else {
				_dwkgForm.allXml = removeVO(_currentClickPart.Xml);
				_dwkgForm.updata(_faultOptionId);
				}
			
			_PopFormSp.addChild(_dwkgForm);
			
			var tempClassType:String=getQualifiedClassName(_dwkgForm);
			var tempClass:Class=getDefinitionByName(tempClassType) as Class;
			_currentShowForm=new tempClass();
			_currentShowForm=_dwkgForm;
			
			_currentFormed=true;
			
			universalUpdata();
			
			_dwkgForm.addEventListener(FormCellNextEvent.FORMCOMMONCHANGEEVENT,formCellNextEventHanlder);
			}
		//显示点火开关
		private function showDHKG():void{
			_faultOptionId=_currentClickPart.returnOptionSelect();//当前部件的当前选项
			_dhkgForm=RMPX_DHKG_FORM.getInstance();
			
			//trace(_jdqForm.allXml)
			if(_dhkgForm.allXml==""){
				_dhkgForm.CreaFoem(removeVO(_currentClickPart.Xml),_faultOptionId);
				_dhkgForm.x=(Gvar.STAGE_X-_dhkgForm.width)/2;
				_dhkgForm.y=(Gvar.STAGE_Y-_dhkgForm.height)/2;
			}else {
				_dhkgForm.allXml = removeVO(_currentClickPart.Xml);
				_dhkgForm.updata(_faultOptionId);
				}
			
			_PopFormSp.addChild(_dhkgForm);
			
			var tempClassType:String=getQualifiedClassName(_dhkgForm);
			var tempClass:Class=getDefinitionByName(tempClassType) as Class;
			_currentShowForm=new tempClass();
			_currentShowForm=_dhkgForm;
			
			_currentFormed=true;
			
			universalUpdata();
			
			_dhkgForm.addEventListener(FormCellNextEvent.FORMCOMMONCHANGEEVENT,formCellNextEventHanlder);
			}
		//显示继电器
		private function showJDQ():void{
			_faultOptionId=_currentClickPart.returnOptionSelect();//当前部件的当前选项
			_jdqForm=RMPX_JDQ_FORM.getInstance();
			
			//trace(_jdqForm.allXml)
			if(_jdqForm.allXml==""){
				_jdqForm.CreaFoem(removeVO(_currentClickPart.Xml),_faultOptionId);
				_jdqForm.x=(Gvar.STAGE_X-_jdqForm.width)/2;
				_jdqForm.y=(Gvar.STAGE_Y-_jdqForm.height)/2;
			}else {
				_jdqForm.allXml = removeVO(_currentClickPart.Xml);
				_jdqForm.updata(_faultOptionId);
				}
			
			_PopFormSp.addChild(_jdqForm);
			
			var tempClassType:String=getQualifiedClassName(_jdqForm);
			var tempClass:Class=getDefinitionByName(tempClassType) as Class;
			_currentShowForm=new tempClass();
			_currentShowForm=_jdqForm;
			
			_currentFormed=true;
			
			universalUpdata();

			_jdqForm.addEventListener(FormCellNextEvent.FORMCOMMONCHANGEEVENT,formCellNextEventHanlder);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//表格下拉条选择变化时更新表格数据
		private function formCellNextEventHanlder(e:FormCellNextEvent):void{
			trace(e.parentId+"-"+e.thisid+"-"+e.thisSelect+"-"+e.thisSelectId);
			var tempXMl:XML=new XML();
			//取出当前表原先的数据
			tempXMl = _currentShowForm.allXml;
			
			if(e.changeRow!="_symptoms"){
			tempXMl.child(_faultOptionId).state[e.parentId].performance[e.thisid].performancedetail.(@name=="judge")[0]=e.thisSelect;
			tempXMl.child(_faultOptionId).state[e.parentId].performance[e.thisid].performancedetail.(@name=="judgeid")[0]=e.thisSelectId;
			}else {
				tempXMl.child(_faultOptionId).state[e.parentId].performance[e.thisid].performancedetail.(@name=="symptom")[0]=e.thisSelect;
				tempXMl.child(_faultOptionId).state[e.parentId].performance[e.thisid].performancedetail.(@name=="symptomid")[0]=e.thisSelectId;
				}
			_currentShowForm.allXml=tempXMl;
			_currentShowForm.updata(_faultOptionId);
			}
		
		//故障选项点击事件
		private function faultOptionClickEventHandler(e:FaultOptionClickEvent):void{
			if(_faultOptionId!=e.faultOptionIndex){
			_faultOptionId=e.faultOptionIndex;
			stateText.updataText("故障部件："+_currentClickPart._partName+"\n"+"故障部位："+e._faultContent);
			/*if(_currentShowForm)
			_currentShowForm.updata(_faultOptionId);
			
			//更新电源与万用表状态
			if(_power)_power.Start();
			universalUpdata();*/
			}
			trace("_faultOptionId="+_faultOptionId)
			if(_faultOptionId!=0){
				//如果设置了故障
				_currentClickPart.fault=true;
				}else{
					_currentClickPart.fault=false;
					/*if(!_currentClickPart.clicked)
					_currentClickPart.fault=false;*/
					}
			
			//更新点火开关
			_gvar._startKey.updata();
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//更新万用表
		private function universalUpdata():void{
			//更新万用表
				if(_Universal)
				_Universal.UniversalStart();
				
			}
		
		//对象置顶
		protected function setTop(_obj:DisplayObject,index:uint):void
		{
			if (this.getChildIndex(_obj) < this.numChildren - index)
			{
				this.setChildIndex(_obj,this.numChildren-index);
			}
		}
		
		//--------------------------------------------------------------------------------------------------------------------//
		
		//--------------------------------------------------------------------------------------------------------------------//
		
		//===================================================================================================================//
	}
}