package project.model.chat
{
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	import project.config.ErrorZhCn;
	import project.events.SMZTDataChangeEvent;
	import project.model.data.DataModel;
	import project.model.item.IModel;
	
	/**
	 * 广播消息子模型
	 * @author bbjxl
	 */
	public class BroadcastModel extends DataModel implements IModel
	{
		private var _broadcasts:Vector.<Broadcast>;
		private var _maxNum:int = 10;
		private var _timer:Timer = new Timer(1000);
		
		private static var _broacastModel:BroadcastModel;
		
		public function BroadcastModel()
		{
			if (_broacastModel != null)
			{
				throw(new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE));
			}
			_broadcasts = new Vector.<Broadcast>();
			_timer.addEventListener(TimerEvent.TIMER, timerHandler);
		}
		/**
		 * 停止计时
		 * @param	e
		 */
		private function stopTimer():void {
			_timer.stop();
			}
		private function timerHandler(e:TimerEvent):void 
		{
			if (_broadcasts.length == 0) {
				stopTimer();
				return;
				}
			
			dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
		}
		
		public function setData(param:Object):void {
			for (var i:String in param) {
				var tempBroadcast:Broadcast = new Broadcast(param[i]);
				_broadcasts.push(tempBroadcast);
				tempBroadcast = null;
				}
				
			if (!_timer.running) {
				_timer.start();
				}
			}
		
		public static function getInstance():BroadcastModel
		{
			if (_broacastModel == null)
			{
				_broacastModel = new BroadcastModel();
			}
			return _broacastModel;
		} // end function
		
		public function get broadcasts():Vector.<Broadcast> 
		{
			return _broadcasts;
		}
		
		public function set broadcasts(value:Vector.<Broadcast>):void 
		{
			_broadcasts = value;
		}
		
		public function get maxNum():int 
		{
			return _maxNum;
		}
		
		public function set maxNum(value:int):void 
		{
			_maxNum = value;
		}
	
	}

}