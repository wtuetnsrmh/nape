package bbjxl.com.content.second
{
	/**
	作者：被逼叫小乱
	连线
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
	

	public class ContectLine extends Sprite
	{
		
		protected var _line:MovieClip;//连线工具的线
		protected var _qinzhi:MovieClip;//连线工具的钳子

		protected var _currentZPin:Pin=new Pin();//正钳子选择的正针脚
		protected var _currentFPin:Pin=new Pin();//正钳子选择的负针脚
		protected var _zline:MyLine=new MyLine();//正钳子
		protected var _fline:MyLine=new MyLine();//负钳子
		protected var _Zline:Sprite=new Sprite();//正线
		protected var _Fline:Sprite=new Sprite();//负线
		protected var _zstarPoint:Point;//正钳开始的点
		protected var _fstarPoint:Point;//负钳开始的点
		protected var _fflaghit:Boolean = false;//负钳是否接触到针脚
		protected var _zflaghit:Boolean = false;//正钳是否接触到针脚
		
		protected var _initFlag:Boolean=false;//是否已经初始化
		
		protected static var _singleton:Boolean = true;
		protected static var _instance:ContectLine;
		//===================================================================================================================//
		public function get initFlag():Boolean
		{
			return _initFlag;
		}
		public function set initFlag(setValue:Boolean):void
		{
			_initFlag = setValue;
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
		public function ContectLine()
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
				_instance=new ContectLine();
				
			}
			return _instance;
		}

		public function init():void
		{
			addChild(_line);
			//_zline=new MyLine();
			
			
			_zline._bs = qinzhi;
			_zline.creaShap();
			//_fline=new MyLine();
			
			//复制
			var mcClass:Class=qinzhi.constructor;
			var temp:MovieClip;
			//var mcClass:Class=getDefinitionClass(getQualifiedClass(qinzhi)) as Class;
			temp=new mcClass();
			
			_fline._bs = temp ;
			_fline.creaShap();

			_zstarPoint = new Point(24,36);
			_fstarPoint = new Point(39,57);
			_fline.x = _fstarPoint.x-20;
			_fline.y = _fstarPoint.y + _fline.height - 10;
			_zline.x = _zstarPoint.x-30;
			_zline.y = _zstarPoint.y + _zline.height - 10;
			
			_zline.buttonMode=true;
			_fline.buttonMode=true;
			
			addChild(_Zline);//加正线
			addChild(_Fline);//加负线
			addChild(_zline);
			addChild(_fline);
			
			_zline.addEventListener(MouseEvent.MOUSE_DOWN,zstartDraghandler);
			_zline.addEventListener(MouseEvent.MOUSE_UP,zstopDragehandler);
			_fline.addEventListener(MouseEvent.MOUSE_DOWN,fstartDraghandler);
			_fline.addEventListener(MouseEvent.MOUSE_UP,fstopDragehandler);
			enterframehandler(null);
			
			_initFlag=true;
		}
		//--------------------------------------------------------------------------------------------------------------------//
		protected function fstartDraghandler(e:Event):void
		{
			_currentFPin.univeralOut();
			resetDocument("f");
			setTop((e.currentTarget) as DisplayObject,1);
			e.currentTarget.startDrag(true);
			this.addEventListener(Event.ENTER_FRAME,enterframehandler);

		}
		protected function fstopDragehandler(e:Event):void
		{
			
			e.currentTarget.stopDrag();

			var temp:Array=new Array();
			temp = findPinXY(this.parent);

			for (var i in temp)
			{
				var tempP:Point = new Point(temp[i].x,temp[i].y);
				//如果笔头碰到
				if ((_fline._headSp).hitTestObject(temp[i]))
				{
					_currentFPin = temp[i];
					_currentFPin.univeralOver();
					_fflaghit = true;
					_fline.hitPin();
					//如果两个头都已连好就触发连好事件
					if(_zflaghit){
						var contectLineOver:ContectLineOverEvent=new ContectLineOverEvent();
						contectLineOver.fPinId=_currentFPin.pinId;
						contectLineOver.zPinId=_currentZPin.pinId;
						dispatchEvent(contectLineOver);
						resetDocument("all");
						}
					break;
				}
				else
				{
					_fflaghit = false;
					_fline.resetDocument();
					_currentFPin.univeralOut();
				}
			}


			if (! _fflaghit)
			{
				resetDocument("f");
			}
		}
		//对象置顶
		protected function setTop(_obj:DisplayObject,index:uint):void
		{
			if (this.getChildIndex(_obj) < this.numChildren - index)
			{
				this.setChildIndex(_obj,this.numChildren-index);
			}
		}
		//万用笔复位
		protected function resetDocument(fzall:String):void
		{
			switch (fzall)
			{
				case "f" :
					_fline.x = _fstarPoint.x-20;
					_fline.y = _fstarPoint.y + _fline.height - 10;
					_fflaghit = false;
					_fline.resetDocument();
					_fline.rotation = 0;
					break;
				case "z" :
					_zline.x = _zstarPoint.x-30;
					_zline.y = _zstarPoint.y + _zline.height - 10;
					_zflaghit = false;
					_zline.resetDocument();
					_zline.rotation = 0;
					break;
				case "all" :
					_fline.x = _fstarPoint.x-20;
					_fline.y = _fstarPoint.y + _fline.height - 10;
					_zline.x = _zstarPoint.x-30;
					_zline.y = _zstarPoint.y + _fline.height - 10;
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
		protected function findPinXY(__part:DisplayObjectContainer):Array
		{
			var temp:Array=new Array();
			for (var p:uint= 0; p<__part.numChildren; p++)
			{
				var _obj:* = __part.getChildAt(p);
				if (_obj is Pin)
				{
					//如果此点影响工具则加入判断数组
					if(_obj.enable)
					temp.push(_obj);
				}
			}
			return temp;
		}
		protected function zstartDraghandler(e:Event):void
		{
			_currentZPin.univeralOut();
			resetDocument("z");
			setTop((e.currentTarget) as DisplayObject,1);
			e.currentTarget.startDrag(true);
			this.addEventListener(Event.ENTER_FRAME,enterframehandler);


		}
		protected function zstopDragehandler(e:Event):void
		{
			
			e.currentTarget.stopDrag();

			var temp:Array=new Array();
			temp = findPinXY(this.parent);
			for (var i in temp)
			{
				var tempP:Point = new Point(temp[i].x,temp[i].y);
				//如果笔头碰到
				if ((_zline._headSp).hitTestObject(temp[i]))
				{
					_currentZPin = temp[i];
					_currentZPin.univeralOver();
					_zflaghit = true;
					_zline.hitPin();
					//如果两个头都已连好就触发连好事件
					if(_fflaghit){
						var contectLineOver:ContectLineOverEvent=new ContectLineOverEvent();
						contectLineOver.fPinId=_currentFPin.pinId;
						contectLineOver.zPinId=_currentZPin.pinId;
						dispatchEvent(contectLineOver);
						resetDocument("all");
						}
					break;
				}
				else
				{
					_zflaghit = false;
					_zline.resetDocument();
					_currentZPin.univeralOut();
				}
			}
			if (! _zflaghit)
			{
				resetDocument("z");
			}
			
			
		}
		protected function enterframehandler(e:Event):void
		{
			creafline(_fstarPoint,_fline._TailPoint);
			creazline(_zstarPoint,_zline._TailPoint);
			
		}
		//画正线
		protected function creazline(star:Point,end:Point):void
		{
			cleaall(_Zline);
			var _zfline:Shape=new Shape();
			_zfline.graphics.lineStyle(4,0x000000,1);
			_zfline.graphics.moveTo(star.x,star.y);
			var tempx:Number=(star.x+end.x+_zfline.x)/2;
			var tempy:Number=(star.y+end.y+_zfline.y)/2;

			_zfline.graphics.curveTo(_zline.x,tempy,end.x+_zline.x,end.y+_zline.y);
			_Zline.addChild(_zfline);
			//setTop(_Zline,2);
			addFilte(_Zline);
		}
		//画负线
		protected function creafline(star:Point,end:Point):void
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
		protected function cleaall(subdiqu:Object):void
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
		protected function addFilte(_obj:DisplayObject):void
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