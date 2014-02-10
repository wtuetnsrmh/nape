package bbjxl.com.content.first{
	/**
	作者：被逼叫小乱
	选项
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.utils.getDefinitionByName;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	import bbjxl.com.Gvar;

	public class MNKS_Top_SelectOption extends Sprite {
		private var _trueAnswer:Boolean=false;//是否是正确答案
		private var _pointMc:MovieClip;//选项前面的点
		private var _tiText:TextField=new TextField();//标题
		private var _selectFlag:Boolean=false;//是否被选中
		//private var _tiWidth:uint=400;//题目文字宽度
		private var _tiContent:String;//题目内容
		private var _subjectoption:String;//试题选项名称
		private var _currentNum:uint;//A,B,C,D...
		
		private var _thisHeigth:uint;//当前选项的高度
		//===================================================================================================================//
		public function get thisHeigth():uint{
			return _thisHeigth;
			}
		public function set thisHeigth(_value:uint):void{
			_thisHeigth=_value;
			}
			
		public function get trueAnswer():Boolean{
			return _trueAnswer;
			}
		public function set trueAnswer(_value:Boolean):void{
			_trueAnswer=_value;
			}
		public function get selectFlag():Boolean{
			return _selectFlag;
			}
		public function set selectFlag(_value:Boolean):void{
			_selectFlag=_value;
			}
		public function get tiContent():String{
			return _tiContent;
			}
		public function set tiContent(_value:String):void{
			_tiContent=_value;
			}
		public function get subjectoption():String{
			return _subjectoption;
			}
		public function set subjectoption(_value:String):void{
			_subjectoption=_value;
			}
		public function get currentNum():uint{
			return _currentNum;
			}
		public function set currentNum(_value:uint):void{
			_currentNum=_value;
			}
		//===================================================================================================================//
		public function MNKS_Top_SelectOption(_value:Object,currentNum:uint) {
			_currentNum=currentNum;
			_tiContent=_value.subjectoptionvalue;
			_subjectoption=_value.subjectoption;
			init();
			creaText();
		}//End Fun
		//--------------------------------------------------------------------------------------------------------------------//
		//选中该题
		public function selecteMe():void{
			_pointMc.gotoAndStop(2);
			_selectFlag=true;
			}
		//未选中该题
		public function noSelecteMe():void{
			_pointMc.gotoAndStop(1);
			_selectFlag=false;
			}
		
		//建立前面的圆点
		private function init():void{
			var temp:Class=getDefinitionByName("selectPoint") as Class;
			_pointMc=new temp();
			addChild(_pointMc);
			}
		//建立题目
		private function creaText():void{
			_tiText.autoSize = TextFieldAutoSize.LEFT;
			var format:TextFormat = new TextFormat();
            format.color = 0x000000;
            format.size = 13;
			format.leading=5;
			//format.bold=true;
			format.align="left";
			_tiText.wordWrap=true;
			_tiText.multiline=true;
			_tiText.mouseEnabled=false;
			_tiText.selectable=false;
			//name_txt.background=true;
			_tiText.width=Gvar.getInstance().FIRST_MNKS_OPTIONS_WIDTH;
			trace("_tiText="+_tiText);
            _tiText.defaultTextFormat = format;
			_tiText.x=_pointMc.width+5;
			_tiText.y=-3;
			var _currentOptionNum:String;//当前是哪个选项
			switch(_currentNum){
				case 0:
				_currentOptionNum="A:";
				break;
				case 1:
				_currentOptionNum="B:";
				break;
				case 2:
				_currentOptionNum="C:";
				break;
				case 3:
				_currentOptionNum="D:";
				break;
				case 4:
				_currentOptionNum="E:";
				break;
				case 5:
				_currentOptionNum="F:";
				break;
				case 6:
				_currentOptionNum="G:";
				break;
				case 7:
				_currentOptionNum="H:";
				break;
				case 8:
				_currentOptionNum="I:";
				break;
				}
			_tiText.htmlText=_currentOptionNum+_tiContent;
			//trace("_tiText.textHeight="+_tiText.textHeight)
			_thisHeigth=_tiText.textHeight;
			addChild(_tiText);
			}
		//===================================================================================================================//
	}
}