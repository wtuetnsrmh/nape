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
	
	import flash.filters.GlowFilter;
	public class MyButton extends MovieClip {
		private var bt_txt:TextField=new TextField();
		private var _upSprite:Sprite;
		private var _overSprite:Sprite;
		
		private var simpeButton:SimpleButton=new SimpleButton();
		
		public function MyButton() {
			
		}//End Fun
		
		public function init(upState:String,overState:String):void{
			var tempUp:Class=getDefinitionByName(upState) as Class;
			_upSprite=new tempUp;
			var tempOver:Class=getDefinitionByName(overState) as Class;
			_overSprite=new tempOver;
			
			simpeButton.upState=_upSprite;
			simpeButton.overState=_overSprite;
			simpeButton.downState=impeButton.overState;
			simpeButton.hitTestState=simpeButton.downState;
			
			addChild(simpeButton);
			}
		
		public function addText(_txt:String,gap:uint=10,_align:String="CENTER",_border:Boolean=false,_background:Boolean=false,_color:Object=0x000000,_size:uint=25,_underline:Boolean=false):void{
			//gap是指文字前后离底的间隔
			var format:TextFormat = new TextFormat();
            format.font = "宋体";
            format.color = _color;
            format.size = _size;
            format.underline = _underline;

            bt_txt.defaultTextFormat = format;
			switch(_align){
				case "LEFT":
				bt_txt.autoSize = TextFieldAutoSize.LEFT;
				break;
				case "CENTER":
				bt_txt.autoSize = TextFieldAutoSize.CENTER;
				break;
				case "RIGHT":
				bt_txt.autoSize = TextFieldAutoSize.RIGHT;
				break;
				}
            bt_txt.background = _background;
            bt_txt.border = _border;
			bt_txt.text=_txt;
			bt_txt.selectable=false;
			bt_txt.mouseEnabled=false;
			this.buttonMode=true;
			
			addChild(bt_txt);
			  //创建滤镜实例
 		     var color:Number = 0x1263ae;
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
			var filtersArray:Array=new Array(glowFilter);
			//将滤镜数组分配给显示对象以便应用滤镜
			this.filters=filtersArray;
			}
		
		
		
	}
}