package project.model.statue
{
	import project.config.ConfigXML;
	import project.config.ErrorZhCn;
	import project.config.ItemConfig;
	import project.events.SMZTDataChangeEvent;
	import project.model.data.DataModel;
	import project.model.item.IModel;
	
	/**
	 * ...
	 * @author bbjxl 2013
	 */
	public class StatueModel extends DataModel implements IModel
	{
		/*point	int	今日活跃总积分
		   opened	array[int]	今日已领取的宝箱编号
		   objectives	pair[int:int]	任务进度
		   
			"objectives": {
			"1": 1,
			"7": 10,
			"3": 10,
			"4": 4,
			"5": 10,
			"8": 7,
			"11": 10,
			"12": 4,
			"10": 5
			}
		   键：任务编号（参考静态配置表中的Activity配置）
		   值：任务进度
		 */
		private var _point:int;
		private var _opened:Array;
		private var _objectives:Object;
		private var _rows:Vector.<StatueRowModel>;
		private var _totalPoint:int = 0;//总共活跃度
		//private var _havePoint:int;//已经有的活跃度
		
		private static var _statueModel:StatueModel;
		
		public function StatueModel()
		{
			if (_statueModel != null)
			{
				throw Error(new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE));
			}
			initDataModel();
		}
		
		private function initDataModel():void 
		{
			
			_rows = new Vector.<StatueRowModel>();
			var _xml:XMLList = ItemConfig.ACTIVITY_CONFIG.Objectives.children();
			for (var i:String in _xml) {
				
				_rows.push(new StatueRowModel(_xml[i]));
				}
		}
		
		public function setData(param:Object):void {
			_totalPoint = 0;
			_point = (param["point"] == null)?0:param["point"];
			_opened = (param["opened"] == null)?null:param["opened"];
			_objectives = (param["objectives"] == null)?null:param["objectives"];
			if (_objectives) {
				for (var i:String in _rows) {
					_rows[i].progress = _objectives[String(int(i) + 1)];
					//trace(_objectives[String(int(i) + 1)])
					_totalPoint += _rows[i].max*_rows[i].point;
					//_havePoint += _rows[i].progress;
					}
				}
			dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
			}
		
		public static function getInstance():StatueModel
		{
			if (_statueModel == null)
			{
				_statueModel = new StatueModel;
			}
			return _statueModel;
		} // end function
		
		public function get point():int 
		{
			return _point;
		}
		
		public function set point(value:int):void 
		{
			_point = value;
		}
		
		public function get opened():Array 
		{
			return _opened;
		}
		
		public function set opened(value:Array):void 
		{
			_opened = value;
		}
		
		public function get objectives():Object 
		{
			return _objectives;
		}
		
		public function set objectives(value:Object):void 
		{
			_objectives = value;
		}
		
		public function get rows():Vector.<StatueRowModel> 
		{
			return _rows;
		}
		
		public function set rows(value:Vector.<StatueRowModel>):void 
		{
			_rows = value;
		}
		
		public function get totalPoint():int 
		{
			return _totalPoint;
		}
		
		public function set totalPoint(value:int):void 
		{
			_totalPoint = value;
		}
		
		
	
	}

}