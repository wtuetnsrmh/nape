package bbjxl.com.content.second
{
	/**
	作者：被逼叫小乱
	
	www.bbjxl.com/Blog
	**/
	import bbjxl.com.utils.Avm1Loader;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.display.SimpleButton;
	import bbjxl.com.Gvar;
	import com.greensock.*;
	import com.greensock.easing.*;
	import flash.events.Event;
	import flash.geom.Rectangle;
	import flash.display.Stage;
	import com._public._displayObject.IntroductionText;

	public class SwfControl extends ParentClass
	{
		public var _myloader:Avm1Loader=new Avm1Loader();
		private var _control_bg:MovieClip;//背景
		private var _control_drag:MovieClip;//拖动块
		private var _control_bar:MovieClip;//拖动条
		private var _control_play:SimpleButton;//播放
		private var _control_pause:SimpleButton;//暂停
		private var _control_stop:SimpleButton;//停止
		private var _control_prev:SimpleButton;//快退
		private var _control_next:SimpleButton;//快进

		private var _swf:MovieClip=new MovieClip();//播放的动画

		private var _playState:String = "stop";//当前的播放状态；
		
		public var _stage:Stage;

		private var mvtotal:uint;
		private var num:Number;
		private var _num:Number;

		//容器
		private var top:Sprite;//上面
		private var dowm:Sprite;//下面
		//===================================================================================================================//
		public function get swf():MovieClip
		{
			return _swf;
		}
		public function set swf(_value:MovieClip):void
		{
			_swf = _value;
		}
		//===================================================================================================================//
		public function SwfControl()
		{

		}//End Fun

		public function install():void
		{
			creaUi();
			creaTooltip();
			_myloader.avm1Execute( { target:"_root", funname:"gotoAndStop", args:[1] } );
		}
		
		//增加按钮提示
		private function creaTooltip():void{
			var playbttip:IntroductionText = new IntroductionText(_control_play, _stage, {titletext:"播放",contenttext:""} );
			var pausetip:IntroductionText = new IntroductionText(_control_pause, _stage, {titletext:"暂停",contenttext:""} );
			var stoptip:IntroductionText = new IntroductionText(_control_stop, _stage, {titletext:"停止",contenttext:""} );
			var pretip:IntroductionText = new IntroductionText(_control_prev, _stage, {titletext:"快退",contenttext:""} );
			var nexttip:IntroductionText = new IntroductionText(_control_next, _stage, {titletext:"快进",contenttext:""} );
			
			}
		
		//建立要的界面元素
		private function creaUi():void
		{
			top=new Sprite();
			dowm=new Sprite();
			addChild(top);
			addChild(dowm);

			_control_bg = createClip("controlBg");
			_control_bar = createClip("controlBar");
			_control_bar.x = 26;
			_control_bar.y = 24.5;
			_control_drag = createClip("dragMc");
			_control_drag.x = _control_bar.x;
			_control_drag.y = _control_bar.y + 2;
			_control_drag.buttonMode=true;
			_control_play = createButton("playerBt");
			_control_play.x = 372;
			_control_play.y = 58;
			_control_pause = createButton("pauseBt");
			_control_pause.x = _control_play.x;
			_control_pause.y = _control_play.y;
			_control_pause.visible = false;
			_control_stop = createButton("stopBt");
			_control_stop.x = _control_play.x + _control_play.width + 30;
			_control_stop.y = _control_play.y + 2;
			_control_prev = createButton("prevBt");
			_control_prev.x = _control_stop.x + _control_stop.width + 30;
			_control_prev.y = _control_stop.y+3;
			_control_next = createButton("nextBt");
			_control_next.x = _control_prev.x + _control_prev.width + 30;
			_control_next.y = _control_prev.y;

			/*dowm.addChild(_control_bg);
			dowm.addChild(_control_bar);
			dowm.addChild(_control_drag);
			dowm.addChild(_control_play);
			dowm.addChild(_control_pause);
			dowm.addChild(_control_stop);
			dowm.addChild(_control_prev);
			dowm.addChild(_control_next);*/
			
			//增加关闭按钮
			var closeBt:SimpleButton=createButton("FlvcloseBt");
			closeBt.x = 0;
			closeBt.y = 10;
			addChild(closeBt);
			
			var closeTip:IntroductionText = new IntroductionText(closeBt, _stage, {titletext:"关闭"} );

			//增加演示动画
			//_myloader.avm1Execute( { target:"_root", funname:"gotoAndStop", args:[1] } );
			//_myloader.width = Gvar.STAGE_X;
			//_myloader.height = Gvar.STAGE_Y;
			//_myloader.x=(Gvar.STAGE_X-_myloader.width)/2;
			_myloader.y=-20;
			//top.addChild(_swf);
			top.addChild(_myloader);
			
			//TweenLite.from(_myloader, .5, {x:Gvar.STAGE_X/2,y:Gvar.STAGE_Y/2,scaleX:.1,scaleY:.1});

			//定位;
			dowm.x=(Gvar.STAGE_X-_control_bg.width)/2;
			dowm.y = Gvar.STAGE_Y - _control_bg.height - Gvar.FIRST_MNKS_OTRIONS_GAP;
			TweenLite.from(dowm, .5, {y:"400"});
			
			//_myloader.avm1Execute({target:"_root",funname:"gotoAndStop", args:[1]});
			//mvtotal = _myloader.avm1Execute({target:"_root",funname:"totalFrames",args:[]})
			//trace("mvtotal="+mvtotal)
			num=mvtotal/(_control_bar.width);
			_num=(_control_bar.width)/mvtotal;

			//增加侦听
			_control_drag.addEventListener(MouseEvent.MOUSE_DOWN,dragMouseDown);
			_control_drag.addEventListener(MouseEvent.MOUSE_UP,dragMouseUp);
			this.addEventListener(MouseEvent.MOUSE_UP,dragMouseUp);
			_control_play.addEventListener(MouseEvent.CLICK,playClick);
			_control_pause.addEventListener(MouseEvent.CLICK,pauseClick);
			_control_stop.addEventListener(MouseEvent.CLICK,stopClick);
			_control_prev.addEventListener(MouseEvent.CLICK,prevClick);
			_control_next.addEventListener(MouseEvent.CLICK,nextClick);
			addEventListener(Event.ENTER_FRAME,enterframeHanlder);
			closeBt.addEventListener(MouseEvent.CLICK,closeClick);

		}
		//--------------------------------------------------------------------------------------------------------------------//
		private function nextClick(e:MouseEvent):void{
			_playState = "playing";
			_swf.gotoAndPlay(_swf.currentFrame+5);
			}
		
		private function prevClick(e:MouseEvent):void{
			_playState = "playing";
			_swf.gotoAndPlay(_swf.currentFrame-5);
			
			}
		
		private function playClick(event:MouseEvent):void
		{
			_playState = "playing";
			_swf.play();
			
			_control_play.visible = false;
			_control_pause.visible = true;
		}

		private function pauseClick(event:MouseEvent):void
		{
			_swf.stop();
			_playState = "pause";
			_control_play.visible = true;
			_control_pause.visible = false;
		}

		private function stopClick(event:MouseEvent):void
		{
			_swf.gotoAndStop(1);
			_playState = "playing";
			_control_play.visible = true;
			_control_pause.visible = false;
		}
		//--------------------------------------------------------------------------------------------------------------------//
		private function closeClick(e:MouseEvent):void {
			//_myloader.x=(Gvar.STAGE_X-_myloader.width)/2;
			_myloader.y = -20;
			trace("_myloader.x=" + _myloader.y)
			//_myloader = null;
			dispatchEvent(new Event("CLOSEAUTOMODE"));
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		private function enterframeHanlder(e:Event):void
		{
			var totaltime = _swf.currentFrame;
			var playtime = _swf.totalFrames;

			if (_playState == "playing")
			{
				_control_drag.x = _control_bar.x+_swf.currentFrame * _num;
				//timer.text = num2time(totaltime) + " / " + num2time(playtime);
				if(totaltime==1)_control_drag.x = _control_bar.x;
			}
			
		}
		//--------------------------------------------------------------------------------------------------------------------//
		private function dragMouseUp(e:MouseEvent):void
		{
			if(_playState == "drag"){
			e.target.stopDrag();
			_swf.gotoAndPlay(Math.floor((_control_drag.x-_control_bar.x)*num));
			_playState = "playing";
			_control_pause.visible = true;
			_control_play.visible = false;
			/*play_btn.visible=false;
			pause_btn.visible=true;*/
			}
		}

		//--------------------------------------------------------------------------------------------------------------------//
		//拖动控制
		private function dragMouseDown(e:MouseEvent):void
		{
			var myRectangle:Rectangle = new Rectangle(_control_bar.x,_control_bar.y+3,_control_bar.width,0);
			_control_drag.startDrag(false,myRectangle);
			_playState = "drag";
		}
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//===================================================================================================================//
	}
}