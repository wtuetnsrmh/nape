package bbjxl.com.content.first{
	/**
	作者：被逼叫小乱
	进入该题
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	import flash.geom.Rectangle;
	import flash.utils.getDefinitionByName;
	import flash.events.Event;
	import flash.display.Stage;
	import flash.ui.ContextMenu;
	import com.adobe.utils.ArrayUtil;
	import lt.uza.ui.Scale9BitmapSprite;
	import lt.uza.ui.Scale9SimpleStateButton;
	import bbjxl.com.Gvar;
	import bbjxl.com.loading.xmlReader;
	import bbjxl.com.ui.MyContextMenu;
	import bbjxl.com.ui.FormCellClickEvent;
	import flash.display.SimpleButton;
	import com.greensock.*;
	import com.greensock.easing.*;

	public class MNKS_EnterTi extends Sprite {
		
		private var _tryObject:Object=new Object();//试题数据
		public var _alertBg:BitmapData;
		//public var _alertBg:Bitmap;

		private var _alertBgScale9:Scale9BitmapSprite;//背景
		private var scale9_example:Rectangle;//九宫格区域
		private var _closeBt:SimpleButton;//关闭按钮
		
		private var _imageItem:MNKS_Top_ImageItem;
		
		//private var _tiId:uint;//题目ID
		
		private var _rightId:uint//正确答案
		
		private var _Gvar:Gvar=Gvar.getInstance();
		
		//测试数据
		private var _testUrl:String="../";
		//===================================================================================================================//
		
		//===================================================================================================================//
		public function MNKS_EnterTi(tiObj:Object) {
			_tryObject=tiObj;
			init();
			
			creaTi();
		}//End Fun
		//--------------------------------------------------------------------------------------------------------------------//
		
		//建立题目
		private function creaTi():void{
			_Gvar.FIRST_MNKS_OPTIONS_WIDTH=400;
			creaImage(_tryObject.toolImageS);//建立图片
			var _nameSelecter:MNKS_Top_SelectItem=new MNKS_Top_SelectItem(_tryObject);//题目数据,
			_nameSelecter.x=_imageItem.x+Gvar.FIRST_MNKS_IMAGE_WIDTH+30;
			_nameSelecter.y=_imageItem.y;
			addChild(_nameSelecter);
			}
		
		//建立背景
		private function init():void{
			var $alertBg:Class = getDefinitionByName("alertBitBg") as Class;
			_alertBg = new $alertBg();

			scale9_example = new Rectangle(13,34,27,45);
			_alertBgScale9 = new Scale9BitmapSprite(_alertBg,scale9_example);
			_alertBgScale9.width = 717;
			_alertBgScale9.height = 650;

			addChild(_alertBgScale9);

			//关闭按钮
			var tempBt:Class = getDefinitionByName("closeBt") as Class;
			_closeBt=new tempBt();
			_closeBt.x = _alertBgScale9.width - _closeBt.width - 20;
			_closeBt.y = 5;
			addChild(_closeBt);
			_closeBt.addEventListener(MouseEvent.CLICK,closeClickHandler);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//建立图片
		private function creaImage(surl:String):void{
			_imageItem=new MNKS_Top_ImageItem(surl);
			_imageItem.x=50;
			_imageItem.y=100;
			addChild(_imageItem);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		private function closeClickHandler(e:MouseEvent):void{
			dispatchEvent(new Event("closeEnterTi"));
			}
			
		
		//===================================================================================================================//
	}
}