package bbjxl.com.content.second{
	/**
	作者：被逼叫小乱
	//连线-弹出显示提示信息
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.display.DisplayObjectContainer;
	import flash.utils.getDefinitionByName;
	import com.adobe.utils.ArrayUtil;
	import bbjxl.com.Gvar;
	import com.greensock.*;
	import com.greensock.easing.*;
	import bbjxl.com.ui.FormCell;
	import bbjxl.com.ui.SM_FormC;
	import bbjxl.com.ui.FormCellClickEvent;
	import bbjxl.com.ui.CommonlyClass;
	import lt.uza.ui.Scale9BitmapSprite;
	import lt.uza.ui.Scale9SimpleStateButton;
	import bbjxl.com.ui.CreaText;
	import flash.geom.Rectangle;
	import flash.geom.Point;
	import flash.events.Event;
	import flash.display.Bitmap;
	import flash.display.BitmapData;

	public class AlertShow extends Sprite {
		private var _alertBgScale9:Scale9BitmapSprite;//背景
		private var scale9_example:Rectangle;//九宫格区域
		private var popSpBg:BitmapData;//弹出框架背景
		
		private var _tryArr:Array=new Array();//试题数据
		private var _headTitle:Sprite=new Sprite();//标题容器
		private var _centerPart:Sprite=new Sprite();//中间部分容器
		
		private var _allSp:Sprite=new Sprite();//全部的容器
		
		private var _bgSp:Sprite=new Sprite();//背景容器
		
		
		private var _inforContent:String;//提示内容
		
		private var _width:uint=400;
		private var _height:uint=200;
		
		
		private var _Gvar:Gvar;
		
		//测试数据
		private var _testUrl:String="../";
		//===================================================================================================================//
		
		//===================================================================================================================//
		public function AlertShow(_value:String,_thisWidth:uint=400,_thisHeight:uint=200) {
			_inforContent=_value;
			_width=_thisWidth;
			_height=_thisHeight;
			addChild(_bgSp);
			
			creaBg();
			
			
			
			
			
		}//End Fun
		
		
		
		//建立背景框
		private function creaBg():void{
			var $alertBg:Class = getDefinitionByName("alertBitBg") as Class;
			popSpBg = new $alertBg();

			scale9_example = new Rectangle(13,34,27,45);
			_alertBgScale9 = new Scale9BitmapSprite(popSpBg,scale9_example);
			_alertBgScale9.width = _width;
			_alertBgScale9.height =_height;
			
			_bgSp.addChild(_alertBgScale9);
			
			//建立标题
			var thisTitle:CreaText=new CreaText("提示",0xffffff,15,true,"left");
			thisTitle.x=_alertBgScale9.x+(_alertBgScale9.width-thisTitle.width)/2;
			thisTitle.y=_alertBgScale9.y+9;
			_bgSp.addChild(thisTitle);
			
			//建立提示内容
			var thisInfor:CreaText=new CreaText(_inforContent,0xff0000,20,true,"left");
			thisInfor.x=_alertBgScale9.x+(_alertBgScale9.width-thisInfor.width)/2;
			thisInfor.y=_alertBgScale9.y+(_alertBgScale9.height-thisInfor.height)/2;
			_bgSp.addChild(thisInfor);
			
			}
		//--------------------------------------------------------------------------------------------------------------------//
		
		//===================================================================================================================//
	}
}