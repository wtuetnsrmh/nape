package bbjxl.com.content.first
{
	/**
	作者：被逼叫小乱
	下半部分-位置图片
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.utils.getDefinitionByName;
	import flash.text.TextFormat;
	import bbjxl.com.loading.Imageload;
	
	public class RMPXAlertLocale extends Sprite
	{
		
		private var _bt:MovieClip;//按钮
		private var contentSprite:Sprite=new Sprite();//内容容器;
		private var localeImage:Imageload;
		private var alertBgW:uint=500;//弹出框背景宽度
		private var alertBgH:uint=600;//弹出框背景高度
		
		//===================================================================================================================//

		//===================================================================================================================//
		public function RMPXAlertLocale(localImageUrl:String)
		{
			addChild(contentSprite);
			var temp:Class=getDefinitionByName("localeBt") as Class;
			_bt=new temp();
			_bt.buttonMode=true;
			_bt.x=_bt.width+10;
			addChild(_bt);
			_bt.addEventListener(MouseEvent.CLICK,clickHandler);
			
			localeImage = new Imageload(0,0,localImageUrl,alertBgW/1.5,297,true);
			localeImage.x=(alertBgW-alertBgW/1.5)/2;
			localeImage.y=_bt.height+5;
			
			localeImage.addEventListener("loadimageover",loadImageOverHandler);
			function loadImageOverHandler(e:Event)
			{
				//dispatchEvent(new Event("loadimagesdover"));//广播
				contentSprite.addChild(localeImage);

			}
			
			
		}//End Fun
		
		//按钮点击
		private function clickHandler(e:MouseEvent):void{
			var tempE:RMPXClickEvent=new RMPXClickEvent("rmpxbottonclickevent");
			tempE.clickBottonPartId=2;
			dispatchEvent(tempE);
			}
		
		public function _gotoAndStop(fram:uint):void{
			switch(fram){
				case 1:
				_bt.gotoAndStop(1);
				if(!contains(contentSprite))
				addChild(contentSprite);
				break;
				case 2:
				_bt.gotoAndStop(2);
				if(contains(contentSprite))
				removeChild(contentSprite);
				break;
				}
			}
		
		//--------------------------------------------------------------------------------------------------------------------//

		//===================================================================================================================//
	}
}