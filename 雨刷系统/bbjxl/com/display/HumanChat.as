package bbjxl.com.display
{
	/**
	作者：被逼叫小乱
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	import flash.display.SimpleButton;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.DisplayObjectContainer;
	import flash.utils.getDefinitionByName;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.filters.BlurFilter;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	import flash.display.Shape;

	public class HumanChat extends Sprite
	{
		

		private var chatContentText:TextField=new TextField();//聊天内容
		private var chatBg:Sprite;//聊天背景


		public function HumanChat()
		{
			init();

		}
		

		public function showChat(chatContent:String):void{
			chatContentText.autoSize = TextFieldAutoSize.CENTER;
			chatContentText.wordWrap = true; 
            var format:TextFormat = new TextFormat();
            format.color = 0x000000;
            format.size = 25;
			format.align="center";
			chatContentText.width=150;
			chatContentText.mouseEnabled=false;
			chatContentText.selectable=false;
			//chatContentText.background=true;
			//chatContentText.backgroundColor=0xffffff;
            chatContentText.defaultTextFormat = format;
			chatContentText.text="";
			chatContentText.text=chatContent;
			chatContentText.x=chatContentText.y=5;
			}
		

		public function init():void
		{
			
				var temp:Class=getDefinitionByName("HeadChatBg")  as  Class;
				chatBg=new temp();
				chatBg.width=160;
				chatBg.height=chatContentText.height+20;
				addChild(chatBg);
				
				addChild(chatContentText);
		}
		
		public function clearContainer(sp:Sprite):void{
    	  for(var i:int=sp.numChildren-1;i>=0;i--){
            sp.removeChildAt(0);
     	  }
		}

		public function updataBg():void{
			chatBg.width=160;
			chatBg.height=chatContentText.height+20;
			}
		
		

		
	}
}