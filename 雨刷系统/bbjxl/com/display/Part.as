package bbjxl.com.display{
	/**
	作者：被逼叫小乱
	各部件基类
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import bbjxl.com.content.three.RMPX_Fault_Select;
	import lt.uza.ui.Scale9BitmapSprite;
	import lt.uza.ui.Scale9SimpleStateButton;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.DisplayObjectContainer;
	import flash.geom.Rectangle;
	import flash.utils.getDefinitionByName;
	import flash.events.Event;
	import bbjxl.com.content.three.FaultOptionClickEvent;
	import bbjxl.com.Gvar;
	import bbjxl.com.content.three.PartClickEvent;
	import bbjxl.com.content.second.Pin;
	import flash.geom.Point;
	

	public class Part extends MovieClip {
		public var _partName:String;//部件名称
		public var _partId:String;//部件Id
		protected var _fault:Boolean=false //是否故障
		protected var _Xml:XML=new XML();
		protected var _bgMC:MovieClip=new MovieClip();
		protected var _gvar:Gvar=Gvar.getInstance();
		protected var _clicked:Boolean=false;//是否已经点过一次
		
		protected var _dkMc:MovieClip=new MovieClip();//部件断开时要显示的内容
		
		protected var _currentState:uint;//当前处理的状态
		
		protected var _pinSp:Sprite=new Sprite();//点容器
		protected var _allPinArr:Array=new Array();//放所有的点
		public var _RMPX_Fault_Select:RMPX_Fault_Select;//故障菜单
		
		//初始位置
		public var _point:Point;
		
		
		//===================================================================================================================//
		public function set partId(_id:String):void {
			_partId=_id;
		}
		public function get partId():String {
			return _partId;
		}
		public function set Xml(_id:XML):void {
			_Xml=_id;
		}
		public function get Xml():XML {
			return _Xml;
		}
		public function set currentState(_id:uint):void {
			_currentState=_id;
		}
		public function get currentState():uint {
			return _currentState;
		}
		public function set allPinArr(_id:Array):void {
			_allPinArr=_id;
		}
		public function get allPinArr():Array {
			return _allPinArr;
		}
		public function set clicked(_id:Boolean):void {
			_clicked=_id;
		}
		public function get clicked():Boolean {
			return _clicked;
		}
		public function set fault(_id:Boolean):void {
			_fault=_id;
		}
		public function get fault():Boolean {
			return _fault;
		}
		//===================================================================================================================//
		public function Part() {
			addChild(_pinSp);
			//this.setChildIndex(_pinSp,0);
		}//End Fun
		
		//建立所有的点
		public function creaPin(_pinLocaleArr:Array):void
		{
			for(var i:uint=0;i<_pinLocaleArr.length;i++){
				var newPin:Pin=new Pin();
				newPin.x=_pinLocaleArr[i].x;
				newPin.y=_pinLocaleArr[i].y;
				newPin.pinId=turnPinId(i+1);
				
				_pinSp.addChild(newPin);
				_allPinArr.push(newPin);
				}

		}
		
		//转换点ID
		protected function turnPinId(_value:uint):uint{
			var returnId:uint;
			var tempArr:Array=new Array();
			
			switch(this.name){
				case "雨刮继电器":
				tempArr=Gvar._T_RMPX_ysjdq;
				break;
				case "雨刷电机":
				tempArr=Gvar._T_RMPX_ysdj;
				break;
				case "喷水电机":
				tempArr=Gvar._T_RMPX_psdj;
				break; 
				case "雨刮开关":
				tempArr=Gvar._T_RMPX_yskg;
				break;
				
				default:
				trace("出错")
				}
			
			for(var i:String in tempArr){
				//trace(tempArr[i]._id);
				if(tempArr[i]._id==_value)
				{
					returnId=tempArr[i].pinId;
					}
				}
			return returnId;
			
			}
		
		public function returnOptionSelect():int{
			var tempId:int;
			tempId=_RMPX_Fault_Select.currentSelecteOptionIndex;
			return tempId;
			}
		
		//对外接口
		public function interfaceOut(_value:XMLList):void {
			//trace(_value)
			_dkMc=this.getChildByName("dk") as MovieClip;
			_dkMc.visible=false;//初始为隐藏断开状态
			
			_Xml=XML(_value.toXMLString());
			_RMPX_Fault_Select = new RMPX_Fault_Select(_Xml);
			_partId = String(_Xml.@partid);
			//部件点击事件
			_bgMC=this.getChildByName("bgMC") as MovieClip;
			_bgMC.buttonMode=true;
			_bgMC.addEventListener(MouseEvent.CLICK,partClickEventHandler);
			}
		
		//部件点击事件
		private function partClickEventHandler(e:MouseEvent):void{
				//this.removeEventListener(MouseEvent.CLICK,partClickEventHandler);
				var _partClick:PartClickEvent=new PartClickEvent();
				_partClick.clicked=true;
				dispatchEvent(_partClick);
				/*if(_clicked){
					//断开
					_dkMc.visible=true;
					_fault=true;
					_partClick.clicked=true;
					dispatchEvent(_partClick);
					}else{
						_partClick.clicked=false;
						dispatchEvent(_partClick);
						}*/
				_clicked=true;
				_gvar.T_RMPX_PARTED=true;
			}
		
		//显示故障菜单
		public function showFaultMenu():void{
			_RMPX_Fault_Select.x=_bgMC.width+10;
			addChild(_RMPX_Fault_Select);
			_RMPX_Fault_Select.addEventListener("closeFaultSelecteOption",closeFaultSelecteOptionHandler);
			}
		
		//关闭故障菜单
		private function closeFaultSelecteOptionHandler(e:Event):void{
			if(contains(_RMPX_Fault_Select))
			removeChild(_RMPX_Fault_Select);
			_bgMC.addEventListener(MouseEvent.CLICK,partClickEventHandler);
			_gvar.T_RMPX_PARTED=true;
			
			
			/*_fault=false;
			_clicked=false;
			_dkMc.visible=false;*/
			}
		//关闭故障菜单
		public function closeFaultSelecteOption():void{
			
			if(contains(_RMPX_Fault_Select))
			removeChild(_RMPX_Fault_Select);
			_gvar.T_RMPX_PARTED=true;
			
			/*_fault=false;
			_clicked=false;
			_dkMc.visible=false;*/
			
			
			}
		//--------------------------------------------------------------------------------------------------------------------//
		
		//===================================================================================================================//
	}
}