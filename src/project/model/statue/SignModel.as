package project.model.statue
{
	import project.config.ErrorZhCn;
	import project.events.SMZTDataChangeEvent;
	import project.model.data.DataModel;
	
	/**
	 * 签到模型
	 * @author bbjxl 2013
	 */
	public class SignModel extends DataModel
	{
		/*days	int	连续签到天数
		   opened	int	是否已领取今天奖励，1-是，2-否
		 */
		   
		private var _days:int=1;
		private var _opened:Boolean=false;
		private static var _signModel:SignModel = null;
		
		public function SignModel()
		{
			if (_signModel != null)
			{
				throw Error(new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE));
			}
		}
		
		//--------------------------------------------------------
		public function setData(param:Object):void {
			_days = (param["days"] == null)?1:param["days"];
			_opened = (param["opened"] == null)?false:(param["opened"]==1)?true:false;
			
			dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
			}
		//--------------------------------------------------------
		
		public static function getInstance():SignModel
		{
			if (_signModel == null)
			{
				_signModel = new SignModel;
			}
			return _signModel;
		} // end function
		
		public function get days():int 
		{
			return _days;
		}
		
		public function set days(value:int):void 
		{
			_days = value;
		}
		
		public function get opened():Boolean 
		{
			return _opened;
		}
		
		public function set opened(value:Boolean):void 
		{
			_opened = value;
		}
	
	}

}