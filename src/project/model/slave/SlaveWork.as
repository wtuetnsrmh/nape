package project.model.slave
{
	
	/**
	 * ...
	 * @author bbjxl 2013
	 */
	public class SlaveWork
	{
		/*0	空闲中
		   1	喂养马匹
		   2	打扫营地
		   3	看守大门
		   4	巴比伦苦工
		   5	侍从
		 */
		public static const FREE:int = 0;
		public static const HORSE:int = 1;
		public static const CLEAN_CAMP:int = 2;
		public static const GUARD_DOOR:int = 3;
		public static const HARD_WORK:int = 4;
		public static const ATTENDANTS:int = 5;
		
		private var _workType:int = 0;
		public function SlaveWork()
		{
			
		}
		/**
		 * 根据奴役类型返回相应的时间（以秒为单位）
		 * @return
		 */
		public static function returnTimeByType(value:int):int {
			var returnTime:int = 0;
			switch(value) {
				case SlaveWork.FREE:
					returnTime = 0;//0分钟
					break;
				case SlaveWork.HORSE:
					returnTime = 10 * 60;//10分钟
					break;
				case SlaveWork.CLEAN_CAMP:
					returnTime = 30 * 60;//30分钟
					break;
				case SlaveWork.GUARD_DOOR:
					returnTime = 60 * 60;//60分钟
					break;
				case SlaveWork.HARD_WORK:
					returnTime = 240 * 60;//240分钟
					break;
				case SlaveWork.ATTENDANTS:
					returnTime = 600 * 60;//600分钟
					break;
				}
				return returnTime;
			}
		public function get workType():int 
		{
			return _workType;
		}
		
		public function set workType(value:int):void 
		{
			_workType = value;
		}
	
	}

}