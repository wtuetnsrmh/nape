package project.model.slave
{
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	import project.events.SMZTDataChangeEvent;
	import project.model.data.DataModel;
	import project.model.data.User;
	import project.model.item.IModel;
	
	/**
	 * ...
	 * @author bbjxl 2013
	 */
	public class SlaveSlot extends DataModel implements IModel
	{
		/*user	User	奴隶玩家信息
		   work	SlaveWork	工作类型
		   timer	int	工作剩余时间（单位：秒），可为空
		   备注：当工作类型不为“空闲中”，且工作剩余时间为0时表示该奴隶工作完成。
		 */
		   
		private var _user:User;
		private var _work:int;
		private var _time:int;
		private var _finish:Boolean = false;//是否工作完成。
		private var _timer:Timer = new Timer(1000);
		public function SlaveSlot()
		{
			_timer.addEventListener(TimerEvent.TIMER, timerHandler);
		}
		/**
		 * 倒计时
		 * @param	e
		 */
		private function timerHandler(e:TimerEvent):void 
		{
			if (time == 0) {
				_timer.stop();
				
				}else {
					time--;
					}
			
		}
		
		public function setData(param:Object):void {
			
			_work=(param["work"] == null)?0:param["work"];
			time = (param["timer"] == null)?0:param["timer"];
			if(param.user){
			_user = new User(param.user);
			}
			
			_timer.start();
			
			//dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
			}
		
		public function get user():User 
		{
			return _user;
		}
		
		public function set user(value:User):void 
		{
			_user = value;
		}
		
		public function get work():int 
		{
			return _work;
		}
		
		public function set work(value:int):void 
		{
			_work = value;
		}
		
		public function get time():int 
		{
			return _time;
		}
		
		public function set time(value:int):void 
		{
			_time = value;
			if (work != SlaveWork.FREE && _time==0) {
				_finish = true;
				dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
				}
		}
		
		public function get finish():Boolean 
		{
			
			return _finish;
		}
		
		public function set finish(value:Boolean):void 
		{
			_finish = value;
		}
	
	}

}