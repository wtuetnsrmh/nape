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
	public class MyWebserviceSingle extends Sprite {
		private var ws:WebService;
		private var op:Operation;
		
		public var data:XML = new XML();
		
		public static var WSCOMPLETE:String = "wscomplete";
		public static var WSFAILED:String = "wsfailed";
		
		private static  var _singleton:Boolean=true;
        private static  var _instance:MyWebserviceSingle;
		//===================================================================================================================//
		public function get myOp():Operation {
			return op;
			}
		//===================================================================================================================//
		public function MyWebserviceSingle() {
			 if (_singleton) {
                 throw new Error("只能用getInstance()来获取实例");
             }
			
			
		}//End Fun
		public static function getInstance() {
            if (!_instance) {
                _singleton=false;
                _instance = new MyWebserviceSingle();
				_instance.init(Gvar.WebServerUrl);
                _singleton=true;
				
            }
            return _instance;
        }
		//--------------------------------------------------------------------------------------------------------------------//
		public function init(_url:String):void {
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