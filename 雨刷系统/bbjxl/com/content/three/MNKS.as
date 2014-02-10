package bbjxl.com.content.three{
	/**
	作者：被逼叫小乱
	//性能检测--模拟考试
	www.bbjxl.com/Blog
	**/
	import bbjxl.com.content.second.ContectLineOverEvent;
	import bbjxl.com.event.JeomerEvent;
	import bbjxl.com.net.MyWebserviceSingle;
	import bbjxl.com.net.MyWebservice;
	import bbjxl.com.ui.FormCell;
	import flash.display.MovieClip;
	import flash.display.DisplayObject;
	import flash.display.LoaderInfo;
	import flash.display.Shape;
	import flash.display.Stage;
	import flash.geom.Point;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import bbjxl.com.display.StartSystem;
	import bbjxl.com.display.LoadAllPartXml;
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
	import flash.display.SimpleButton;
	import bbjxl.com.content.three.MNKS_Botton;
	import com.adobe.utils.ArrayUtil;
	import bbjxl.com.content.first.MNKS_Botton_PageClickEvent;
	import bbjxl.com.ui.CountDown;
	import bbjxl.com.event.CountDownEvent;
	import bbjxl.com.loading.xmlReader;
	import bbjxl.com.utils.MyScrollBar;
	import flash.geom.Rectangle;

	public class MNKS extends ParentClass{
		protected var rmpx_Ws:MyWebserviceSingle;
		
		//protected var _loadAllPartXml:LoadAllPartXml;
		protected var _allXml:XML;//所有的XML
		protected var _allPartArr:Array=new Array();//所有的部件
		protected var _gvar:Gvar=Gvar.getInstance();
		//protected var tempText:CreaText=new CreaText("请先关闭其他部件故障菜单",0xff0000,15,true,"left",true);
		private var _currentState:uint=20;//当前的状态，10表示故障设置,20表示故障排除
		
		protected var _currentClickPart:MNKS_Part=new MNKS_Part();//当前点击部件
		protected var _currentShowForm:*;//当前显示的表;
		protected var _currentFormed:Boolean=false;//当前是否有表在显示
		protected var _currentPartD_T:String="断电";//当前的部件是通电还是断电
		
		protected var _PopFormSp:Sprite=new Sprite();//用于放弹出表格的容器
		protected var _bottonSp:Sprite=new Sprite();//分页码容器
		
		protected var _currentUseToolArr:Array=new Array();//当前使用的工具
		
		protected var _jdqForm:RMPX_JDQ_FORM;//继电器表格
		protected var _dhkgForm:RMPX_DHKG_FORM;//点火开关表格
		protected var _dwkgForm:RMPX_DWKG_FORM;//档位开关
		protected var _bxsForm:RMPX_BXS_FORM;//保险丝
		protected var _qdjForm:RMPX_QDJ_FORM;//启动机
		private var _qdjLine:Shape = new Shape();//用于启动机的连线
		private var _qdjLined:Boolean = false;//启动机的线是否连好
		
		protected var _faultOptionId:int=0;//故障选项的ID
		
		protected var _Universal:Universal;//万用表
		private var _UniversalZFArr:String;//万用表正负端接的点ID
		private var _universalDrag:CreaText;//万用表拖动部分
		
		protected var _power:Power;//电源
		private var _powerZFArr:String;//电源正负端接的点ID

		protected var _toolSp:Sprite = new Sprite();//工具容器
		protected var _contectLineTool:ThreeContectLine;//连线工具
		private var _totalFormCommon:Array;//当前表可以被碰撞的单元格数组
		private var _currentHitFormCell:FormCell;//当前碰撞到的单元格
		
		protected var _loading:MovieClip;//加载前的loading
		
		public static var _thisExamData:Object;//考试的试题信息
		
		//---------------------------------------------模拟考试部分变量-----------------------------------------------------------------------//
		protected var _examArr:Array=new Array();//考试试题数组
		protected var _examNum:uint=2;//试题数
		protected var _exambotoonPageNum:MNKS_Botton;
		protected var _currentExamId:uint=0;//当前的试题
		
		protected var _examTime:uint=5;//考试时间
		protected var _examId:String;//考试Id
		protected var _examPassscore:String;//考试通过成绩
		protected var _reTime:CountDown;//倒计时
		protected var _reTimeSp:Sprite=new Sprite();//倒计时容器
		
		protected var _examOverSp:Sprite=new Sprite();//考试结束要显示的容器
		protected var _examOverScoSp:Sprite=new Sprite();//包括滚动条
		//===================================================================================================================//
		protected var _jeomer:JeomerDispatcher;//扣分者
		protected var _jeomArr:Array = new Array();//被扣分的类型数组
		//===================================================================================================================//
		public function MNKS() {
			super();
			_gvar.T_EXAM_RM=true;
			_gvar.T_EXAM_OVER=false;
			init();
			
			addChild(_bottonSp);
			addChild(_PopFormSp);
			addChild(_toolSp);
			addChild(_examOverScoSp);
			_examOverScoSp.addChild(_examOverSp);
		}//End Fun
		
		public function setLoadinfo(value:LoaderInfo):void {
			_loaderInfo = value;
			}
			
		//---------------------------------------------模拟考试部分-----------------------------------------------------------------------//
		//建立倒计时
		protected function creaCountDowm():void{
			_reTime=new CountDown(_examTime);
			var _timeBg:MovieClip=createClip("timeBg");
			_timeBg.x=30;
			_timeBg.y=Gvar.STAGE_Y-120;
			_reTime.x=_timeBg.x+30;
			_reTime.y=_timeBg.y+10;
			_reTimeSp.addChild(_timeBg);
			_reTimeSp.addChild(_reTime);
			_bottonSp.addChild(_reTimeSp);
			_reTime.addEventListener(CountDownEvent.COUNTDOWNEVENT,countdownOver);
			}
		//考试时间到
		protected function countdownOver(e:CountDownEvent):void{
			setUpClickHandler(null);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//从所有部件中随机抽出两个部件
		protected function randomTiArr():void {
			/*for (var i:uint = 0; i < _examNum; i++ ) {
				var tempRandomPart:MNKS_Part = _allPartArr[Math.floor(Math.random() * _allPartArr.length)];
				var tempName:String = tempRandomPart._partName;
				var mcClass:Class=tempRandomPart.constructor;
				var temp:MNKS_Part;
				//var mcClass:Class=getDefinitionClass(getQualifiedClass(qinzhi)) as Class;
				temp = new mcClass();
				addChild(temp);
				temp._partName = mcClass;
				temp.x = -300;
				temp.y = 80 + (225 - temp.height) / 2;
				trace("temp._partName="+temp._partName)
				_examArr.push(temp);
				tempRandomPart = null;
				}*/
			
			var tempArr:Array=new Array();
			var tempAllArr:Array=new Array();
			tempAllArr= ArrayUtil.copyArray(_allPartArr);
			tempArr=tempAllArr.sort(CommonlyClass.taxis);
			
			_examArr=tempArr.slice(0,_examNum);
			//_examArr = tempArr.concat(_allPartArr);
			
			//增加页码
			creaBotton();

			}
		public function creaStateObj():void {
			_loading = createClip("loadingMc");
			addChild(_loading);
			}
		
		protected function showTi(_value:uint):void{
			var temp:MNKS_Part=new MNKS_Part();
			temp=_examArr[_value];
			var LocalX:uint=(Gvar.STAGE_X-temp.width)/2;
			TweenLite.to(temp, .5, {x:LocalX, ease:Back.easeOut});
			temp.dispathShowForm();
			}
		
		protected function creaBotton():void{
			_exambotoonPageNum=new MNKS_Botton(_examNum);
			_exambotoonPageNum.x=30;
			_exambotoonPageNum.y=Gvar.STAGE_Y-_exambotoonPageNum.height-135;
			_bottonSp.addChild(_exambotoonPageNum);
			//this.swapChildren(_exambotoonPageNum,_toolSp);
			_exambotoonPageNum.addEventListener(MNKS_Botton_PageClickEvent.MNKSBOTTONPAGECLICKEVENT,pageChangeEvent);
			_exambotoonPageNum.addEventListener(MNKS_Botton_PageClickEvent.MNKSBOTTONSETUPCLICKEVENT,setUpClickHandler);
			
			//初始化所有的表格
			//initTotalForm();
			//显示指定的题目
			_currentExamId=_exambotoonPageNum.currentPageNum;
			showTi(_currentExamId);
			}
			
		//初始化所有的表格
		protected function initTotalForm():void{
			
			for(var i:String in _examArr){
				_examArr[i].dispathShowForm();
				}
				
			//CommonlyClass.cleaall(_PopFormSp);
			}
		
		//提交
		protected function setUpClickHandler(e:MNKS_Botton_PageClickEvent):void{
			//考试时间停止
			_reTime.timerStop();
			
			var tempArr:Array=new Array();
			
			CommonlyClass.cleaall(_bottonSp);
			CommonlyClass.cleaall(_PopFormSp);
			CommonlyClass.cleaall(_toolSp);
			
			TweenLite.to(_examArr[_currentExamId], .5, {x:Gvar.STAGE_X+400, ease:Back.easeOut});
			//设置此时显示所有的列
			_gvar.T_EXAM_RM=false;
			_gvar.T_EXAM_OVER=true;
			for(var i:uint=0;i<_examNum;i++){
				var tempForm:*;
				tempForm=retrunForm(_examArr[i].name);
				if(tempForm){
				tempForm.examOver(_examArr[i].currentSelecteFaultOption);
				tempForm.x=0;//(Gvar.STAGE_X-tempForm.width)/2;
				tempForm.y=0;//200;
				_examOverSp.addChild(tempForm);
				tempArr.push(tempForm);
				}
				}
			//显示操作规范扣分
			//操作规范扣分部分
			var jemoScoreInfoArr:Array = new Array();//扣分的信息记录数组
			var type0:uint = 0;//错误类型次数
			var type1:uint = 0;
			var type2:uint = 0;
			for (var n:uint = 0; n < _jeomArr.length; n++ ) {
				switch(_jeomArr[n]) {
					case 0:
					type0++;
					//trace("万用表使用错误，电阻档测电压");
					//trace("扣:" + Gvar._T_Un_Jeom);
					break;
					case 1:
					type1++;
					//trace("万用表使用错误，电压档测电阻");
					//trace("扣:" + Gvar._T_Un_Jeom);
					break;
					case 2:
					type2++;
					//trace("万用表使用错误，OFF档使用");
					//trace("扣:" + Gvar._T_Un_Jeom);
					break;
					default:
					trace("出错")
					break;
					}
				}
				
			jemoScoreInfoArr = [ { content:"万用表使用错误，电阻档测电压", jemoScore:Gvar._T_Un_Jeom,num:type0 }, { content:"万用表使用错误，电压档测电阻", jemoScore:Gvar._T_Un_Jeom,num:type1 },{ content:"万用表使用错误，OFF档使用", jemoScore:Gvar._T_Un_Jeom,num:type2 } ];
			tempArr.push(_examOverSp.addChild(new Jeomer_Form(jemoScoreInfoArr)))
			//设置位置
			for(var j:uint=0;j<tempArr.length;j++){
				if(j>0){
					tempArr[j].y=tempArr[j-1].y+tempArr[j-1].height-50;
					}
				
				}
				
				addScrollBar();
			
			
			}
		
		protected function addScrollBar():void{
			var slider:MovieClip=createClip("slider");
			var scroll_bg:MovieClip=createClip("scroll_bg");
			var maskRec:MovieClip=createClip("Mask");
			/*var upControl:MovieClip=createClip("upControl");
			var downControl:MovieClip=createClip("downControl");
			
			upControl.y=500;
			downControl.x=upControl.x+upControl.width;
			downControl.y=500
			_examOverScoSp.addChild(upControl);
			_examOverScoSp.addChild(downControl);*/
			_examOverScoSp.addChild(maskRec);
			maskRec.width=_examOverSp.width;
			maskRec.height=400;
			scroll_bg.x=_examOverSp.width;
			scroll_bg.height=maskRec.height;
			_examOverScoSp.addChild(scroll_bg);
			slider.x=scroll_bg.x;
			slider.y=10;
			_examOverScoSp.addChild(slider);
			_examOverSp.mouseChildren=false;
			_examOverSp.mouseEnabled=false;
			_examOverScoSp.x=(Gvar.STAGE_X-_examOverScoSp.width)/2;
			_examOverScoSp.y=(Gvar.STAGE_Y-maskRec.height)/2;
			
			var myScroll:MyScrollBar=new MyScrollBar(_examOverSp,maskRec,slider,scroll_bg);

			myScroll.direction="L";				 //方向——左右滚动为"H"，上下滚动为"L"。[默认:"L"]
			myScroll.tween=5;       		 	 //缓动——1为不缓动，数字越大缓动越明显。[默认:5]
			myScroll.elastic=false;  			 //滑块拉伸——如果滑块是位图，建议选择false。[默认:flase]
			myScroll.lineAbleClick=true;		 //滚动条背景可点击——可点击(true)/不可点击(false),[默认:false]
			myScroll.mouseWheel=true;			 //支持鼠标滚轮——支持(true)/不支持(false),[默认:false]
			/*myScroll.UP=upControl;				 //分配上/左((L版/H版)滚动条按钮,不需要此按钮可以去除
			myScroll.DOWN=downControl;		  */   //分配下/右((L版/H版)滚动条按钮,不需要此按钮可以去除
			myScroll.stepNumber=10;				 //步数——包括鼠标滚轮、点击滚动条背景、单击左右/上下按钮，所跳动的距离，单位为像素。[默认:15]

			myScroll.refresh();					 //自动刷新滚动条
			
			//addChild(myScroll);
			}
		
		//根据部件名返回相应的表
		protected function retrunForm(_value:String):*{
			
			switch (_value){
					case "bxs":
					return _bxsForm;
					break;
					case "dfkg":
					return _dhkgForm;
					break;
					case "dwkg":
					return _dwkgForm;
					break;
					case "jdq":
					return _jdqForm;
					break;
					case "fdj":
					return _qdjForm;
					break;
					default:
					trace("出错")
					}
			}
		
		//当前题目变化
		protected function pageChangeEvent(e:MNKS_Botton_PageClickEvent):void{
			if(_currentExamId!=e.currentPageId-1){
				//移出原先的部件
				TweenLite.to(_examArr[_currentExamId], .5, {x:Gvar.STAGE_X+400, ease:Back.easeOut});
				_currentExamId=e.currentPageId-1
				showTi(_currentExamId);
				
				//重置万用表跟电源
				_currentPartD_T="断电";
				if(_power)
				_power.resetDocument("all");//复位
				if(_Universal)
				_Universal.resetDocument("all");//复位
				}

			}
		//---------------------------------------------重写-----------------------------------------------------------------------//
		//点火开关，档位开关状态变化时调用
	/*	override public function flashStar(startKeyId:uint,switchId:uint):void{
			if(_dfkg.currentFrame!=startKeyId ||_dwkg.currentFrame!=switchId){
				_dfkg.gotoAndStop(startKeyId);
				_dfkg.currentState=startKeyId-1;
				_dwkg.gotoAndStop(switchId);
				_dwkg.currentState=returneSwitchState(switchId);
				
				universalUpdata();
			}
			}*/
		override public function flashStar(startKeyId:uint, switchId:uint):void {
			trace(_faultOptionId+"/"+startKeyId)
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
								}else if(_faultOptionId == 2 && _currentClickPart.name=="fdj" &&_qdjLined && _currentState==20 && _currentPartD_T=="通电"){
									//排故状态且已经连好线，且为保持线圈故障
									_fdj.gotoAndStop(3);
									}else if(_faultOptionId == 2 && _currentClickPart.name=="fdj" && _currentState==10){
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
				}
				
			}

		protected function returneSwitchState(_value:uint):uint{
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
			//万用表
			if(toolId==0 && toolItemId==0){
					if(toolUsed("万用表")){
						//trace("万用表")
					//使用万用表
					_Universal=new Universal(this);
					_Universal.x=80;
					_Universal.y=100;
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
						_power.qinzhi = qz;
						_power.qinzhiz=qzz;
						_power.closeBt=closePowerBt;
						_power.line=line;
						_power.init(this);
						_toolSp.addChild(_power);
						_power.x=80;
						_power.y=400;
						
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
		
		//连线后
		protected function contectLineOverHandler(e:ContectLineOverEvent):void {
			//当前部件是启动机时,30,50脚可以用连线工具连线
			if (_currentClickPart.name == "fdj") {
				if ((e.fPinId == 21 && e.zPinId == 22) || (e.fPinId == 22 && e.zPinId == 21)) {
					//两点间画线
					_qdjLine.graphics.lineStyle(4,0xff0000,2);
					_qdjLine.graphics.moveTo(_contectLineTool.currentZPin.x+_contectLineTool.currentZPin.width/2, _contectLineTool.currentZPin.y+_contectLineTool.currentZPin.height/2);
					_qdjLine.graphics.lineTo(_contectLineTool.currentFPin.x+_contectLineTool.currentFPin.width/2, _contectLineTool.currentFPin.y+_contectLineTool.currentFPin.height/2);
					_currentClickPart.addChild(_qdjLine);
					_qdjLined = true;
					
					//如果点火开关为START则让启动机运动
					if (_gvar._startKey._currentState == 3) {
						if (_faultOptionId == 2 && _currentPartD_T=="通电") {
							//保持线圈故障时
							_fdj.gotoAndStop(3);
							}else if (_faultOptionId == 0 && _currentPartD_T=="通电") {
								_fdj.fault = false;
								_fdj.gotoAndStop(2);
								}
						}
					}
				}
			
			trace(e.fPinId+"/"+e.zPinId);
			}
			
		//关闭电源工具
		protected function closePowerEventHandler(e:Event):void{
			
			ArrayUtil.removeValueFromArray(_currentUseToolArr,"电源");
			_power.resetDocument("all");//复位
			powerClickEventHandler(null);
			
			if(_toolSp.contains(_power)){
			_toolSp.removeChild(_power);
			
			//trace(_currentUseToolArr)
			}
			}
		
		//设置当前工具为最上层
		protected function setUniversalAndPowerDepth(_value:*):void{
			_toolSp.setChildIndex(_value,_toolSp.numChildren-1);
			}
		
		//当前选择的是万用表
		protected function slectetUniversal(e:UniversalEvent):void{
			setUniversalAndPowerDepth(_Universal);
			}
		
		//电源钳子点击事件----一点击当前部件就为断路
		protected function powerClickEventHandler(e:PowerEvent):void{
			_currentPartD_T="断电";
			
			setUniversalAndPowerDepth(_power);
			
			//更新万用表
				if(_Universal)
				if(_toolSp.contains(_Universal))
				_Universal.UniversalStart();
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
		//关闭连线工具
		protected function closeLineHandler(e:Event):void {
			if(_toolSp.contains(_contectLineTool)){
			_toolSp.removeChild(_contectLineTool);
			ArrayUtil.removeValueFromArray(_currentUseToolArr, "连线");
			_contectLineTool.removeEventListener(ContectLineOverEvent.CONTECTLINEOVEREVENT,contectLineOverHandler);
			}
		}
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
		
		//--------------------------------------------------------------------------------------------------------------------//
		//电源接好事件
		protected function powerEventHandler(e:PowerEvent):void{
			if(e.ZbHitPart==e.FbHitPart && e.ZbHitPart==_currentClickPart){
				//两个笔接的部件相同且与当前点击的部件相同
				var tempPinIdArr:Array = new Array(e.ZbHitPinId, e.FbHitPinId);
				_powerZFArr=e.ZbHitPinId+"/"+e.FbHitPinId;
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
			var rightPinId1:String = String(tempXml.fault[_valueP.returnOptionSelect()].state.(@statename == "通电").performance[0].performancedetail.(@name == "point1number")[0]);
			var rightPinId2:String = String(tempXml.fault[_valueP.returnOptionSelect()].state.(@statename == "通电").performance[0].performancedetail.(@name == "point2number")[0]);
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
				_currentPartD_T="通电";
				}else{
				_currentPartD_T="断电";
				}
			trace("_currentPartD_T="+_currentPartD_T)
			universalUpdata();
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//万用表运行事件
		protected function universalEventHandler(e:UniversalEvent):void{
			
			if(e.ZbHitPart==e.FbHitPart && e.ZbHitPart==_currentClickPart && _Universal.currenselectObject!="OFF"){
				//两个笔接的部件相同且与当前点击的部件相同
				var tempPinIdArr:Array=new Array(e.ZbHitPinId,e.FbHitPinId);
				_UniversalZFArr=e.ZbHitPinId+"/"+e.FbHitPinId;
				tempPinIdArr.sort(order);
				var tempStr:String=String(tempPinIdArr[0])+","+String(tempPinIdArr[1]);
				var tempStr1:String=String(tempPinIdArr[1])+","+String(tempPinIdArr[0]);
				
				//只有当前有表时
				if(_currentShowForm){
					modifyForm(tempStr,tempStr1,e.ZbHitPart);
				}
				
				}else if (e.ZbHitPart==e.FbHitPart && e.ZbHitPart==_currentClickPart && _Universal.currenselectObject == "OFF") {
					_jeomer.doAction(2);
					}
			}
		//从小到大排序
		protected function order(a,b){
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
		protected function modifyForm(_value:String,_value1:String,_valueP:MNKS_Part):void{
			var tempXMl:XML=new XML();
			//取出当前表原先的数据
			tempXMl=_currentShowForm.allXml;
			//trace(tempXMl)
			//找出正确的数据记录
			var rightXml:XML=new XML();
			var currentPartIndex:uint=findPartIndex(_valueP);
			rightXml=XML(_allXml.part.(@partname==_valueP._partName));
			var rightValue:String;
			var point1:String;
			var point2:String;
			var rowId:uint;
			var cellId:int;
			//根据万用表现在要测试的是电压还是电阻不同而更改不同的内容
			if (_Universal.currenselectObject == "V") {
				//扣分点
				if (_currentPartD_T=="断电") {
					_jeomer.doAction(1);
					}
				
				rowId = 0;
				//如果是点火开关和档位开关还要加一个判断，即根据当前他们的状态
				if (currentPartIndex == 2 || currentPartIndex == 1) {
					if(_currentClickPart.currentState!=1000){
						point1=String(rightXml.fault[_faultOptionId].state.(@statename == _currentPartD_T).performance[_currentClickPart.currentState].performancedetail.(@name=="point1number")[0]);
						point2 = String(rightXml.fault[_faultOptionId].state.(@statename == _currentPartD_T).performance[_currentClickPart.currentState].performancedetail.(@name == "point2number")[0]);
						if (point1 + "," + point2 == _value || point1 + "," + point2 == _value1) {
							rightValue=String(rightXml.fault[_faultOptionId].state.(@statename == _currentPartD_T).performance[_currentClickPart.currentState].performancedetail.(@name=="standard3data")[0]);
							cellId = _currentClickPart.currentState;
							}else {
								rightValue="";
								}
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
				
				}else if(_Universal.currenselectObject == "Ω") {
					//扣分点
					if (_currentPartD_T=="通电") {
						_jeomer.doAction(0);
						}
					
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
			
			/*if (rightValue != "/" && rightValue != "") {
				//让指定的单元格背景闪动
					var paretnId:uint;
					if (_currentPartD_T == "断电") {
						paretnId = 0;
						}else { 
							paretnId = 1;
						}
					_currentShowForm.updata(_faultOptionId);
					_currentShowForm.modify(paretnId, cellId, rowId, 0, 1);
				
				
			}*/
			}
		
		//------------------------------找出正确的数据--------------------------------------------------------------------------------------//
		protected function findRightValue(thisRightXml:XML, value:String, value1:String,vΩ:String="standard3data",D_T:Boolean=false):Object {
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
		protected function startDragShowTextHandler(e:Event):void {
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
		protected function resetTotalCellBg():void {
			for (var j:String in _totalFormCommon) {
				_totalFormCommon[j].h51.changeBg(0xFF6666);
				_totalFormCommon[j].h52.changeBg(0xFF6666);
				_currentHitFormCell = null;
				}
			}
		
		//鼠标移动时如果跟表格可以拖动的单元格碰到就让该单元格变颜色
		protected function mouseMoveHandler(e:MouseEvent):void {
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
		protected function dragUpEventHandler(e:MouseEvent):void {
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
		protected function findPartIndex(_value:MNKS_Part):uint{
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
		protected function init():void {
			rmpx_Ws = MyWebserviceSingle.getInstance();
			rmpx_Ws.myOp.Performance({CoursewareId:Gvar.getInstance().CoursewareId});
			rmpx_Ws.myOp.addEventListener("complete", rmpx_Ws.onResult);
			rmpx_Ws.myOp.addEventListener("failed", rmpx_Ws.onFault);
			rmpx_Ws.addEventListener(MyWebservice.WSCOMPLETE, mnks_WsComplete);
			
			}
		
		
		//--------------------------------------------------------------------------------------------------------------------//
		
		//--------------------------------------------------------------------------------------------------------------------//
		//所有的XML都读完事件
		protected function mnks_WsComplete(e:Event):void {
			if(contains(_loading))
			removeChild(_loading);
			
			rmpx_Ws.myOp.removeEventListener("complete", rmpx_Ws.onResult);
			rmpx_Ws.myOp.removeEventListener("failed", rmpx_Ws.onFault);
			rmpx_Ws.removeEventListener(MyWebservice.WSCOMPLETE, mnks_WsComplete);
			_allXml=new XML();
			_allXml = e.target.data;
			_gvar._T_PartRightXml = _allXml;
			

			addPartInfo();
			PartCreaPin();
			loadExamConfig();
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//给各部件增加点
		protected function PartCreaPin():void{
			var jdqArr:Array=new Array({x:"26.9",y:"17.45"},{x:"26.9",y:"41.45"},{x:"26.9",y:"83.95"},{x:"26.9",y:"108.7"});
			var dhkgArr:Array=new Array({x:"26.25",y:"41.95"},{x:"52.5",y:"18.95"},{x:"60.25",y:"41.95"},{x:"52.1",y:"64.40"});
			var dwkgArr:Array=new Array({x:"19.1",y:"-3.95"},{x:"-1.15",y:"70.6"});
			var bxsArr:Array=new Array({x:"0.95",y:"1.1"},{x:"41.95",y:"1.1"});
			var qdjArr:Array=new Array({x:"3.9",y:"13.5"},{x:"59.9",y:"13.5"},{x:"3.9",y:"78.05"},{x:"50.35",y:"174.55"});
			
			_allPartArr[4].creaPin(qdjArr);
			_allPartArr[0].creaPin(bxsArr);
			_allPartArr[2].creaPin(dwkgArr);
			_allPartArr[1].creaPin(dhkgArr);
			_allPartArr[3].creaPin(jdqArr);
			}
		
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//加载考试设置XML
		protected function loadExamConfig():void{
			rmpx_Ws.myOp.PerformanceExam({CoursewareId:Gvar.getInstance().CoursewareId});
			rmpx_Ws.myOp.addEventListener("complete", rmpx_Ws.onResult);
			rmpx_Ws.myOp.addEventListener("failed", rmpx_Ws.onFault);
			rmpx_Ws.addEventListener(MyWebservice.WSCOMPLETE, mnks2_WsComplete);
			}
		
		//所有的考试XML都读完事件
		private function mnks2_WsComplete(e:Event):void {
			rmpx_Ws.myOp.removeEventListener("complete", rmpx_Ws.onResult);
			rmpx_Ws.myOp.removeEventListener("failed", rmpx_Ws.onFault);
			rmpx_Ws.removeEventListener(MyWebservice.WSCOMPLETE, mnks2_WsComplete);
			var tempXml:XML=new XML();
			tempXml = e.target.data;
			
			_examNum=uint(tempXml.performanceexam.performancedetail.(@name=="examnum")[0]);
			_examTime = uint(tempXml.performanceexam.@time);
			_examPassscore = String(tempXml.performanceexam.performancedetail.(@name=="passscore")[0]);
			_examId = String(tempXml.performanceexam.@examid);
			_gvar.Examid = _examId;
			
			//增加倒计时
			creaCountDowm();
			
			//考试部分
			randomTiArr();
			
			//增加扣分侦听
			_jeomer = new JeomerDispatcher();
			_jeomer.addEventListener(JeomerEvent.JEOMEREVENT, jemoerEventHandler);
			
			//记录考试开始时间
			Gvar.getInstance().ExamStartTime = CommonlyClass.DateTodate(new Date());
			}
	
		//----------------------------扣分事件接收者----------------------------------------------------------------------------------------//
		protected function jemoerEventHandler(e:JeomerEvent):void {
			_jeomArr.push(e.error_id);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//传入各部件信息
		protected function addPartInfo():void{
			_allPartArr=[_bxs,_dfkg,_dwkg,_jdq,_fdj];
			for(var i:uint=0;i<_allPartArr.length;i++){
				//trace(_allPartArr[i])
				_allPartArr[i].interfaceOut(_allXml.part.(@partname==_allPartArr[i]._partName));
				//_allPartArr[i].addEventListener(FaultOptionClickEvent.FAULTOPTIONCLICKEVENT,faultOptionClickEventHandler,true);
				_allPartArr[i].addEventListener(PartClickEvent.PARTCLICKEVENT,partClickEventHandler);
				//_allPartArr[i].addEventListener("closeFaultSelecteOption",closeFaultSelecteOptionHandler,true);
				}
			
			}
			
		//把XML中的数据记录中的V，O,还有症状，性能评测去掉
		protected function removeVO(_value:XML):XML{
			var returnXml:XML=new XML();
			var _valueCopy:XML=_value.copy();
			for each(var i:XML in _valueCopy.fault){
				//trace(i)
				for each (var j:XML in i.state.performance){
					//如果不为/的就设为空，表示用户要自己输入
					
					if(j.performancedetail.(@name=="standard3data")[0]!="/"){
						j.performancedetail.(@name=="standard3data")[0]="___";
						}
					if(j.performancedetail.(@name=="standard4data")[0]!="/")
						j.performancedetail.(@name=="standard4data")[0]="___";
					if(j.performancedetail.(@name=="symptom")[0]!="/"){
						j.performancedetail.(@name == "symptom")[0] = "请选择";
						j.performancedetail.(@name == "symptomid")[0] = "-1";
						}
					if(j.performancedetail.(@name=="judge")[0]!="/"){
						j.performancedetail.(@name == "judge")[0] = "请选择";
						j.performancedetail.(@name == "judgeid")[0] = "-1";
					}
					}
				
				}
			//_value.child(i)._state._content._record.@v="";
			//_value.tool._state._content._record.@Ω="";
			returnXml = _valueCopy;
			//trace("returnXml="+returnXml)
			//trace(_valueCopy.tool._state._content._record.@v)
			//trace(_value.tool._state._content._record.@v)
			return returnXml;
			}
		
		//给出提示
		protected function closeOtherPartFaultHnadler(e:Event):void{
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
		protected function closeFaultSelecteOptionHandler(e:Event):void{
			//trace("closeFaultSelecteOptionHandler")
			CommonlyClass.cleaall(_PopFormSp);
			//_PopFormSp.removeChildAt(0);
			//_currentShowForm=null;
			_currentFormed=false;
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//部件点击事件
		protected function partClickEventHandler(e:PartClickEvent):void{
			var temp:MNKS_Part=new MNKS_Part();
			temp=e.target as MNKS_Part;
			if(_currentClickPart!=temp){
				
				if(_gvar.T_MNKS_PARTED){
					//是否是初始状态
					//_currentClickPart.closeFaultSelecteOption();//关闭故障菜单
					closeFaultSelecteOptionHandler(null);//关闭当前表格
				}
				_currentClickPart=temp;
				/*//如果部件在点的下面就交换深度
				if(getChildIndex(_currentClickPart)<getChildIndex(_pinSp))
				this.swapChildren(_currentClickPart,_pinSp);*/
				//this.setChildIndex(_currentClickPart,getChildIndex(_pinSp));
				}
			//断开
			if(e.clicked){
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
					
				
				}
			
			}
			
		/*//表格点击可以拖动表格
		protected function mouseDownHandler(e:MouseEvent):void{
			var tempRect:Rectangle=new Rectangle(-this.width/2,-this.height/2,Gvar.STAGE_X,Gvar.STAGE_Y);
			_currentShowForm.startDrag(false,tempRect);
			}
		//停止拖动
		protected function mouseUpHandler(e:MouseEvent):void{
			_currentShowForm.stopDrag();
			}*/
		//--------------------------------------------------------------------------------------------------------------------//
		//启动机
		protected function showQDJ():void{
			
			_faultOptionId=_currentClickPart.returnOptionSelect();//当前部件的当前选项
			_qdjForm=RMPX_QDJ_FORM.getInstance();
			_qdjForm.addEventListener(FormCellNextEvent.FORMCOMMONCHANGEEVENT,formCellNextEventHanlder);
			//trace(_jdqForm.allXml)
			if(_qdjForm.allXml==""){
				_qdjForm.CreaFoem(removeVO(_currentClickPart.Xml),_faultOptionId);
				_qdjForm.x=(Gvar.STAGE_X-_qdjForm.width)/2;
				_qdjForm.y=_currentClickPart.y+_currentClickPart.height+20;
				
			}
			TweenLite.from(_qdjForm, .5, {x:-500, ease:Back.easeOut});
			_PopFormSp.addChild(_qdjForm);
			
			var tempClassType:String=getQualifiedClassName(_qdjForm);
			var tempClass:Class=getDefinitionByName(tempClassType) as Class;
			_currentShowForm=new tempClass();
			_currentShowForm=_qdjForm;
			
			_currentFormed=true;
			
			universalUpdata();
			
			}
		//显示保险丝
		protected function showBXS():void{
			_faultOptionId=_currentClickPart.returnOptionSelect();//当前部件的当前选项
			_bxsForm=RMPX_BXS_FORM.getInstance();
			_bxsForm.addEventListener(FormCellNextEvent.FORMCOMMONCHANGEEVENT,formCellNextEventHanlder);
			//trace(_jdqForm.allXml)
			if(_bxsForm.allXml==""){
				_bxsForm.CreaFoem(removeVO(_currentClickPart.Xml),_faultOptionId);
				_bxsForm.x=(Gvar.STAGE_X-_bxsForm.width)/2;
				_bxsForm.y=_currentClickPart.y+_currentClickPart.height+20;
				
			}
			TweenLite.from(_bxsForm, .5, {x:-500, ease:Back.easeOut});
			_PopFormSp.addChild(_bxsForm);
			
			var tempClassType:String=getQualifiedClassName(_bxsForm);
			var tempClass:Class=getDefinitionByName(tempClassType) as Class;
			_currentShowForm=new tempClass();
			_currentShowForm=_bxsForm;
			
			_currentFormed=true;
			
			universalUpdata();
			}
			
		//显示档位开关
		protected function showDWKG():void{
			_faultOptionId=_currentClickPart.returnOptionSelect();//当前部件的当前选项
			_dwkgForm=RMPX_DWKG_FORM.getInstance();
			_dwkgForm.addEventListener(FormCellNextEvent.FORMCOMMONCHANGEEVENT,formCellNextEventHanlder);
			//trace(_jdqForm.allXml)
			if(_dwkgForm.allXml==""){
				_dwkgForm.CreaFoem(removeVO(_currentClickPart.Xml),_faultOptionId);
				_dwkgForm.x=(Gvar.STAGE_X-_dwkgForm.width)/2;
				_dwkgForm.y=_currentClickPart.y+_currentClickPart.height+20;
				
			}
			TweenLite.from(_dwkgForm, .5, {x:-500, ease:Back.easeOut});
			_PopFormSp.addChild(_dwkgForm);
			
			var tempClassType:String=getQualifiedClassName(_dwkgForm);
			var tempClass:Class=getDefinitionByName(tempClassType) as Class;
			_currentShowForm=new tempClass();
			_currentShowForm=_dwkgForm;
			
			_currentFormed=true;
			
			universalUpdata();
			}
		//显示点火开关
		protected function showDHKG():void{
			_faultOptionId=_currentClickPart.returnOptionSelect();//当前部件的当前选项
			_dhkgForm=RMPX_DHKG_FORM.getInstance();
			_dhkgForm.addEventListener(FormCellNextEvent.FORMCOMMONCHANGEEVENT,formCellNextEventHanlder);
			//trace(_jdqForm.allXml)
			if(_dhkgForm.allXml==""){
				_dhkgForm.CreaFoem(removeVO(_currentClickPart.Xml),_faultOptionId);
				_dhkgForm.x=(Gvar.STAGE_X-_dhkgForm.width)/2;
				_dhkgForm.y=_currentClickPart.y+_currentClickPart.height+20;
				
			}
			TweenLite.from(_dhkgForm, .5, {x:-500, ease:Back.easeOut});
			_PopFormSp.addChild(_dhkgForm);
			
			var tempClassType:String=getQualifiedClassName(_dhkgForm);
			var tempClass:Class=getDefinitionByName(tempClassType) as Class;
			_currentShowForm=new tempClass();
			_currentShowForm=_dhkgForm;
			
			_currentFormed=true;
			
			universalUpdata();
			}
		//显示继电器
		protected function showJDQ():void{
			_faultOptionId=_currentClickPart.returnOptionSelect();//当前部件的当前选项
			_jdqForm=RMPX_JDQ_FORM.getInstance();
			_jdqForm.addEventListener(FormCellNextEvent.FORMCOMMONCHANGEEVENT,formCellNextEventHanlder);
			//trace(_jdqForm.allXml)
			if(_jdqForm.allXml==""){
				_jdqForm.CreaFoem(removeVO(_currentClickPart.Xml),_faultOptionId);
				_jdqForm.x=(Gvar.STAGE_X-_jdqForm.width)/2;
				_jdqForm.y=_currentClickPart.y+_currentClickPart.height+20;
				
			}
			TweenLite.from(_jdqForm, .5, {x:-500, ease:Back.easeOut});
			_PopFormSp.addChild(_jdqForm);
			
			var tempClassType:String=getQualifiedClassName(_jdqForm);
			var tempClass:Class=getDefinitionByName(tempClassType) as Class;
			_currentShowForm=new tempClass();
			_currentShowForm=_jdqForm;
			
			_currentFormed=true;
			
			universalUpdata();
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//表格下拉条选择变化时更新表格数据
		protected function formCellNextEventHanlder(e:FormCellNextEvent):void{
			//trace(e.parentId+"/"+e.thisid+"/"+e.thisSelect);
			var tempXMl:XML=new XML();
			//取出当前表原先的数据
			tempXMl=_currentShowForm.allXml;
			if(e.changeRow!="_symptoms"){
			tempXMl.child(_faultOptionId).state[e.parentId].performance[e.thisid].performancedetail.(@name=="judge")[0]=e.thisSelect;
			tempXMl.child(_faultOptionId).state[e.parentId].performance[e.thisid].performancedetail.(@name=="judgeid")[0]=e.thisSelectId;
			}else{
				tempXMl.child(_faultOptionId).state[e.parentId].performance[e.thisid].performancedetail.(@name=="symptom")[0]=e.thisSelect;
				tempXMl.child(_faultOptionId).state[e.parentId].performance[e.thisid].performancedetail.(@name=="symptomid")[0]=e.thisSelectId;
				}
			_currentShowForm.allXml=tempXMl;
			_currentShowForm.updata(_faultOptionId);
			}
		
		//故障选项点击事件
		/*protected function faultOptionClickEventHandler(e:FaultOptionClickEvent):void{
			if(_faultOptionId!=e.faultOptionIndex){
			_faultOptionId=e.faultOptionIndex;
			if(_currentShowForm)
			_currentShowForm.updata(_faultOptionId);
			
			//更新电源与万用表状态
			if(_power)_power.Start();
			universalUpdata();
			}
			if(e.faultOptionIndex!=0){
				//如果设置了故障
				_currentClickPart.fault=true;
				}else{
					if(!_currentClickPart.clicked)
					_currentClickPart.fault=false;
					}
			}*/
		//--------------------------------------------------------------------------------------------------------------------//
		//更新万用表
		protected function universalUpdata():void{
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
