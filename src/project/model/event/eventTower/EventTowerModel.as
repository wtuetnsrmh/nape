package project.model.event.eventTower 
{
	import project.config.ErrorZhCn;
	import project.controller.SMZTController;
	import project.events.SMZTDataChangeEvent;
	import project.model.data.DataModel;
	
	/**
	 * ...
	 * @author bbjxl 2013
	 */
	public class EventTowerModel extends DataModel 
	{
		
		/*level	RushLevel	当前所在关卡
		revive RushLevel	复活点所在关卡，若没有复活点则为null
		surplus	int	剩余挑战次数
		ticket	int	兑换券数量
		forceCost	int	强制挑战消耗水晶数
		reviveCost	int	复活挑战消耗水晶数

		*/
		//----------------------容器---------------------------------
		
		//-----------------------UI---------------------------------
		
		//-----------------------数据---------------------------------
		private var _level:RushLevel;
		private var _revive:RushLevel;//不为0则表示之前战斗失败所在关卡ID
		private var _surplus:int;
		private var _ticket:int;
		private var _forceCost:int;
		private var _reviveCost:int;
		//-----------------------事件--------------------------------
		private static var _eventTowerModel:EventTowerModel;
		public function EventTowerModel() 
		{
			if (_eventTowerModel != null) {
				throw new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE);
				}
		}
		
		/**
		 * 获取关卡信息
		 */
		public function getPassInfo():void {
			SMZTController.getInstance().getPassInfo(function(param:Object):void {
				_level = new RushLevel(param["level"]);
				_revive = (param["revive"]==null)?null:new RushLevel(param["revive"]);
				_surplus = param["surplus"];
				_ticket = param["ticket"];
				_forceCost = param["forceCost"];
				_reviveCost = param["reviveCost"];
				dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
				})
			}
		
		
			
		public static function getInstance() : EventTowerModel
		{
			if (_eventTowerModel == null)
			{
			  _eventTowerModel = new EventTowerModel;
			}
			return _eventTowerModel; 
		}// end function
		
		public function get level():RushLevel 
		{
			return _level;
		}
		
		public function set level(value:RushLevel):void 
		{
			_level = value;
		}
		
		public function get revive():RushLevel 
		{
			return _revive;
		}
		
		public function set revive(value:RushLevel):void 
		{
			_revive = value;
		}
		
		public function get surplus():int 
		{
			return _surplus;
		}
		
		public function set surplus(value:int):void 
		{
			_surplus = value;
		}
		
		public function get ticket():int 
		{
			return _ticket;
		}
		
		public function set ticket(value:int):void 
		{
			_ticket = value;
		}
		
		public function get forceCost():int 
		{
			return _forceCost;
		}
		
		public function set forceCost(value:int):void 
		{
			_forceCost = value;
		}
		
		public function get reviveCost():int 
		{
			return _reviveCost;
		}
		
		public function set reviveCost(value:int):void 
		{
			_reviveCost = value;
		}
	}

}