package bbjxl.com.content.four{
	/**
	作者：被逼叫小乱
	
	www.bbjxl.com/Blog
	**/
	import bbjxl.com.content.first.MNKSClickEvent;
	import bbjxl.com.loading.xmlReader;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import bbjxl.com.ui.CountDown;
	import bbjxl.com.event.CountDownEvent;
	import bbjxl.com.content.three.MNKS_Botton;
	import flash.utils.getQualifiedSuperclassName;
	import bbjxl.com.content.second.ParentClass;
	import flash.utils.getDefinitionByName;
	import flash.utils.getQualifiedClassName;
	import bbjxl.com.ui.CommonlyClass;
	import bbjxl.com.content.three.RMPX_Fault_Select;
	import bbjxl.com.content.first.MNKS_Botton_PageClickEvent;
	import bbjxl.com.content.three.FaultOptionClickEvent;
	import bbjxl.com.Gvar;
	import org.aswing.BoxLayout;
	import org.aswing.CenterLayout;
	import org.aswing.event.FrameEvent;
	import org.aswing.event.AWEvent;
	import org.aswing.JButton;
	import org.aswing.JFrame;
	import org.aswing.JLabel;
	import org.aswing.JPanel;
	import org.aswing.JScrollPane;
	import org.aswing.SoftBoxLayout;
	import bbjxl.com.event.WebServeResultEvent;
	
	public class MNKS extends RMPX {
		protected var _examArr:Array=new Array();//考试试题数组
		//protected var _examNum:uint=5;//试题数
		protected var _exambotoonPageNum:MNKS_Botton;
		protected var _currentExamId:uint = 0;//当前的试题
		protected var _totalCanCreaTiPart:Array=new Array();//可以用于设故的部件
		
		protected var _examTime:uint=5;//考试时间
		protected var _reTime:CountDown;//倒计时
		protected var _reTimeSp:Sprite = new Sprite();//倒计时容器
		protected var _bottonSp:Sprite = new Sprite();
		
		protected var _startPopFrame:JFrame;//刚开始显示提示窗口
		
		protected var _fullWhite:Sprite;//白屏
		//---------------------------------------------------------数据----------------------------------------------------------//
		protected var _examConfigXml:XML = new XML();//考试配置文件
		//===================================================================================================================//
		
		//===================================================================================================================//
		public function MNKS() {
			
			super();
			_currentState = 20;//考试部分只有排故状态
			addChild(_bottonSp);
			this.addEventListener(Event.REMOVED_FROM_STAGE, removeFromStageHandler);
			
		}//End Fun
		
		override public function creaStateObj():void {
			
			
			//建立白屏
			_fullWhite = new Sprite();
			_fullWhite.graphics.lineStyle(1, 0xffffff);
			_fullWhite.graphics.beginFill(0xffffff);
			_fullWhite.graphics.drawRect(0, 0, Gvar.STAGE_X, Gvar.STAGE_Y);
			_fullWhite.graphics.endFill();
			//addChild(_fullWhite);
			
			_loading = createClip("loadingMc");
			addChild(_loading);
			
			_zzty = createClip("zzty");//故障设置
			_zzty.gotoAndStop(2);
			_zzty.x = 758.7;
			_zzty.y = 86;
			_xnjc = createClip("xnjc");//故障排除
			_xnjc.x=_zzty.x+_zzty.width-7;
			_xnjc.y=_zzty.y;
			_resetBt=createButton("resetBt");//复位
			_resetBt.x=710;
			_resetBt.y=_zzty.y-4;
			stateText.x=Gvar.STAGE_X-250;
			stateText.y = Gvar.STAGE_Y - 60;

			}
		
		override protected function loadxmloverhandler1(value:*):void
		{
			trace("loadxmloverhandler mnks")
			_xml = value as XML;
			//trace(_xml);
			_gvar._St_RV = XML(_xml.child(0).toString());
			_gvar._Off_RV = XML(_xml.child(1).toString());
			var xmlLength:uint = _gvar._St_RV.children().length();
			//trace(_gvar._Off_RV);
			for (var i:uint = 0; i < xmlLength; i++ ) {
				for (var j:uint = 0; j < _totalPart.length; j++ ) {
					//trace("_xml.child(0).child(i).@_name="+_totalPart[j].name)
					//如果XML中有简称就表示这个部件可以设置障碍
					if (_totalPart[j].name ==_gvar._St_RV.child(i).@short) {
						_totalPart[j]._listener = true;
						_totalCanCreaTiPart.push(_totalPart[j]);
						//trace(_totalPart[j].name)
						}
					}
				
				}
			//获取考试数据
			(_contectSwf.content)["puseOP"]("DiagnosisExam", 1);
			
		}
		//确定事件
		override protected function jokHandler(e:AWEvent):void {
			closeFaultSelecteOptionHandler(null);//关闭菜单
			if (_currentPart.name == _currentPart20.name && _currentFaultMenuOptionId==_currentFaultMenuOptionId20) {
				//如果找到故障即排故正确
				for(var i:String in _totalPart){
				_totalPart[i]._fault=false;
				_crrentFaultMenu20.initOption();//所有选择没选中
				_currentFaultMenuOptionId = 0;
				}
				_currentPart20._myScore = 5;

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
		//加载考试配置文件信息
		/*protected function loadExamConfigXml(_url:String):void {
			var temp:xmlReader=new xmlReader();
			temp.loadXml(Gvar.testUrl+"data/4/"+_url);
			temp.addEventListener(xmlReader.LOADXMLOVER,loadMnksXmloverhandler);
			}*/
		override protected function loadMnksXmloverhandler(value:*):void
		{
			trace("loadMnksXmloverhandler mnks");
			_examConfigXml = value as XML;// (e.target as xmlReader)._xmlData;
			_examTime = _examConfigXml.diagnosisexam.@time;
			_gvar.Examid = _examConfigXml.diagnosisexam.@examid;
			trace("_examTime=" + _examTime);
			trace("Examid=" + _gvar.Examid);

			
			creaTopic();//建立题库
			
			TotalPartAaddEventListener();
			creaPoint();
			addCheName();
			loadPartAndPointIdXY("PartAndPointIdAndXY.xml");
			loadDiagnosisXml("SymptomsLibrary.xml");
			//增加在线离线侦听
			_onlineOrOffline = _gvar._onlineOrOffline;
			_onlineOrOffline.addEventListener(OnlineOrOfflineChannel.OFFLINE, offlineHandler);
			_onlineOrOffline.addEventListener(OnlineOrOfflineChannel.ONLINE, onlineHandler);
			
			showStartExam();
		}
		
		//-----------------------------------------------------------------------------------------------------------//
		//刚开始显示弹出是否开始考试提示
		protected function showStartExam():void {
			addChild(_fullWhite);
			
			_startPopFrame = new JFrame(this, "提 示", true);//提示窗口
			_startPopFrame.setSizeWH(300, 200);
			
			var jOk:JButton = new JButton("开始考试");
			var jNo:JButton = new JButton("取 消");
			jOk.addActionListener(startExame);
			jNo.addActionListener(canleExame);
			var tempBtPane:JPanel = new JPanel(new BoxLayout(2, 50));
			var tempPane:JPanel = new JPanel(new CenterLayout());
			var tempLable:JLabel = new JLabel("是否准备好开始考试！");
			var buttonDisplay:JPanel = new JPanel(new SoftBoxLayout(1,20));
			tempBtPane.append(jOk);
			tempBtPane.append(jNo);
			buttonDisplay.append(tempLable);
			buttonDisplay.append(tempBtPane);
			
			tempPane.append(buttonDisplay);
			
			_startPopFrame.setContentPane(tempPane);
			_startPopFrame.setClosable(false);
			_startPopFrame.setResizable(false);
			_startPopFrame.setDragable(false);
			_startPopFrame.setComBoundsXYWH((stage.width-200) / 2, (stage.height-100) / 2, 200, 100);
			_startPopFrame.show();
			}
		//开始考试
		protected function startExame(e:AWEvent):void {
			if (contains(_fullWhite)) {
				removeChild(_fullWhite);
				_fullWhite = null;
				}
			//增加倒计时
			creaCountDowm();
			_startPopFrame.dispose();
			
			//记录考试开始时间
			Gvar.getInstance().ExamStartTime = CommonlyClass.DateTodate(new Date());
			}
		//取消考试
		protected function canleExame(e:AWEvent):void {
			if (contains(_fullWhite)) {
				removeChild(_fullWhite);
				_fullWhite = null;
				}
			//回到第二场景
			var tempEvent:MNKSClickEvent=new MNKSClickEvent("closemnksevent");
			dispatchEvent(tempEvent);
			}
		//-----------------------------------------------------------------------------------------------------------//
		//最后一个XML数据加载完后
		override protected function loadReasonTableHandler(value:*):void
		{
			removeChild(_loading);
			
			_gvar._reasonTable = value as XML;
			
			//显示题目
			showTi(0);
			
			//增加诊断表
			if (_diagnosis){
				if(!this.contains(_diagnosis))
					showFaultForm();
				}else {
					showFaultForm();
					}
			}

		//提交按钮点击
		override protected function setUpEventHandler(e:Event):void {
			trace("提交");
			_reTime.timerStop();
			_reTimeSp.removeChild(_reTime);
			_bottonSp.removeChild(_reTimeSp);
			_reTime.removeEventListener(CountDownEvent.COUNTDOWNEVENT,countdownOver);
			}
			
		//提交后关闭表时回到设故状态,复位
		override protected function closeFrameHandler(e:Event):void {
			var tempEvent:MNKSClickEvent=new MNKSClickEvent("closemnksevent");
			dispatchEvent(tempEvent);
			}
		
		
		//建立题库
		protected function creaTopic():void {

			var tempXml:XML = new XML();

			var tempObj:Object = new Object();
			tempObj.part = _totalCanCreaTiPart[Math.floor(Math.random() * _totalCanCreaTiPart.length)];//随机取一个部件
			tempXml = XML(_gvar.returnRVData((_currentIGSWState==10)?0:((_currentIGSWState==20)?1:2)).part.(@short == tempObj.part.name).toString());
			
			_gvar._currentFaultXml = tempXml;//记录当前故障XML
			
			var randomNum:uint = Math.ceil(Math.random() * (tempXml.children().length()-1));
			var tempMenu:Four_RMPX_Fault_Select= new Four_RMPX_Fault_Select(tempXml);
			tempMenu.currentSelecteOptionIndex = (randomNum);//随机选个选项
			tempObj.menu = tempMenu;
			_examArr.push(tempObj);
			trace("tempXml="+tempXml)
			trace("tempXml.children().length()="+tempXml.children().length())
			trace("tempObj.part.name, randomNum=" + tempObj.part.name + randomNum);
			}
		
		
			
		//移除从场景中
		protected function removeFromStageHandler(e:Event):void {
			//考试时间停止
			if (_reTime) {
				_reTime.timerStop();
			}
			}
		
		//显示指定的题目
		protected function showTi(_value:uint):void {
			var tempClassType:String;
			var tempClass:Class;
			
			tempClassType=getQualifiedClassName(_examArr[_value].part);
			tempClass=getDefinitionByName(tempClassType) as Class;
			_currentPart=new tempClass();
			_currentPart = _examArr[_value].part as Four_Part;
			_crrentFaultMenu = _examArr[_value].menu;
			//设置故障的电压等
			_crrentFaultMenu.addEventListener(FaultOptionClickEvent.FAULTOPTIONCLICKEVENT, FaultOptionClickEventHandler);
			_crrentFaultMenu.okClickEvent(null);
			
			_currentPart20 = null;
			
			trace("_CurrentFalutid=" + _CurrentFalutid);
			}
		
		//建立倒计时
		protected function creaCountDowm():void{
			_reTime=new CountDown(_examTime);
			var _timeBg:MovieClip=createClip("timeBg");
			_timeBg.x=Gvar.STAGE_X-_timeBg.width-30;
			_timeBg.y=Gvar.STAGE_Y-80;
			_reTime.x=_timeBg.x+30;
			_reTime.y=_timeBg.y+10;
			_reTimeSp.addChild(_timeBg);
			_reTimeSp.addChild(_reTime);
			_bottonSp.addChild(_reTimeSp);
			_reTime.addEventListener(CountDownEvent.COUNTDOWNEVENT,countdownOver);
			}
		//考试时间到
		protected function countdownOver(e:CountDownEvent):void{
			_diagnosis.setUpExam();
			}
		//--------------------------------------------------------------------------------------------------------------------//
		
		//===================================================================================================================//
	}
}