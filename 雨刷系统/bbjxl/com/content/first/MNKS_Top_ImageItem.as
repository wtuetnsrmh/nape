package bbjxl.com.content.first
{
	/**
	作者：被逼叫小乱
	左边的图片
	www.bbjxl.com/Blog
	**/
	import flash.display.Sprite;
	import flash.display.MovieClip;
	import flash.utils.getDefinitionByName;
	import flash.events.Event;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	import flash.events.IOErrorEvent;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	import flash.display.Bitmap;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.display.Loader;
	import flash.geom.Matrix;
	import flash.display.*;
	import bbjxl.com.loading.Imageload;
	import flash.display.Shape;
	import bbjxl.com.Gvar;

	public class MNKS_Top_ImageItem extends Sprite
	{
		private var PartSImage:Imageload;//部件实物图片
		private var PartDImage:Imageload;//部件电路图片
		private var SImageUrl:String=new String();//实物图片URL
		private var DImageUrl:String=new String();//电路图片URL
		private var _PartId:uint;//部件ID

		private var PartImageWidth:uint = Gvar.FIRST_MNKS_IMAGE_WIDTH;
		private var PartImageHeight:uint = Gvar.FIRST_MNKS_IMAGE_HEIGHT;

		private var gap:uint = 40;
		//===================================================================================================================//
		public function get PartId():uint
		{
			return _PartId;
		}
		public function set PartId(_value:uint):void
		{
			_PartId = _value;
		}
		//===================================================================================================================//
		public function MNKS_Top_ImageItem(surl:String,durl:String="")
		{
			SImageUrl = surl;
			DImageUrl = durl;
			creaPartImage();
		}//End Fun
		//--------------------------------------------------------------------------------------------------------------------//
		private function creaPartImage():void
		{
			PartSImage = new Imageload(0,0,SImageUrl,PartImageWidth,PartImageHeight);
			PartSImage.addEventListener("loadimageover",loadImageSOverHandler);
			function loadImageSOverHandler(e:Event)
			{
				dispatchEvent(new Event("loadimagesdover"));//广播
				var tempS:Shape=addRoundRec();
				var _maskS:Shape=creaMask();
				_maskS.x=1;
				_maskS.y=1;
				addChild(_maskS)
				addChild(tempS)
				addChild(PartSImage);
				PartSImage.mask=_maskS;
				

			}
			if(DImageUrl!="" && DImageUrl!=null){
				PartDImage = new Imageload(0,0,DImageUrl,PartImageWidth,PartImageHeight);
				PartDImage.addEventListener("loadimageover",loadImageDOverHandler);
				function loadImageDOverHandler(e:Event)
				{
					dispatchEvent(new Event("loadimagesdover"));//广播
					var tempD:Shape=addRoundRec();
					addChild(tempD)
					tempD.y = PartImageHeight + gap;
					var _maskD:Shape=creaMask();
					_maskD.y=tempD.y+1;
					_maskD.x=tempD.x+1;
					addChild(_maskD)
					PartDImage.y = PartImageHeight + gap;
					addChild(PartDImage);
					PartDImage.mask=_maskD
				}
			}
		}
		//增加遮罩
		private function creaMask():Shape{
			var returnShap:Shape=new Shape();
			
			returnShap.graphics.lineStyle(1,0x666666);
			returnShap.graphics.beginFill(0xffffff);
			returnShap.graphics.drawRoundRectComplex(0,0,PartImageWidth-2,PartImageHeight-2,10,10,10,10);
			return returnShap;
		}
		
		//--------------------------------------------------------------------------------------------------------------------//
		//画圆角矩形
		private function addRoundRec():Shape
		{
			var returnShap:Shape=new Shape();
			/*var myMatrix:Matrix = new Matrix();
			myMatrix.createGradientBox(0, 0, 1.2, 50, 50);
			var myColors:Array = [0xFFffff,0xFFffee];
			var myAlphaS:Array = [100,100];
			var myRalphaS:Array = [0,225];*/
			returnShap.graphics.lineStyle(1,0x666666);
			returnShap.graphics.beginFill(0xffffff);
			//returnShap.graphics.beginGradientFill(GradientType.LINEAR, myColors, myAlphaS, myRalphaS, myMatrix);
			returnShap.graphics.drawRoundRectComplex(0,0,PartImageWidth,PartImageHeight,10,10,10,10);
			return returnShap;
		}
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//===================================================================================================================//
	}
}