package bbjxl.com.display{
	/**
	作者：被逼叫小乱
	www.bbjxl.com/Blog
	自定义按钮
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.display.Graphics;
	import flash.display.SimpleButton;
	import flash.utils.getDefinitionByName;
	import flash.display.SimpleButton;
	import flash.display.Shape;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.TextFieldAutoSize;
	import flash.filters.BitmapFilterQuality;
	import flash.events.Event;
	
	import flash.filters.GlowFilter;
	import bbjxl.com.event.MainMenuClickEvent;
	import bbjxl.com.effect.Reflect;
	import com.greensock.*;
	import com.greensock.easing.*;
	import bbjxl.com.Gvar;

	public class SecondMenu extends MovieClip {
		private var _rmpx:MovieClip=new MovieClip();//入门培训
		private var _mnks:MovieClip=new MovieClip();//模拟考试
		private var _ggks:MovieClip=new MovieClip();//过关考试
		
		private var _bg:Sprite=new Sprite();//背景
		
		private var overFlag:Boolean=false;//是否鼠标在菜单上
		
		private var currentOverName:String="";//当前鼠标移上去的对象名称
		private var tempCurrent:MovieClip;
		
		private var _currentState:uint=0;//当前处理哪部分：部件认识，。。。
		
		//private var _returnMainScreen:SimpleButton;//返回到主菜单
		
		private var _xyArr:Array=[{x:54.4,y:220.8},{x:360.5,y:220.8},{x:662.55,y:220.8}];//坐标 比例1.3倍
		private var _xyArr1:Array=[{x:88,y:262.05},{x:394.1,y:262.05},{x:696.15,y:262.05}];//坐标 比例1倍
		
		public function set currentState(_id:uint):void {
			_currentState=_id;
		}
		public function get currentState():uint {
			return _currentState;
		}
		
		public function SecondMenu() {
			/*var temp:Class=getDefinitionByName("returnMainScreen") as Class;
			_returnMainScreen=new temp();
			_returnMainScreen.x=(Gvar.STAGE_X-_returnMainScreen.width)/2;
			_returnMainScreen.y=Gvar.STAGE_Y-_returnMainScreen.height-50;
			addChild(_returnMainScreen);
			_returnMainScreen.addEventListener(MouseEvent.CLICK,returnMainScreenHandler);*/
			
			_bg=this.getChildByName("bg") as Sprite;
			
			_rmpx=this.getChildByName("rmpx") as MovieClip;
			_mnks=this.getChildByName("mnks") as MovieClip;
			_ggks=this.getChildByName("ggks") as MovieClip;
			_rmpx.buttonMode=true;
			_mnks.buttonMode=true;
			_ggks.buttonMode=true;
			var re1:Reflect=new Reflect(_rmpx,20,55, -5,10,0);//用于影片
			var re2:Reflect=new Reflect(_mnks,20,55, -5,10,0);//用于影片
			var re3:Reflect=new Reflect(_ggks,20,55, -5,10,0);//用于影片
			
			_rmpx.addEventListener(MouseEvent.ROLL_OVER,rolloverHandler);
			_mnks.addEventListener(MouseEvent.ROLL_OVER,rolloverHandler);
			_ggks.addEventListener(MouseEvent.ROLL_OVER,rolloverHandler);
			
			_rmpx.addEventListener(MouseEvent.ROLL_OUT,rolloutHandler);
			_mnks.addEventListener(MouseEvent.ROLL_OUT,rolloutHandler);
			_ggks.addEventListener(MouseEvent.ROLL_OUT,rolloutHandler);
			
			/*_rmpx.addEventListener(MouseEvent.MOUSE_OVER,rolloverHandler);
			_mnks.addEventListener(MouseEvent.MOUSE_OVER,rolloverHandler);
			_ggks.addEventListener(MouseEvent.MOUSE_OVER,rolloverHandler);*/
			
			
			//_bg.addEventListener(MouseEvent.MOUSE_OVER,bgrolloverHandler);
			
			_rmpx.addEventListener(MouseEvent.CLICK,clickHandler);
			_mnks.addEventListener(MouseEvent.CLICK,clickHandler);
			_ggks.addEventListener(MouseEvent.CLICK,clickHandler);
			
		}//End Fun
		
		/*//返回主菜单
		private function returnMainScreenHandler(e:MouseEvent):void{
			dispatchEvent(new Event("returnMainScreen"));
			}*/
		
		//次菜单点击事件
		private function clickHandler(e:MouseEvent):void{
			var subMenuClick:MainMenuClickEvent=new MainMenuClickEvent("submenuclickevent");
			
			switch(e.target.name){
					case "rmpx":
					subMenuClick.subclickId=1;
					dispatchEvent(subMenuClick);
					break;
					case "mnks":
					subMenuClick.subclickId=2;
					dispatchEvent(subMenuClick);
					break;
					case "ggks":
					subMenuClick.subclickId=3;
					dispatchEvent(subMenuClick);
					break;
					}
			}
		
		/*private function bgrolloverHandler(e:MouseEvent):void{
			//_bg.removeEventListener(MouseEvent.MOUSE_OVER,bgrolloverHandler);
			if(currentOverName!=""){
				var temp:MovieClip=this.getChildByName(currentOverName) as MovieClip;
				TweenLite.to(temp, .5, {x:394.1, y:262.05, scaleX:1, scaleY:1});
				
				}
			}*/
		
		private function rolloutHandler(e:MouseEvent):void{
			switch(e.target.name){
					case "rmpx":
					TweenLite.to(_rmpx, .2, { x:_xyArr1[0].x, y:_xyArr1[0].y,scaleX:1, scaleY:1});
					//TweenLite.to(_rmpx, .5, { x:_xyArr[0].x, y:_xyArr[0].y,scaleX:1.3, scaleY:1.3});
					//TweenLite.to(_mnks, .5, {x:_xyArr[0].x, y:_xyArr[0].y, scaleX:1, scaleY:1,onComplete:dhover});
					
					break;
					case "mnks":
					TweenLite.to(_mnks, .2, { x:_xyArr1[1].x, y:_xyArr1[1].y,scaleX:1, scaleY:1});
					//TweenLite.to(_mnks, .5, { x:_xyArr[1].x, y:_xyArr[1].y,scaleX:1.3, scaleY:1.3});
					
					break;
					case "ggks":
					TweenLite.to(_ggks, .2, { x:_xyArr1[2].x, y:_xyArr1[2].y,scaleX:1, scaleY:1});
					//TweenLite.to(_ggks, .5, { x:_xyArr[2].x, y:_xyArr[2].y,scaleX:1.3, scaleY:1.3});
					//TweenLite.to(_mnks, .5, {x:_xyArr[2].x, y:_xyArr[2].y, scaleX:1, scaleY:1,onComplete:dhover});
					
					break;
					}
			}
		
		private function rolloverHandler(e:MouseEvent):void{
			//trace(e.target.name);
			//removeListenr();
			

			if(currentOverName!=""){
				var temp:MovieClip=this.getChildByName(currentOverName) as MovieClip;
				var tempIndex:uint;
				switch(currentOverName){
					case "rmpx":
					tempIndex=0;
					break;
					case "mnks":
					tempIndex=1;
					break;
					case "ggks":
					tempIndex=2;
					break;
					}
				TweenLite.to(temp, .2, { x:_xyArr1[tempIndex].x, y:_xyArr1[tempIndex].y,scaleX:1, scaleY:1});
				}
			
				switch(e.target.name){
					case "rmpx":
					
					TweenLite.to(_rmpx, .5, { x:_xyArr[0].x, y:_xyArr[0].y,scaleX:1.3, scaleY:1.3});
					//TweenLite.to(_mnks, .5, {x:_xyArr[0].x, y:_xyArr[0].y, scaleX:1, scaleY:1,onComplete:dhover});
					
					break;
					case "mnks":
					TweenLite.to(_mnks, .5, { x:_xyArr[1].x, y:_xyArr[1].y,scaleX:1.3, scaleY:1.3});
					
					break;
					case "ggks":
					TweenLite.to(_ggks, .5, { x:_xyArr[2].x, y:_xyArr[2].y,scaleX:1.3, scaleY:1.3});
					//TweenLite.to(_mnks, .5, {x:_xyArr[2].x, y:_xyArr[2].y, scaleX:1, scaleY:1,onComplete:dhover});
					
					break;
					}
					currentOverName=e.target.name;

			overFlag=true;
			
			}
			private function dhover(){
				//addAllListener();
				//_bg.addEventListener(MouseEvent.MOUSE_OVER,bgrolloverHandler);
				}
			
		
		/*

dh_mc.rotationY=12;
dh_mc.scaleX=dh_mc.scaleY=.5;

var timelinedh:TimelineLite = new TimelineLite();
timelinedh.append( new TweenLite(dh_mc, 1, {x:"145",scaleX:0.6,scaleY:0.6}) );
timelinedh.append( new TweenLite(dh_mc, 20, {scaleX:0.8,scaleY:0.8,rotationY:"-16"}) );
var timelinedh1:TimelineLite = new TimelineLite();
timelinedh1.append( new TweenLite(dhtxt, 1, {x:"-500"}) );
timelinedh1.append( new TweenLite(dh_mc, 1, {x:"-800",rotationY:"180",onComplete:dhover}) );
function dhover(){
	play();
	}

*/
		
		
	}
}