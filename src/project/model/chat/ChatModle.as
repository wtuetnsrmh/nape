package project.model.chat 
{
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	import project.config.ErrorZhCn;
	import project.events.SMZTDataChangeEvent;
	import project.model.data.DataModel;
	import project.model.item.IModel;
	
	/**
	 * 聊天模型
	 * @author bbjxl 2013
	 */
	public class ChatModle extends DataModel implements IModel 
	{
		//----------------------容器---------------------------------
		
		//-----------------------UI---------------------------------
		
		//-----------------------数据---------------------------------
		private var _msgs:Vector.<ChatMessage>;//所有的聊天记录
		private var _timer:Timer = new Timer(1000);//每秒增加一条缓存中的记录
		//-----------------------事件--------------------------------
		
		private static var chatModle:ChatModle;
		public function ChatModle() 
		{
			if (chatModle != null)
			{
				throw new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE);
			}
			_msgs = new Vector.<ChatMessage>();
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
			if (_msgs.length == 0) {
				stopTimer();
				return;
				}
			dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
		}
		
		public function setData(param:Array):void {
			for (var i:String in param) {
				var tempMes:ChatMessage = new ChatMessage(param[i]);
				_msgs.push(tempMes);
				}
				
			if (!_timer.running) {
				_timer.start();
				}
			}
		
		public static function getInstance() : ChatModle
		{
			if (chatModle == null)
			{
			  chatModle = new ChatModle;
			}
			return chatModle; 
		}// end function
		
		public function get msgs():Vector.<ChatMessage> 
		{
			return _msgs;
		}
		
		public function set msgs(value:Vector.<ChatMessage>):void 
		{
			_msgs = value;
		}
		
	}

}