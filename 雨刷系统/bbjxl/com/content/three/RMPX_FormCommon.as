package bbjxl.com.content.three{
	/**
	作者：被逼叫小乱
	所有入门培训的表的共同点--一行9列
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import bbjxl.com.ui.FormCell;
	import bbjxl.com.ui.FormCellNext;
	import fl.data.DataProvider;
	import bbjxl.com.Gvar;
	import bbjxl.com.event.FormCellNextEvent;
	
	public class RMPX_FormCommon extends Sprite {
		private var _gvar:Gvar=Gvar.getInstance();
		private var _exam:Boolean=false;
		
		protected var formWidth:uint=80;
		protected var formHeight:uint=30;
		
		protected var _parentId:uint;//父类ID，通电，断电
		protected var _Id:uint;//自己ID
		
		protected var _score:Number=0;//分数
		
		//要更改的列
		public var h51:FormCell;
		public var h52:FormCell;
		protected var h6:FormCellNext;
		protected var h8:FormCellNext;
		
		protected var dataObj:Object=new Object();//数据数组
		//===================================================================================================================//
		public function get score():Number
		{
			return _score;
		}
		public function set score(_value:Number):void
		{
			_score = _value;
		}
		public function get parentId():uint
		{
			return _parentId;
		}
		public function set parentId(_value:uint):void
		{
			_parentId = _value;
		}
		public function get Id():uint
		{
			return _Id;
		}
		public function set Id(_value:uint):void
		{
			_Id = _value;
		}
		//===================================================================================================================//
		public function RMPX_FormCommon(_value:Object, _sco:Number = 0) {
			trace("_sco="+_sco)
			_exam=_gvar.T_EXAM_RM;
			_score=_sco;
			dataObj=_value;
			init();
		}//End Fun
		
		//让指定的表格背景闪动
		public function flashBg(modifyId:uint,flag:uint=1):void{
			switch (modifyId){
				case 0:
				//数据记录V
				if(flag==1)
				h51.StartflashBg();
				else
				h51.StopflashBg();
				break;
				case 1:
				//数据记录O
				if(flag==1)
				h52.StartflashBg();
				else
				h52.StopflashBg();
				break;
				
				default:
				trace("错");
				}
			}
		
		//更改
		public function modify(modifyId:uint,modifyContent:*):void{
			switch (modifyId){
				case 0:
				//数据记录V
				h51.changeText(modifyContent);
				break;
				case 1:
				//数据记录O
				h52.changeText(modifyContent);
				break;
				case 2:
				//症状描述
				h6.changeSelecte(modifyContent);
				break;
				case 3:
				//性能评判
				h8.changeSelecte(modifyContent);
				break;
				default:
				trace("错");
				}
			}
		
		protected function init():void{
			
			//测量内容
			var h3:FormCell=new FormCell(dataObj._name,formWidth,formHeight,0xF1F1F1,0x000000);
			addChild(h3);
			
			//测量位置
			var LocalArr:Array=new Array();
			LocalArr=dataObj.LocArr;
			var h41:FormCell=new FormCell(LocalArr[0],formWidth/2,formHeight,0xF1F1F1,0x000000);
			h41.x=h3.x+h3.width;
			if(!_exam)
			addChild(h41);
			var h42:FormCell=new FormCell(LocalArr[1],formWidth/2,formHeight,0xF1F1F1,0x000000);
			h42.x=h41.x+h41.width-1;
			if(!_exam)
			addChild(h42);
			
			//数据记录
			h51=new FormCell(dataObj.recordV,formWidth/2,formHeight,0xFF6666,0x000000);
			if(!_exam){
				h51.x=h42.x+h42.width;
			}else{
				h51.x=h3.x+h3.width;
				}
			addChild(h51);
			h51._drag=true;
			h52=new FormCell(dataObj.recordO,formWidth/2,formHeight,0xFF6666,0x000000);
			h52.x=h51.x+h51.width-1;
			h52._drag=true;
			addChild(h52);
			
			//症状描述
			var combox1:Array = String(dataObj.symptomsOps).split(",");
			var comboxid1:Array = String(dataObj.symptomsOpsId).split(",");
			
			var symptomsObj:Object=new Object();
			symptomsObj.init=dataObj.symptoms;
			symptomsObj.id=comboxid1;
			symptomsObj.arr = combox1;
			
			h6=new FormCellNext(symptomsObj,formWidth,formHeight,0xF1F1F1,0x000000);
			h6.x=h52.x+h52.width;
			addChild(h6);
			h6.addEventListener(FormCellNextEvent.FORMCELLNEXTEVENT,SymformCellNextEventHandler);
			
			//标准数据
			var h71:FormCell=new FormCell(dataObj.standardV,formWidth/2,formHeight,0xF1F1F1,0x000000);
			h71.x = h6.x + formWidth;
			
			if(!_exam)
			addChild(h71);
			var h72:FormCell=new FormCell(dataObj.standardO,formWidth/2,formHeight,0xF1F1F1,0x000000);
			h72.x=h71.x+h71.width-1;
			if(!_exam)
			addChild(h72);
			
			//性能评判
			var combox:Array = String(dataObj.performanceOps).split(",");
			var comboxid:Array = String(dataObj.performanceOpsId).split(",");
			var comObj:Object=new Object();
			comObj.init=dataObj.performance;
			comObj.arr=combox;
			comObj.id=comboxid;

			h8=new FormCellNext(comObj,formWidth,formHeight,0xF1F1F1,0x000000);
			if(!_exam){
				h8.x=h72.x+h72.width;
			}else{
				h8.x=h6.x+formWidth;
				}
			addChild(h8);
			
			h8.addEventListener(FormCellNextEvent.FORMCELLNEXTEVENT,formCellNextEventHandler);
			
			//如果要显示分数
			if (_gvar.T_EXAM_OVER) {
				trace("_score="+_score)
				var h9=new FormCell(String(_score),formWidth,formHeight,0xF1F1F1,0x000000);
				h9.x=h8.x+formWidth;
				addChild(h9);
				}
			
			}
			
		//下拉条变化
		protected function formCellNextEventHandler(e:FormCellNextEvent):void{
			
			var thisChangeEvent:FormCellNextEvent=new FormCellNextEvent(FormCellNextEvent.FORMCOMMONCHANGEEVENT);
			thisChangeEvent.thisSelect = e.thisSelect;
			thisChangeEvent.thisSelectId=e.thisSelectId;
			thisChangeEvent.thisid=_Id;
			thisChangeEvent.parentId = parentId;
			thisChangeEvent.changeRow="judge";
			dispatchEvent(thisChangeEvent);
			
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//症状描述下拉条变化
		protected function SymformCellNextEventHandler(e:FormCellNextEvent):void{
			
			var thisChangeEvent:FormCellNextEvent=new FormCellNextEvent(FormCellNextEvent.FORMCOMMONCHANGEEVENT);
			thisChangeEvent.thisSelect=e.thisSelect;
			thisChangeEvent.thisSelectId=e.thisSelectId;
			thisChangeEvent.thisid=_Id;
			thisChangeEvent.parentId=parentId;
			thisChangeEvent.changeRow="_symptoms";
			dispatchEvent(thisChangeEvent);
			
			}
		//===================================================================================================================//
	}
}