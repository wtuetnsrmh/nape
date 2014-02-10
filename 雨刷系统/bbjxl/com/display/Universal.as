package bbjxl.com.display {
	/**
	作者：被逼叫小乱
	www.bbjxl.com/Blog
	万能表
	**/
	import flash.text.*;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.display.DisplayObject;
	import flash.events.*;
	import flash.geom.Point;
	import flash.display.Shape;
	import flash.utils.getDefinitionByName;
	import caurina.transitions.*;
	import flash.filters.BitmapFilterQuality;
	import com.greensock.*;
	import bbjxl.com.ui.CommonlyClass;
	import com.greensock.easing.*;
	import bbjxl.com.event.UniversalEvent;
	import bbjxl.com.content.three.MNKS_Part;
	
	import flash.filters.GlowFilter;
	import bbjxl.com.content.second.Pin;
	import flash.display.DisplayObjectContainer;
	import bbjxl.com.ui.CreaText;
	import flash.display.SimpleButton;
	
	public class Universal extends Sprite {
		protected var _currenselectObject:String="OFF";//默认测试的是电压
		protected var _currentZPin:Pin=new Pin();//正万用表选择的正针脚
		protected var _currentFPin:Pin=new Pin();//正万用表选择的负针脚
		protected var _zbHitPart:*;//正笔碰到的部件
		protected var _fbHitPart:*;//负笔碰到的部件
		protected var _Zline:Sprite=new Sprite();//正线
		protected var _Fline:Sprite=new Sprite();//负线
		protected var _zb:ZDocument=new ZDocument();//正笔
		protected var _fb:FDocument=new FDocument();//负笔
		protected var _zstarPoint:Point;//正笔开始的点
		protected var _fstarPoint:Point;//负笔开始的点
		protected var _fflaghit:Boolean=false;//负笔是否接触到针脚
		protected var _zflaghit:Boolean=false;//正笔是否接触到针脚
		protected var _off_bt:MovieClip=new MovieClip();//复位按钮
		protected var _v_bt:MovieClip=new MovieClip();//
		protected var _o_bt:MovieClip=new MovieClip();
		protected var _selectBar_mc:MovieClip=new MovieClip();//旋转条
		protected var _thisParent:DisplayObjectContainer;//父容器
		protected var _universal:MovieClip;
		protected var _universalBg:MovieClip = new MovieClip();//背景，即热区
		protected var _showText:CreaText;
		public var _currentContectText:String;//当前万用表显示的数据
		protected var _clsoeUniver:SimpleButton = new SimpleButton();//关闭万用表按钮
		
		protected var _help_mc:MovieClip;//使用说明
		protected var _help_text:CreaText;//说明文字
		
		public function Universal(thisParent:DisplayObjectContainer) {
			var tempClass:Class=getDefinitionByName("universal") as Class;
			_universal = new tempClass();
			
			_universalBg = _universal.getChildByName("univeralbg_mc") as MovieClip;
			addChild(_universal);
			
			_thisParent=thisParent;
			_zstarPoint=new Point(100,0);
			_fstarPoint=new Point(120,0);
			_fb.x=_universal.x+_fstarPoint.x;
			_fb.y=_universal.y+_fstarPoint.y+_fb.height-10;
			_zb.x=_universal.x+_zstarPoint.x;
			_zb.y=_universal.y+_zstarPoint.y+_zb.height-10;
			addChild(_zb);
			addChild(_fb);
			addChild(_Zline);//加正线
			addChild(_Fline);//加负线
			_zb.addEventListener(MouseEvent.MOUSE_DOWN,zstartDraghandler);
			_zb.addEventListener(MouseEvent.MOUSE_UP,zstopDragehandler);
			_fb.addEventListener(MouseEvent.MOUSE_DOWN,fstartDraghandler);
			_fb.addEventListener(MouseEvent.MOUSE_UP,fstopDragehandler);
			_off_bt=_universal.getChildByName("off_bt") as MovieClip;
			_v_bt=_universal.getChildByName("v_bt") as MovieClip;
			_o_bt = _universal.getChildByName("o_bt") as MovieClip;
			_help_mc=_universal.getChildByName("help_mc") as MovieClip;
			_clsoeUniver=_universal.getChildByName("clsoeUniver") as SimpleButton;
			_v_bt.buttonMode=true;
			_o_bt.buttonMode=true;
			_off_bt.buttonMode=true;
			_showText=new CreaText("OFF",0x000000,21,true);
			_showText.x=-5;
			_showText.y=21;
			_showText.buttonMode=true;
			_universal.addChild(_showText);
			_selectBar_mc=_universal.getChildByName("selectBar_mc") as MovieClip;
			_off_bt.addEventListener(MouseEvent.CLICK,offhandler);
			_v_bt.addEventListener(MouseEvent.CLICK,vhandler);
			_o_bt.addEventListener(MouseEvent.CLICK,ohandler);
			
			_universalBg.addEventListener(MouseEvent.MOUSE_DOWN,univeralStarDrag);
			_universalBg.addEventListener(MouseEvent.MOUSE_UP,univeralStopDrag);
			_clsoeUniver.addEventListener(MouseEvent.CLICK, _clsoeUniverClick);
			_showText.addEventListener(MouseEvent.MOUSE_DOWN, showTextDragStar);
			
			creaHelptext();
			_help_mc.gotoAndStop(1);
			_help_mc.buttonMode = true;
			_help_mc.addEventListener(MouseEvent.CLICK,_help_mchandler);
			
		}//End Fun
		
		//使用说明点击
		protected function _help_mchandler(e:MouseEvent):void {
			if (_help_mc.currentFrame == 1) {
				_help_mc.gotoAndStop(2);
				_help_text.visible = true;
				}else {
					_help_mc.gotoAndStop(1);
					_help_text.visible = false;
					}
			}
		//生成使用说明文字
		protected function creaHelptext():void {
			_help_text = new CreaText("1、选择档位\n2、指针拖动到测量点\n3、测量完毕复位", 0x000000, 13, false, "left", true);
			_help_text.x = _help_mc.x;
			_help_text.y = _help_mc.y + _help_mc.height + 5;
			_universal.addChild(_help_text);
			_help_text.visible = false;
			}
		
		//显示的数据点击，广播开始拖动事件
		protected function showTextDragStar(e:MouseEvent):void {
			trace("show")
			dispatchEvent(new Event("startDragShowText"));
			}
		
		//关闭万用表
		protected function _clsoeUniverClick(e:MouseEvent):void{
			dispatchEvent(new Event("closeUniversal"));
			}
		
		//更新万用表显示的文字
		public function updataText(_value:String):void {
			_currentContectText = _value;
			if(_value!="")
			_showText.updataText(_value);
			else
			_showText.updataText(_currenselectObject);
			}
		
		public function set currenselectObject(_id:String):void {
			_currenselectObject=_id;
		}
		public function get currenselectObject():String {
			return _currenselectObject;
		}
		
		//拖动万用表
		protected function univeralStarDrag(e:MouseEvent):void{
			//当前选择的是万用表
			var selecteMeEvent:UniversalEvent=new UniversalEvent(UniversalEvent.UNIVERSSALSELECTEEVENT);
			dispatchEvent(selecteMeEvent);
			
			_universal.startDrag();
			
			this.addEventListener(Event.ENTER_FRAME,enterFrameHandler);
			}
		
		protected function enterFrameHandler(e:Event):void{
			if(!_fflaghit){
				_fb.x=_universal.x+_fstarPoint.x;
				_fb.y=_universal.y+_fstarPoint.y+_fb.height-10;
			
				}
			if(!_zflaghit){
				_zb.x=_universal.x+_zstarPoint.x;
				_zb.y=_universal.y+_zstarPoint.y+_zb.height-10;
				}
			}
		
		//停止拖动
		protected function univeralStopDrag(e:MouseEvent):void{
			_universal.stopDrag();
			this.removeEventListener(Event.ENTER_FRAME,enterFrameHandler);
			}
		
		protected function offhandler(e:MouseEvent):void{
			Tweener.addTween(_selectBar_mc,{rotation:0, time:1});//,onComplete:zoomoutEnd});
			_currenselectObject="OFF";
			_showText.updataText("OFF");
			resetDocument("all");
			}
		protected function vhandler(e:MouseEvent):void {
			//档位改变时复位表针
			if(_currenselectObject!="V"){
				_currenselectObject = "V";
				resetDocument("all");
			}
			Tweener.addTween(_selectBar_mc,{rotation:-45, time:1});//,onComplete:zoomoutEnd});
			_showText.updataText("V");
			
			UniversalStart();
			}
		protected function ohandler(e:MouseEvent):void{
			Tweener.addTween(_selectBar_mc, { rotation:45, time:1 } );//,onComplete:zoomoutEnd});
			//档位改变时复位表针
			if(_currenselectObject!="Ω"){
				_currenselectObject = "Ω";
				resetDocument("all");
			}
			_showText.updataText("Ω");
			
			UniversalStart();
			}
		protected function fstartDraghandler(e:Event):void{
			//当前选择的是万用表
			var selecteMeEvent:UniversalEvent=new UniversalEvent(UniversalEvent.UNIVERSSALSELECTEEVENT);
			dispatchEvent(selecteMeEvent);
			
			_currentFPin.univeralOut();
			resetDocument("f");
			setTop((e.currentTarget) as DisplayObject,1);
			(e.currentTarget).startDrag(true);
			//this.addEventListener(Event.ENTER_FRAME,enterframehandler);
			
			}
		protected function fstopDragehandler(e:Event):void{
			
			(e.currentTarget).stopDrag();
			for (var p:uint= 0; p<_thisParent.numChildren; p++) {
    		   var _obj:*=_thisParent.getChildAt(p);
			   if(_obj is Part || _obj is MNKS_Part){
				
				    var temp:Array=new Array();
					temp=_obj.allPinArr;
					 trace(temp)
					for(var i in temp){
						//var tempP:Point=new Point(temp[i].x,temp[i].y);
						//如果笔头碰到
						if((_fb.bitail_mc).hitTestObject(temp[i])){
							//trace("fb")
							_currentFPin=temp[i];
							_currentFPin.univeralOver();
							_fflaghit=true;
							_fb.hitPin();
							
							_fbHitPart=_obj;
							
							//如果两个笔都已经接好
							UniversalStart();
							return;
					  		break;
						   }else{
							   _fflaghit=false;
							   _fb.resetDocument();
							 	_currentFPin.univeralOut();
								  }
						}
				   
				   }
  
			}
			
			if(!_fflaghit){
				resetDocument("f");
				}
			}
		//对象置顶
		protected function setTop(_obj:DisplayObject,index:uint):void{
			if(this.getChildIndex(_obj)<this.numChildren-index)
			this.setChildIndex(_obj,this.numChildren-index);
			}
		//万用笔复位
		public function resetDocument(fzall:String):void{
			switch(fzall){
				case "f":
				_fb.x=_universal.x+_fstarPoint.x;
				_fb.y=_universal.y+_fstarPoint.y+_fb.height-10;
				_fflaghit=false;
				_fb.resetDocument();
				_fb.rotation=0;
				break;
				case "z":
				_zb.x=_universal.x+_zstarPoint.x;
				_zb.y=_universal.y+_zstarPoint.y+_zb.height-10;
				_zflaghit=false;
				 _zb.resetDocument();
				_zb.rotation=0;
				break;
				case "all":
				_showText.updataText(_currenselectObject);
				_fb.x=_universal.x+_fstarPoint.x;
				_fb.y=_universal.y+_fstarPoint.y+_fb.height-10;
				_zb.x=_universal.x+_zstarPoint.x;
				_zb.y=_universal.y+_zstarPoint.y+_fb.height-10;
				_fflaghit=false;
				_zflaghit=false;
				_zb.resetDocument();
				 _fb.resetDocument();
				_fb.rotation=0;
				_zb.rotation=0;
				break;
				}
			
			}
		//找出所有部件中针脚的坐标相对于主场景
		protected function findPinXY(__part:Part):Array{
			var temp:Array=new Array();
			for (var p:uint= 0; p<__part.numChildren; p++) {
    		   var _obj:*=__part.getChildAt(p);
			    if(_obj is Pin){
					temp.push(_obj);
					}
			   }
			   return temp;
			}
		protected function zstartDraghandler(e:Event):void{
			//当前选择的是万用表
			var selecteMeEvent:UniversalEvent=new UniversalEvent(UniversalEvent.UNIVERSSALSELECTEEVENT);
			dispatchEvent(selecteMeEvent);
			
			_currentZPin.univeralOut();
			resetDocument("z");
			setTop((e.currentTarget) as DisplayObject,1);
			(e.currentTarget).startDrag(true);
			//this.addEventListener(Event.ENTER_FRAME,enterframehandler);
			
			
			}
		protected function zstopDragehandler(e:Event):void{
			
			(e.currentTarget).stopDrag();
			for (var p:uint= 0; p<_thisParent.numChildren; p++) {
    		   var _obj:*=_thisParent.getChildAt(p);
			   if(_obj is Part ||_obj is MNKS_Part){
				    var temp:Array=new Array();
					temp=_obj.allPinArr;
					for(var i in temp){
						
						//如果笔头碰到
						if((_zb.bitail_mc).hitTestObject(temp[i])){
							//trace(temp[i].pinId)
							_currentZPin=temp[i];
							_currentZPin.univeralOver();
							_zflaghit=true;
					  		_zb.hitPin();
							
							_zbHitPart=_obj;
							
							UniversalStart();
							return;
					  		break;
						   }else{
							   _zflaghit=false;
							   _zb.resetDocument();
							   _currentZPin.univeralOut();
							   }
						}
				   
				   }
  
			}
			if(!_zflaghit){
				resetDocument("z");
				}
			}
			
		//万用表开始运行
		public function UniversalStart():void{
			
			if(_zflaghit && _fflaghit){
				
				var universalEvent:UniversalEvent=new UniversalEvent();
				universalEvent.FbHitPart=_fbHitPart;
				universalEvent.ZbHitPart=_zbHitPart;
				universalEvent.ZbHitPinId=_currentZPin.pinId;
				universalEvent.FbHitPinId=_currentFPin.pinId;
				dispatchEvent(universalEvent);
				//trace(_currentZPin.name +"??"+_currentFPin.name)
				
				}
			}
			
		protected function enterframehandler(e:Event):void{
			creafline(_fstarPoint,_fb._TailPoint);
			creazline(_zstarPoint,_zb._TailPoint);
			}
		//画正线
		protected function creazline(star:Point,end:Point):void{
				cleaall(_Zline);
				 var _zline:Shape=new Shape();
				_zline.graphics.lineStyle(4,0xDF9DA0,1);
				_zline.graphics.moveTo(star.x,star.y);
				var tempx:Number=(star.x+end.x+_zb.x)/2;
				var tempy:Number=(star.y+end.y+_zb.y)/2;
				
				_zline.graphics.curveTo(_zb.x,tempy,end.x+_zb.x,end.y+_zb.y);
				_Zline.addChild(_zline);
				setTop(_Zline,2);
				addFilte(_Zline);
			}
		//画负线
		protected function creafline(star:Point,end:Point):void{
				cleaall(_Fline);
				 var _fline:Shape=new Shape();
				_fline.graphics.lineStyle(4,0xA5A5A5,1);
				_fline.graphics.moveTo(star.x,star.y);
				var tempx:Number=(star.x+end.x+_fb.x)/2;
				var tempy:Number=(star.y+end.y+_fb.y)/2;
				_fline.graphics.curveTo(_fb.x,tempy,end.x+_fb.x,end.y+_fb.y);
				_Fline.addChild(_fline);
				setTop(_Fline,2);
				addFilte(_Fline);
			}
		//去掉指定容器中的所有对象
		protected function cleaall(subdiqu:Object):void{
			   try {
					  while (true) {
							 subdiqu.removeChildAt(subdiqu.numChildren-1);
					  }
			   } catch (e:Error) {
					 // trace("全部删除！");
			   }
			}
			//增加滤镜效果
			protected function addFilte(_obj:DisplayObject):void{
			 //创建滤镜实例
 		     var color:Number = 0x1263ae;
            var alpha:Number = 0.5;
            var blurX:Number = 2;
            var blurY:Number = 2;
            var strength:Number = 3;
            var inner:Boolean = false;
            var knockout:Boolean = false;
            var quality:Number = BitmapFilterQuality.HIGH;
			var glowFilter:GlowFilter=new GlowFilter(color,
										  alpha,
										  blurX,
										  blurY,
										  strength,
										  quality,
										  inner,
										  knockout);
			//创建滤镜数组,通过将滤镜作为参数传递给Array()构造函数,
			//将该滤镜添加到数组中
			var filtersArray:Array=new Array(glowFilter);
			//将滤镜数组分配给显示对象以便应用滤镜
			_obj.filters=filtersArray;
			
				}
	}
}