package bbjxl.com.content.second{
	/**
	作者：被逼叫小乱
	连线-入门培训
	www.bbjxl.com/Blog
	**/
	import bbjxl.com.display.StartKey;
	import bbjxl.com.display.YSStallSwitch;
	import bbjxl.com.event.TotalEventDispather;
	import bbjxl.com.net.MyWebservice;
	import bbjxl.com.ui.myPlayer;
	import bbjxl.com.utils.Avm1Loader;
	import bbjxl.com.utils.AVM1MvoieProxy;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.display.Stage;
	import flash.display.StageScaleMode;
	import flash.display.StageAlign;
	import flash.geom.Point;
	import flash.system.ApplicationDomain;
	import flash.display.Loader;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.events.Event;
	import flash.events.ProgressEvent;
	import flash.display.LoaderInfo;
	import flash.display.SimpleButton;
	import flash.utils.getDefinitionByName;
	import com._public._method.app;
	import bbjxl.com.Gvar;
	import flash.display.Loader;
	import bbjxl.com.ui.CommonlyClass;
	import com.greensock.*;
	import com.greensock.easing.*;
	import bbjxl.com.display.StartSystem;
	import bbjxl.com.net.MyWebserviceSingle;
	import bbjxl.com.event.StallSwitchEvent;
	import bbjxl.com.event.StartKeyEvent;
	import bbjxl.com.TotallDispather;
	
	public class RMPX extends StartSystem {
		private var myloader:Avm1Loader=new Avm1Loader();
		private var _loaderInfo:LoaderInfo;//获取皮肤swf的LoaderInfo
		private var loader:Loader;
		private var _Url:String=Gvar.testUrl;
		private var loadingBar:MovieClip;
		private var bgSp:Sprite=new Sprite();//背景容器
		private var bgSpObj:Sprite=new Sprite();//背景
		private var _stage:Stage;
		private var autoPlayer:SwfControl=new SwfControl();//自动播放
		private var _swf:Object=new Object();
		private var _teatchModer:TeatchMode=new TeatchMode();//教学模式
		
		private var _techerBt:SimpleButton;//教学模式
		private var _autoModeBt:SimpleButton;//自动演示模式
		
		private var _currentSelecteToolId:uint=1000;//当前选择的工具类
		private var _currentSelecteToolItem:uint=1000;//当前选择的工具项
		
		protected var _contectLineOverFlag:Boolean = false;//连线是否已经完成
		
		protected var _flvPlayer:myPlayer = new myPlayer();//FLV视频播放器
		
		protected var _TotallDispather:TotallDispather = TotallDispather.getInstance();
		
		//===================================================================================================================//
		public function set loaderInfo(value:LoaderInfo):void {
			_loaderInfo = value;
		}
		//===================================================================================================================//
		public function RMPX() {
			/*if (stage) {
				init();
			} else {
			addEventListener(Event.ADDED_TO_STAGE,addstage);
			}*/
			init();
			
		}//End Fun
	
		private function addstage(event:Event):void {
			removeEventListener(Event.ADDED_TO_STAGE, addstage);
			init();
		}
		
		//---------------------------------测试-----------------------------------------------------------------------------------//
		private var _startKey:StartKey = new StartKey();
		private var _YsSwitceh:YSStallSwitch = new YSStallSwitch();
		private var _currentStarKeyState:uint = 0;
		private var _currentStallSwitchState:uint = 0;
		private function test():void {
			_startKey = this["startKey"];
			_YsSwitceh = this["YsSwitceh"];
			_startKey.addEventListener(StartKeyEvent.STARTKEYEVENT,startKeyEventHandler);
			_YsSwitceh.addEventListener(StallSwitchEvent.STALLSWITCHEVENT,stallSwitchEventHandler);
			}
		//点火开关点击事件
		private function startKeyEventHandler(e:StartKeyEvent):void{
			
			_currentStarKeyState=e.startId;
			flashStar(_currentStarKeyState,_currentStallSwitchState);
			}
			
		//档位开关切换事件
		private function stallSwitchEventHandler(e:StallSwitchEvent):void{
			
			_currentStallSwitchState=e.switchId;
			flashStar(_currentStarKeyState,_currentStallSwitchState);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//加载配置XML
		/*protected function loadConfigXml():void {
			mnks_Ws = MyWebserviceSingle.getInstance();
			mnks_Ws.myOp.CoursewareInformation ({CoursewareId:Gvar.getInstance().CoursewareId});
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
			configXml = e.target.data;
			_flvPlayer.video = configXml.courseware.(@id == Gvar.getInstance().CoursewareId).coursewaredetail.child(0);
			trace("_flvPlayer.video="+_flvPlayer.video)
			
			addChild(bgSp);
			addChild(_flvPlayer);
			var _point:Point = this.localToGlobal(new Point(-30, -67));
			_flvPlayer.x = _point.x;
			_flvPlayer.y = _point.y;
			
			creabg();
		}*/
		
		private function init():void {
			//loadConfigXml();
			addChild(bgSp);
			addChild(_flvPlayer);
			var _point:Point = this.localToGlobal(new Point(-30, -67));
			_flvPlayer.x = _point.x;
			_flvPlayer.y = _point.y;
			
			creabg();
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
		//--------------------------------------------------------------------------------------------------------------------//
		//建立主程序,供主程序传入皮肤
		public function creaBody(_value:LoaderInfo,_stage:Stage):void{
			_loaderInfo=_value;
			_stage=stage;

			loadSwf();
			
			
			}
		
		//加载外部的SWF
		private function loadSwf():void {
			
			loadingBar = new progressBar();//加载进度条
			loadingBar.x = (Gvar.STAGE_X - loadingBar.width) / 2;
			loadingBar.y = (Gvar.STAGE_Y - loadingBar.height) / 2;
			loadingBar.txt.mouseEnabled = false;
			//addChild(loadingBar);
			
			
			//myloader.Load("swf/21-a.swf");
			//myloader.addEventListener(myloader.Progress,skinLoadProgress);
			//myloader.addEventListener(myloader.Complete, skinLoadComplete);
			
			loadFlvURL();
			
			
			}
			
		//加载FLV地址XML
		protected function loadFlvURL():void {
			var flvUrlWs:MyWebservice = new MyWebservice();
			flvUrlWs.myOp.CoursewareInformation({CoursewareId:Gvar.getInstance().CoursewareId});
			flvUrlWs.myOp.addEventListener("complete", flvUrlWs.onResult);
			flvUrlWs.myOp.addEventListener("failed", flvUrlWs.onFault);
			flvUrlWs.addEventListener(MyWebservice.WSCOMPLETE, flvUrlWsComplete);
			}
			
		protected function flvUrlWsComplete(e:Event):void {
			var tempXML:XML = new XML();
			tempXML = e.target.data;
			//flv地址
			_flvPlayer.firstLoadSkin(tempXML.courseware.coursewaredetail);
			_flvPlayer.visible = false;
			_flvPlayer.addEventListener("FLVPLAYERSKINLOADOVER",loadFlvSkinOver);
			
			function loadFlvSkinOver(e:Event):void {
				//removeChild(loadingBar);
				addSelecteMode();
				}
			
			}
		//--------------------------------------------------------------------------------------------------------------------//
		private function skinLoadProgress(event:ProgressEvent):void {
			var i:uint = int(event.bytesLoaded / event.bytesTotal * 100);
			loadingBar.gotoAndStop(i);
			loadingBar.txt.text = "加载"+i+"%";
		}
		private function skinLoadComplete(event:Event):void {
			removeChild(loadingBar);
			
			addSelecteMode();
			
		}
		//--------------------------------------------------------------------------------------------------------------------//
		//选择哪种播放模式
		private function addSelecteMode():void{
			_techerBt=createButton("teatchMode");
			_autoModeBt=createButton("autoMode");
			
			var temp:Sprite=new Sprite();
			temp.addChild(_techerBt);
			temp.addChild(_autoModeBt);
			_autoModeBt.x=30+_techerBt.width;
			bgSp.addChild(temp);
			temp.x=(Gvar.STAGE_X-temp.width)/2;
			temp.y=(Gvar.STAGE_Y-temp.height)/2;
			
			_techerBt.addEventListener(MouseEvent.CLICK,techerClick);
			_autoModeBt.addEventListener(MouseEvent.CLICK,autoClick);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		private function autoClick(e:MouseEvent):void{
			removeBg();
			creabg(0xffffff, 1);
			if(!_flvPlayer.visible)
			_flvPlayer.visible = true;
			_flvPlayer.videoplay();
			_flvPlayer.addEventListener("CLOSEAUTOMODE",closeAutoMode,true);
			
			}
		//关闭自动演示
		private function closeAutoMode(e:Event):void{
			_flvPlayer.removeEventListener("CLOSEAUTOMODE",closeAutoMode,true);
			_flvPlayer.visible = false;
			
			removeBg();
			creabg();
			addSelecteMode();
			}
		//--------------------------------------------------------------------------------------------------------------------//
		private function techerClick(e:MouseEvent):void {
			TotallDispather._currentToolOrLoadSwf = 0;
			_TotallDispather.MydispatchEvent(TotallDispather.SWAP_TOOL_AND_LOADSWF_INDEX);
			removeBg();
			_teatchModer.loaderInfo=_loaderInfo;
			
			addChild(_teatchModer);
			_teatchModer.addEventListener("contectLineOver",contectLineOverHandler);
			//UseTool(1,1);
			}
		
		//连线完成
		private function contectLineOverHandler(e:Event):void{
			_contectLineOverFlag=true;
			}
		
		//--------------------------------------------------------------------------------------------------------------------//
		//使用工具接口
		public function UseTool(toolId:uint,toolItemId:uint):void
		{
			/*if(toolId==1 && toolItemId==0){
			_teatchModer.UseTool();
			}*/
			if(_currentSelecteToolId!=toolId || _currentSelecteToolItem!=toolItemId){
				if(toolId==1 && toolItemId==0){
					_teatchModer.UseTool();
					_currentSelecteToolId=toolId;
					_currentSelecteToolItem=toolItemId;
				}
			}
			
		}
		//--------------------------------------------------------------------------------------------------------------------//
		//去掉背景
		private function removeBg():void{
			CommonlyClass.cleaall(bgSp);
			_techerBt.removeEventListener(MouseEvent.CLICK,techerClick);
			_autoModeBt.removeEventListener(MouseEvent.CLICK,autoClick);
			//if(contains(bgSp)) removeChild(bgSp);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//建立灰背景
		private function creabg(_value:uint=0x112122,aphla:Number=0.8):void
		{
			bgSpObj=new Sprite();
			bgSpObj.graphics.lineStyle(10,0x222222,0);
			bgSpObj.graphics.beginFill(_value,aphla);
			bgSpObj.graphics.drawRect(0,0,Gvar.STAGE_X,Gvar.STAGE_Y);
			bgSpObj.graphics.endFill();
			bgSp.addChild(bgSpObj);
			TweenLite.from(bgSpObj, .5, {x:Gvar.STAGE_X/2,y:Gvar.STAGE_Y/2,scaleX:.1,scaleY:.1});
			
		}
		//--------------------------------------------------------------------------------------------------------------------//
		private function createClip(className:String):MovieClip {
			var clip:MovieClip;
			var thisDomain:ApplicationDomain;
			thisDomain=_loaderInfo.applicationDomain;
			clip=app.createMc(className,thisDomain);
			if (clip == null) {
				clip = null;
			}
			return clip;
		}
		public function getChild(_name:String):MovieClip {
			return createClip(_name);
		}
		private function createButton(className:String):SimpleButton {
			var but:SimpleButton;
			var thisDomain:ApplicationDomain;
			thisDomain=_loaderInfo.applicationDomain;
			but=app.createButton(className,thisDomain);
			if (but == null) {
				but = null;
			}
			return but;
		}
		//===================================================================================================================//
	}
}