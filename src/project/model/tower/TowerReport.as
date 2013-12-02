package project.model.tower
{
	import project.model.data.DataModel;
	import project.model.friends.BonusModel;
	
	/**
	 * 2.	战报信息
	 * @author bbjxl 2013
	 */
	public class TowerReport extends DataModel
	{
		/*
		 * lv	int	战斗的关卡编号
		   result	ResultReport	战斗结果报告
			bonus	Bonus	获得的奖励
		 */
		
		private var _lv:int;
		private var _result:ResultReport;
		private var _bonus:BonusModel;
		public function TowerReport(param:Object=null)
		{
			_result = new ResultReport();
			_bonus = new BonusModel();
			if (param == null) return;
			_lv = (param["lv"] == null) ? 0 : param["lv"];
			_bonus.setData(param["bonus"]);
			
			_result.result=(param["result"] == null) ? 0 : param["result"];
		}
		
		public function get lv():int 
		{
			return _lv;
		}
		
		public function set lv(value:int):void 
		{
			_lv = value;
		}
		
		public function get result():ResultReport 
		{
			return _result;
		}
		
		public function set result(value:ResultReport):void 
		{
			_result = value;
		}
		
		public function get bonus():BonusModel 
		{
			return _bonus;
		}
		
		public function set bonus(value:BonusModel):void 
		{
			_bonus = value;
		}
	
	}

}