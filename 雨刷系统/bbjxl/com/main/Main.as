package bbjxl.com.main{
	/**
	作者：被逼叫小乱
	主界面（功能选择）
	www.bbjxl.com/Blog
	**/
	import adobe.utils.CustomActions;
	import bbjxl.com.content.second.ParentClass;
	import bbjxl.com.display.B_Alert;
	import bbjxl.com.display.YSStallSwitch;
	import bbjxl.com.net.MyWebservice;
	import bbjxl.com.net.MyWebserviceSingle;
	import be.wellconsidered.services.Operation;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.display.Graphics;
	import flash.display.SimpleButton;
	import flash.utils.getDefinitionByName;
	import flash.display.SimpleButton;
	import flash.system.ApplicationDomain;
	import flash.display.Loader;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.events.ProgressEvent;
	import flash.display.LoaderInfo;
	import flash.display.Shape;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.TextFieldAutoSize;
	import flash.filters.BitmapFilterQuality;
	import flash.events.*;
	import flash.ui.Mouse;
	import flash.display.Loader;
	import flash.net.URLRequest;
	import flash.geom.Rectangle;
	import bbjxl.com.Gvar;
	import bbjxl.com.display.MainMenu;
	import bbjxl.com.event.MainMenuClickEvent;
	import bbjxl.com.display.SecondMenu;
	import bbjxl.com.display.ThreeMenu;
	import bbjxl.com.display.Tool;
	import bbjxl.com.content.first.RMPX;//部件认识入门培训
	import bbjxl.com.content.first.RMPXAlert;//部件认识入门培训弹出窗口
	import bbjxl.com.content.first.RMPXClickEvent;//部件点击事件
	import bbjxl.com.content.first.MNKSClickEvent;
	import bbjxl.com.loading.xmlReader;
	
	import bbjxl.com.event.StallSwitchEvent;
	import bbjxl.com.event.StartKeyEvent;
	import com.greensock.*;
	import com.greensock.easing.*;
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	import com._public._method.app;
	import bbjxl.com.display.StartKey;
	import bbjxl.com.event.ToolClickEvent;
	import flash.events.Event;
	import adobe.utils.CustomActions;
	import flash.events.EventDispatcher;
	import be.wellconsidered.services.WebService;
	import be.wellconsidered.services.Operation;
	import be.wellconsidered.services.events.OperationEvent;
	import bbjxl.com.TotallDispather;

	public class Main extends Sprite {
		protected var _TotallDispather:TotallDispather = TotallDispather.getInstance();
		//--------------------皮肤---------------------//
		private var _loaderInfo:LoaderInfo;//获取皮肤swf的LoaderInfo
		private var loader:Loader;
		private var loadingBar:MovieClip;
		//----------------------------------------------//
		private var _mainBg:Sprite;//主背景
		private var mainMenu:MainMenu=new MainMenu();//主菜单
		private var secondMenu:SecondMenu=new SecondMenu();//次菜单
		private var _returnMainScreen:SimpleButton;//返回到主菜单
		private var upBottonSprite:Sprite;//界面中上下部分
		private var theBestBg:Sprite;//最底层背景
		
		private var _currentStarKeyState:uint=1;//当前点火开关处于的状态
		private var _currentStallSwitchState:uint=1;//当前雨刷开关处于的状态
		
		
		private var _startKey:StartKey=new StartKey();//启动钥匙
		private var _stallSwitch:YSStallSwitch=new YSStallSwitch();//雨刷开关
		
		private var currentState:uint=0;//当前所在的位置，0：主界面，1：部件认识，2：线路分析，3：性能检测，4：故障诊断
		
		private var _mainDisplay:Sprite=new Sprite();//主界面容器
		private var _secondDisplay:Sprite=new Sprite();//次界面容器
		private var _contentDisplay:Sprite=new Sprite();//内容界面容器
		private var _loadSwfDisplay:Sprite=new Sprite();//加载进来的SWF容器
		private var _alertDisplay:Sprite=new Sprite();//弹出窗口容器
		
		private var currentSwf:Loader = new Loader();//当前加载的SWF
		
		private var _tool:Tool;//工具箱
		private var _currentSelecteToolId:uint=1000;//当前选择的工具类
		private var _currentSelecteToolItem:uint=1000;//当前选择的工具项
		
		//部件认识->入门培训
		private var _F_RMPXAlert:RMPXAlert=RMPXAlert.getInstance();//弹出框
		private var _F_RMPXXML:XML=new XML();//入门培训的XML
		private var _F_RMPXArr:Array = new Array();//入门培训的Array
		
		private var checkWs:MyWebserviceSingle;
		
		private var _contectSwf:Loader = new Loader();
		//===================================================================================================================//
		private var _gvar:Gvar = Gvar.getInstance();
		//===================================================================================================================//
		public function Main() {
			
			
			//验证登陆与否,是否拥有课程
			//loginAndHaveCourse();
			loadConfigXML();
			
			
		}//End Fun
		private function init():void {
			
			//弹出框初始化
			_F_RMPXAlert.init();
			stage.frameRate = 30;
			
			//stage.align = "topLeft";
			var window:Rectangle = new Rectangle(0,0,1003,752);
			//scrollRect = window;
			stage.showDefaultContextMenu = false;//屏蔽右键菜单
			
			Gvar.getInstance()._stage = stage;
			Gvar.getInstance()._startKey = _startKey;
			var ub:Class=getDefinitionByName("upbotton") as Class;
			upBottonSprite=new ub();
			
			theBestBg=this.getChildByName("mainbg_mc") as Sprite;
			
			addChild(_mainDisplay);
			addChild(_secondDisplay);
			addChild(_contentDisplay);
			addChild(upBottonSprite);
			addChild(_alertDisplay);
			addLoading();
			
			//增加背景
			var tempbg:Class=getDefinitionByName("mainBg") as Class;
			_mainBg=new tempbg();
			_mainDisplay.addChild(_mainBg);
			
			/*//加载通讯的SWF
			_contectSwf.contentLoaderInfo.addEventListener(Event.COMPLETE, completeHandler);
			_contectSwf.load(new URLRequest("testws.swf"));*/
			
			//增加主菜单
			mainMenu.x=703.2;
			mainMenu.y=244.15;
			
			_mainDisplay.addChild(mainMenu);
			TweenLite.from(mainMenu, 1, {x:1003.2, y:244.15, ease:Back.easeOut});
			mainMenu.addEventListener(MainMenuClickEvent.MAINMENUCLICKEVENT, mainMenuClickHandler);
			
			_TotallDispather.addEventListener(TotallDispather.SWAP_TOOL_AND_LOADSWF_INDEX, swapToolAndSwfIndex);
			}
		
		//--------交换工具跟SWF深度-------------------------------------------
		private function swapToolAndSwfIndex(e:Event):void {
			if(_tool && _loadSwfDisplay)
			if (_contentDisplay.contains(_tool) && _contentDisplay.contains(_loadSwfDisplay)) {
				if (TotallDispather._currentToolOrLoadSwf == 0) {
					//tool top
					if (_contentDisplay.getChildIndex(_tool) < _contentDisplay.getChildIndex(_loadSwfDisplay)) {
						_contentDisplay.swapChildren(_tool, _loadSwfDisplay);
						}
					}else {
						//swf top
						if (_contentDisplay.getChildIndex(_tool) > _contentDisplay.getChildIndex(_loadSwfDisplay)) {
							_contentDisplay.swapChildren(_tool, _loadSwfDisplay);
							}
						}
				}
			
			}
		//---------------------------------------------------	
		//---------------------------------------------------
		private function completeHandler(e:Event):void {
			trace("completeHandler");
			//增加主菜单
			mainMenu.x=703.2;
			mainMenu.y=244.15;
			
			_mainDisplay.addChild(mainMenu);
			TweenLite.from(mainMenu, 1, {x:1003.2, y:244.15, ease:Back.easeOut});
			mainMenu.addEventListener(MainMenuClickEvent.MAINMENUCLICKEVENT, mainMenuClickHandler);
			}	
		//---------------------------------------------------	
		//加载配置文件webservice地址
		private function loadConfigXML():void {
			var tempXML:xmlReader = new xmlReader();
			tempXML.loadXml("config.xml");
			tempXML.addEventListener(xmlReader.LOADXMLOVER, loadxmloverhandler);
			
			}
		//
		private function loadxmloverhandler(e:Event):void {
			trace("loadxmloverhandler")
				//(e.target as xmlReader).removeEventListener(xmlReader.LOADXMLOVER, loadxmloverhandler);
				var loadxml:XML = (e.target as xmlReader)._xmlData;
				//trace(loadxml.toXMLString())
				trace(loadxml.@wsUrl);
				Gvar.WebServerUrl = loadxml.@wsUrl;
				//loginAndHaveCourse();
				init();
				
				}
		//-----------------------------登陆及课程验证---------------------------------------------------------------------------------------//
		private function loginAndHaveCourse():void {
			trace("loginAndHaveCourse");
			Gvar.getInstance().UserId =   this.loaderInfo.parameters.UserId;//用户ID"1";//
			Gvar.getInstance().AuthKey = this.loaderInfo.parameters.AuthKey;//"z0edkc45mb0fbo2krsradiet";//
			Gvar.getInstance().CoursewareId  = this.loaderInfo.parameters.CoursewareId;//课程ID"1";// 
			/*var loginOp:Operation = new Operation(_gvar.ws);
			loginOp.UserValid( { UserId:Gvar.getInstance().UserId, AuthKey:Gvar.getInstance().AuthKey} );
			loginOp.addEventListener(OperationEvent.COMPLETE, loginonResult);
			loginOp.addEventListener(OperationEvent.FAILED, onFault);*/
			
			checkWs = MyWebserviceSingle.getInstance();
			checkWs.myOp.UserValid( { UserId:Gvar.getInstance().UserId, AuthKey:Gvar.getInstance().AuthKey} );
			checkWs.myOp.addEventListener("complete", checkWs.onResult);
			checkWs.myOp.addEventListener("failed", checkWs.onFault);
			checkWs.addEventListener(MyWebservice.WSCOMPLETE, mnksWscomplete);
			
			}
			
		
		private function mnksWscomplete(e:Event):void
			{
				checkWs.myOp.removeEventListener("complete", checkWs.onResult);
				checkWs.myOp.removeEventListener("failed", checkWs.onFault);
				checkWs.removeEventListener(MyWebservice.WSCOMPLETE, mnksWscomplete);
				if ((XML(e.target.data).toXMLString() != "true")) {
					//没有登陆
					var _alert:B_Alert = new B_Alert("对不起！您还没有登陆！");
					addChild(_alert);
					}else {
						trace("已经登陆");
						///已经登陆的话再验证是否拥有课程
						HaveCourse();
						}
				trace(e.target.data);
			}
		/*public function loginonResult(e:OperationEvent):void
		{
			
			if ((XML(e.data).toXMLString() != "true")) {
					//没有登陆
					var _alert:B_Alert = new B_Alert("对不起！您还没有登陆！");
					addChild(_alert);
					}else {
						trace("已经登陆");
						///已经登陆的话再验证是否拥有课程
						HaveCourse();
						}
			
		}*/
		public function onFault(e:OperationEvent):void
		{
			trace("ws error");
		}
		//验证课程
		private function HaveCourse():void {
			/*var haveCourseOp:Operation = new Operation(_gvar.ws);
			haveCourseOp.CoursewareValid( { UserId:_gvar.UserId, CoursewareId:_gvar.CoursewareId } );
			haveCourseOp.addEventListener(OperationEvent.COMPLETE, haveCourseResult);
			haveCourseOp.addEventListener(OperationEvent.FAILED, onFault);*/
			
			checkWs.myOp.CoursewareValid( { UserId:_gvar.UserId, CoursewareId:_gvar.CoursewareId } );
			checkWs.myOp.addEventListener("complete", checkWs.onResult);
			checkWs.myOp.addEventListener("failed", checkWs.onFault);
			checkWs.addEventListener(MyWebservice.WSCOMPLETE, haveCourseResult);
		}

			
		public function haveCourseResult(e:Event):void
		{
			checkWs.myOp.removeEventListener("complete", checkWs.onResult);
				checkWs.myOp.removeEventListener("failed", checkWs.onFault);
				checkWs.removeEventListener(MyWebservice.WSCOMPLETE, haveCourseResult);
			if ((XML(e.target.data).toXMLString() != "true")) {
					//没有课程
					var _alert:B_Alert = new B_Alert("对不起！您未拥有课程！");
					addChild(_alert);
					}else {
						//有课程，开始
						trace("haveCourse");
						init();
						}
				}
		
		//--------------------------------------------------------------------------------------------------------------------//
		//增加loading
		private function addLoading():void{
			loadingBar = new progressBar();//加载进度条
			loadingBar.x = (stage.stageWidth - loadingBar.width) / 2;
			loadingBar.y = (stage.stageHeight - loadingBar.height) / 2;
			loadingBar.txt.mouseEnabled = false;
			addChild(loadingBar);
			loopLoadSkin();
			}
		//加载皮肤
		private function loopLoadSkin():void {
			loader = new Loader();
			//加载皮肤。
			loader.load(new URLRequest("skin.swf"));
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, skinLoadComplete);
			loader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, skinLoadProgress);
		}
		
		private function skinLoadProgress(event:ProgressEvent):void {
			var i:uint = int(event.bytesLoaded / event.bytesTotal * 100);
			loadingBar.gotoAndStop(i);
			loadingBar.txt.text = "加载"+i+"%";
		}
		private function skinLoadComplete(event:Event):void {
			_loaderInfo = LoaderInfo(event.target);
			removeChild(loadingBar);
			
			
		}
		//--------------------------------------------------------------------------------------------------------------------//
		//建立次菜单中的返回主菜单的返回按钮
		private function creaSecondReturnMainScreen():void{
			//次菜单中的返回按钮
			var temp:Class=getDefinitionByName("returnMainScreen") as Class;
			_returnMainScreen=new temp();
			_returnMainScreen.x=(Gvar.STAGE_X-_returnMainScreen.width)/2;
			_returnMainScreen.y=Gvar.STAGE_Y-_returnMainScreen.height-110;
			_secondDisplay.addChild(_returnMainScreen);
			_returnMainScreen.addEventListener(MouseEvent.CLICK,returnMainScreenHandler);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//主菜单点击响应
		private function mainMenuClickHandler(e:MainMenuClickEvent):void{
			//trace(e.clickId);
			switch(e.clickId){
				case 1:
				currentState=1;
				removeChild(_mainDisplay);
				break;
				case 2:
				currentState=2;
				removeChild(_mainDisplay);
				break;
				case 3:
				currentState=3;
				removeChild(_mainDisplay);
				break;
				case 4:
				currentState=4;
				removeChild(_mainDisplay);
				break;
				default:
				trace("error")
				}
			secondMenu.currentState=currentState;
			if(!contains(_secondDisplay)) addChild(_secondDisplay);
			_secondDisplay.addChild(secondMenu);
			secondMenu.addEventListener(MainMenuClickEvent.SUBMENUCLICKEVENT,subMenuClickHandler);
			secondMenu.addEventListener("returnMainScreen", returnMainScreenHandler);
			//第二菜单进入动画效果
			TweenLite.from(secondMenu, .5, {x:stage.stageWidth/2,y:stage.stageHeight/2,alpha:0, scaleX:0,scaleY:0,ease:Back.easeOut});
			
			creaSecondReturnMainScreen();
			}
		
		//返回主菜单
		private function returnMainScreenHandler(e:MouseEvent):void{
			returnMainMenu();
			}
		
		//--------------------------------------------------------------------------------------------------------------------//
		//回到主界面
		private function returnMainMenu():void{
			//if(!contains(_mainDisplay)) addChild(_mainDisplay);
			//if(!contains(theBestBg)) addChild(theBestBg);
			_startKey.gotoOff(null);
			addChild(theBestBg);
			
			_mainDisplay.addChild(_mainBg);
			_mainDisplay.addChild(mainMenu);
			addChild(_mainDisplay);
			addChild(upBottonSprite);
			//增加主菜单
			mainMenu.x=703.2;
			mainMenu.y=244.15;
			TweenLite.from(mainMenu, 1, {x:1003.2, y:244.15, ease:Back.easeOut});
			
			if(contains(_secondDisplay)) removeChild(_secondDisplay);
			if(contains(_contentDisplay)) cleaall(_contentDisplay);
			
			resetTool();
			
			Gvar.getInstance().T_RMPX_PARTED=false;
			}
		
		//回到次界面
		private function returnSecondMenu():void{
			_startKey.gotoOff(null);
			if(contains(_contentDisplay)) cleaall(_contentDisplay);
			
			addChild(theBestBg);
			addChild(upBottonSprite);
			addChild(_secondDisplay);
			_secondDisplay.addChild(secondMenu);
			TweenLite.from(secondMenu, .5, {x:stage.stageWidth/2,y:stage.stageHeight/2,alpha:0, scaleX:0,scaleY:0,ease:Back.easeOut});
			secondMenu.addEventListener(MainMenuClickEvent.SUBMENUCLICKEVENT,subMenuClickHandler);
			
			resetTool();
			
			creaSecondReturnMainScreen();
			
			Gvar.getInstance().T_RMPX_PARTED=false;
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//次菜单点击事件
		private function subMenuClickHandler(e:MainMenuClickEvent):void {
			secondMenu.removeEventListener(MainMenuClickEvent.SUBMENUCLICKEVENT,subMenuClickHandler);
			//trace("e:="+e.subclickId);
			switch(e.subclickId){
				case 1:
				//部件认识时要加载相应的XML
				if(currentState==1){
					loadRmpxXml();
					}else{
						enterContent();
						loadCurrentSwf(1);
						addTopOther();
						}
				
				break;
				case 2:
				enterContent();
				loadCurrentSwf(2);
				//如果是连线、性能检测、故障诊断的模拟考试
				if(currentState==2 || currentState==3 || currentState==4)
				addTopOther();
				break;
				case 3:
				enterContent();
				loadCurrentSwf(3);
				//如果是连线、性能检测、故障诊断的过关考试
				if(currentState==2 || currentState==3 || currentState==4)
				addTopOther();
				break;
				}
			}
		//--------------------------------------------------------------------------------------------------------------------//
		private function loadRmpxXml():void{
			
			var first_rmpxWs:MyWebservice = new MyWebservice();
			first_rmpxWs.myOp.Part({CoursewareId:_gvar.CoursewareId});
			first_rmpxWs.myOp.addEventListener("complete", first_rmpxWs.onResult);
			first_rmpxWs.myOp.addEventListener("failed", first_rmpxWs.onFault);
			first_rmpxWs.addEventListener(MyWebservice.WSCOMPLETE, first_rmpxWsComplete);
			}
		//
		private function first_rmpxWsComplete(e:Event):void {
			/*(e.target as MyWebservice).myOp.addEventListener("complete", (e.target as MyWebservice).onResult);
			(e.target as MyWebservice).myOp.addEventListener("failed", (e.target as MyWebservice).onFault);
			(e.target as MyWebservice).addEventListener(MyWebservice.WSCOMPLETE, first_rmpxWsComplete);*/
			
			_F_RMPXXML = e.target.data;
			//把所有的部件信息放入数组中
			for(var i:uint=0;i<_F_RMPXXML.children().length();i++){
				var temp:Object=new Object();
				temp._id = _F_RMPXXML.child(i).@partid;
				temp.name = _F_RMPXXML.child(i).@partname;
				/*trace(_F_RMPXXML.child(i).partdetail)
				trace(_F_RMPXXML.child(i).partdetail.(@name=="map1"))*/
				temp.toolImageS=_F_RMPXXML.child(i).partdetail.(@name=="map1");
				temp.toolImageD=_F_RMPXXML.child(i).partdetail.(@name=="map2");
				temp.toolEffect=_F_RMPXXML.child(i).partdetail.(@name=="effect");
				temp.toolLoc=_F_RMPXXML.child(i).partdetail.(@name=="location");
				temp.toolMore=_F_RMPXXML.child(i).partdetail.(@name=="address");
				_F_RMPXArr.push(temp);
				//trace(temp.toolMore)
			}
			//显示第三界面
			enterContent();
			//先默认SWF置顶
			TotallDispather._currentToolOrLoadSwf = 0;
			_TotallDispather.MydispatchEvent(TotallDispather.SWAP_TOOL_AND_LOADSWF_INDEX);
			
			loadCurrentSwf(1);
			addTopOther();
			}
		
		//--------------------------------------------------------------------------------------------------------------------//
		//当前进入内容界面时删除所有的对象除了内容容器
		private function enterContent():void {
			//先默认SWF置顶
			TotallDispather._currentToolOrLoadSwf = 1;
			_TotallDispather.MydispatchEvent(TotallDispather.SWAP_TOOL_AND_LOADSWF_INDEX);
			
			//cleaall(_mainDisplay);
			//cleaall(_secondDisplay);
			if(contains(_mainDisplay)) cleaall(_mainDisplay);
			if(contains(_secondDisplay)) cleaall(_secondDisplay);
			if(!contains(_contentDisplay)) addChild(_contentDisplay);
			
			if(contains(upBottonSprite))removeChild(upBottonSprite);//去掉上面的文字
			if(contains(theBestBg))removeChild(theBestBg);//去掉背景中的启动系统图片
			
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//加载当前的要显示的内容
		private function loadCurrentSwf(secondId:uint ):void{
			//删除原先有的内容
			cleaall(_loadSwfDisplay);
			//去掉次菜单
			if(contains(_secondDisplay)) removeChild(_secondDisplay);
			
			//加载内容界面
			//currentSwf.unloadAndStop();
			currentSwf.unload();
			currentSwf.load(new URLRequest("swf/"+currentState+secondId+".swf"));
			
			currentSwf.contentLoaderInfo.addEventListener(Event.COMPLETE,currentSwfLoadOver);
			currentSwf.addEventListener(RMPXClickEvent.RMPXCLICKEVENT,partClickHandler);
			currentSwf.addEventListener(MNKSClickEvent.CLOSEMNKSEVENT,closeMNKSHandler,true);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//关闭模拟考试
		private function closeMNKSHandler(e:Event):void{
			returnSecondMenu();
			trace("closemnks")
			}
			
		//加载swf完成事件
		private function currentSwfLoadOver(evt:Event):void
		{
			var obj:Object = currentSwf.content;
			if(currentState==2 ){
				//线路分析
				//把皮肤传入加载进来的线路分析swf中，调用他文档类中的方法
				obj.creaBody(_loaderInfo,stage);
				TweenLite.from(currentSwf, 0.5, {alpha:0, ease:Cubic.easeInOut});
				_loadSwfDisplay.addChild(currentSwf);
				_contentDisplay.addChild(_loadSwfDisplay);
				}else if(currentState==3 || currentState==4){
				//性能检测
				//把皮肤传入加载进来的线路分析swf中，调用他文档类中的方法
				if (currentState == 3 || currentState == 4)
				{
					obj.setLoadinfo(_loaderInfo);
					//如果是第四部分则传入通讯的SWF
					/*if (currentState == 4) {
						obj.setContectLoader(_contectSwf);
						}*/
				}
				else{
					obj.loaderInfo = _loaderInfo;
				}
				
				obj.creaStateObj();//增加一些按钮元素
				TweenLite.from(currentSwf, 0.5, {alpha:0, ease:Cubic.easeInOut});
				_loadSwfDisplay.addChild(currentSwf);
				_contentDisplay.addChild(_loadSwfDisplay);
				}else{
				TweenLite.from(currentSwf, 0.5, {alpha:0, ease:Cubic.easeInOut});
				_loadSwfDisplay.addChild(currentSwf);
				_contentDisplay.addChild(_loadSwfDisplay);
				}
				
			}
		//部件点击显示弹出框
		private function partClickHandler(e:RMPXClickEvent):void{
			currentSwf.removeEventListener(RMPXClickEvent.RMPXCLICKEVENT,partClickHandler);
			trace("partId=" + e.clickPartId)
			//找到相应部分ID的部件信息
			for (var i:uint = 0; i < _F_RMPXArr.length; i++ ) {
				//这里最根据后台的部件ID找到相应的部件信息
				if ((_F_RMPXArr[i].name).toXMLString() == String(e.clickPartName)) {
					_F_RMPXAlert.Show(_F_RMPXArr[i]);
					break;
					}
				}
			
			
			_alertDisplay.addChild(_F_RMPXAlert);
			_F_RMPXAlert.addEventListener("CLOSEALER",closeAlerHandler);
			
			}
			
		//关闭弹出框
		private function closeAlerHandler(e:Event):void{
			currentSwf.addEventListener(RMPXClickEvent.RMPXCLICKEVENT,partClickHandler);
			cleaall(_alertDisplay);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//增加工具，菜单，钥匙等上层对象
		private function addTopOther():void{
			//外框
			var topBg:Sprite;
			var temp:Class=getDefinitionByName("threeScreen") as Class;
			topBg=new temp();
			_contentDisplay.addChild(topBg);
			
			//第三界面主菜单
			var threeMenu:ThreeMenu=new ThreeMenu();
			threeMenu.x=Gvar.STAGE_X-threeMenu.width-10;
			threeMenu.y=20;
			_contentDisplay.addChild(threeMenu);
			threeMenu.addEventListener("mainMenuClick",mainMenuClicHandler);
			threeMenu.addEventListener("secondMenuClick",secondMenuClickHandler);
			
			
			//增加工具箱
			_tool = new Tool();
			_tool.x=Gvar.STAGE_X-246-10;
			_tool.y=118;
			_tool.hideArrawHandler(null);
			_tool.addEventListener(ToolClickEvent.TOOLCLICKEVENT,toolClickEventHandler);
			_contentDisplay.addChild(_tool);
			
			//增加启动钥匙,
			_startKey.x=318.7;
			_startKey.y=633.2;
			_contentDisplay.addChild(_startKey);
			//如果是性能检测部分时点火开关的START只响应点击
			/*if (currentState == 3 || currentState == 4) {
				_startKey.onlyListenClick();
				}else {
					trace("else down")
					_startKey.addListenDownUp();
					}*/
			_startKey.addEventListener(StartKeyEvent.STARTKEYEVENT,startKeyEventHandler);
			
			//控制档位
			_stallSwitch.x=513;
			_stallSwitch.y=619.55;
			_contentDisplay.addChild(_stallSwitch);
			_stallSwitch.addEventListener(StallSwitchEvent.STALLSWITCHEVENT,stallSwitchEventHandler);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//点火开关点击事件
		private function startKeyEventHandler(e:StartKeyEvent):void{
			var obj:Object = currentSwf.content;
			_currentStarKeyState=e.startId;
			obj.flashStar(_currentStarKeyState,_currentStallSwitchState);
			}
			
		//档位开关切换事件
		private function stallSwitchEventHandler(e:StallSwitchEvent):void{
			var obj:Object = currentSwf.content;
			_currentStallSwitchState=e.switchId;
			obj.flashStar(_currentStarKeyState,_currentStallSwitchState);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		private function mainMenuClicHandler(e:Event):void{
			returnMainMenu();
			}
		
		private function secondMenuClickHandler(e:Event):void{
			returnSecondMenu();
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//工具点击
		private function toolClickEventHandler(e:ToolClickEvent):void{
			
			//if(_currentSelecteToolId!=e.toolId || _currentSelecteToolItem!=e.toolitemId){
			var obj:Object = currentSwf.content;
				//如果不是第一部分则调用工具
				if(currentState!=1)
				obj.UseTool(e.toolId,e.toolitemId);
				_currentSelecteToolId=e.toolId;
				_currentSelecteToolItem=e.toolitemId;
			//}
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//工具还原为未选中
		private function resetTool():void{
			_currentSelecteToolId=1000;
			_currentSelecteToolItem=1000;
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//去掉容器中的所有对象
		private function cleaall(thisContent:DisplayObjectContainer):void{
			   try {
					  while (true) {
							 thisContent.removeChildAt(thisContent.numChildren-1);
					  }
			   } catch (e:Error) {
					//  trace("全部删除！");
			   }
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//===================================================================================================================//
	}
}