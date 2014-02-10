package bbjxl.com.content.first
{
	/**
	作者：被逼叫小乱
	下半部分的作用
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.utils.getDefinitionByName;
	import fl.controls.UIScrollBar;
	import fl.controls.ScrollPolicy;
	import flash.text.TextFormat;
	import fl.controls.SliderDirection;//滑动条的方向
	import fl.controls.TextArea;

	import bbjxl.com.loading.Imageload;

	public class RMPXAlertEffect extends Sprite
	{
		private var _effectText:TextField=new TextField();//作用文字

		private var _bt:MovieClip;//按钮

		private var outSB:UIScrollBar=new UIScrollBar();

		private var contentSprite:Sprite=new Sprite();//内容容器;
		private var alertBgW:uint = 500;//弹出框背景宽度
		private var alertBgH:uint = 600;//弹出框背景高度

		private var newTextArea:TextArea=new TextArea();



		//===================================================================================================================//

		//===================================================================================================================//
		public function RMPXAlertEffect(effect:String)
		{
			//contentSprite.addChild(newTextArea);
			addChild(contentSprite);
			var temp:Class = getDefinitionByName("effectBt") as Class;
			_bt=new temp();
			_bt.buttonMode = true;
			addChild(_bt);
			_bt.addEventListener(MouseEvent.CLICK,clickHandler);

			creaText(effect,alertBgW-60,alertBgH/2.5);
			//creaT(effect);
		}//End Fun

		private function creaT(_text:String):void
		{
			with (newTextArea)
			{
				width = 400;
				height = 150;
				x = 5;
				y = _bt.y + _bt.height;
				condenseWhite = true;//是否从包含HTML文本的TextArea组件中删除额外空白。空格和换行符都属于额外空白。true值指示删除多余的空白
				editable = false;//是否允许用户编辑，true允许
				//horizontalScrollBar = ScrollPolicy.AUTO;//水平滚动条
				//verticalScrollBar = ScrollPolicy.AUTO;//垂直滚动条
				maxChars = 0;//显示最大字符数是多少，0是不限制，在这里一个汉字也只算一个字符
				//restrict=&quot;123abc&quot;;//如果允许用户编辑，则restrict是限制用户只能输入哪些字符
				htmlText = _text;
				//以HTML代码显示
				wordWrap = true;//是否自动换行，true允许自动换行
			}
			//newTextArea.horizontalScrollBar=ScrollPolicy.AUTO;
			//newTextArea.verticalScrollBar=
			var style:TextFormat=new TextFormat();//字符样式
			style.color = 0x3333CC;
			style.font = "宋体";
			style.size = 18;
			newTextArea.setStyle("textFormat",style);

		}
		//按钮点击
		private function clickHandler(e:MouseEvent):void
		{
			var tempE:RMPXClickEvent = new RMPXClickEvent("rmpxbottonclickevent");
			tempE.clickBottonPartId = 1;
			dispatchEvent(tempE);
		}

		public function _gotoAndStop(fram:uint):void
		{
			switch (fram)
			{
				case 1 :
					_bt.gotoAndStop(1);
					if (! contains(contentSprite))
					{
						addChild(contentSprite);
					}
					break;
				case 2 :
					_bt.gotoAndStop(2);
					if (contains(contentSprite))
					{
						removeChild(contentSprite);
					}
					break;
			}
		}

		private function creaText(s:String,_width:uint,_height:uint):void
		{
			//_effectText.autoSize = TextFieldAutoSize.CENTER;
			var format:TextFormat = new TextFormat();
			format.color = 0x000000;
			format.size = 15;
			format.leftMargin=5;
			
			format.leading =5;
			//format.bold=true;
			//format.align="center";
			_effectText.mouseEnabled = false;
			_effectText.selectable = false;
			//name_txt.background=true;
			_effectText.width = _width;
			_effectText.height = _height;
			_effectText.defaultTextFormat = format;
			_effectText.wordWrap=true;
			
			_effectText.htmlText = s;
			_effectText.x = 5;
			_effectText.y = _bt.y + _bt.height;

			contentSprite.addChild(_effectText);

			outSB.enabled = true;
			outSB.visible = true;
			outSB.scrollPosition = 5;
			//outSB.width=100;
			outSB.x = _effectText.width;
			outSB.y = _effectText.y;

			outSB.height = alertBgH/2.5;
			outSB.scrollTarget = _effectText;
			outSB.direction = SliderDirection.VERTICAL;
			outSB.update();
			if (outSB.maxScrollPosition > 1) {
				outSB.visible = true;
				}else {
					outSB.visible = false;
					}
			//outSB.scrollPosition=outSB.maxScrollPosition;

			contentSprite.addChild(outSB);
		}
		//--------------------------------------------------------------------------------------------------------------------//;

		//===================================================================================================================//
	}
}