package bbjxl.com.content.three{
	/**
	作者：被逼叫小乱
	扣分表
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.filters.BitmapFilterQuality;
	import flash.display.DisplayObject;
	import bbjxl.com.Gvar;

	import flash.filters.GlowFilter;
	import bbjxl.com.ui.CommonlyClass;
	import bbjxl.com.event.FormCellNextEvent;
	import flash.geom.Rectangle;

	public class Jeomer_Form extends Sprite {
		protected var formHead:JemoeFormHead=new JemoeFormHead();//表头
		protected var formHeadSp:Sprite=new Sprite();//表头容器
		protected var formBodySp:Sprite=new Sprite();//表的内容容器
		public var formBody:JemoerFormBody;//表身
		protected var _allArr:Array = new Array();
		
		//===================================================================================================================//
		public function set allArr(_id:Array):void {
			_allArr=_id;
		}
		public function get allArr():Array {
			return _allArr;
		}
		//===================================================================================================================//
		public function Jeomer_Form(_arr:Array):void{
			this.buttonMode=true;
			addChild(formHeadSp);
			addChild(formBodySp);
			_allArr=_arr;
			
			creaFormHead();
			creaFormbody();
			
			addFilte(this);
			
		}//End Fun
		
		//表身
		protected function creaFormbody():void{
			formBody=new JemoerFormBody(_allArr);
			formBodySp.addChild(formBody);
			formBodySp.y=formHead.y+formHead.height;
			}
		
		
		//表头
		protected function creaFormHead():void{
			formHeadSp.addChild(formHead);
			}
		
		
		//增加滤镜效果
		protected function addFilte(_obj:DisplayObject):void
		{
			//创建滤镜实例
			var color:Number = 0x333333;
			var alpha:Number = 0.5;
			var blurX:Number = 5;
			var blurY:Number = 5;
			var strength:Number = 6;
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
		//--------------------------------------------------------------------------------------------------------------------//
		
		//===================================================================================================================//
	}
}