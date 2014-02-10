package bbjxl.com.display{
	/**
	作者：被逼叫小乱
	
	www.bbjxl.com/Blog
	**/
	import bbjxl.com.net.MyWebserviceSingle;
	import bbjxl.com.net.MyWebservice;
	import be.wellconsidered.services.Operation;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.display.DisplayObjectContainer;
	import com.greensock.*;
	import com.greensock.easing.*;
	import bbjxl.com.loading.xmlReader;
	import bbjxl.com.event.ToolClickEvent;
	import bbjxl.com.Gvar;
	import be.wellconsidered.services.events.OperationEvent;
	public class Tool extends Sprite {
		private var _gvar:Gvar = Gvar.getInstance();
		private var _hideArraw:MovieClip=new MovieClip();//隐藏工具面板箭头
		private var _tool1:MovieClip=new MovieClip();//测量仪器
		private var _tool2:MovieClip=new MovieClip();//电线
		private var _tool3:MovieClip=new MovieClip();//电源
		private var _tool4:MovieClip=new MovieClip();//其他

		private var _toolBg:Sprite=new Sprite();//工具栏背景
		
		private var _currentSelect:MovieClip=new MovieClip();//当前选择的工具
		
		private var _toolContent:Sprite=new Sprite();//放工具的容器
		private var _otherToolContent:Sprite=new Sprite();//放工具的容器
		private var _toolBt:Sprite=new Sprite();//放四个工具按钮的容器
		
		private var _toolXml:XML;//工具信息
		
		private var _toolNameArr:Array=new Array();//放工具名称的数组
		private var _toolImageArr:Array=new Array();//放工具图片的数组
		
		private var _gap:uint=30;//工具图片之间的间隔
		private var toolImageWidth:uint=50;
		private var toolImageHeight:uint=90;
		private var initHeight:uint=30;//工具图片初始Y坐标
		
		private var maskSp:Sprite = new Sprite();//遮盖
		
		private var toolWs:MyWebserviceSingle;
		//===================================================================================================================//
		
		//===================================================================================================================//
		public function Tool() {
			_hideArraw=this.getChildByName("arrow_mc") as MovieClip;
			_tool1=this.getChildByName("tool1") as MovieClip;
			_tool2=this.getChildByName("tool2") as MovieClip;
			_tool3=this.getChildByName("tool3") as MovieClip;
			_tool4=this.getChildByName("tool4") as MovieClip;
			
			_currentSelect=this.getChildByName("currentSelectToolName") as MovieClip;
			_toolBg=this.getChildByName("toolBg") as Sprite;
			
			_toolContent.x=55;
			_toolContent.y=initHeight;
			addChild(_toolContent);
			addChild(_otherToolContent);
			addChild(_toolBt);
			//把要移动的对象放到一个容器中
			_otherToolContent.addChild(_toolBg);
			_otherToolContent.addChild(_currentSelect);
			_otherToolContent.addChild(_hideArraw);
			_otherToolContent.addChild(_toolContent);
			
			//把四个工具按钮放到一起
			_toolBt.addChild(_tool1);
			_toolBt.addChild(_tool2);
			_toolBt.addChild(_tool3);
			_toolBt.addChild(_tool4);
			
			//加载工具数组
			loadToolXml();
			
			//建立MASK
			creaMask();
			
		}//End Fun
		
		private function creaMask():void{
			maskSp.graphics.lineStyle(1,0x666666,0);
			maskSp.graphics.beginFill(0x666666,0.5);
			maskSp.graphics.drawRect(0,0,246,403.5+1);
			maskSp.graphics.endFill();
			addChild(maskSp);
			_otherToolContent.mask=maskSp;
			}
		
		//--------------------------------------------------------------------------------------------------------------------//
		
		//加载工具XML数据
		private function loadToolXml():void {
			/*toolWs = MyWebserviceSingle.getInstance();
			toolWs.myOp.ToolMenu({CoursewareId:_gvar.CoursewareId});
			toolWs.myOp.addEventListener("complete", toolWs.onResult);
			toolWs.myOp.addEventListener("failed", toolWs.onFault);
			toolWs.addEventListener(MyWebservice.WSCOMPLETE, loginonResult);*/
			
			/*var toolxmlOp:Operation = new Operation(_gvar.ws);
			toolxmlOp.ToolMenu({CoursewareId:_gvar.CoursewareId});
			toolxmlOp.addEventListener(OperationEvent.COMPLETE, loginonResult);
			toolxmlOp.addEventListener(OperationEvent.FAILED, Gvar.onFault);*/
			
			var first_rmpxWs:MyWebservice = new MyWebservice();
			first_rmpxWs.myOp.ToolMenu({CoursewareId:1});
			first_rmpxWs.myOp.addEventListener("complete", first_rmpxWs.onResult);
			first_rmpxWs.myOp.addEventListener("failed", first_rmpxWs.onFault);
			first_rmpxWs.addEventListener(MyWebservice.WSCOMPLETE, loginonResult);
			}
			
		public function loginonResult(e:Event):void
		{
			/*toolWs.myOp.removeEventListener("complete", toolWs.onResult);
			toolWs.myOp.removeEventListener("failed", toolWs.onFault);
			toolWs.removeEventListener(MyWebservice.WSCOMPLETE, loginonResult);*/
			trace("_toolXml=" + _toolXml);
				_toolXml = new XML();
				_toolXml = XML(e.target.data);
				
				if (!_gvar.toolXML) {
					_gvar.toolXML = _toolXml;
					}else {
						_toolXml = _gvar.toolXML;
						}
				trace("_toolXml=" + _toolXml);	
				//把工具的名称跟图片地址放入数组中
				for(var i:uint=0;i<_toolXml.children().length();i++){
					var temp:XMLList;
					//trace(_toolXml.child(i).tool)
					temp = _toolXml.child(i).tool;
					var tempArr:Array = new Array();
					var tempUrl:Array = new Array();
					
					for (var j:uint = 0; j < temp.length(); j++ ) {
						//trace(temp[j].@toolname);
						
						tempArr.push(temp[j].@toolname);
						}
						
					for (var n:uint = 0; n < temp.length(); n++ ) {
						//trace(temp[n].child(0));
						tempUrl.push(temp[n].child(0));
						}
					_toolNameArr.push(tempArr);

					_toolImageArr.push(tempUrl);
					
				}
				
				//初始化
				loadToolImage(0);
				
				//增加按钮侦听
				addListen();
				
			
		}
		//--------------------------------------------------------------------------------------------------------------------//
		
		//增加各按钮鼠标侦听
		private function addListen():void{
			_hideArraw.buttonMode=true;
			_tool1.buttonMode=true;
			_tool2.buttonMode=true;
			_tool3.buttonMode=true;
			_tool4.buttonMode=true;
			_hideArraw.addEventListener(MouseEvent.MOUSE_UP,hideArrawHandler);
			_tool1.addEventListener(MouseEvent.MOUSE_UP,toolClickHandler);
			_tool2.addEventListener(MouseEvent.MOUSE_UP,toolClickHandler);
			_tool3.addEventListener(MouseEvent.MOUSE_UP,toolClickHandler);
			_tool4.addEventListener(MouseEvent.MOUSE_UP,toolClickHandler);
			_hideArraw.addEventListener(MouseEvent.CLICK,hideArrawHandler);
			_tool1.addEventListener(MouseEvent.CLICK,toolClickHandler);
			_tool2.addEventListener(MouseEvent.CLICK,toolClickHandler);
			_tool3.addEventListener(MouseEvent.CLICK,toolClickHandler);
			_tool4.addEventListener(MouseEvent.CLICK,toolClickHandler);
			
			_tool1.addEventListener(MouseEvent.ROLL_OVER,toolRollOverHandler);
			_tool2.addEventListener(MouseEvent.ROLL_OVER,toolRollOverHandler);
			_tool3.addEventListener(MouseEvent.ROLL_OVER,toolRollOverHandler);
			_tool4.addEventListener(MouseEvent.ROLL_OVER,toolRollOverHandler);
			
			_tool1.addEventListener(MouseEvent.ROLL_OUT,toolRollOutHandler);
			_tool2.addEventListener(MouseEvent.ROLL_OUT,toolRollOutHandler);
			_tool3.addEventListener(MouseEvent.ROLL_OUT,toolRollOutHandler);
			_tool4.addEventListener(MouseEvent.ROLL_OUT,toolRollOutHandler);
			}
		
		//设置全部的按钮都为第一帧
		private function resetAll():void{
			_tool1.gotoAndStop(1);
			_tool2.gotoAndStop(1);
			_tool3.gotoAndStop(1);
			_tool4.gotoAndStop(1);
			}
		
		private function toolRollOutHandler(e:MouseEvent):void{
			resetAll();
			}
		
		private function toolRollOverHandler(e:MouseEvent):void{
			resetAll();
			(e.target as MovieClip).gotoAndStop(2);
			}
		
		//箭头点击隐藏工具箱
		public function hideArrawHandler(e:MouseEvent):void{
			TweenLite.to(_otherToolContent, .5, {x:"300", ease:Circ.easeOut});
			
			}
		
		//工具点击事件
		private function toolClickHandler(e:MouseEvent):void{
			switch(e.currentTarget.name){
				case "tool1":
				loadToolImage(0);
				break;
				case "tool2":
				loadToolImage(1);
				break;
				case "tool3":
				loadToolImage(2);
				break;
				case "tool4":
				loadToolImage(3);
				break;
				}
			}
			
		//根据点击的工具选项加载相应的工具图片
		private function loadToolImage(toolId:uint):void{
			cleaall(_toolContent);
			
			_currentSelect.gotoAndStop(toolId+1);
			
			TweenLite.to(_otherToolContent, .5, {x:0, ease:Circ.easeOut});
			
			
			for(var i:uint=0;i<_toolNameArr[toolId].length;i++){
				var tempItem:ToolIetm=new ToolIetm(_toolNameArr[toolId][i],_toolImageArr[toolId][i]);
				tempItem.toolId=toolId;
				tempItem.toolItemId=i;
				tempItem.buttonMode=true;
				tempItem.mouseChildren=false;
				if(i%2==0){
					//偶数
					tempItem.x=0;
					tempItem.y=i/2*toolImageHeight+i/2*_gap;
					}else{
						tempItem.x=0+_gap+toolImageWidth;
						tempItem.y=(i-1)/2*toolImageHeight+(i-1)/2*_gap;
						}
				
				_toolContent.addChild(tempItem);
				tempItem.addEventListener(MouseEvent.CLICK,toolItemClickHandler);
				}
			}
			
		//工具项点击
		private function toolItemClickHandler(e:MouseEvent):void{
			var toolClick:ToolClickEvent=new ToolClickEvent();
			toolClick.toolId=(e.target as ToolIetm).toolId;
			toolClick.toolitemId=(e.target as ToolIetm).toolItemId;
			dispatchEvent(toolClick);
			}
		
		//去掉容器中的所有对象
		private function cleaall(thisContent:DisplayObjectContainer):void{
			   try {
					  while (true) {
							 thisContent.removeChildAt(thisContent.numChildren-1);
					  }
			   } catch (e:Error) {
					//  trace("全部删除！");
			   }
			}
		//===================================================================================================================//
	}
}