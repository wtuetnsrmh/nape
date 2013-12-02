package project.model.tavern
{
	import project.config.ErrorZhCn;
	import project.events.SMZTDataChangeEvent;
	import project.model.data.DataModel;
	import project.model.item.IModel;
	
	/**
	 * 酒馆数据模型
	 * @author bbjxl 2013
	 */
	public class TavernModel extends DataModel implements IModel
	{
		/*cd	int	剩余刷新的秒数
		 slots	array[TavernSlot]	酒馆卡槽列表*/
		
		private var _cd:int = 0; 
		private var _slots:Vector.<TavernSlot>;
		
		private static var _tavernModel:TavernModel = null;
		
		public function TavernModel()
		{
			if (_tavernModel != null)
			{
				throw new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE);
			}
			
		}
		
		public function setData(param:Object):void
		{
			_slots = null;
			_slots = new Vector.<TavernSlot>();
			_cd = (param["cd"] == null)?0:param["cd"];
			var temp:Object = param["slots"];
			for (var i:String in temp) {
				_slots.push(new TavernSlot(temp[i]));
				}
			//排序
			quickSort(_slots, 0, _slots.length - 1);
			
			dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
		}
		
		//快速排序 
		//============================================
		public function quickSort(a:Vector.<TavernSlot>,a_low:int,a_high:int):void
			{
				if (a.length < 1) return;
				
				var low:int = a_low;
				var high:int = a_high;
				if (low>=high)
				{
					return;
				}
				var transfer:Boolean = true;
				while (low!=high)
				{
					if (judgeLevel0(a[low],a[high]))
					{
						var temp:TavernSlot = a[low];
						a[low] = a[high];
						a[high] = temp;
						transfer = (transfer == true) ? false:true;
					}
					transfer ? high--:low++;
				}
				low--;
				high++;
				quickSort(a,a_low,low);
				quickSort(a,high,a_high);
			}
		public function judgeLevel0(arg1:TavernSlot,arg2:TavernSlot):Boolean {
			var returnFalg:Boolean = false;

				if (arg1.id > arg2.id) {
					returnFalg = true;
					return returnFalg;
				}
				
				return returnFalg;
			}
			
		public static function getInstance():TavernModel
		{
			if (_tavernModel == null)
			{
				_tavernModel = new TavernModel;
			}
			return _tavernModel;
		} // end function
		
		public function get cd():int 
		{
			return _cd;
		}
		
		public function set cd(value:int):void 
		{
			_cd = value;
		}
		
		public function get slots():Vector.<TavernSlot> 
		{
			return _slots;
		}
		
		public function set slots(value:Vector.<TavernSlot>):void 
		{
			_slots = value;
		}
	
	}

}