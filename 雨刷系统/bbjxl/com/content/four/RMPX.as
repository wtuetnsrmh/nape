package bbjxl.com.content.four{
	/**
	作者：被逼叫小乱
	
	www.bbjxl.com/Blog
	**/
	import bbjxl.com.event.PopFramInitEvent;
	import bbjxl.com.loading.xmlReader;
	import bbjxl.com.net.WebSeverPack;
	import bbjxl.com.ui.FormCell;
	import com.adobe.air.filesystem.VolumeMonitor;
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.DisplayObject;
	import flash.display.LoaderInfo;
	import flash.display.Stage;
	import flash.geom.Point;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import bbjxl.com.display.StartSystem;
	import bbjxl.com.display.LoadAllPartXml;
	import flash.net.URLRequest;
	import flash.utils.getDefinitionByName;
	import flash.utils.getQualifiedClassName;
	import flash.system.ApplicationDomain;
	import com.adobe.utils.ArrayUtil;
	import bbjxl.com.event.UniversalEvent;
	import bbjxl.com.event.PowerEvent;
	import flash.events.Event;
	import bbjxl.com.display.Part;
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
	import bbjxl.com.display.F_Universal;
	import bbjxl.com.content.three.FaultOptionClickEvent;
	//import bbjxl.com.content.three.RMPX_Fault_Select;
	import bbjxl.com.content.four.Four_RMPX_Fault_Select;
	import org.aswing.BoxLayout;
	import org.aswing.CenterLayout;
	import org.aswing.event.AWEvent;
	import org.aswing.FlowLayout;
	import org.aswing.JButton;
	import org.aswing.JFrame;
	import org.aswing.JPanel;
	import bbjxl.com.event.WebServeResultEvent;
	import mx.rpc.soap.LoadEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	
	import flash.events.MouseEvent;
	import mx.rpc.AbstractOperation;
	
	import mx.rpc.soap.WebService;
	import mx.rpc.soap.Operation;
	
	public class RMPX extends ParentClass {
		
		//三条线所有的点
		protected var _line1Arr:Array = new Array();
		protected var _line2Arr:Array = new Array();
		protected var _line3Arr:Array = new Array();
		
		//所有的部件
		protected var _totalPart:Array = new Array();//BATTARY,BL,FS2,IBL,IGSW,ISL,FS3,RCL,PLY,RGL,BL1,FS1,RBL,RSL,SHFT,SML,MTR,BML
		
		protected var repaired:Boolean = false;//是否已经点图中部件排除故障
		//所有的点
		public var _totalPoint:Array = new Array();
		//当前故障ID下所有点的电压数组
		public var _totalPointVArr:Array;
		//当前故障ID下所有有数据的两点的电阻数组
		public var _totalPointRArr:Array;
		
		//当前的选中的部件(设故状态)
		protected var _currentPart:*;
		//当前的选中的部件(排故状态)
		protected var _currentPart20:*;
		//当前的故障菜单(设故状态)
		protected var _crrentFaultMenu:Four_RMPX_Fault_Select;
		//当前的故障菜单(排故状态)
		protected var _crrentFaultMenu20:Four_RMPX_Fault_Select;
		//----------------------------------按钮------------------------------------------------//
		protected var _zzty:MovieClip;//症状体验的按钮
		protected var _xnjc:MovieClip;//性能检测按钮
		protected var _resetBt:SimpleButton;//复位按钮
		protected var stateText:CreaText=new CreaText("",0xffffff,15,true,"left",false);//状态栏
		//----------------------------------状态------------------------------------------------//
		//点火开关工作状态
		protected var _currentIGSWState:uint = 30;//点火开关为off,10:start,20:on
		//状态
		protected var _currentState:uint = 10;//症状体验，10表示症状体验,20表示性能检测
		//当前故障菜单的选项
		protected var _currentFaultMenuOptionId:uint = 1000;//（设故）
		protected var _currentFaultMenuOptionId20:uint = 1000;//(排故)
		
		
		//----------------------------------仪表盘，大灯，喇叭素材------------------------------------------------//
		protected var _addOtherUi:AddOtherUi;
		//----------------------------------万用表，电源------------------------------------------------//
		protected var _Universal:F_Universal;//万用表
		protected var _UniversalZFArr:String;//万用表正负端接的点ID
		protected var _universalDrag:CreaText;//万用表拖动部分
		
		protected var _power:Power;//电源
		protected var _powerZFArr:String;//电源正负端接的点ID
		
		protected var _diagnosis:PopFrame;//诊断表
		
		protected var fr:JFrame = new JFrame(this, "提 示", true);//提示窗口
		//----------------------------------容器------------------------------------------------//
		//所有的点的容器
		protected var _pointSp:Sprite = new Sprite();
		protected var _stateSp:Sprite = new Sprite();//用于放状态按钮的容器
		protected var _toolSp:Sprite = new Sprite();//工具容器
		protected var _popFramSp:Sprite = new Sprite();//放诊断表的容器
		//----------------------------------数据------------------------------------------------//
		protected var _CurrentFalutid:uint;//当前故障ID
		protected var _xml:XML = new XML();//数据信息
		protected var _diadanosisXml:XML = new XML();//症状库数据
		protected var _currentUseToolArr:Array = new Array();//当前使用的工具
		protected var _flashAndSoundArr:Array=[1,1,0,1,1,1];//各部件动画与声音控制数组（点火钥匙	挡位开关	保险丝熔断	继电器	马达运转	电磁开关移动）
		protected var _pointInforArr:Array = new Array( {x:"89.7",y:"482"},{x:"89.05",y:"442"},{x:"89.7",y:"402.6"},
												 {x:"132.9",y:"166"},{x:"173.85",y:"166"},{x:"132.65",y:"111"},
												  {x:"173.6", y:"111" }, { x:"286.75", y:"166" }, { x:"312.5", y:"188" },
												  {x:"314.85", y:"144.8" }, { x:"322.85", y:"168.5" }, 
												  {x:"477.35",y:"188"},{x:"518.25",y:"189"},{x:"641.9",y:"163"},
												  {x:"641.9",y:"187"},{x:"641.9",y:"230.35"},{x:"641.9",y:"255"},
												  {x:"522.9",y:"257.6"},{x:"571.35",y:"288"},{x:"551.4",y:"364"},
												  {x:"242.25", y:"403" }, { x:"186.9", y:"403" }, { x:"232.3", y:"564" },
												  {x:"232.3", y:"609" }, { x:"189.3", y:"463.4" } );
														
		//所有部件包括的点ID及点坐标
		protected var _partPointIdAndXYArr:Array = new Array();
		protected var _partPointIdAndXYXML:XML = new XML();//部件及点的信息XML
		protected var _onlineOrOffline:OnlineOrOfflineChannel = new OnlineOrOfflineChannel();
		//----------------------------------选错数据------------------------------------------------//
		protected var _UniversalErrorArr:Array = new Array();//万用表用错记录数组
		
		//------------------------------------------------------//
		//protected var _myws:WebSeverPack;
		protected var _resultXml:XML;
		//private var service:WebService;
		//private var option:AbstractOperation;
		protected var _loading:MovieClip;//加载前的loading
		//===================================================================================================================//
		protected var _gvar:Gvar = Gvar.getInstance();
		//===================================================================================================================//
		public function RMPX() {
			
			super();
			addPartToArr();
			addChild(_pointSp);
			addChild(_stateSp);
			addChild(_toolSp);
			addChild(_popFramSp);
			
			init();
		}//End Fun
		protected var _contectSwf:Loader = new Loader();
		protected function init():void {
			_contectSwf.contentLoaderInfo.addEventListener(Event.COMPLETE, completeHandler);
			//_contectSwf.contentLoaderInfo.addEventListener(Event.COMPLETE, completeHandler);
			_contectSwf.load(new URLRequest("testws.swf"));
			trace("init")
			
			}
		protected function completeHandler(e:Event):void {
			trace("completeHandler");
			(_contectSwf.content)["puseOP"]("DiagnosisExamValid", _gvar.CoursewareId, _gvar.UserId );
			(_contectSwf.content)["puseOP"]("ResistanceVoltage", 1, 1 );
			(_contectSwf.content)["puseOP"]("ResistanceVoltage", 1, 2 );
			(_contectSwf.content)["puseOP"]("ResistanceVoltage", 1, 3 );
			//(_contectSwf.content)["puseOP"]("ReasonLibrary", 1);
			
			(_contectSwf.content).addEventListener(WebServeResultEvent.COMPLETE, loadXmloverHandler);
			}
			
		//由main传入通讯的SWF
		/*public function setContectLoader(value:Loader):void {
			_contectSwf = value;
			(_contectSwf.content)["puseOP"]("ResistanceVoltage", 1, 1 );
			(_contectSwf.content)["puseOP"]("ResistanceVoltage", 1, 2 );
			(_contectSwf.content)["puseOP"]("ResistanceVoltage", 1, 3 );
			//(_contectSwf.content)["puseOP"]("ReasonLibrary", 1);
			
			(_contectSwf.content).addEventListener(WebServeResultEvent.COMPLETE, loadXmloverHandler);
			}*/
		
		//--------------------服务端返回的数据----------------------------------	
		protected function loadXmloverHandler(e:WebServeResultEvent):void {
			trace("e.methName="+e.methName)
			switch(e.methName) {
				case "ResistanceVoltage":
					if (_resultXml == null) {
					_resultXml = new XML();
					_resultXml = XML(e.data);
					}else {
						_resultXml.insertChildAfter(_resultXml.SwitchState,XML(e.data).SwitchState);
						}
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
				default :
					break;
				}
			/*trace(e.data)
			trace(e.methName)*/
			}
			
		protected function failedHandler(e:WebServeResultEvent):void {
			trace(e.methName+"加载出错！");
			
			}
		//------------------------------------------------------
		public function setLoadinfo(value:LoaderInfo):void {
			_loaderInfo = value;
			}
			
		//---------------------------------------------------
		protected function loadMnksXmloverhandler(value:*):void
		{
		}
		//---------------------------------------------------
		//----------------------------------------------------重写-----------------------------------------------------------------//
		//点火开关，档位开关状态变化时调用
		override public function flashStar(startKeyId:uint,switchId:uint):void{
			//trace(startKeyId,switchId)
			var IGSW = getChildByName("IGSW") as Four_Part;
			var SHFT = getChildByName("SHFT") as Four_Part;
			var RLY= getChildByName("RLY") as Four_Part;
			var MTR = getChildByName("MTR") as Four_Part;

			if(IGSW.currentFrame!=startKeyId ||SHFT.currentFrame!=switchId || _gvar._startKey._updataSartKey){
				IGSW.gotoAndStop(startKeyId);
				SHFT.gotoAndStop(switchId);
				
				//如果点火开关为start
				if (startKeyId == 3) {
					_currentIGSWState = 10;
						//更新各点的电压即更新XML
						getTotalVRArr(_CurrentFalutid);
						//updataXml();
					
					trace("_flashAndSoundArr="+_flashAndSoundArr)
					if(_flashAndSoundArr[3]==1){
					RLY.gotoAndStop(2);//继电器动作
					}
					else{
					RLY.gotoAndStop(1);//继电器不动作
					}
					
					//如果档位开关为p,n
					if (switchId == 1 || switchId == 3) {
						if(_flashAndSoundArr[4]==1 &&_flashAndSoundArr[5]==1){
							MTR.gotoAndStop(2);
						}else if(_flashAndSoundArr[4]==0&&_flashAndSoundArr[5]==1){
							MTR.gotoAndStop(3);
							}else {
							MTR.gotoAndStop(1);
							}
						}else {
							MTR.gotoAndStop(1);
							}
						
						//显示仪表盘
						_addOtherUi.setDashboard(2);
						_addOtherUi.disChangEvent();
						
						//判断是否是排故后打点火开关确认
						if (repaired) {
							_gvar._repairedAndStart = true;
							}
					}else{
						//不为start
						
						if (IGSW.currentFrame == 2) {
							_currentIGSWState = 20;//no
							//更新各点的电压即更新XML
							getTotalVRArr(_CurrentFalutid);
							//updataXml();
							//显示仪表盘
							_addOtherUi.setDashboard(2);
							_addOtherUi.disChangEvent();
							}else {
								_currentIGSWState = 30;//off
								//更新各点的电压即更新XML
								getTotalVRArr(_CurrentFalutid);
								//updataXml();
								//显示仪表盘
								_addOtherUi.setDashboard(1);
								
								}
						RLY.gotoAndStop(1);//继电器不动作
						MTR.gotoAndStop(1);
						}
				_gvar._startKey._updataSartKey = false;
			}
			}
		//---------------------------------------------------------------------------------------------------------------------//
		//建立几个按钮
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
			stateText.x=Gvar.STAGE_X-250;
			stateText.y = Gvar.STAGE_Y - 60;
			_stateSp.addChild(stateText);
			_stateSp.addChild(_resetBt);
			
			_zzty.addEventListener(MouseEvent.CLICK,zztyClick);
			_xnjc.addEventListener(MouseEvent.CLICK,xnjcClick);
			_resetBt.addEventListener(MouseEvent.CLICK,resetBtClick);
			
			}
		
		//设故点击事件
		protected function zztyClick(e:MouseEvent):void {
			_xnjc.gotoAndStop(1);
			_zzty.gotoAndStop(2);
			//_xnjc.alpha = .5;
			//_zzty.alpha = 1;
			_resetBt.alpha = 1;
			if(_currentState==20){
				if(_Universal)
				if(_toolSp.contains(_Universal))
				closeUniversalHandler(null);
				
				}
			_currentState = 10;
			
			//去掉故障菜单
			if (_crrentFaultMenu20)
			if (contains(_crrentFaultMenu20)) removeChild(_crrentFaultMenu20);
				
			//复位按钮响应点击
			_resetBt.addEventListener(MouseEvent.CLICK, resetBtClick);
			
			//如果有诊断表就要隐藏该表
			if (_diagnosis) {
				_diagnosis.closeFrame();
				_diagnosis.Idispose();
				removeChild(_diagnosis);
				_diagnosis = null;
				}
			}
		//排故点击事件
		protected function xnjcClick(e:MouseEvent):void {
			
			if (stateText._textContent != "") {
				_gvar._currentFaultXml = _crrentFaultMenu.faultXml;//记录当前故障XML
				
				//去掉故障菜单
				if (_crrentFaultMenu)
				if (contains(_crrentFaultMenu)) removeChild(_crrentFaultMenu);
				
				_currentState = 20;
				//_zzty.alpha = .5;
				//_xnjc.alpha = 1;
				_xnjc.gotoAndStop(2);
				_zzty.gotoAndStop(1);
				_resetBt.alpha = 0;
				
				if (_diagnosis){
				if(!this.contains(_diagnosis))
					showFaultForm();
				}else {
					showFaultForm();
					}
				
			}else{
				var popInfor:B_Alert=new B_Alert("请先设置故障!",400,200);
				addChild(popInfor);
				
				}
			//复位不响应
			_resetBt.removeEventListener(MouseEvent.CLICK,resetBtClick);
			}
		//复位点击事件
		protected function resetBtClick(e:MouseEvent):void{
			if (_currentState == 10) {
				resetTotalPartFault();
				//去掉故障菜单
				if (_crrentFaultMenu){
				if (contains(_crrentFaultMenu)) {
					removeChild(_crrentFaultMenu);
				}
				
				}
				//状态为空
				stateText.updataText("");
				}
			_currentState = 10;
			updataXml();
			
			_gvar._repairFaultFlag = true;//当前修复故障点了
			repaired = true;//已排故
			_flashAndSoundArr = [1, 1, 0, 1, 1, 1];//动画恢复正常
			_CurrentFalutid = 0;
			_gvar._startKey.updata();
			}
		//请所有的部件都没有故障
		protected function resetTotalPartFault():void{
			for(var i:String in _totalPart){
				_totalPart[i]._fault = false;
				if(_crrentFaultMenu)
				_crrentFaultMenu.initOption();//所有选择没选中
				}
			_currentPart = null;
			_currentFaultMenuOptionId = 1000;
			_currentFaultMenuOptionId20= 1000;
			}
		//---------------------------------------------------------------------------------------------------------------------//
		//显示故障诊断测试数据记录表
		protected function showFaultForm():void {
			if (_currentFaultMenuOptionId != 1000) {
				//不是正常时显示诊断表
				_diagnosis = new PopFrame(_popFramSp);
				_popFramSp.x = _popFramSp.y = 0;
				addChild(_diagnosis);
				_diagnosis.addEventListener(PopFrame.CLOSEFRAM, closeFrameHandler);
				_diagnosis.addEventListener(PopFrame.SETUPEVENT, setUpEventHandler);
				
				_gvar._repairFaultFlag = false;//当前未修复故障点
				_gvar._repairedAndStart = false;//当前未打点火开关确认
				repaired = false;//重置未排故
			}
			}
			
		//提交按钮点击
		protected function setUpEventHandler(e:Event):void {
			trace("提交")
			}
		
		//提交后关闭表时回到设故状态,复位
		protected function closeFrameHandler(e:Event):void {
			zztyClick(null);
			resetBtClick(null);
			onlineHandler(null);//在线
			}
		//---------------------------------------------------------------------------------------------------------------------//
		
			
			
		//加载症状库的数据
		protected function loadDiagnosisXml(_url:String):void {
			(_contectSwf.content)["puseOP"]("SymptomsLibrary", 1 );
			
			/*var temp:xmlReader=new xmlReader();
			temp.loadXml(Gvar.testUrl+"data/4/"+_url);
			temp.addEventListener(xmlReader.LOADXMLOVER,loadDiagnsisXmlHandler);*/
		}

		protected function loadDiagnsisXmlHandler(value:*):void
		{
			_diadanosisXml = value as XML;// (e.target as xmlReader)._xmlData;
			_gvar._symptomsLib = _diadanosisXml;
			
			loadSymptomsTable("SymptomsTable.xml");
			}
		//加载症状表的数据
		protected function loadSymptomsTable(_url:String):void {
			//_myws.pushOp("SymptomsTable", 1);
			(_contectSwf.content)["puseOP"]("SymptomsTable", 1 );
			/*var temp:xmlReader=new xmlReader();
			temp.loadXml(Gvar.testUrl+"data/4/"+_url);
			temp.addEventListener(xmlReader.LOADXMLOVER,loadSymptomsTableHandler);*/
		}
		protected function loadSymptomsTableHandler(value:*):void
		{
			_gvar._symptomsTable = value as XML;// (e.target as xmlReader)._xmlData;
			loadReasonLib("ReasonLibrary.xml");
			
			addOtherUi();
			}
		//---------------------------------增加仪表盘、大灯、喇叭------------------------------------------------------------------------------------//
		protected function addOtherUi():void {
			_addOtherUi = new AddOtherUi();
			
			_addOtherUi.loaderInfo = this._loaderInfo;
			_addOtherUi.creaU();
			_stateSp.addChild(_addOtherUi);
			
			}
		
		//---------------------------------------------------------------------------------------------------------------------//
		//加载原因库的数据
		protected function loadReasonLib(_url:String):void {
			//_myws.pushOp("ReasonLibrary", 1);
			(_contectSwf.content)["puseOP"]("ReasonLibrary", 1 );
			/*var temp:xmlReader=new xmlReader();
			temp.loadXml(Gvar.testUrl+"data/4/"+_url);
			temp.addEventListener(xmlReader.LOADXMLOVER,loadReasonLibHandler);*/
		}
		protected function loadReasonLibHandler(value:*):void
		{
			_gvar._reasonLib = value as XML;// (e.target as xmlReader)._xmlData;
			loadReasonTable("ReasonTable.xml");
			}
		//加载原因表的数据
		protected function loadReasonTable(_url:String):void {
			//_myws.pushOp("ReasonTable", 1 );
			(_contectSwf.content)["puseOP"]("ReasonTable", 1 );
			/*var temp:xmlReader=new xmlReader();
			temp.loadXml(Gvar.testUrl+"data/4/"+_url);
			temp.addEventListener(xmlReader.LOADXMLOVER,loadReasonTableHandler);*/
		}
		protected function loadReasonTableHandler(value:*):void
		{
			_gvar._reasonTable = value as XML;// (e.target as xmlReader)._xmlData;
			
			removeChild(_loading);
			/*_diagnosis = new PopFrame(_popFramSp);
			_popFramSp.x = _popFramSp.y = 0;
			addChild(_diagnosis);*/
			}
		//---------------------------------------------------------------------------------------------------------------------//
		//使用工具接口
		public function UseTool(toolId:uint,toolItemId:uint):void
		{
			if(_currentState==20){
			//只有在性能检测状态才能用工具
			//万用表
			if(toolId==0 && toolItemId==0){
					if(toolUsed("万用表")){
					//使用万用表
					_Universal = new F_Universal(this);
					_Universal.parentTotalPointArr = _totalPoint;
					_Universal.x=50;
					_Universal.y=50;
					_toolSp.addChild(_Universal);
				
					_Universal.addEventListener(UniversalEvent.UNIVERSSALEVENT,universalEventHandler);
					_Universal.addEventListener("closeUniversal",closeUniversalHandler);
					_Universal.addEventListener(UniversalEvent.UNIVERSSALSELECTEEVENT, slectetUniversal);
					_Universal.addEventListener("startDragShowText", startDragShowTextHandler);
					_currentUseToolArr.push("万用表");
					}
				}
			
			//电源
			/*if(toolId==2 && toolItemId==0){
					if(toolUsed("电源")){
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
					}*/
					
			}
		}
		//更新万用表
		protected function universalUpdata():void{
			//更新万用表
				if(_Universal)
				_Universal.UniversalStart();
				
			}
		//万用表运行事件
		protected function universalEventHandler(e:UniversalEvent):void {
			
			var tempZpin:Pin = e.ZbHitPin;
			var tempFpin:Pin = e.FbHitPin;
			trace(tempZpin.pinId)
			trace(tempFpin.pinId)
			if (_diagnosis && this.contains(_diagnosis)) {
				//过程分析表存在
				var tempCurrentChecktype:String=_diagnosis._ProcessAndAnalysis.returnCheckType();//当前表中的当前行的检查方式:在线，离线
				trace("tempCurrentChecktype=" + tempCurrentChecktype);
				trace("_diagnosis.tabpane.getSelectedIndex()="+_diagnosis.tabpane.getSelectedIndex())
				//当前选中的是过程与分析表时
				if(_diagnosis.tabpane.getSelectedIndex()==2){
					if (_Universal.currenselectObject == "V") {
						//_Universal.updataText(String(tempZpin.V - tempFpin.V));
						if (tempCurrentChecktype == "离线") {
							_UniversalErrorArr.push("万用表电压档测电阻");
							_gvar._UniversalErrorArr = _UniversalErrorArr;
							_Universal.updataText("V");
							}else {
								if (tempZpin.pinId == 1 || tempZpin.pinId == 18 || tempZpin.pinId == 24 || tempFpin.pinId==1 || tempFpin.pinId==18||tempFpin.pinId==24) {
									//有一点是接地点
									_Universal.updataText(String(tempZpin.V - tempFpin.V));
									_diagnosis._ProcessAndAnalysis.setTalbeCellValue(tempZpin.pinId, tempFpin.pinId, String(tempZpin.V - tempFpin.V));
									}else {
										_Universal.updataText("V");
										}
								}
						}else if(_Universal.currenselectObject =="Ω") {
							if (tempCurrentChecktype == "在线") {
							_UniversalErrorArr.push("万用表电阻档测电压");
							_gvar._UniversalErrorArr = _UniversalErrorArr;
							_Universal.updataText("Ω");
							}else {
								var temp:String = returnCurrentR(tempZpin.pinId, tempFpin.pinId);
								_Universal.updataText(temp);
								_diagnosis._ProcessAndAnalysis.setTalbeCellValue(tempZpin.pinId, tempFpin.pinId, temp);
								}
						}
				}else {
					//选的不是过程分析表
					if (_Universal.currenselectObject == "V") {
						_Universal.updataText(String(tempZpin.V - tempFpin.V));
						}else if (_Universal.currenselectObject == "Ω") {
							_Universal.updataText(returnCurrentR(tempZpin.pinId, tempFpin.pinId));
							}
					}
				trace("tempZpin.V=" + tempZpin.V + "/" + "tempFpin=" + tempFpin.V)
				}else {
					//过程分析表没有，既选的是正常
					if (_Universal.currenselectObject == "V") {
						_Universal.updataText(String(tempZpin.V - tempFpin.V));
						}else if (_Universal.currenselectObject == "Ω") {
							_Universal.updataText(returnCurrentR(tempZpin.pinId, tempFpin.pinId));
							}
					}
			}
		//----------------------------根据万用表的针点ID找到相应的电阻-----------------------------------------------------------------------------------------//	
		protected function returnCurrentR(_pin1Id:uint,_pin2Id:uint):String {
			var retrunStr:String = "Ω";
			for (var i:String in _totalPointRArr) {
				if ((_totalPointRArr[i].point1id == _pin1Id && _totalPointRArr[i].point2id == _pin2Id) || (_totalPointRArr[i].point1id == _pin2Id && _totalPointRArr[i].point2id == _pin1Id)) {
						retrunStr = _totalPointRArr[i].value;
						return retrunStr;
						}
				}

			return retrunStr;
			}
		
		//万用表测好后拖动上面的文字事件
		protected function startDragShowTextHandler(e:Event):void {
			/*_totalFormCommon = new Array();
			_totalFormCommon = _currentShowForm.formBody._totalFormCommon;
			if (_Universal._currentContectText != "" || _Universal._currentContectText != "V" || _Universal._currentContectText != "Ω") {
				if (_universalDrag) removeChild(_universalDrag);
				_universalDrag = new CreaText(_Universal._currentContectText, 0x000000,20,true,"left",true);
				
				addChild(_universalDrag);
				_universalDrag.startDrag(true);
				_universalDrag.addEventListener(MouseEvent.MOUSE_UP, dragUpEventHandler);
				this.addEventListener(MouseEvent.MOUSE_MOVE, mouseMoveHandler);
				}*/
			
			}
		//设置当前工具为最上层
		protected function setUniversalAndPowerDepth(_value:*):void{
			_toolSp.setChildIndex(_value,_toolSp.numChildren-1);
			}
		//当前选择的是万用表
		protected function slectetUniversal(e:UniversalEvent):void{
			setUniversalAndPowerDepth(_Universal);
			}
		//判断当前是否所选的工具已经点出来了
		protected function toolUsed(_value:String):Boolean{
			var returnValue:Boolean=true;
			for(var i:String in _currentUseToolArr){
				if(_value==_currentUseToolArr[i]){
					returnValue=false;
					break;
					}
				}
			return returnValue;
			}
		/*//关闭电源工具
		protected function closePowerEventHandler(e:Event):void{
			
			ArrayUtil.removeValueFromArray(_currentUseToolArr,"电源");
			_power.resetDocument("all");//复位
			powerClickEventHandler(null);
			
			if(_toolSp.contains(_power)){
			_toolSp.removeChild(_power);
			
			//trace(_currentUseToolArr)
			}
			}*/
		//关闭万用表
		protected function closeUniversalHandler(e:Event):void{
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
		//---------------------------------------------------------------------------------------------------------------------//
		//给所有的部件增加相应的中文名
		protected function addCheName():void {
			for (var i:String in _totalPart) {
				_totalPart[i]._cheName=_gvar.returnRVData((_currentIGSWState==10)?0:((_currentIGSWState==20)?1:2)).part.(@short == _totalPart[i].name).@partname;
				}
			}
		
		//把所有的部件放入数据中
		protected function addPartToArr():void {
			
			for (var i:uint = 0; i < this.numChildren; i++ ) {
				if (this.getChildAt(i) is Four_Part) {
					
					//trace(_xml.child((_currentIGSWState==10)?0:1).fault.(@_name == this.getChildAt(i).name))
					//(this.getChildAt(i) as Four_Part)._cheName=_xml.child((_currentIGSWState==10)?0:1).fault.(@_name == this.getChildAt(i).name).@chName;
					_totalPart.push(this.getChildAt(i));
					}
				}
			//CommonlyClass.ouputArr(_totalPoint);
			//trace("_totalPoint="+_totalPoint)
			}
		//---------------------------------------------------------------------------------------------------------------------//
		//加载数据
		/*protected function loadXml(_url:String=""):void
		{
			var temp:xmlReader=new xmlReader();
			temp.loadXml(Gvar.testUrl+"data/4/"+_url);
			temp.addEventListener(xmlReader.LOADXMLOVER,loadxmloverhandler);
		}*/

		protected function loadxmloverhandler1(value:*):void
		{
			_xml = value as XML;// (e.target as xmlReader)._xmlData;
			//trace(_xml);
			_gvar._St_RV = XML(_xml.SwitchState.(@stateid==1).toString());
			_gvar._Off_RV = XML(_xml.SwitchState.(@stateid==2).toString());
			_gvar._IG_RV = XML(_xml.SwitchState.(@stateid==3).toString());
			var xmlLength:uint = _gvar._St_RV.children().length();
			//trace(_gvar._Off_RV);
			for (var i:uint = 0; i < xmlLength; i++ ) {
				for (var j:uint = 0; j < _totalPart.length; j++ ) {
					//trace("_xml.child(0).child(i).@_name="+_totalPart[j].name)
					//如果XML中有简称就表示这个部件可以设置障碍
					if (_totalPart[j].name ==_gvar._St_RV.child(i).@short) {
						_totalPart[j]._listener = true;
						}
					}
				
				}
			
			TotalPartAaddEventListener();
			creaPoint();
			//UseTool(0, 0);
			addCheName();
			loadPartAndPointIdXY("PartAndPointIdAndXY.xml");
			loadDiagnosisXml("SymptomsLibrary.xml");
			//增加在线离线侦听
			_onlineOrOffline = _gvar._onlineOrOffline;
			_onlineOrOffline.addEventListener(OnlineOrOfflineChannel.OFFLINE, offlineHandler);
			_onlineOrOffline.addEventListener(OnlineOrOfflineChannel.ONLINE, onlineHandler);
		}
		//---------------------------------------------------------------------------------------------------------------------//
		//在线时显示所有的点，点的位置初始化,所有的部件不为断开
		protected function onlineHandler(e:Event):void {
			setTotalPointReset();
			setTotalPartContect();
			}
		//设置所有的部件为连接
		protected function setTotalPartContect():void {
			for (var i:String in _totalPart) {
				_totalPart[i].hideDK();
				}
			}
		//显示所有的点，且初始化位置
		protected function setTotalPointReset():void {
			for ( var i:int = 0; i < _totalPoint.length; i++ ) {
				_totalPoint[i].x = _pointInforArr[i].x;
				_totalPoint[i].y = _pointInforArr[i].y;
				_totalPoint[i].visible = true;
				}
			}
		
		//---------------------------------------------------------------------------------------------------------------------//
		//离线时只显示当前部件的点，当前部件断开状态，且置顶当前部件
		protected function offlineHandler(e:Event):void {
			setTotalPartContect();
			
			var tempPartShort:String = _onlineOrOffline.partShort;
			trace("_onlineOrOffline.partShort="+_onlineOrOffline.partShort)
			if (tempPartShort != "") {
				var crrentPart:Four_Part = this.getChildByName(tempPartShort) as Four_Part;
				if(crrentPart!=null){
					this.setChildIndex(crrentPart, this.getChildIndex(_pointSp)-1);//要放点的容器下层
					crrentPart.showDK();
					setShowCurrentPartPoint(crrentPart._pointIdAndXYArr);
				}
				}
			}
		//只显示当前部件的点
		protected function setShowCurrentPartPoint(_value:Array):void {
			trace("_value="+_value)
			trace("_value="+_value.length)
			trace("_value="+_value.toString())
			setTotalPointHide();
			for (var i:String in _value) {
				trace("_value[i].id="+_value[i].id)
				var tempPin:Pin = retrunePoint(_value[i].id);
				if (tempPin != null) {
					trace("_value[i].dk_x="+_value[i].dk_x)
					tempPin.visible = true;
					tempPin.x = _value[i].dk_x;
					tempPin.y = _value[i].dk_y;
					}
				}
			}
		//根据点的ID返回该点
		protected function retrunePoint(_value:uint):Pin {
			for (var i:String in _totalPoint) {
				if (_totalPoint[i].pinId == _value) {
					return _totalPoint[i];
					}
				}
				return null;
			}
		//设置所有的点隐藏
		protected function setTotalPointHide():void {
			for (var i:String in _totalPoint) {
				_totalPoint[i].visible = false;
				}
			}
		//---------------------------------------------------------------------------------------------------------------------//
		//加载所有部件包含的点ID及坐标
		protected function loadPartAndPointIdXY(_url:String):void {
			
			var temp:xmlReader=new xmlReader();
			temp.loadXml(Gvar.testUrl+"data/4/"+_url);
			temp.addEventListener(xmlReader.LOADXMLOVER,loadPartAndPointIdXYHandler);
			}
		
		//加载完绑定各部件点
		protected function loadPartAndPointIdXYHandler(e:Event):void {
			_partPointIdAndXYXML = (e.target as xmlReader)._xmlData;
			
			var tempXMLList:XMLList = _partPointIdAndXYXML.part;
			
			for (var i:String in tempXMLList) {
				var tempPart:Object = new Object();
				tempPart._name = tempXMLList[i].@_name;
				var tempPointArr:Array = new Array();
				
				for (var j:int = 0; j < tempXMLList[i].children().length(); j++ ) {
					var tempPoint:Object = new Object();
					tempPoint.id = tempXMLList[i].child(j).@pointid;
					tempPoint.dk_x = tempXMLList[i].child(j).@dk_x;
					tempPoint.dk_y = tempXMLList[i].child(j).@dk_y;
					tempPointArr.push(tempPoint);
					}
				tempPart.pointArr = tempPointArr;
				
				_partPointIdAndXYArr.push(tempPart);
				}
				
			//赋值给所有部件
			for (var m:String in _totalPart) {
				for (var n:String in _partPointIdAndXYArr) {
					if (_totalPart[m].name == _partPointIdAndXYArr[n]._name) {
						trace(" _partPointIdAndXYArr[n]._name="+ _partPointIdAndXYArr[n]._name)
						_totalPart[m]._pointIdAndXYArr = _partPointIdAndXYArr[n].pointArr;
						//break;
						}
					}
				
				}
			}
		//---------------------------------------------------------------------------------------------------------------------//
		//所有部件增加事件侦听
		protected function TotalPartAaddEventListener():void {
			for (var i:String in _totalPart) {
				_totalPart[i].addEventListener("Four_part_click", Four_part_clickHandler);
				}
			}
		//---------------------------------------------------------------------------------------------------------------------//
		//建立点
		protected function creaPoint():void {
			var tempXML:XMLList = new XMLList();
			tempXML = _gvar._St_RV.child(0).child(0).otherPart.v.point;
			for(var i:uint=0;i<_pointInforArr.length;i++){
				var newPin:Pin=new Pin();
				newPin.x=_pointInforArr[i].x;
				newPin.y = _pointInforArr[i].y;
				for (var j:String in tempXML) {
					if (tempXML[j].@pointid == i) {
						newPin.pinName = tempXML[j].@pointName;
						break;
						}
					}
				
				newPin.pinId=i+1;
				_pointSp.addChild(newPin);
				_totalPoint.push(newPin);
				//设置连线部分不用连线的点不能响应工具
				/*if ((i + 1) == 10 || (i + 1) == 11 || (i + 1) == 25) {
					newPin.enable = false;
					}*/
				}
			//初始设蓄电池正极点电压为12V用于初始仪表盘等状态
			//_totalPoint[2].V = 12;
				
			/*//建立第一条线上的点
			for (var i:uint = 0; i < 13; i++ ) {
				var pin:Pin = new Pin();
				 pin.pinId = i;
				 pin.x = _pointInforArr[i].x;
				 pin.y = _pointInforArr[i].y;
				 _line1Arr.push(pin);
				 
				 _pointSp.addChild(pin);
				}
			
			//建立第二条线上的点]
			for (var j:uint = 13; j < 22; j++ ) {
				var pin2:Pin = new Pin();
				 pin2.pinId = j;
				 pin2.x = _pointInforArr[j].x;
				 pin2.y = _pointInforArr[j].y;
				 _line2Arr.push(pin2);
				  
				 _pointSp.addChild(pin2);
				}
			//建立第三条线上的点
			var pin3:Pin = new Pin();
			pin3.pinId = 22;
			pin3.x = _pointInforArr[22].x;
			pin3.y = _pointInforArr[22].y;
			_line3Arr.push(pin3);
			
			_pointSp.addChild(pin3);
			
			_totalPoint = _line1Arr.concat(_line2Arr, _line3Arr);*/
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//部件点击事件
		protected function Four_part_clickHandler(e:Event):void {
			var tempClassType:String;
			var tempClass:Class;
			var tempXml:XML = new XML();
			//---------------------------------------------------设故状态-------------------------------------------------------//
			if (_currentState == 10) {
				if(!_currentPart){
					tempClassType=getQualifiedClassName(e.target);
					tempClass=getDefinitionByName(tempClassType) as Class;
					_currentPart=new tempClass();
					_currentPart = e.target as Four_Part;
					trace("_currentIGSWState="+_currentIGSWState)
					tempXml = XML(_gvar.returnRVData((_currentIGSWState==10)?0:((_currentIGSWState==20)?1:2)).part.(@short == _currentPart.name).toString());
					//trace(XML(_gvar.returnRVData((_currentIGSWState==10)?0:((_currentIGSWState==20)?1:2))))
					//trace("(_currentIGSWState==10)?0:((_currentIGSWState==20)?1:2)="+(_currentIGSWState==10)?0:((_currentIGSWState==20)?1:2))
					if(_crrentFaultMenu)
					if (contains(_crrentFaultMenu)) removeChild(_crrentFaultMenu);
					_crrentFaultMenu = new Four_RMPX_Fault_Select(tempXml);
					_crrentFaultMenu.x = _currentPart.x + _currentPart.width + 10;
					_crrentFaultMenu.y = _currentPart.y + (_currentPart.height - _crrentFaultMenu.height) / 2;
					_crrentFaultMenu.addEventListener("closeFaultSelecteOption", closeFaultSelecteOptionHandler);
					_crrentFaultMenu.addEventListener(FaultOptionClickEvent.FAULTOPTIONCLICKEVENT, FaultOptionClickEventHandler);
					addChild(_crrentFaultMenu);
				}else {
					//如果当前点击的部件跟之前点击的部件不一样
					if (e.target.name != _currentPart.name) {
						tempClassType=getQualifiedClassName(e.target);
						tempClass=getDefinitionByName(tempClassType) as Class;
						_currentPart=new tempClass();
						_currentPart = e.target as Four_Part;
						tempXml = XML(_gvar.returnRVData((_currentIGSWState==10)?0:((_currentIGSWState==20)?1:2)).part.(@short == _currentPart.name).toString());
						
					
						if(_crrentFaultMenu)
						if (contains(_crrentFaultMenu)) removeChild(_crrentFaultMenu);
						_crrentFaultMenu = new Four_RMPX_Fault_Select(tempXml);
						_crrentFaultMenu.x = _currentPart.x + _currentPart.width + 10;
						_crrentFaultMenu.y = _currentPart.y + (_currentPart.height - _crrentFaultMenu.height) / 2;
						_crrentFaultMenu.addEventListener("closeFaultSelecteOption", closeFaultSelecteOptionHandler);
						_crrentFaultMenu.addEventListener(FaultOptionClickEvent.FAULTOPTIONCLICKEVENT, FaultOptionClickEventHandler);
						addChild(_crrentFaultMenu);
						}else {
							addChild(_crrentFaultMenu);
							_crrentFaultMenu.addEventListener("closeFaultSelecteOption", closeFaultSelecteOptionHandler);
							_crrentFaultMenu.addEventListener(FaultOptionClickEvent.FAULTOPTIONCLICKEVENT, FaultOptionClickEventHandler);
							}
					}
				//FaultOptionClickEventHandler(null);
				}else if (_currentState == 20) {
					//---------------------------------------------------排故状态-------------------------------------------------------//
					if(!_currentPart20){
					tempClassType=getQualifiedClassName(e.target);
					tempClass=getDefinitionByName(tempClassType) as Class;
					_currentPart20=new tempClass();
					_currentPart20 = e.target as Four_Part;
					tempXml = XML(_gvar.returnRVData((_currentIGSWState==10)?0:((_currentIGSWState==20)?1:2)).part.(@short == _currentPart20.name).toString());
					
				
					if(_crrentFaultMenu20)
					if (contains(_crrentFaultMenu20)) removeChild(_crrentFaultMenu20);
					_crrentFaultMenu20 = new Four_RMPX_Fault_Select(tempXml,"排故菜单");
					_crrentFaultMenu20.x = _currentPart20.x + _currentPart20.width + 10;
					_crrentFaultMenu20.y = _currentPart20.y + (_currentPart20.height - _crrentFaultMenu20.height) / 2;
					_crrentFaultMenu20.addEventListener("closeFaultSelecteOption", closeFaultSelecteOptionHandler);
					_crrentFaultMenu20.addEventListener(FaultOptionClickEvent.FAULTOPTIONCLICKEVENT, FaultOptionClickEventHandler20);
					addChild(_crrentFaultMenu20);
				}else {
					//如果当前点击的部件跟之前点击的部件不一样
					if (e.target.name != _currentPart20.name) {
						tempClassType=getQualifiedClassName(e.target);
						tempClass=getDefinitionByName(tempClassType) as Class;
						_currentPart20=new tempClass();
						_currentPart20 = e.target as Four_Part;
						tempXml = XML(_gvar.returnRVData((_currentIGSWState==10)?0:((_currentIGSWState==20)?1:2)).part.(@short == _currentPart20.name).toString());
						
					
						if(_crrentFaultMenu20)
						if (contains(_crrentFaultMenu20)) removeChild(_crrentFaultMenu20);
						_crrentFaultMenu20 = new Four_RMPX_Fault_Select(tempXml,"排故菜单");
						_crrentFaultMenu20.x = _currentPart20.x + _currentPart20.width + 10;
						_crrentFaultMenu20.y = _currentPart20.y + (_currentPart20.height - _crrentFaultMenu20.height) / 2;
						_crrentFaultMenu20.addEventListener("closeFaultSelecteOption", closeFaultSelecteOptionHandler);
						_crrentFaultMenu20.addEventListener(FaultOptionClickEvent.FAULTOPTIONCLICKEVENT, FaultOptionClickEventHandler20);
						addChild(_crrentFaultMenu20);
						}else {
							addChild(_crrentFaultMenu20);
							_crrentFaultMenu20.addEventListener("closeFaultSelecteOption", closeFaultSelecteOptionHandler);
							_crrentFaultMenu20.addEventListener(FaultOptionClickEvent.FAULTOPTIONCLICKEVENT, FaultOptionClickEventHandler20);
							}
					}
					}
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//关闭故障菜单(设故状态)
		protected function closeFaultSelecteOptionHandler(e:Event):void {
			_crrentFaultMenu.removeEventListener("closeFaultSelecteOption", closeFaultSelecteOptionHandler);
			_crrentFaultMenu.removeEventListener(FaultOptionClickEvent.FAULTOPTIONCLICKEVENT, FaultOptionClickEventHandler);
			if(_crrentFaultMenu)
			if (contains(_crrentFaultMenu)) removeChild(_crrentFaultMenu);
			
			if(_crrentFaultMenu20){
			if (contains(_crrentFaultMenu20)) removeChild(_crrentFaultMenu20);
			_crrentFaultMenu20.removeEventListener("closeFaultSelecteOption", closeFaultSelecteOptionHandler);
			_crrentFaultMenu20.removeEventListener(FaultOptionClickEvent.FAULTOPTIONCLICKEVENT, FaultOptionClickEventHandler20);
			}
			//_crrentFaultMenu = null;
			
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//点火开关为START状态且未设故时
		protected function startStateInitV():void {
			
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//更新各点电压
		protected function updataXml():void {
			for (var i:int = 0; i < _totalPoint.length; i++ ) {
				_totalPoint[i].V = findPointV(_totalPoint[i].pinId);
				//trace("_totalPoint[i].V ="+_totalPoint[i].V +"_totalPoint[i].id ="+_totalPoint[i].pinId)
				}
				
			//更新喇叭大灯仪表盘状态
			if (_currentIGSWState == 30) {
				//off
				trace("off")
				trace("_addOtherUi="+_addOtherUi)
				_addOtherUi.setThisV(0);
				}else {
					//start,on
					
					if (stateText._textContent=="") {
						trace("on+null")
						//没有设故障时设仪表盘等为正常状态
						_addOtherUi.setThisV(12);
						}else {
							_addOtherUi.setThisV(_totalPoint[2].V);//蓄电池正极电压
							}
					}
			
			//更新万用表显示数据
			universalUpdata();
			}
		//根据点ID找到相应的电压
		protected function findPointV(_value:uint):Number {
			//默认返回0V,这样表中没有的点就为0V,即接地点为0V
			var reuntrV:Number=0;
			for (var i:String in _totalPointVArr) {
				if (_totalPointVArr[i].pointid == _value) {
					var tempArr:Array = (_totalPointVArr[i].value).split("/");
					//如果点的形式是6/7这种形式就要分开处理
					if (tempArr.length > 1) {
						//如果点火开关是on
						if (_currentIGSWState == 20) {
							reuntrV = Number(tempArr[1]);
							}else if (_currentIGSWState == 30) {
								//如果点火开关是off
								reuntrV = Number(tempArr[0]);
								}
						return reuntrV;
					}else {
						//如果不是数字就返回0V
						if(Number(_totalPointVArr[i].value)){
						reuntrV = Number(_totalPointVArr[i].value);
						return reuntrV;
						}
					}
					return reuntrV;
				}
				}
			return reuntrV;
			}
		
	
		//--------------------------------------------------------------------------------------------------------------------//
		//故障菜单确认按钮点击事件(设故状态)
		protected function FaultOptionClickEventHandler(e:FaultOptionClickEvent):void {
			closeFaultSelecteOptionHandler(null);//关闭菜单
			stateText.updataText("故障部件："+_currentPart._cheName+"\n"+"故障部位："+e._faultContent);
			//设置各点电压
			var currentXml:XML = new XML();
			_currentFaultMenuOptionId = _crrentFaultMenu.currentSelecteOptionIndex;
			_gvar._currentFaultId = e._faultId;
			currentXml = XML(_crrentFaultMenu.faultXml.fault.(@faultid==e._faultId).toString());
			trace("currentXml=" + currentXml);
			//getTotalVRArr(currentXml)
			getTotalVRArr(e._faultId);
			_CurrentFalutid = e._faultId;
			_flashAndSoundArr = new Array();
			_flashAndSoundArr = String(currentXml.Ani.@playFlag).split(",");
			currentXml = null;
			
			
			_gvar._startKey.updata();
			}
		//----------------------根据故障ID获取所有点电压,电阻----------------------------------------------------------------------------------------------//
		protected function getTotalVRArr(_currentfalutid:uint):void {
			trace("_currentfalutid="+_currentfalutid)
			trace("_currentIGSWState="+_currentIGSWState)
			//var tempCurrentFaultXMl:XML=XML(_gvar.returnRVData((_currentIGSWState==10)?0:1).part.(@short == _value).toString());
			
			var _value:XML=XML(_gvar.returnRVData((_currentIGSWState==10)?0:((_currentIGSWState==20)?1:2)).part.fault.(@faultid==_currentfalutid).toString());
			//重新获取声音动作
			if(_currentfalutid!=0){
				_flashAndSoundArr = String(_value.Ani.@playFlag).split(",");
			}else {
				_flashAndSoundArr = [1, 1, 0, 1, 1, 1];
				}
			
			_totalPointVArr = new Array();
			_totalPointRArr = new Array();
			var tempXMLList:XMLList = new XMLList();
			tempXMLList = _value.otherPart.v.point;
			
			for (var i:String in tempXMLList) {
				var temp:Object = new Object();
				temp.pointid = tempXMLList[i].@pointid;
				
				temp.value = tempXMLList[i].child(0);
				//trace("temp.pointid="+temp.pointid)
				//trace("temp.value="+temp.value)
				_totalPointVArr.push(temp);
				temp = null;
				}
			tempXMLList = null;
			
			var tempXMLListR:XMLList = new XMLList();
			tempXMLListR = _value.otherPart.R.point;
			for (var j:String in tempXMLListR) {
				var tempR:Object = new Object();
				tempR.point1id = tempXMLListR[j].@point1id;
				//trace("tempR.point1id="+tempR.point1id)
				tempR.point2id = tempXMLListR[j].@point2id;
				tempR.value = tempXMLListR[j].child(0);
				_totalPointRArr.push(tempR);
				tempR = null;
				}
			tempXMLListR = null;
			
			updataXml();
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//故障菜单确认按钮点击事件（排故状态）
		protected function FaultOptionClickEventHandler20(e:FaultOptionClickEvent):void {
			_currentFaultMenuOptionId20 = e.faultOptionIndex;
			
			var jOk:JButton = new JButton("确  定");
			var jNo:JButton = new JButton("取  消");
			jOk.addActionListener(jokHandler);
			jNo.addActionListener(jnoHandler);
			var tempPane:JPanel = new JPanel(new CenterLayout());
			var buttonDisplay:JPanel = new JPanel(new BoxLayout(2,50));
			buttonDisplay.append(jOk);
			buttonDisplay.append(jNo);
			tempPane.append(buttonDisplay);
			
			fr.setContentPane(tempPane);
			fr.setClosable(false);
			fr.setResizable(false);
			fr.setDragable(false);
			fr.setComBoundsXYWH((stage.width-200) / 2, (stage.height-100) / 2, 200, 100);
			fr.show();
			
			}
		//确定事件
		protected function jokHandler(e:AWEvent):void {
			closeFaultSelecteOptionHandler(null);//关闭菜单
			if (_currentPart.name == _currentPart20.name && _currentFaultMenuOptionId==_currentFaultMenuOptionId20) {
				//如果找到故障即排故正确
				for(var i:String in _totalPart){
				_totalPart[i]._fault=false;
				_crrentFaultMenu20.initOption();//所有选择没选中
				_currentFaultMenuOptionId = 1000;
				}
				//状态为空
				stateText.updataText("");
				
				_gvar._repairFaultFlag = true;//当前修复故障点了
				repaired = true;//已排故
				_flashAndSoundArr = [1, 1, 0, 1, 1, 1];//动画恢复正常
				_CurrentFalutid = 0;
				_gvar._startKey.updata();
				}
			fr.dispose();
			}
		//取消事件
		protected function jnoHandler(e:AWEvent):void {
			fr.dispose();
			}
		//--------------------------------------------------------------------------------------------------------------------//
		
		//===================================================================================================================//
	}
}