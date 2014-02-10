package bbjxl.com.ui
{
	//文字类
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.utils.getDefinitionByName;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;

	public class CreaText extends Sprite
	{
		private var _text:TextField=new TextField();//标题
		public var _textContent:String="";
		
		//更改文字内容
		public function updataText(_value:String):void{
			_text.htmlText=_value;
			_textContent=_value;
			}
		
		public function CreaText(_value:String,_textColor:uint,_size:uint=15,_blod:Boolean=false,_aglin:String="center",bg:Boolean=false)
		{
			_textContent=_value;
			switch(_aglin){
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
				}
			var format:TextFormat = new TextFormat();
            format.color = _textColor;
            format.size = _size;
			format.bold=_blod;
			_text.background=bg;
			//format.align=_aglin;
			_text.mouseEnabled=false;
			_text.selectable=false;
			//_text.height=_size*1.1;
			//_text.width=_thiswidth;
			
            _text.defaultTextFormat = format;
			_text.htmlText=_value;
			//_text.y=(_thisheight-_text.textHeight)/2-2;
			//_text.height=_text.textHeight+4;
			addChild(_text);
		}// end function

		

	}
}
