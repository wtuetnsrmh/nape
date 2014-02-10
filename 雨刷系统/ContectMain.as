package  
{
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.utils.getTimer;
	import bbjxl.com.net.WebSeverPack;
	import bbjxl.com.event.WebServeResultEvent;
	
	/**
	 * ...
	 * @author bbjxl
		www.bbjxl.com
	 */
	public class ContectMain extends MovieClip 
	{
		
		private var _myws:WebSeverPack;
		private var initTime:Number;
		private var _xml:XML;
		public function ContectMain() 
		{
			initTime = getTimer();
			_myws = new WebSeverPack();
			/*_myws.pushOp("ResistanceVoltage", 1, 1 );
			_myws.pushOp("ResistanceVoltage", 1,2 );
			_myws.pushOp("ResistanceVoltage", 1, 3 );*/
			
			_myws.addEventListener(WebServeResultEvent.COMPLETE, completeHandler);
			_myws.addEventListener(WebServeResultEvent.FAILED, failedHandler);
			
			
		}
		
		public function puseOP(method_name:String, id:*=1,id1:uint=0):void {
			_myws.pushOp(method_name,id,id1 );
			}
		
		private function completeHandler(e:WebServeResultEvent):void {
			trace("e.methName="+e.methName)
			var time:Number = getTimer();
			trace("Call duration: "+(time - initTime)+" milliseconds");
			if (e.methName == "ResistanceVoltage") {
				if (_xml == null) {
				_xml = new XML();
				_xml = XML(e.data);
				}else {
					_xml.prependChild(XML(e.data).SwitchState);
					//_xml.insertChildAfter(_xml.SwitchState,XML(e.data).SwitchState);
					}
				//trace("_xml.children().length()="+_xml.children().length())
				//trace("_xml="+_xml)
				if (_xml.children().length() ==3) {
					var temp:WebServeResultEvent = new WebServeResultEvent(WebServeResultEvent.COMPLETE, _xml, e.methName);
					dispatchEvent(temp);
					}
				}else {
					if (_xml == null) {
					_xml = new XML();
					_xml = XML(e.data);
					}else {
						_xml=null;
						
						_xml = new XML();
						_xml = XML(e.data);
						}
						var temp1:WebServeResultEvent = new WebServeResultEvent(WebServeResultEvent.COMPLETE, _xml, e.methName);
						_xml = null;
						dispatchEvent(temp1);
					}
			}
			
		private function failedHandler(e:WebServeResultEvent):void {
			var time:Number = getTimer();
			trace("failedHandler Call duration: "+(time - initTime)+" milliseconds");
			trace(e.methName)
			}
		
	}

}
