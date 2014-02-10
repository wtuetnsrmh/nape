package bbjxl.com.net{
	/**
	作者：被逼叫小乱
	
	www.bbjxl.com/Blog
	**/
	import adobe.utils.CustomActions;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.MouseEvent;
	import be.wellconsidered.services.WebService;
	import be.wellconsidered.services.Operation;
	import bbjxl.com.Gvar;
	import be.wellconsidered.services.events.OperationEvent;
	public class MyWebservice extends Sprite {
		private var ws:WebService;
		private var op:Operation;
		
		public var data:XML = new XML();
		
		public static var WSCOMPLETE:String = "wscomplete";
		public static var WSFAILED:String = "wsfailed";
		//===================================================================================================================//
		public function get myOp():Operation {
			return op;
			}
		//===================================================================================================================//
		public function MyWebservice() {
			
			init(Gvar.WebServerUrl);
			
		}//End Fun
		//--------------------------------------------------------------------------------------------------------------------//
		private function init(_url:String):void {
			ws = new WebService(_url);
			op = new Operation(ws);
			
			}
		//--------------------------------------------------------------------------------------------------------------------//
		/*public function Myoperation(opfun:String, parameter:Object):void {
			
			op.opfun(parameter);
			op.addEventListener(OperationEvent.COMPLETE, onResult);
			op.addEventListener(OperationEvent.FAILED, onFault);
			}*/
		//--------------------------------------------------------------------------------------------------------------------//
		public function onResult(e:OperationEvent):void
		{
			
			
			//trace("onResult"+XML(e.data));
			data = XML(e.data);
			dispatchEvent(new Event(WSCOMPLETE));
		}
		public function onFault(e:OperationEvent):void
		{
			trace("ws error");
			dispatchEvent(new Event(WSFAILED));
		}
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		
		//===================================================================================================================//
	}
}