package bbjxl.com.content.first
{
	/**
	作者：被逼叫小乱
	下半部分
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.net.navigateToURL;
	import flash.net.URLRequest;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	import flash.utils.getDefinitionByName;
	import bbjxl.com.loading.Imageload;
	import flash.display.SimpleButton;
	
	public class RMPXAlertB extends Sprite
	{
		
		private var _effect:RMPXAlertEffect;//作用
		private var _locale:RMPXAlertLocale;//位置
		private var alertBgW:uint=500;//弹出框背景宽度
		private var alertBgH:uint=600;//弹出框背景高度
		
		private var _moreBt:SimpleButton;//显示详情
		
		private var _moreUrl:String;
		//===================================================================================================================//

		//===================================================================================================================//
		public function RMPXAlertB(effect:String,localImageUrl:String,moreUrl:String)
		{
			_moreUrl = moreUrl;
			//作用
			_effect=new RMPXAlertEffect(effect);
			addChild(_effect);
			_effect.addEventListener(RMPXClickEvent.RMPXBOTTONCLICKEVENT,rmpxBottonClick);
			//位置
			_locale=new RMPXAlertLocale(localImageUrl);
			addChild(_locale);
			_locale.addEventListener(RMPXClickEvent.RMPXBOTTONCLICKEVENT,rmpxBottonClick);
			
			//显示详情按钮
			var tempMoreBt:Class=getDefinitionByName("mortBt") as Class;
			_moreBt=new tempMoreBt();
			_moreBt.x=alertBgW-_moreBt.width-10-10;
			_moreBt.y=alertBgH-267-_moreBt.height-5;
			addChild(_moreBt);
			_moreBt.addEventListener(MouseEvent.CLICK,mortBtClickHandler);
			
			
			//初始状态
			_effect._gotoAndStop(1);
			_locale._gotoAndStop(2);
		}//End Fun
		
		//显示详情点击
		private function mortBtClickHandler(e:MouseEvent):void{
			navigateToURL(new URLRequest(_moreUrl), "_blank");
			}
		
		private function rmpxBottonClick(e:RMPXClickEvent):void{
			switch(e.clickBottonPartId){
				case 1:
				//点的是作用按钮
				_effect._gotoAndStop(1);
				_locale._gotoAndStop(2);
				break;
				case 2:
				//点的是位置按钮
				_locale._gotoAndStop(1);
				_effect._gotoAndStop(2);
				break;
				}
			}
		
		//--------------------------------------------------------------------------------------------------------------------//

		//===================================================================================================================//
	}
}