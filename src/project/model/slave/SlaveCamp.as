package project.model.slave
{
	import project.config.ErrorZhCn;
	import project.events.SMZTDataChangeEvent;
	import project.model.data.DataModel;
	import project.model.item.IModel;
	
	/**
	 * 奴隶营地数据模型
	 * @author bbjxl 2013
	 */
	public class SlaveCamp extends DataModel implements IModel
	{
		/*max	int	最大可奴役人数
		   enslaveSurplus	int	今日奴役剩余次数
		   workSurplus	int	今日奴隶工作剩余次数
		   slaves	array[SlaveSlot]	奴隶栏列表
		 */
		private static var _slaveCamp:SlaveCamp = null;
		
		private var _max:int;
		private var _enslaveSurplus:int;
		private var _workSurplus:int;
		private var _slaves:Vector.<SlaveSlot>;
		
		public function SlaveCamp()
		{
			if (_slaveCamp != null)
			{
				throw new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE);
			}
		}
		
		public function setData(param:Object):void {
			_max = (param["max"] == null)?0:param["max"];
			_enslaveSurplus = (param["enslaveSurplus"] == null)?0:param["enslaveSurplus"];
			_workSurplus = (param["workSurplus"] == null)?0:param["workSurplus"];
			_slaves = new Vector.<SlaveSlot>();
			var tempObj:Object = param["slaves"];
			if(tempObj!=null){
				for (var i:String in tempObj) {
					var tempSlot:SlaveSlot = new SlaveSlot();
					tempSlot.setData(tempObj[i]);
					_slaves.push(tempSlot);
					tempSlot = null;
					}
				}
			tempObj = null;
			
			dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
			}
			
		public function get max():int 
		{
			return _max;
		}
		public static function getInstance() : SlaveCamp
		{
			if (_slaveCamp == null)
			{
			  _slaveCamp = new SlaveCamp;
			}
			return _slaveCamp; 
		}// end function
		public function set max(value:int):void 
		{
			_max = value;
		}
		
		public function get enslaveSurplus():int 
		{
			return _enslaveSurplus;
		}
		
		public function set enslaveSurplus(value:int):void 
		{
			_enslaveSurplus = value;
		}
		
		public function get workSurplus():int 
		{
			return _workSurplus;
		}
		
		public function set workSurplus(value:int):void 
		{
			_workSurplus = value;
		}
		
		public function get slaves():Vector.<SlaveSlot> 
		{
			return _slaves;
		}
		
		public function set slaves(value:Vector.<SlaveSlot>):void 
		{
			_slaves = value;
		}
	
	}

}