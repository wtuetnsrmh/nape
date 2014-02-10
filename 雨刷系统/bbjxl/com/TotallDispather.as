package bbjxl.com 
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	
	/**
	 * ...
	 * @author bbjxl
	 * 事件发出者
	 */
	public class TotallDispather extends EventDispatcher
	{
		private static  var _singleton:Boolean=true;
        private static  var _instance:TotallDispather;
		public static var _currentToolOrLoadSwf:int = 0;//1：swf,0:tool
		
		public static const SWAP_TOOL_AND_LOADSWF_INDEX:String = "SwapToolAndLoadswfIndex";//交换工具跟加载SWF的深度
		public function TotallDispather() 
		{
			 if (_singleton) {
                 throw new Error("只能用getInstance()来获取实例");
             }
		}
		public static function getInstance() {
            if (!_instance) {
                _singleton=false;
                _instance=new TotallDispather();
              //  _singleton=true;
				
            }
            return _instance;
        }
		public function MydispatchEvent(eventName:String):void {
			dispatchEvent(new Event(eventName, true));
			//return super().dispatchEvent.apply(null, new Event(eventName, true));
			}
		
	}

}