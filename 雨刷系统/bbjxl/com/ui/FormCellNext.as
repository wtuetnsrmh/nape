package bbjxl.com.ui
{
	/**
	作者：被逼叫小乱
	表格中的单元格-带下拉条
	www.bbjxl.com/Blog
	**/
	import com.adobe.utils.ArrayUtil;
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
	import fl.controls.ComboBox;
	import fl.data.DataProvider;
	import flash.events.Event;
	import flash.text.TextFormat;
	import bbjxl.com.event.FormCellNextEvent;
	import bbjxl.com.Gvar;
	

	public class FormCellNext extends Sprite
	{
		protected var _gvar:Gvar=Gvar.getInstance();
		protected var _exam:Boolean=false;
		private var _text:TextField=new TextField();
		private var _eventId:uint=0;
		private var _thiswidth:uint;
		private var _thisheight:uint;
		private var aCb:ComboBox = new ComboBox();
		private var comboData:Object = new Object();
		//===================================================================================================================//
		public function get eventId():uint
		{
			return _eventId;
		}
		public function set eventId(_value:uint):void
		{
			_eventId = _value;
		}
		
		//eventFlag是否影响点击事件
		public function FormCellNext(_value:Object,_width:uint,_height:uint,_bgColor:uint,_textColor:uint,_size:uint=15,_blod:Boolean=false,eventFlag:Boolean=false,_id:uint=0,_aglin:String="center")
		{
			_exam=_gvar.T_EXAM_RM;
			_eventId=_id;
			_thiswidth=_width;
			_thisheight=_height;
			creaBg(_bgColor);
			//creaText(_value,_textColor,_size,_blod,_aglin);
			comboData = _value;
			creaNext(_value);
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
		
		//建立下拉条
		private function creaNext(_value:Object):void{
			
			aCb.dropdownWidth = _thiswidth;
			aCb.width = _thiswidth;
			aCb.height=_thisheight;
			var myFormat:TextFormat = new TextFormat();
			myFormat.font = "宋体";
			myFormat.size=15;
			aCb.textField.setStyle("textFormat",myFormat);
			aCb.dropdown.setRendererStyle("textFormat", myFormat);

			aCb.prompt = _value.init;
			aCb.dataProvider = new DataProvider(_value.arr);
			aCb.addEventListener(Event.CHANGE, changeHandler);
			addChild(aCb);
			//trace("dataObj.symptoms="+_value.init)
			//初始化选项
			if(_gvar.T_EXAM_OVER)
			{
				//如果是在考试结束就不能选择
				aCb.enabled=false;
				}
				
				if (_value.init != "/") {
					aCb.selectedIndex = (_value.arr).indexOf(String(_value.init));
					}else {
						aCb.selectedIndex =0;
						//aCb.enabled=false;
						}
				/*if(_value.init==1){
					//正常
					aCb.selectedIndex = 0;
					}else if(_value.init==0){
						aCb.selectedIndex = 1;
						}else if(_value.init=="/"){
							aCb.selectedIndex = -1;
							aCb.enabled=false;
							}else{
								aCb.selectedIndex = -1;
								}*/
			

			}
		
		//下拉条选项改变
		private function changeHandler(event:Event):void {
			
			//trace(ComboBox(event.target).selectedItem.data);
			var thisChangEvent:FormCellNextEvent=new FormCellNextEvent();
			thisChangEvent.thisSelect = String(aCb.selectedLabel);
			thisChangEvent.thisSelectId = (comboData.id)[aCb.selectedIndex];
			
			dispatchEvent(thisChangEvent);
			
			//aCb.selectedIndex = -1;
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
			
            _text.defaultTextFormat = format;
			_text.htmlText=_value;
			_text.y=(_thisheight-_text.textHeight)/2-2;
			_text.height=_text.textHeight+4;
			addChild(_text);
			}
		
		//改变文字
		public function changeSelecte(_value:uint):void{
			aCb.selectedIndex = _value;
			}
		
		//建立背景框
		private function creaBg(_bgColor:uint):void{
			var formBg:Shape=new Shape();
			formBg.graphics.lineStyle(1,0x666666);
			formBg.graphics.beginFill(_bgColor);
			formBg.graphics.drawRect(0,0,_thiswidth,_thisheight);
			addChild(formBg);
		}


	}
}