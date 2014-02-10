package bbjxl.com.content.second
{
	/**
	作者：被逼叫小乱
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.filters.BitmapFilterQuality;

	import flash.filters.GlowFilter;
	public class Pin extends Sprite
	{
		private var _Anode:uint = 0;//正极0：不是正极，1：是正极
		private var _Negative:uint = 0;//负极0：不是负极，1：是负极
		private var _pinPosition:String = "";//up:针脚位于部件的上面；down:下面，left:左边，right:右边
		//private var _Ppin:String="";//针脚前面
		private var _currentPart:String = "";//当前部件
		private var _A:Number = 0;//电流
		private var _V:Number = 0;//电压
		private var _Resistance:Number = 0;//电阻
		private var _pinId:uint = 0;//点的ID
		private var _enable:Boolean = true;//此点是否响应工具
		
		private var _pinName:String;//点的名称
		
		public function get pinName():String
		{
			return _pinName;
		}
		public function set pinName(setValue:String):void
		{
			_pinName = setValue;
		}
		
		public function get enable():Boolean
		{
			return _enable;
		}
		public function set enable(setValue:Boolean):void
		{
			_enable = setValue;
		}
		
		public function get pinId():uint
		{
			return _pinId;
		}
		public function set pinId(setValue:uint):void
		{
			_pinId = setValue;
		}
		
		public function get Resistance():Number
		{
			return _Resistance;
		}
		public function set Resistance(setValue:Number):void
		{
			_Resistance = setValue;
		}
		public function get V():Number
		{
			return _V;
		}
		public function set V(setValue:Number):void
		{
			_V = setValue;
		}
		public function get A():Number
		{
			return _A;
		}
		public function set A(setValue:Number):void
		{
			_A = setValue;
		}
		public function get currentPart():String
		{
			return _currentPart;
		}
		public function set currentPart(setValue:String):void
		{
			_currentPart = setValue;
		}
		public function get pinPosition():String
		{
			return _pinPosition;
		}
		public function set pinPosition(setValue:String):void
		{
			_pinPosition = setValue;
		}
		public function get Anode():uint
		{
			return _Anode;
		}
		public function set Anode(setValue:uint):void
		{
			_Anode = setValue;
		}
		public function get Negative():uint
		{
			return _Negative;
		}
		public function set Negative(setValue:uint):void
		{
			_Negative = setValue;
		}
		public function Pin()
		{
			this.graphics.lineStyle(1,0x00ffff,0);
			this.graphics.beginFill(0xff0000,1);
			this.graphics.drawCircle(5,5,5);
			this.graphics.endFill();
			
			
		}//End Fun
		//万用表放上后
		public function univeralOver():void
		{
			//创建滤镜实例
			var color:Number = 0x00ff00;
			var alpha:Number = 0.8;
			var blurX:Number = 3;
			var blurY:Number = 3;
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
			this.filters = filtersArray;
		}
		//没放上
		public function univeralOut():void
		{
			this.filters = null;
		}
	}
}