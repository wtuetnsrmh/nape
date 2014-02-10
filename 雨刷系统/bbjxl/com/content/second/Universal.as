package {
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
	import caurina.transitions.*;
	import flash.filters.BitmapFilterQuality;

	import flash.filters.GlowFilter;
	
	public class Universal extends Sprite {
		private var _currenselectObject:String="a";//默认测试的是电流
		private var _currentZPin:Pin=new Pin();//正万用表选择的正针脚
		private var _currentFPin:Pin=new Pin();//正万用表选择的负针脚
		private var _Zline:Sprite=new Sprite();//正线
		private var _Fline:Sprite=new Sprite();//负线
		private var _zb:ZDocument=new ZDocument();//正笔
		private var _fb:FDocument=new FDocument();//负笔
		private var _zstarPoint:Point;//正笔开始的点
		private var _fstarPoint:Point;//负笔开始的点
		private var _fflaghit:Boolean=false;//负笔是否接触到针脚
		private var _zflaghit:Boolean=false;//正笔是否接触到针脚
		private var _a_bt:MovieClip=new MovieClip();//电流按钮
		private var _v_bt:MovieClip=new MovieClip();//
		private var _o_bt:MovieClip=new MovieClip();
		private var _selectBar_mc:MovieClip = new MovieClip();//旋转条
		
		private var _help_mc:MovieClip;//使用说明
		public function Universal() {
			_zstarPoint=new Point(100,0);
			_fstarPoint=new Point(120,0);
			_fb.x=_fstarPoint.x;
			_fb.y=_fstarPoint.y+_fb.height-10;
			_zb.x=_zstarPoint.x;
			_zb.y=_zstarPoint.y+_zb.height-10;
			addChild(_zb);
			addChild(_fb);
			addChild(_Zline);//加正线
			addChild(_Fline);//加负线
			_zb.addEventListener(MouseEvent.MOUSE_DOWN,zstartDraghandler);
			_zb.addEventListener(MouseEvent.MOUSE_UP,zstopDragehandler);
			_fb.addEventListener(MouseEvent.MOUSE_DOWN,fstartDraghandler);
			_fb.addEventListener(MouseEvent.MOUSE_UP,fstopDragehandler);
			_a_bt=this.getChildByName("a_bt") as MovieClip;
			_v_bt=this.getChildByName("v_bt") as MovieClip;
			_o_bt=this.getChildByName("o_bt") as MovieClip;
			_help_mc=this.getChildByName("help_mc") as MovieClip;
			_selectBar_mc=this.getChildByName("selectBar_mc") as MovieClip;
			_a_bt.addEventListener(MouseEvent.CLICK,ahandler);
			_v_bt.addEventListener(MouseEvent.CLICK,vhandler);
			_o_bt.addEventListener(MouseEvent.CLICK, ohandler);
			
			creaHelptext();
			_help_mc.addEventListener(MouseEvent.CLICK,_help_mchandler);
			
		}//End Fun
		
		//使用说明点击
		private function _help_mchandler(e:MouseEvent):void {
			
			}
		//生成使用说明文字
		private function creaHelptext():void {
			
			}
		
		private function ahandler(e:MouseEvent):void{
			Tweener.addTween(_selectBar_mc,{rotation:0, time:2});//,onComplete:zoomoutEnd});
			_currenselectObject="a";
			}
		private function vhandler(e:MouseEvent):void{
			_currenselectObject="v";
			
			Tweener.addTween(_selectBar_mc,{rotation:130, time:2});//,onComplete:zoomoutEnd});
			
			}
		private function ohandler(e:MouseEvent):void{
			Tweener.addTween(_selectBar_mc,{rotation:-130, time:2});//,onComplete:zoomoutEnd});
			_currenselectObject="o";
			}
		private function fstartDraghandler(e:Event):void{
			_currentFPin.univeralOut();
			resetDocument("f");
			setTop((e.currentTarget) as DisplayObject,1);
			(e.currentTarget).startDrag(true);
			this.addEventListener(Event.ENTER_FRAME,enterframehandler);
			
			}
		private function fstopDragehandler(e:Event):void{
			
			(e.currentTarget).stopDrag();
			for (var p:uint= 0; p<this.parent.numChildren; p++) {
    		   var _obj:*=this.parent.getChildAt(p);
			   if(_obj is Part){
				    var temp:Array=new Array();
					temp=findPinXY(_obj);
					
					for(var i in temp){
						var tempP:Point=new Point(temp[i].x,temp[i].y);
						//如果笔头碰到
						if((_fb.bitail_mc).hitTestObject(temp[i])){
							_currentFPin=temp[i];
							_currentFPin.univeralOver();
							_fflaghit=true;
							_fb.hitPin();
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
		private function setTop(_obj:DisplayObject,index:uint):void{
			if(this.getChildIndex(_obj)<this.numChildren-index)
			this.setChildIndex(_obj,this.numChildren-index);
			}
		//万用笔复位
		private function resetDocument(fzall:String):void{
			switch(fzall){
				case "f":
				_fb.x=_fstarPoint.x;
				_fb.y=_fstarPoint.y+_fb.height-10;
				_fflaghit=false;
				_fb.resetDocument();
				_fb.rotation=0;
				break;
				case "z":
				_zb.x=_zstarPoint.x;
				_zb.y=_zstarPoint.y+_zb.height-10;
				_zflaghit=false;
				 _zb.resetDocument();
				_zb.rotation=0;
				break;
				case "all":
				_fb.x=_fstarPoint.x;
				_fb.y=_fstarPoint.y+_fb.height-10;
				_zb.x=_zstarPoint.x;
				_zb.y=_zstarPoint.y+_fb.height-10;
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
		private function findPinXY(__part:Part):Array{
			var temp:Array=new Array();
			for (var p:uint= 0; p<__part.numChildren; p++) {
    		   var _obj:*=__part.getChildAt(p);
			    if(_obj is Pin){
					temp.push(_obj);
					}
			   }
			   return temp;
			}
		private function zstartDraghandler(e:Event):void{
			_currentZPin.univeralOut();
			resetDocument("z");
			setTop((e.currentTarget) as DisplayObject,1);
			(e.currentTarget).startDrag(true);
			this.addEventListener(Event.ENTER_FRAME,enterframehandler);
			
			
			}
		private function zstopDragehandler(e:Event):void{
			
			(e.currentTarget).stopDrag();
			for (var p:uint= 0; p<this.parent.numChildren; p++) {
    		   var _obj:*=this.parent.getChildAt(p);
			   if(_obj is Part){
				    var temp:Array=new Array();
					temp=findPinXY(_obj);
					for(var i in temp){
						var tempP:Point=new Point(temp[i].x,temp[i].y);
						//如果笔头碰到
						if((_zb.bitail_mc).hitTestObject(temp[i])){
							_currentZPin=temp[i];
							_currentZPin.univeralOver();
							_zflaghit=true;
					  		_zb.hitPin();
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
		private function enterframehandler(e:Event):void{
			creafline(_fstarPoint,_fb._TailPoint);
			creazline(_zstarPoint,_zb._TailPoint);
			}
		//画正线
		private function creazline(star:Point,end:Point):void{
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
		private function creafline(star:Point,end:Point):void{
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
		private function cleaall(subdiqu:Object):void{
			   try {
					  while (true) {
							 subdiqu.removeChildAt(subdiqu.numChildren-1);
					  }
			   } catch (e:Error) {
					 // trace("全部删除！");
			   }
			}
			//增加滤镜效果
			private function addFilte(_obj:DisplayObject):void{
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