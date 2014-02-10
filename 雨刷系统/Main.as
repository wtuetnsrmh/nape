package  
{
	import flash.display.MovieClip;
	import flash.utils.getTimer;
	import bbjxl.com.net.WebSeverPack;

	import bbjxl.com.event.WebServeResultEvent;
	import bbjxl.com.Gvar;
	/**
	 * ...
	 * @author bbjxl
		www.bbjxl.com
	 */
	public class Main extends MovieClip 
	{
		
		private var _myws:WebSeverPack;
		private var initTime:Number;
		private var _xml:XML;
		public function Main() 
		{
			initTime = getTimer();
			_myws = new WebSeverPack();
			_myws.pushOp("ResistanceVoltage", 1, 1 );
			_myws.pushOp("ResistanceVoltage", 1,2 );
			_myws.pushOp("ResistanceVoltage", 1, 3 );
			
			_myws.addEventListener(WebServeResultEvent.COMPLETE, completeHandler);
			_myws.addEventListener(WebServeResultEvent.FAILED, failedHandler);
			
			
		}
		
		private function completeHandler(e:WebServeResultEvent):void {
			var time:Number = getTimer();
			trace("Call duration: "+(time - initTime)+" milliseconds");
			if (_xml == null) {
				//trace("null")
				_xml = new XML();
				_xml = XML(e.data);
				}else {
					//trace("else")
					_xml.insertChildAfter(_xml.SwitchState,XML(e.data).SwitchState);
					}
			trace(_xml);

			}
			
		private function failedHandler(e:WebServeResultEvent):void {
			var time:Number = getTimer();
			trace("Call duration: "+(time - initTime)+" milliseconds");
			trace(e.methName)
			}
		
	}

}
