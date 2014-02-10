package bbjxl.com.display
{
	/**
	作者：被逼叫小乱
	电源工具
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.display.DisplayObject;
	import flash.geom.Point;
	import flash.display.DisplayObjectContainer;
	import flash.display.Shape;
	import flash.filters.BitmapFilterQuality;

	import flash.filters.GlowFilter;
	import flash.utils.getQualifiedClassName;
	import flash.utils.getDefinitionByName;
	import bbjxl.com.content.second.Pin;
	import bbjxl.com.content.second.MyLine;
	import bbjxl.com.event.PowerEvent;
	import flash.display.SimpleButton;
	import bbjxl.com.content.three.MNKS_Part;
	

	public class Power extends Sprite
	{
		private var _line:MovieClip;//电源工具
		private var _qinzhi:MovieClip;//钳子
		private var _qinzhiz:MovieClip;//钳子
		private var _closeBt:SimpleButton;//关闭按钮

		private var _currentZPin:Pin=new Pin();//正钳子选择的正针脚
		private var _currentFPin:Pin=new Pin();//正钳子选择的负针脚
		private var _zbHitPart:Part;//正笔碰到的部件
		private var _fbHitPart:Part;//负笔碰到的部件
		private var _zline:PowerLine=new PowerLine();//正钳子
		private var _fline:PowerLine=new PowerLine();//负钳子
		private var _Zline:Sprite=new Sprite();//正线
		private var _Fline:Sprite=new Sprite();//负线
		private var _zstarPoint:Point;//正钳开始的点
		private var _fstarPoint:Point;//负钳开始的点
		private var _fflaghit:Boolean = false;//负钳是否接触到针脚
		private var _zflaghit:Boolean = false;//正钳是否接触到针脚
		
		private var _thisParent:DisplayObjectContainer;//父容器
		
		private var _initFlag:Boolean=false;//是否已经初始化
		
		private static var _singleton:Boolean = true;
		private static var _instance:Power;
		//===================================================================================================================//
		public function get initFlag():Boolean
		{
			return _initFlag;
		}
		public function set initFlag(setValue:Boolean):void
		{
			_initFlag = setValue;
		}
		public function get closeBt():SimpleButton
		{
			return _closeBt;
		}
		public function set closeBt(setValue:SimpleButton):void
		{
			_closeBt = setValue;
		}
		public function get qinzhiz():MovieClip
		{
			return _qinzhiz;
		}
		public function set qinzhiz(setValue:MovieClip):void
		{
			_qinzhiz = setValue;
		}
		public function get qinzhi():MovieClip
		{
			return _qinzhi;
		}
		public function set qinzhi(setValue:MovieClip):void
		{
			_qinzhi = setValue;
		}
		public function get line():MovieClip
		{
			return _line;
		}
		public function set line(setValue:MovieClip):void
		{
			_line = setValue;
		}
		//===================================================================================================================//
		public function Power()
		{
			if (_singleton)
			{
				throw new Error("只能用getInstance()来获取实例");
			}
		}//End Fun
		
		public static function getInstance()
		{
			if (! _instance)
			{
				_singleton = false;
				_instance=new Power();
				
			}
			return _instance;
		}

		public function init(thisParent:DisplayObjectContainer):void
		{
			_thisParent=thisParent;
			addChild(_line);
			//_zline=new PowerLine();
			
			
			_zline._bs = _qinzhi;
			_zline.creaShap();
			//_fline=new PowerLine();
			
			//复制
			/*var mcClass:Class=qinzhi.constructor;
			var temp:MovieClip;
			//var mcClass:Class=getDefinitionClass(getQualifiedClass(qinzhi)) as Class;
			temp=new mcClass();*/
			
			_fline._bs = _qinzhiz ;
			_fline.creaShap();

			_zstarPoint = new Point(8,0);
			_fstarPoint = new Point(64,0);
			_fline.x = _fstarPoint.x+30;
			_fline.y = -_fline.height+10;
			_zline.x = _zstarPoint.x-30;
			_zline.y =-_fline.height+10;
			
			_zline.buttonMode=true;
			_fline.buttonMode=true;
			
			_closeBt.x=_line.x+(_line.width-_closeBt.width)/2;
			_closeBt.y=_line.y+(_line.height-_closeBt.height)/2;
			
			addChild(_Zline);//加正线
			addChild(_Fline);//加负线
			addChild(_zline);
			addChild(_fline);
			addChild(_closeBt);
			
			_zline.addEventListener(MouseEvent.MOUSE_DOWN,zstartDraghandler);
			_zline.addEventListener(MouseEvent.MOUSE_UP,zstopDragehandler);
			_fline.addEventListener(MouseEvent.MOUSE_DOWN,fstartDraghandler);
			_fline.addEventListener(MouseEvent.MOUSE_UP,fstopDragehandler);
			_closeBt.addEventListener(MouseEvent.CLICK,closeMe);
			enterframehandler(null);
			
			_initFlag=true;
		}
		
		//关闭自己的
		private function closeMe(e:MouseEvent):void{
			dispatchEvent(new Event("closePowerEvent"));
			}
		//--------------------------------------------------------------------------------------------------------------------//
		private function fstartDraghandler(e:Event):void
		{
			//只要鼠标点击钳子电源就会断开
			var clickEvent:PowerEvent=new PowerEvent(PowerEvent.POWERCLICKEVENT);
			dispatchEvent(clickEvent);
			
			_currentFPin.univeralOut();
			resetDocument("f");
			setTop((e.currentTarget) as DisplayObject,1);
			e.currentTarget.startDrag(true);
			this.addEventListener(Event.ENTER_FRAME,enterframehandler);

		}
		private function fstopDragehandler(e:Event):void{
			
			(e.currentTarget).stopDrag();
			for (var p:uint= 0; p<_thisParent.numChildren; p++) {
    		   var _obj:*=_thisParent.getChildAt(p);
			   if(_obj is Part || _obj is MNKS_Part){
				 
				    var temp:Array=new Array();
					temp=_obj.allPinArr;
					
					for(var i in temp){
						//var tempP:Point=new Point(temp[i].x,temp[i].y);
						//如果笔头碰到
						if((_fline._headSp).hitTestObject(temp[i])){
							//trace("fb")
							_currentFPin=temp[i];
							_currentFPin.univeralOver();
							_fflaghit=true;
							_fline.hitPin();
							
							_fbHitPart=_obj;
							
							//如果两个笔都已经接好
							Start();
							return;
					  		break;
						   }else{
							   _fflaghit=false;
							   _fline.resetDocument();
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
		private function setTop(_obj:DisplayObject,index:uint):void
		{
			if (this.getChildIndex(_obj) < this.numChildren - index)
			{
				this.setChildIndex(_obj,this.numChildren-index);
			}
		}
		//万用笔复位
		public function resetDocument(fzall:String):void
		{
			switch (fzall)
			{
				case "f" :
				
			
					_fline.x = _fstarPoint.x+30;
					_fline.y = -_fline.height+10;
					_fflaghit = false;
					_fline.resetDocument();
					_fline.rotation = 0;
					break;
				case "z" :
					_zline.x = _zstarPoint.x-30;
					_zline.y =-_fline.height+10;
					_zflaghit = false;
					_zline.resetDocument();
					_zline.rotation = 0;
					break;
				case "all" :
					_fline.x = _fstarPoint.x+30;
					_fline.y = -_fline.height+10;
					_zline.x = _zstarPoint.x-30;
					_zline.y =-_fline.height+10;
					_fflaghit = false;
					_zflaghit = false;
					_zline.resetDocument();
					_fline.resetDocument();
					_fline.rotation = 0;
					_zline.rotation = 0;
					break;
			}

		}
		//找出所有部件中针脚的坐标相对于主场景
		private function findPinXY(__part:DisplayObjectContainer):Array
		{
			var temp:Array=new Array();
			for (var p:uint= 0; p<__part.numChildren; p++)
			{
				var _obj:* = __part.getChildAt(p);
				if (_obj is Pin)
				{
					temp.push(_obj);
				}
			}
			return temp;
		}
		private function zstartDraghandler(e:Event):void
		{
			//只要鼠标点击钳子电源就会断开
			var clickEvent:PowerEvent=new PowerEvent(PowerEvent.POWERCLICKEVENT);
			dispatchEvent(clickEvent);
			
			_currentZPin.univeralOut();
			resetDocument("z");
			setTop((e.currentTarget) as DisplayObject,1);
			e.currentTarget.startDrag(true);
			this.addEventListener(Event.ENTER_FRAME,enterframehandler);


		}
		private function zstopDragehandler(e:Event):void{
			
			(e.currentTarget).stopDrag();
			for (var p:uint= 0; p<_thisParent.numChildren; p++) {
    		   var _obj:*=_thisParent.getChildAt(p);
			   if(_obj is Part || _obj is MNKS_Part){
				    var temp:Array=new Array();
					temp=_obj.allPinArr;
					for(var i in temp){
						
						//如果笔头碰到
						if((_zline._headSp).hitTestObject(temp[i])){
							//trace(temp[i].pinId)
							_currentZPin=temp[i];
							_currentZPin.univeralOver();
							_zflaghit=true;
					  		_zline.hitPin();
							
							_zbHitPart=_obj;
							
							Start();
							return;
					  		break;
						   }else{
							   _zflaghit=false;
							   _zline.resetDocument();
							   _currentZPin.univeralOut();
							   }
						}
				   
				   }
  
			}
			if(!_zflaghit){
				resetDocument("z");
				}
			}
			
		private function enterframehandler(e:Event):void
		{
			creafline(_fstarPoint,_fline._TailPoint);
			creazline(_zstarPoint,_zline._TailPoint);
			
		}
		
		//电源开始运行
		public function Start():void{
			
			if(_zflaghit && _fflaghit){
				
				var powerEvent:PowerEvent=new PowerEvent();
				powerEvent.FbHitPart=_fbHitPart;
				powerEvent.ZbHitPart=_zbHitPart;
				powerEvent.ZbHitPinId=_currentZPin.pinId;
				powerEvent.FbHitPinId=_currentFPin.pinId;
				dispatchEvent(powerEvent);
				//trace(_currentZPin.name +"??"+_currentFPin.name)
				
				}
			}
			
		//画正线
		private function creazline(star:Point,end:Point):void
		{
			cleaall(_Zline);
			var _zfline:Shape=new Shape();
			_zfline.graphics.lineStyle(4,0xff0000,1);
			_zfline.graphics.moveTo(star.x,star.y);
			var tempx:Number=(star.x+end.x+_zfline.x)/2;
			var tempy:Number=(star.y+end.y+_zfline.y)/2;

			_zfline.graphics.curveTo(_zline.x,tempy,end.x+_zline.x,end.y+_zline.y);
			_Zline.addChild(_zfline);
			//setTop(_Zline,2);
			addFilte(_Zline);
		}
		//画负线
		private function creafline(star:Point,end:Point):void
		{
			cleaall(_Fline);
			var _ffline:Shape=new Shape();
			_ffline.graphics.lineStyle(4,0x000000,1);
			_ffline.graphics.moveTo(star.x,star.y);
			var tempx:Number=(star.x+end.x+_ffline.x)/2;
			var tempy:Number=(star.y+end.y+_ffline.y)/2;
			_ffline.graphics.curveTo(_fline.x,tempy,end.x+_fline.x,end.y+_fline.y);
			_Fline.addChild(_ffline);
			//setTop(_Fline,2);
			addFilte(_Fline);
		}

		//去掉指定容器中的所有对象
		private function cleaall(subdiqu:Object):void
		{
			try
			{
				while (true)
				{
					subdiqu.removeChildAt(subdiqu.numChildren-1);
				}
			}
			catch (e:Error)
			{
				// trace("全部删除！");
			}
		}
		//增加滤镜效果
		private function addFilte(_obj:DisplayObject):void
		{
			//创建滤镜实例
			var color:Number = 0xffffff;
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
			var filtersArray:Array = new Array(glowFilter);
			//将滤镜数组分配给显示对象以便应用滤镜
			_obj.filters = filtersArray;

		}
		//===================================================================================================================//
	}
}