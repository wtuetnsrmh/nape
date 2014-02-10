package bbjxl.com.content.three
{
	/**
	作者：被逼叫小乱
	//下半部分页码
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.display.DisplayObjectContainer;
	import com.adobe.utils.ArrayUtil;
	import bbjxl.com.Gvar;
	import bbjxl.com.utils.GraphicsUtil;
	import flash.display.Sprite;
	import flash.display.Shape;
	import flash.geom.Point;
	import flash.text.TextField;
	import flash.utils.getDefinitionByName;
	import flash.text.TextFieldAutoSize;
	import flash.display.SimpleButton;
	import flash.text.TextFormat;
	import com.greensock.*;
	import com.greensock.easing.*;
	import bbjxl.com.content.first.MNKS_Botton_PageClickEvent;
	import bbjxl.com.content.first.MNKS_Botton_Page;
	public class MNKS_Botton extends Sprite
	{
		private var _currentPageNum:uint=0;//当前页码
		private var _allPageNum:uint;//总共几页
		private var _gap:uint=10;//页码之间的间隔
		private var _prvBt:SimpleButton;//上一页按钮
		private var _nextBt:SimpleButton;//下一页
		private var _setUpBt:SimpleButton;//提交按钮
		private var _allPageNumText:TextField=new TextField();//总共几页
		
		private var _pageWidth:uint;//页码的宽度
		private var _pageHeight:uint;//页码的高度
		
		private var _maxPageNum:uint=Gvar.FIRST_MNKS_MAXPAGE;//最多显示多少
		private var _currentMaxPageNum:uint=0;//当前是第几个最大页
		
		private var _mask:Sprite=new Sprite();
		
		private var _allPageDisplay:Sprite=new Sprite();//存入所有的页码容器
		private var _allPageArr:Array;//存入所有的页码数组
		

		private var _Gvar:Gvar;

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
		public function MNKS_Botton(allPageNum)
		{
			_allPageNum=allPageNum;//总共的页数
			init();
			
			addPrvNextPage();
			
			//增加下一页按钮
			_nextBt.x=_mask.x+_mask.width+_gap;
			_nextBt.y=_allPageDisplay.y;
			addChild(_nextBt);
			_nextBt.addEventListener(MouseEvent.CLICK,nextClickHandler);
			
			//建立总共几页
			creaAllPageNum();
			
			var tempSetUp:Class=getDefinitionByName("setupBt") as Class;
			_setUpBt=new tempSetUp();
			_setUpBt.y=_nextBt.y;
			_setUpBt.x=Gvar.STAGE_X-_setUpBt.width-120;
			addChild(_setUpBt);//提交按钮
			_setUpBt.addEventListener(MouseEvent.CLICK,setUpClickHandler);
		

		}//End Fun
		private function init():void{
			
			var tempPre:Class=getDefinitionByName("prevBt") as Class;
			_prvBt=new tempPre();
			_prvBt.addEventListener(MouseEvent.CLICK,prvClickEventHandler);
			var tempNext:Class=getDefinitionByName("nextBt") as Class;
			_nextBt=new tempNext();
			_prvBt.x=30;
			_prvBt.y=10;
			addChild(_prvBt);
			addChild(_allPageDisplay);
			addChild(_mask);
			
			_Gvar = Gvar.getInstance();
			addDashed();
		}
		//--------------------------------------------------------------------------------------------------------------------//
		//提交试卷
		private function setUpClickHandler(e:MouseEvent):void{
			var setUpEvent:MNKS_Botton_PageClickEvent=new MNKS_Botton_PageClickEvent("mnksbottonsetupclickevent");
			dispatchEvent(setUpEvent);
			}
		
		//--------------------------------------------------------------------------------------------------------------------//
		//下一面点击事件
		private function nextClickHandler(e:MouseEvent):void{
			var moveWidth:uint=_mask.width;
			if(_currentPageNum<_allPageNum-1){
				//如果有(总页)的下一页
				if(_currentMaxPageNum<Math.ceil(_allPageNum/_maxPageNum)-1 && _currentPageNum==(_currentMaxPageNum+1)*_maxPageNum-1){
					TweenLite.to(_allPageDisplay, .2, {x:_allPageDisplay.x-moveWidth});
					_currentMaxPageNum++;
					}
				_currentPageNum++;
				setAllPageNoSelecte();
				_allPageArr[_currentPageNum].meSlected();
				//广播事件
				var pageClickEvent:MNKS_Botton_PageClickEvent=new MNKS_Botton_PageClickEvent();
				pageClickEvent.currentPageId=_currentPageNum+1;
				dispatchEvent(pageClickEvent);
				
				}
			}
		
		//上一页点击事件
		private function prvClickEventHandler(e:MouseEvent):void{
			var moveWidth:uint=_mask.width;
			if(_currentPageNum>0){
				//如果有分页（五页一起翻）,并且是最前面的一个页码
				if(_currentMaxPageNum>0 && _currentPageNum==(_currentMaxPageNum)*_maxPageNum){
					TweenLite.to(_allPageDisplay, .2, {x:_allPageDisplay.x+moveWidth});
					_currentMaxPageNum--;
					}
				_currentPageNum--;
				setAllPageNoSelecte();
				_allPageArr[_currentPageNum].meSlected();
				//广播事件
				var pageClickEvent:MNKS_Botton_PageClickEvent=new MNKS_Botton_PageClickEvent();
				pageClickEvent.currentPageId=_currentPageNum+1;
				dispatchEvent(pageClickEvent);
				
				}
			}
		
		//--------------------------------------------------------------------------------------------------------------------//
		//增加中间的页码
		private function addPrvNextPage():void{
			_allPageArr=new Array();
			
			for(var i:uint=0;i<_allPageNum;i++){
				var tempPage:MNKS_Botton_Page=new MNKS_Botton_Page(i+1);
				tempPage.x=tempPage.width*i+_gap*i;
				_allPageDisplay.addChild(tempPage);
				_pageWidth=tempPage.width;
				_pageHeight=tempPage.height;
				tempPage.buttonMode=true;
				tempPage.mouseChildren=false;
				tempPage.addEventListener(MouseEvent.CLICK,pageClickHandler);
				_allPageArr.push(tempPage);
				//初始选中第一题
				if(i==0)tempPage.meSlected();
			}
			
			_allPageDisplay.y=_prvBt.y;
			_allPageDisplay.x=_prvBt.x+_prvBt.width+_gap;
			//建立遮罩
			creaMask();
			_allPageDisplay.mask=_mask;
			
			
			
		}
		//--------------------------------------------------------------------------------------------------------------------//
		//所有页码恢复为没有选中
		private function setAllPageNoSelecte():void{
			for(var i:uint=0;i<_allPageArr.length;i++){
				_allPageArr[i].meNoSlected();
			}
		}
		//--------------------------------------------------------------------------------------------------------------------//
		
		//--------------------------------------------------------------------------------------------------------------------//
		//建立遮罩
		private function creaMask():void{
			
			_mask.graphics.lineStyle(1,0x666666);
			_mask.graphics.beginFill(0xffffff);
			_mask.graphics.drawRect(0,0,(_pageWidth+_gap)*_maxPageNum,_pageHeight+2);
			_mask.x=_allPageDisplay.x-_gap/2;
			_mask.y=_allPageDisplay.y-1;
		}
		//--------------------------------------------------------------------------------------------------------------------//
		//建立共有几页文字
		private function creaAllPageNum():void{
			_allPageNumText.autoSize = TextFieldAutoSize.LEFT;
			var format:TextFormat = new TextFormat();
            format.color = 0x666666;
            format.size = 20;
			//format.bold=true;
			_allPageNumText.mouseEnabled=false;
			_allPageNumText.selectable=false;
			//name_txt.background=true;
            _allPageNumText.defaultTextFormat = format;
			_allPageNumText.htmlText="共"+_allPageNum+"页";
			_allPageNumText.x=_nextBt.x+_nextBt.width+_gap;
			_allPageNumText.y=_allPageDisplay.y+(_allPageDisplay.height-_allPageNumText.textHeight)/2;
			addChild(_allPageNumText);
			
		}
		//--------------------------------------------------------------------------------------------------------------------//
		//页码点击事件
		private function pageClickHandler(e:MouseEvent):void{
			setAllPageNoSelecte();
			var tempP:MNKS_Botton_Page=e.currentTarget as MNKS_Botton_Page;
			tempP.meSlected();
			
			var pageClickEvent:MNKS_Botton_PageClickEvent=new MNKS_Botton_PageClickEvent();
			pageClickEvent.currentPageId=tempP.currentPageNum;
			dispatchEvent(pageClickEvent);
			_currentPageNum=tempP.currentPageNum-1;
			//trace(tempP.currentPageNum)
		}
		//--------------------------------------------------------------------------------------------------------------------//
		//画虚线
		private function addDashed():void{
			var dasheLine:Shape=new Shape();
			dasheLine.graphics.lineStyle(1, 0x000000);
			GraphicsUtil.drawDashed(dasheLine.graphics,new Point(0,0),new Point(900,0),5,2);
			addChild(dasheLine);
			
		}
		//--------------------------------------------------------------------------------------------------------------------//
		//随机排序数组
		private function taxis(element1:*,element2:*):int
		{
			var num:Number = Math.random();
			if (num < 0.5)
			{
				return -1;
			}
			else
			{
				return 1;
			}
		}
		//--------------------------------------------------------------------------------------------------------------------//
		private function ouputArr(_value:Array):void
		{
			for (var i:uint=0; i<_value.length; i++)
			{
				trace(_value[i].partName);
			}
		}
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