package bbjxl.com.display{
	/**
	作者：被逼叫小乱
	//第四部分万用表
	www.bbjxl.com/Blog
	**/
	import flash.text.*;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.display.DisplayObject;
	import flash.events.*;
	import flash.geom.Point;
	import flash.display.Shape;
	import flash.utils.getDefinitionByName;
	import caurina.transitions.*;
	import flash.filters.BitmapFilterQuality;
	import com.greensock.*;
	import bbjxl.com.ui.CommonlyClass;
	import com.greensock.easing.*;
	import bbjxl.com.event.UniversalEvent;
	import bbjxl.com.content.three.MNKS_Part;
	
	import flash.filters.GlowFilter;
	import bbjxl.com.content.second.Pin;
	import flash.display.DisplayObjectContainer;
	import bbjxl.com.ui.CreaText;
	import flash.display.SimpleButton;
	public class F_Universal extends Universal {
		public var parentTotalPointArr:Array=new Array();
		//===================================================================================================================//
		
		//===================================================================================================================//
		public function F_Universal(thisParent:DisplayObjectContainer) {
			super(thisParent);
		}//End Fun
		//------------------------------------------重写--------------------------------------------------------------------------//
		override protected function fstopDragehandler(e:Event):void{
			
			(e.currentTarget).stopDrag();
			for (var i:String in  parentTotalPointArr) {
				//如果笔头碰到
						if((_fb.bitail_mc).hitTestObject(parentTotalPointArr[i])){
							_currentFPin=parentTotalPointArr[i];
							_currentFPin.univeralOver();
							_fflaghit=true;
							_fb.hitPin();
							//如果两个笔都已经接好
							UniversalStart();
							return;
					  		break;
						   }else{
							   _fflaghit=false;
							   _fb.resetDocument();
							 	_currentFPin.univeralOut();
								  }
				}
			/*for (var p:uint= 0; p<_thisParent.numChildren; p++) {
    		   var _obj:*=_thisParent.getChildAt(p);
			   if(_obj is Part || _obj is MNKS_Part){
				
				    var temp:Array=new Array();
					temp=_obj.allPinArr;
					 trace(temp)
					for(var i in temp){
						//var tempP:Point=new Point(temp[i].x,temp[i].y);
						
						}
				   
				   }
  
			}*/
			
			if(!_fflaghit){
				resetDocument("f");
				}
			}
		
		override protected function zstopDragehandler(e:Event):void{
			
			(e.currentTarget).stopDrag();
			for (var i:String in  parentTotalPointArr) {
				//如果笔头碰到
						if((_zb.bitail_mc).hitTestObject(parentTotalPointArr[i])){
							_currentZPin=parentTotalPointArr[i];
							_currentZPin.univeralOver();
							_zflaghit=true;
					  		_zb.hitPin();

							UniversalStart();
							return;
					  		break;
						   }else{
							   _zflaghit=false;
							   _zb.resetDocument();
							   _currentZPin.univeralOut();
							   }
				}
			/*for (var p:uint= 0; p<_thisParent.numChildren; p++) {
    		   var _obj:*=_thisParent.getChildAt(p);
			   if(_obj is Part ||_obj is MNKS_Part){
				    var temp:Array=new Array();
					temp=_obj.allPinArr;
					for(var i in temp){
						
						
						}
				   
				   }
  
			}*/
			if(!_zflaghit){
				resetDocument("z");
				}
			}
		 //万用表开始运行
		override public function UniversalStart():void{
			
			if(_zflaghit && _fflaghit){
				var universalEvent:UniversalEvent=new UniversalEvent();
				universalEvent.ZbHitPin=_currentZPin;
				universalEvent.FbHitPin = _currentFPin;
				dispatchEvent(universalEvent);
				//trace(_currentZPin.name +"??"+_currentFPin.name)
				
				}
			}
		//===================================================================================================================//
	}
}