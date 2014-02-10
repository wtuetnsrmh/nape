package bbjxl.com.content.four{
	/**
	作者：被逼叫小乱
	
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import bbjxl.com.content.three.RMPX_Fault_Select;
	import lt.uza.ui.Scale9BitmapSprite;
	import lt.uza.ui.Scale9SimpleStateButton;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.DisplayObjectContainer;
	import flash.geom.Rectangle;
	import flash.utils.getDefinitionByName;
	import flash.events.Event;
	import bbjxl.com.content.three.FaultOptionClickEvent;
	import bbjxl.com.Gvar;
	import bbjxl.com.content.three.PartClickEvent;
	import bbjxl.com.content.second.Pin;
	import flash.geom.Point;
	import flash.filters.BitmapFilterQuality;

	import flash.filters.GlowFilter;
	public class Four_Part extends MovieClip {
		public var _fault:Boolean=false //是否故障
		private var _bgMC:MovieClip = new MovieClip();
		private var _dkMc:MovieClip = new MovieClip();
		
		public var _listener:Boolean = false;
		public var _cheName:String = "";//中文名称
		
		//当前的故障部位
		public var _currentFaultId:uint = 0;//0：正常
		
		public var _myScore:uint = 0;//此题分数
		
		public var _pointIdAndXYArr:Array = new Array();//该部件具有的点及相应坐标的数组
		//===================================================================================================================//
		
		//===================================================================================================================//
		public function Four_Part() {
			init();
		}//End Fun
		
		protected function init():void {
			_dkMc = this.getChildByName("dk") as MovieClip;
			if(_dkMc)
			_dkMc.visible = false;//初始为隐藏断开状态
			this.buttonMode = true;

			AddEventListener();

			}
		//隐藏断开
		public function hideDK():void {
			_dkMc.visible = false;
			}
		//显示断开
		public function showDK():void {
			_dkMc.visible = true;
			}
			
		//增加侦听
		private function AddEventListener():void {
			_bgMC = this.getChildByName("bgMc") as MovieClip;
			_bgMC.addEventListener(MouseEvent.CLICK, bgmcClick);
			
			_bgMC.addEventListener(MouseEvent.MOUSE_OVER, mouseOver);
			_bgMC.addEventListener(MouseEvent.MOUSE_OUT, mouseOut);
			_bgMC.addEventListener(MouseEvent.ROLL_OVER, mouseOver);
			_bgMC.addEventListener(MouseEvent.ROLL_OUT, mouseOut);
			}
		//部件点击
		private function bgmcClick(e:MouseEvent):void {
			if (_listener) {
				
				dispatchEvent(new Event("Four_part_click"));
			}
			}
		
		//注销
		public function dispose():void {
			 _bgMC.removeEventListener(MouseEvent.CLICK, bgmcClick);
			_bgMC.removeEventListener(MouseEvent.MOUSE_OVER, mouseOver);
			_bgMC.removeEventListener(MouseEvent.MOUSE_OUT, mouseOut);
			_bgMC.removeEventListener(MouseEvent.ROLL_OVER, mouseOver);
			_bgMC.removeEventListener(MouseEvent.ROLL_OUT, mouseOut);
			}
		//鼠标移上增加效果
		public function mouseOver(e:MouseEvent):void
		{
			//创建滤镜实例
			var color:Number = 0xff0000;
			var alpha:Number = 0.8;
			var blurX:Number = 5;
			var blurY:Number = 5;
			var strength:Number = 5;
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
			if(_listener)
			this.filters = filtersArray;
		}
		//鼠标移出
		public function mouseOut(e:MouseEvent):void
		{
			if(_listener)
			this.filters = null;
		}
		//--------------------------------------------------------------------------------------------------------------------//
		
		//===================================================================================================================//
	}
}