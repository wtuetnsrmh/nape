package project.model.training
{
	/**
	 * 战争学院数据模型
	 * @author bbjxl 2012
	 */
	import project.config.ErrorZhCn;
	import project.events.SMZTDataChangeEvent;
	import project.model.data.DataModel;
	import project.model.data.PlayerData;
	import project.model.item.CardModel;
	import project.model.item.IModel;
	
	public class TrainingModel extends DataModel implements IModel
	{
		/*slots	array[TrainingSlot]	对手玩家数组（长度为0-4）
		   hero	int	玩家初始英雄编号
		   left	int	剩余挑战场次
		   extra	int	已使用道具额外增加的场次数
		   extraMax	int	使用道具增加场次数的上限
		   next	int	下次增加场次剩余的时间，单位为秒，若不能增加则没有这个字段
		 */
		//----------------------容器---------------------------------
		
		//-----------------------UI---------------------------------
		
		//-----------------------数据---------------------------------
		private var _slots:Vector.<TrainingSlotModel>;
		private var _hero:int;
		private var _left:int;
		private var _extra:int;
		private var _extraMax:int;
		private var _next:int;
		
		//-----------------------事件--------------------------------
		
		private static var _trainingModel:TrainingModel = null;
		
		public function TrainingModel()
		{
			if (_trainingModel != null)
			{
				throw new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE);
			}
		}
		
		public function setData(param:Object):void {
			if (_slots) {
				_slots = null;
				}
			_slots = new Vector.<TrainingSlotModel>();
			var tempSlots:Object = param["slots"];
			if (tempSlots != null) {
				for (var i:String in tempSlots) {
					if (tempSlots[i]!=null) {
						var temp:TrainingSlotModel = new TrainingSlotModel();
						temp.setData(tempSlots[i]);
						_slots.push(temp);
						temp = null;
						}else {
							_slots.push(null);
							}
					}
				}
			tempSlots = null;
			
			_hero = (param["hero"] == null )?0:param["hero"];
			_left = (param["left"] == null )?0:param["left"];
			_extra = (param["extra"] == null )?0:param["extra"];
			_extraMax = (param["extraMax"] == null )?0:param["extraMax"];
			_next = (param["next"] == null )?-1:param["next"];
			
			dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
			}
		
		//--------------------------------------------------------
		public static function getInstance():TrainingModel
		{
			if (_trainingModel == null)
			{
				_trainingModel = new TrainingModel;
			}
			return _trainingModel;
		} // end function
		
		public function get slots():Vector.<TrainingSlotModel> 
		{
			return _slots;
		}
		
		public function set slots(value:Vector.<TrainingSlotModel>):void 
		{
			_slots = value;
		}
		
		public function get hero():int 
		{
			return _hero;
		}
		
		public function set hero(value:int):void 
		{
			_hero = value;
		}
		
		public function get left():int 
		{
			return _left;
		}
		
		public function set left(value:int):void 
		{
			_left = value;
		}
		
		public function get extra():int 
		{
			return _extra;
		}
		
		public function set extra(value:int):void 
		{
			_extra = value;
		}
		
		public function get extraMax():int 
		{
			return _extraMax;
		}
		
		public function set extraMax(value:int):void 
		{
			_extraMax = value;
		}
		
		public function get next():int 
		{
			return _next;
		}
		
		public function set next(value:int):void 
		{
			_next = value;
		}
	}

}