package bbjxl.com.content.first{
	/**
	作者：被逼叫小乱
	
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.display.DisplayObjectContainer;
	import com.adobe.utils.ArrayUtil;
	import bbjxl.com.Gvar;
	import com.greensock.*;
	import com.greensock.easing.*;
	import bbjxl.com.ui.FormCell;
	import bbjxl.com.ui.FormC;
	import bbjxl.com.ui.FormCellClickEvent;
	import bbjxl.com.ui.CommonlyClass;
	import flash.geom.Point;
	import flash.events.Event;

	public class MNKS_ShowScore extends Sprite {
		
		private var _tryArr:Array=new Array();//试题数据
		private var _headTitle:Sprite=new Sprite();//标题容器
		private var _centerPart:Sprite=new Sprite();//中间部分容器
		private var _allMyScore:Number=0;//总得分
		
		private var _enterTi:Sprite=new Sprite();//进入该题目的容器
		
		private var _Gvar:Gvar;
		
		//测试数据
		private var _testUrl:String="../";
		//===================================================================================================================//
		
		//===================================================================================================================//
		public function MNKS_ShowScore(tryArr:Array) {
			addChild(_headTitle);
			addChild(_centerPart);
			addChild(_enterTi);
			_tryArr=tryArr;
			_Gvar=Gvar.getInstance();
			
			creaFormHead();
			
			creaFormBody();
			
			creaAllScore();
			
		}//End Fun
		//--------------------------------------------------------------------------------------------------------------------//
		//建立表头
		private function creaFormHead():void{
			//序号
			var hId:FormCell=new FormCell("序号",69,42,0xCFF0F9,0x000000,15,true);
			_headTitle.addChild(hId);
			//您所选的答案
			var hselected:FormCell=new FormCell("您所选的答案",120,42,0xCFF0F9,0x000000,15,true);
			hselected.x=hId.x+hId.width-1;
			_headTitle.addChild(hselected);
			//正确答案
			var hanswer:FormCell=new FormCell("正确答案",75,42,0xCFF0F9,0x000000,15,true);
			hanswer.x=hselected.x+hselected.width-1;
			_headTitle.addChild(hanswer);
			//得分
			var hscore:FormCell=new FormCell("得分",69,42,0xCFF0F9,0x000000,15,true);
			hscore.x=hanswer.x+hanswer.width-1;
			_headTitle.addChild(hscore);
			//查看原题
			var hti:FormCell=new FormCell("查看原题",100,42,0xCFF0F9,0x000000,15,true);
			hti.x=hscore.x+hscore.width-1;
			_headTitle.addChild(hti);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//增加中间部分
		private function creaFormBody():void{
			for(var i:uint=0;i<_tryArr.length;i++){
				var tempNewC:FormC=new FormC(_tryArr[i],i);
				//trace(_headTitle.height)
				tempNewC.y=_headTitle.y+_headTitle.height+tempNewC.height*i-i;
				_allMyScore+=Number(tempNewC.myScore);
				_centerPart.addChild(tempNewC);
				tempNewC.addEventListener(FormCellClickEvent.FORMCELLCLICKEVENT,formCellClickEventHandler);
				}
			}
		
		//进入该题目
		private function formCellClickEventHandler(e:FormCellClickEvent):void{
			//trace("clickPartId"+e.clickPartId+"//"+_tryArr[e.clickPartId].rightIndex);
			//建立灰色背景
			creabg();
			
			var tempEnterTi:MNKS_EnterTi=new MNKS_EnterTi(_tryArr[e.clickPartId]);
			var tempPoint:Point=new Point((Gvar.STAGE_X-tempEnterTi.width)/2,(Gvar.STAGE_Y-tempEnterTi.height)/2);
			
			tempEnterTi.x=globalToLocal(tempPoint).x;
			tempEnterTi.y=globalToLocal(tempPoint).y;
			TweenLite.from(tempEnterTi, .5, {x:Gvar.STAGE_X/2,y:Gvar.STAGE_Y,scaleX:0.1,scaleY:0.1, ease:Back.easeOut});
			_enterTi.addChild(tempEnterTi);
			tempEnterTi.addEventListener("closeEnterTi",closeEnterTiHandler);
			
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//后面的灰背景
		private function creabg():void
		{
			var bgSpObj:Sprite=new Sprite();
			bgSpObj.graphics.lineStyle(10,0x222222,0);
			bgSpObj.graphics.beginFill(0x112122,.8);
			bgSpObj.graphics.drawRect(0,0,stage.stageWidth,stage.stageHeight);
			bgSpObj.graphics.endFill();
			bgSpObj.x=(globalToLocal(new Point(0,0)).x);
			bgSpObj.y=(globalToLocal(new Point(0,0)).y);
			_enterTi.addChild(bgSpObj);
		}
		
		//关闭进入该题目弹出框
		private function closeEnterTiHandler(e:Event):void{
			CommonlyClass.cleaall(_enterTi);
			}
		
		//增加总得分
		private function creaAllScore():void{
			var allScore:FormCell=new FormCell("总分："+String(_allMyScore),_headTitle.width-1,60,0xCFF0F9,0xff0000,20,true,false,0,"right");
			allScore.y=_centerPart.y+_centerPart.height+42;
			_headTitle.addChild(allScore);
			}
		//===================================================================================================================//
	}
}