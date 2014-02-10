package bbjxl.com.ui
{
	/**
	作者：被逼叫小乱
	表格中的单元格
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.display.Shape;
	import flash.geom.Point;
	import flash.text.TextField;
	import flash.utils.getDefinitionByName;
	import flash.text.TextFieldAutoSize;
	import flash.display.SimpleButton;
	import flash.text.TextFormat;
	import flash.events.TimerEvent;   
    import flash.utils.Timer;   

	
	

	public class FormCell extends Sprite
	{
		private var _text:TextField=new TextField();
		private var _eventId:uint=0;
		private var _thiswidth:uint;
		private var _thisheight:uint;
		private var formBg:Shape=new Shape();//背景
		private var _timer:Timer=new Timer(100,0);
		public var _drag:Boolean = false;//是否允许被拖入
		
		public var _parentId:uint;
		public var _Id:uint;
		public var _VO:String;
		
		//===================================================================================================================//
		public function get eventId():uint
		{
			return _eventId;
		}
		public function set eventId(_value:uint):void
		{
			_eventId = _value;
		}
		
		//让背景闪动
		public function StartflashBg():void {
			
			_timer.addEventListener(TimerEvent.TIMER, startFlash);
			function startFlash(e:TimerEvent) {
				//trace("_text.text="+_text.text)
				if(_text.text=="" || _text.text=="___"){
				if(_text.text=="___")
				_text.text="";
				else {
					_text.text="___";
					}
				
				}else _timer.stop();
			}
			_timer.start();
			}
		//停止闪动
		public function StopflashBg():void {
			trace("stopflash")
			_timer.stop();
			formBg.visible=true;
			}
		
		
		//eventFlag是否影响点击事件
		public function FormCell(_value:String,_width:uint,_height:uint,_bgColor:uint,_textColor:uint,_size:uint=15,_blod:Boolean=false,eventFlag:Boolean=false,_id:uint=0,_aglin:String="center")
		{
			_eventId=_id;
			_thiswidth=_width;
			_thisheight=_height;
			creaBg(_bgColor);
			creaText(_value,_textColor,_size,_blod,_aglin);
			if(eventFlag){
				this.buttonMode=true;
				this.addEventListener(MouseEvent.CLICK,cellClickEvent);
				}
		}// end function
		
		//点击事件
		private function cellClickEvent(e:MouseEvent):void{
			
			var clickevent:FormCellClickEvent=new FormCellClickEvent();
			clickevent.clickPartId=_eventId;
			dispatchEvent(clickevent);
			}
		
		//建立文字
		private function creaText(_value:String,_textColor:uint,_size:uint,_blod:Boolean,_aglin:String):void{
			/*switch(_aglin){
				case "center":
				_text.autoSize = TextFieldAutoSize.CENTER;
				break;
				case "left":
				_text.autoSize = TextFieldAutoSize.LEFT;
				break;
				case "right":
				_text.autoSize = TextFieldAutoSize.RIGHT;
				break;
				default:
				_text.autoSize = TextFieldAutoSize.NONE;
				}*/
			
			var format:TextFormat = new TextFormat();
            format.color = _textColor;
            format.size = _size;
			format.bold=_blod;
			format.align=_aglin;
			_text.mouseEnabled=false;
			_text.selectable=false;
			_text.width=_thiswidth;
			_text.height = _size * 1.1;
			_text.multiline = true;
			
            _text.defaultTextFormat = format;
			_text.text=_value;
			_text.y=(_thisheight-_text.textHeight)/2-2;
			_text.height=_text.textHeight+4;
			addChild(_text);
			}
		
		//改变文字
		public function changeText(_value:String):void{
			_text.text=_value;
			}
		
		//让单元格改变背景
		public function changeBg(_bgColor:uint):void {
			formBg.graphics.clear();
			formBg.graphics.lineStyle(1,0x666666);
			formBg.graphics.beginFill(_bgColor);
			formBg.graphics.drawRect(0,0,_thiswidth,_thisheight);
			}
		
		//建立背景框
		private function creaBg(_bgColor:uint):void{
			formBg.graphics.lineStyle(1,0x666666);
			formBg.graphics.beginFill(_bgColor);
			formBg.graphics.drawRect(0,0,_thiswidth,_thisheight);
			addChild(formBg);
		}


	}
}