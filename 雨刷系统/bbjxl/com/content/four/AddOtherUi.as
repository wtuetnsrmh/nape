package bbjxl.com.content.four 
{
	import bbjxl.com.display.BBJXL_BasicClass;
	import flash.display.MovieClip;
	import bbjxl.com.Gvar;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.media.SoundTransform;
	/**
	 * ...
	 * @author bbjxl
	 * 仪表盘，大灯，喇叭等
	 */
	public class AddOtherUi extends BBJXL_BasicClass
	{
		public static const THIS_V_CHANGE:String = "this_V_change";//电压等级变化
		protected var _Dashboard:MovieClip;//仪表盘
		protected var _Headlamps:MovieClip;
		protected var _HeadlampsBt:MovieClip;//按钮
		protected var _hornBt:MovieClip;//按钮
		protected var _horn:MovieClip;
		private var _thisV:*;//当前电压
		private var _currentLevel:int = 30;//当前的等级，分为三级（10，20，30）表示电源电压的三个等级,默认为最高级
		private var _hornSound:Sound;
		private var _hornSoundCh:SoundChannel = new SoundChannel();//声音通道
		private var _hornSoundTr:SoundTransform = new SoundTransform();
		public function AddOtherUi():void
		{
		}
		
		
		//建立UI
		public function creaU():void {
			_thisV = 0;
			
			_Dashboard = createClip("Dashboard");
			
			_Dashboard.y = Gvar.STAGE_Y - _Dashboard.height;
			_HeadlampsBt = createClip("HeadlampsBt");
			_HeadlampsBt.x = 650;
			_Dashboard.x = 50;
			_HeadlampsBt.y = Gvar.STAGE_Y - _HeadlampsBt.height - 10;
			_Headlamps = createClip("Headlamps");
			_Headlamps.x = 448.9;
			_Headlamps.y = 499.4;
			_hornBt = createClip("HornBt");
			_hornBt.x = _HeadlampsBt.x;
			_hornBt.y = _HeadlampsBt.y-_HeadlampsBt.height-10;
			_horn = createClip("Horn");
			_horn.x = _Headlamps.x + _Headlamps.width + 20;
			_horn.y = _Headlamps.y;
			_horn.visible = false;
			_Headlamps.visible = false;
			_HeadlampsBt.addEventListener(MouseEvent.CLICK, _HeadlampsBtClickHandler);
			_hornBt.addEventListener(MouseEvent.CLICK, _hornBtClickHandler);
			this.addEventListener(THIS_V_CHANGE, this_V_changeHandler);
			
			_hornSound = new HornMp3();
			
			/*//初始为正常状态
			setHeadLamp();
			setDashboard();
			sethorn();*/
			addChild(_Dashboard);
			addChild(_HeadlampsBt);
			addChild(_Headlamps);
			addChild(_hornBt);
			addChild(_horn);
			}
		
		//---------------------------------------------------------------------------------------------------------------------//
		//大灯按钮点击
		private function _HeadlampsBtClickHandler(e:MouseEvent):void {
			_HeadlampsBt.gotoAndStop((_HeadlampsBt.currentFrame == 1)?2:1);
			_Headlamps.visible = (_HeadlampsBt.currentFrame == 1)?false:true;
			
			}
		//喇叭按钮点击
		private function _hornBtClickHandler(e:MouseEvent):void {
			_hornBt.gotoAndStop((_hornBt.currentFrame == 1)?2:1);
			_horn.visible = (_hornBt.currentFrame == 1)?false:true;
			judgeSound();
			}
		//判断是否有喇叭声音
		private function judgeSound():void {
			if (_hornSoundCh)_hornSoundCh.stop();
			if (_horn.visible) {
				_hornSoundCh = _hornSound.play();
				_hornSoundTr = _hornSoundCh.soundTransform;
				_hornSoundCh.addEventListener(Event.SOUND_COMPLETE, soundCompleteHandler);
				if (_horn.currentFrame == 1) {
					_hornSoundCh.stop();
					_hornSoundTr.volume = 0;
					_hornSoundCh.removeEventListener(Event.SOUND_COMPLETE, soundCompleteHandler);
					}else if (_horn.currentFrame == 2) {
						_hornSoundTr.volume = .3;
						}else if (_horn.currentFrame == 3) {
							_hornSoundTr.volume = 1;
							
							}
				
				_hornSoundCh.soundTransform = _hornSoundTr;
				}
			}
		//声音结束后循环播放
		private function soundCompleteHandler(e:Event):void {
			judgeSound();
			
			}
		//---------------------------------------------------------------------------------------------------------------------//
		public function disChangEvent():void {
			dispatchEvent(new Event(THIS_V_CHANGE));
			}
		//设置大灯状态
		public function setHeadLamp(_value:int = 3):void {
			_Headlamps.gotoAndStop(_value);
			}
		//获取大灯的当前帧
		public function getHeadLampFrame():int {
			return _Headlamps.currentFrame;
			}
		//设置仪表盘状态
		public function setDashboard(_value:int = 1):void {
			_Dashboard.gotoAndStop(_value);
			}
		//获取仪表盘的当前帧
		public function getDashboard():int {
			return _Dashboard.currentFrame;
			}
		//设置喇叭状态
		public function sethorn(_value:int = 3):void {
			_horn.gotoAndStop(_value);
			judgeSound();
			}
		//获取喇叭当前帧
		public function gethorn():int {
			return _horn.currentFrame;
			}
		//---------------------------------------------------------------------------------------------------------------------//
		//电压等级变化后重新设置元素状态
		private function this_V_changeHandler(e:Event):void {
			switch(_currentLevel) {
				case 10:
				setHeadLamp(1);
				sethorn(1);
				break;
				case 20:
				setHeadLamp(2);
				sethorn(2);
				break;
				case 30:
				setHeadLamp(3);
				sethorn(3);
				break;
				
				}
				//如果仪表盘原先就是开着的就重设亮度
				if (getDashboard()==2 || getDashboard()==3){
					setDashboard(getHeadLampFrame());
				}
			}
		//---------------------------------------------------------------------------------------------------------------------//
		//电压接口
		public function setThisV(_value:*):void {
			var temp:int = judge(_value);
			trace("_currentLevel="+_currentLevel)
			if (_currentLevel != temp) {
				
				trace("temp="+temp)
				_currentLevel = temp;
				
				dispatchEvent(new Event(THIS_V_CHANGE));
				}
			//temp = null;
			}
		//---------------------------------------------------------------------------------------------------------------------//
		//根据传进来的电压判断当前的等级
		private function judge(_value:*):int {
			var reutnrLevel:int=_currentLevel;
			if (_thisV != _value) {
				_thisV = _value;
				trace(Number(_value))
				//当前电压跟传进来的电压不同时才判断
					trace("_value="+_value)
					if (Number(_value) >= 10) {
						reutnrLevel = 30;
						return reutnrLevel;
						}else if (Number(_value) >= 8) {
							reutnrLevel = 20;
							return reutnrLevel;
							}else {
								reutnrLevel = 10;
								return reutnrLevel;
								}
					
				}
			return reutnrLevel;
			}
		//---------------------------------------------------------------------------------------------------------------------//
		
		
	}

}