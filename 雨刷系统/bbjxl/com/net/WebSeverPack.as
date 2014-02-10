package bbjxl.com.net
{
	import flash.events.EventDispatcher;

	import flash.events.IOErrorEvent;

	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.net.URLVariables;
	import flash.events.Event;
	import mx.rpc.soap.LoadEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	
	import flash.events.MouseEvent;
	import mx.rpc.AbstractOperation;
	import bbjxl.com.loading.xmlReader;
	import mx.rpc.soap.WebService;
	import mx.rpc.soap.Operation;
	import bbjxl.com.event.WebServeResultEvent;
	/**
	 * ...
	 * @author bbjxl
		www.bbjxl.com
	 */
	public class WebSeverPack extends EventDispatcher 
	{
		private var service:WebService;
		private var option:AbstractOperation;
		private var _pushArr:Array = new Array();
		
		private var _loadingFlag:Boolean = false;
		private var _wsdlRead:Boolean = false;
		private var loader:URLLoader;
		private var request:URLRequest;
		public function WebSeverPack() 
		{
			service = new WebService();
			loadConfigXml();
			/*//在调用WebService方法前必须先调用loadWSDL方法，从指定的URL加载WSDL数据。
			service.loadWSDL("http://fz.qcyy.zjtie.edu.cn/Interface/WebServices/FlashWebService.asmx?wsdl");
			//给WebService对象添加侦听器，监听WSDL加载完成。
			service.addEventListener(LoadEvent.LOAD,onWSDL);
			//给WebService对象添加侦听器，监听出错的情况。
			service.addEventListener(FaultEvent.FAULT,onFault);*/
		}
		private function loadConfigXml():void {
			var tempXML:xmlReader = new xmlReader();
			tempXML.loadXml("config.xml");
			tempXML.addEventListener(xmlReader.LOADXMLOVER, loadxmloverhandler);
			}
			
		private function loadxmloverhandler(e:Event):void {
			trace("loadxmloverhandler")
				//(e.target as xmlReader).removeEventListener(xmlReader.LOADXMLOVER, loadxmloverhandler);
				var loadxml:XML = (e.target as xmlReader)._xmlData;
				//trace(loadxml.toXMLString())
				trace(loadxml.@wsUrl);
				var tempUrl:String = loadxml.@wsUrl;
				//在调用WebService方法前必须先调用loadWSDL方法，从指定的URL加载WSDL数据。
				service.loadWSDL(tempUrl);
				//给WebService对象添加侦听器，监听WSDL加载完成。
				service.addEventListener(LoadEvent.LOAD,onWSDL);
				//给WebService对象添加侦听器，监听出错的情况。
				service.addEventListener(FaultEvent.FAULT,onFault);
				
				}
				
		private function onWSDL(evt:LoadEvent):void
		{
			trace("onWSDL")
			_wsdlRead = true;
			//trace(_pushArr.length)
			if (!_loadingFlag) {
				if (_pushArr.length>0) {
					load(_pushArr.shift());
					}
				}
			
			
		}


		public function pushOp(method_name:String, id:*=1,id1:uint=0):void {
			trace(method_name)
			//trace("arg="+args[0])
			_pushArr.push( { methName:method_name, _id:id,_id1:id1 } );
			//_pushArr.push( { methName:method_name, arg:args } );
			if (!_loadingFlag && _wsdlRead) {
				if (_pushArr.length ==1) {
					load(_pushArr.shift());
					}
				}
			}
			
		//------------------------------------------------------
		private function load(value:Object):void {
			trace("load")
			_loadingFlag = true;
			
			//调用WebService方法。
			option = service.getOperation(value.methName);
			//为WebService方法添加侦听器，监听调用结果返回的情况。
			option.addEventListener(ResultEvent.RESULT,onResult);
			//为WebService方法添加侦听器，监听出错的情况。
			option.addEventListener(FaultEvent.FAULT, onFault);
			if (value._id1 == 0) {
				trace("0")
				option.send(value._id);
				}else {
					trace("1")
					option.send(value._id,value._id1);
					}
			
			
			/*request= new URLRequest("http://fz.qcyy.zjtie.edu.cn/Interface/WebServices/FlashWebService.asmx/"+value.methName);
			request.method = "post";
			
			var vars:URLVariables = new URLVariables();
			vars.CoursewareId =value.arg[0];
			vars.StateOrderID =value.arg[1];	
			request.data = vars;
			trace(vars.CoursewareId)
			
			loader = new URLLoader(request);
			loader.addEventListener(Event.COMPLETE, completeHandler);
			loader.addEventListener(IOErrorEvent.IO_ERROR, onFault);*/
			
		
			
			function onResult(evt:ResultEvent):void
			{
				option.removeEventListener(ResultEvent.RESULT, onResult);
				option.removeEventListener(FaultEvent.FAULT,onFault);
				//trace(evt.result)
				var temp:XML=new XML();
					temp=XML(evt.result);
					var tempEvent:WebServeResultEvent = new WebServeResultEvent(WebServeResultEvent.COMPLETE,temp,value.methName);
					dispatchEvent(tempEvent);
					
					_loadingFlag = false;
					
					if (_pushArr.length > 0) {
						load(_pushArr.shift());
					}
					
			}
		}
			
	
		
		private function onFault(evt:FaultEvent):void
		{
			option.removeEventListener(FaultEvent.FAULT,onFault);
			//出错处理语句
			trace(evt);
			var tempEvent:WebServeResultEvent = new WebServeResultEvent(WebServeResultEvent.FAILED, null);
				dispatchEvent(tempEvent);
				
				if (_pushArr.length > 0) {
				load(_pushArr.shift());
				}
		}
			
		
		
	}

}