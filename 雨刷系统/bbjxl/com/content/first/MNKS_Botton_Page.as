package bbjxl.com.content.first
{
	/**
	作者：被逼叫小乱
	//下半部分页码MC
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.display.DisplayObjectContainer;
	import bbjxl.com.Gvar;
	import flash.display.Sprite;
	import flash.display.Shape;
	import flash.geom.Point;
	import flash.text.TextField;
	import flash.utils.getDefinitionByName;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	public class MNKS_Botton_Page extends Sprite
	{
		private var _currentPageNum:uint;//当前页码
		private var _Gvar:Gvar;
		private var _currentPageMc:MovieClip;
		private var _currentPageText:TextField=new TextField();

		//测试数据
		private var _testUrl:String = "../";

		//===================================================================================================================//
		public function get currentPageNum():uint
		{
			return _currentPageNum;
		}
		public function set currentPageNum(_value:uint):void
		{
			_currentPageNum = _value;
		}
		//===================================================================================================================//
		public function MNKS_Botton_Page(pageNum:uint)
		{
			var temp:Class=getDefinitionByName("currentPageMc") as Class;
			_currentPageMc=new temp();
			addChild(_currentPageMc);
			_currentPageNum=pageNum;
			
			_currentPageText.autoSize = TextFieldAutoSize.CENTER;
			var format:TextFormat = new TextFormat();
            format.color = 0x000000;
            format.size = 15;
			//format.bold=true;
			//format.align="center";
			_currentPageText.mouseEnabled=false;
			_currentPageText.selectable=false;
			//name_txt.background=true;
			_currentPageText.width=_currentPageMc.width;
			//_currentPageText.height=30;
            _currentPageText.defaultTextFormat = format;
			_currentPageText.htmlText=String(_currentPageNum);
			_currentPageText.x=_currentPageMc.x+(_currentPageMc.width-_currentPageText.textWidth)/2-2;
			_currentPageText.y=(_currentPageMc.height-_currentPageText.textHeight)/2-2;
			addChild(_currentPageText);
		

		}//End Fun
		//--------------------------------------------------------------------------------------------------------------------//
		//选中
		public function meSlected():void{
			_currentPageMc.gotoAndStop(2);
			var format:TextFormat = new TextFormat();
            format.color = 0xee0011;
            format.size = 15;
			format.bold=true;
			 _currentPageText.defaultTextFormat = format;
			_currentPageText.htmlText="<font color='0xee0011'>"+String(_currentPageNum)+"</font>";
			
			
		}
		//--------------------------------------------------------------------------------------------------------------------//
		//未选中
		public function meNoSlected():void{
			_currentPageMc.gotoAndStop(1);
			var format:TextFormat = new TextFormat();
            format.color = 0x000000;
            format.size = 15;
			format.bold=false;
			 _currentPageText.defaultTextFormat = format;
			_currentPageText.htmlText="<font color='0x000000'>"+String(_currentPageNum)+"</font>";
			
			
		}
		//--------------------------------------------------------------------------------------------------------------------//

		//--------------------------------------------------------------------------------------------------------------------//

		//--------------------------------------------------------------------------------------------------------------------//

		//--------------------------------------------------------------------------------------------------------------------//
		
		//--------------------------------------------------------------------------------------------------------------------//
		
		//--------------------------------------------------------------------------------------------------------------------//
		
		//去掉容器中的所有对象
		private function cleaall(thisContent:DisplayObjectContainer):void
		{
			try
			{
				while (true)
				{
					thisContent.removeChildAt(thisContent.numChildren-1);
				}
			}
			catch (e:Error)
			{
				//  trace("全部删除！");
			}
		}
		//===================================================================================================================//
	}
}