package bbjxl.com.content.first
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
	import lt.uza.ui.Scale9BitmapSprite;
	import lt.uza.ui.Scale9SimpleStateButton;
	import bbjxl.com.loading.Imageload;
	import bbjxl.com.Gvar;
	import bbjxl.com.ui.CreaText;

	public class RMPXAlert extends Sprite
	{
		private var _alertBgScale9:Scale9BitmapSprite;//背景
		private var scale9_example:Rectangle;//九宫格区域
		private var bgSp:Sprite=new Sprite();//背景容器
		private var bgSpObj:Sprite=new Sprite();//背景
		private var popSp:Sprite=new Sprite();//弹出框容器
		private var popSpBg:BitmapData;;//弹出框架背景
		private var _closeBt:SimpleButton;//关闭按钮

		private var _blur:BlurFilter;
		private var _point:Point = new Point  ;
		private var _blurredImageData:BitmapData;
		private var _blurredImage:Bitmap;

		private static var _singleton:Boolean = true;
		private static var _instance:RMPXAlert;
		
		private var bottonPart:Sprite=new Sprite();//下半部分
		private var _effectBt:MovieClip;//作用按钮
		private var _localBt:MovieClip;//位置按钮
		
		private var _thisDataObj:Object=new Object();//要显示的数据对象
		


		public function RMPXAlert()
		{
			if (_singleton)
			{
				throw new Error("只能用getInstance()来获取实例");
			}

		}
		public static function getInstance()
		{
			if (! _instance)
			{
				_singleton = false;
				_instance=new RMPXAlert();
				
			}
			return _instance;
		}


		public function Show(showObj:Object,_blurAmount:uint=20):void
		{
			//_blur = new BlurFilter(_blurAmount,_blurAmount,3);
			//initBlur();
			_thisDataObj=showObj;
			//实物图
			
			var imageS:RMPXAlertImage=new RMPXAlertImage(showObj.toolImageS,showObj.name,173.05,144);
			imageS.x=32;
			imageS.y=57;
			imageS.addEventListener("loadimagesdover",loadImageSover);
			function loadImageSover(e:Event){
				
				popSp.addChild(imageS);
				
				//下半部分
				creaBottonPart();
				}
			
			//电路图
			var imageD:RMPXAlertImage=new RMPXAlertImage(showObj.toolImageD,showObj.name,173.05,144,false);
			imageD.x=imageS.x+imageS.thisWidth+50;
			imageD.y=imageS.y;
			imageD.addEventListener("loadimagesdover",loadImagedSover);
			function loadImagedSover(e:Event){
				
				popSp.addChild(imageD);
				
				
				}
			
			
			/*popSp.addChild(bottonPart);
			bottonPart.x=10;
			bottonPart.y=imageS.y+imageS.height+30;
			
			var temp:Class=getDefinitionByName("effectBt") as Class;
			_effectBt=new temp();
			bottonPart.addChild(_effectBt);*/
			
		}
		
		//建立下半部分
		private function creaBottonPart():void{
			//下半部分:作用,位置
			var bottonPart:RMPXAlertB=new RMPXAlertB(_thisDataObj.toolEffect,_thisDataObj.toolLoc,_thisDataObj.toolMore);
			bottonPart.x=10;
			bottonPart.y=57+200+10;
			popSp.addChild(bottonPart);
			}

		public function init():void
		{
			this.addEventListener(Event.ADDED_TO_STAGE,addInit);

		}
		
		public function clearContainer(sp:Sprite):void{
    	  for(var i:int=sp.numChildren-1;i>=0;i--){
            sp.removeChildAt(0);
     	  }
		}

		
		private function addInit(e:Event):void
		{
			clearContainer(bgSp);
			clearContainer(popSp);
			if (stage != null )
			{
				
				addChild(bgSp);
				creabg();
				addChild(popSp);
				creaPopBg();
				
			}

		}

		private function creaPopBg():void
		{
			/*var myMatrix:Matrix = new Matrix();
			myMatrix.createGradientBox(200, 200, 1.6, 50, 50);
			var myColors:Array = [0xf83255,0x666666];
			var myAlphaS:Array = [100,100];
			var myRalphaS:Array = [0,225];
			popSpBg.graphics.beginGradientFill(GradientType.LINEAR, myColors, myAlphaS, myRalphaS, myMatrix);
			popSpBg.graphics.drawRoundRectComplex(0,0,300,200,10,10,10,10);*/
			//var temp:Class=getDefinitionByName("alertBg") as Class;
			var $alertBg:Class = getDefinitionByName("alertBitBg") as Class;
			popSpBg = new $alertBg();

			scale9_example = new Rectangle(13,34,27,45);
			_alertBgScale9 = new Scale9BitmapSprite(popSpBg,scale9_example);
			_alertBgScale9.width = 500;
			_alertBgScale9.height = 600;
			//popSpBg=new alertBg();
			//popSpBg.width=435;
			//popSpBg.height=528;
			//popSpBg.x=(stage.stageWidth-popSpBg.width) / 2;
			//popSpBg.y=(stage.stageHeight-popSpBg.height) / 2;
			popSp.addChild(_alertBgScale9);
			popSp.x=(Gvar.STAGE_X-_alertBgScale9.width) / 2;
			popSp.y=(Gvar.STAGE_Y-_alertBgScale9.height) / 2;
			
			//建立标题
			var thisTitle:CreaText=new CreaText(_thisDataObj.name,0xffffff,15,true,"left");
			thisTitle.x=(_alertBgScale9.width-thisTitle.width)/2;
			thisTitle.y=9;
			popSp.addChild(thisTitle);
			
			//建立关闭按钮
			var tempCloseBt:Class=getDefinitionByName("closeBt") as Class;
			_closeBt=new tempCloseBt();
			_closeBt.x=_alertBgScale9.width-_closeBt.width-10;
			_closeBt.y=thisTitle.y;
			popSp.addChild(_closeBt);
			_closeBt.addEventListener(MouseEvent.CLICK,closeclickHandler);
		}
		
		//关闭弹出框
		private function closeclickHandler(e:MouseEvent):void{
			dispatchEvent(new Event("CLOSEALER"));//关闭ALER;
			}
		
		private function creabg():void
		{
			bgSpObj=new Sprite();
			bgSpObj.graphics.lineStyle(10,0x222222,0);
			bgSpObj.graphics.beginFill(0x112122,.8);
			bgSpObj.graphics.drawRect(0,0,stage.stageWidth,stage.stageHeight);
			bgSpObj.graphics.endFill();
			bgSp.addChild(bgSpObj);
		}

		/*private function creaShowText():void
		{
			popText=new TextField();
			popText.autoSize = TextFieldAutoSize.CENTER;
			var format1:TextFormat = new TextFormat();
			format1.color = 0x000000;
			format1.size = 20;
			format1.bold = true;
			format1.align="center";
			
			
			popText.multiline=true;
			popText.selectable = false;
			popText.defaultTextFormat = format1;
			popText.x = (stage.stageWidth-popText.width) / 2;
			popText.y = popSpBg.y + 30;

			popSp.addChild(popText);
		}

		private function creaBt():void
		{
			var w:uint=100;
			var h:uint=30;
			popBt=new SimpleButton();
			popBt.downState = BtnStatusShape2(0xff3422,w,h);
			popBt.overState = BtnStatusShape2(0xaaff33,w,h);
			popBt.upState = BtnStatusShape2(0xaa3333,w,h);
			popBt.hitTestState = popBt.upState;

			popBt.x = (stage.stageWidth-popBt.width) / 2;
			popBt.y = popText.y + 70;
			popSp.addChild(popBt);
			popSp.addChild(BtnTxt(w,h,"确 定",0x000000));
			
			popBt.addEventListener(MouseEvent.CLICK,clickHandler);
		}*/
		
		

		/*public function BtnStatusShape2(bgColor:uint,w:uint,h:uint):Shape
		{
			var temp:Shape=new Shape();
			temp.graphics.lineStyle(1,0x000000,0.2);
			temp.graphics.beginFill(bgColor,0.8);
			temp.graphics.drawRoundRect(0,0,w,h,8);
			temp.graphics.endFill();
			return temp;
		}

		private function BtnTxt(w:uint,h:uint,txt:String,bgColor:uint):TextField
		{
			var tempT:TextField=new TextField();
			var format1:TextFormat = new TextFormat();
			format1.color = 0x000000;
			format1.size = 20;
			format1.bold = true;
			tempT.name = "btnTxt";
			tempT.width = w;
			tempT.height = h;
			tempT.textColor = bgColor;
			tempT.defaultTextFormat = format1;
			tempT.text = txt;
			tempT.autoSize = TextFieldAutoSize.CENTER;
			tempT.selectable = false;
			tempT.mouseEnabled = false;
			tempT.mouseWheelEnabled = false;
			tempT.x=popBt.x+(popBt.width-tempT.width)/2;
			tempT.y=popBt.y+(popBt.height-tempT.height)/2;
			return tempT;
		}*/

		private function initBlur():void
		{
			_blurredImageData = new BitmapData(stage.stageWidth,stage.stageHeight,false);
			_blurredImageData.draw(bgSpObj);
			_blurredImageData.applyFilter(_blurredImageData,_blurredImageData.rect,_point,_blur);
			_blurredImage = new Bitmap(_blurredImageData);

			bgSp.addChild(_blurredImage);
		}
	}
}