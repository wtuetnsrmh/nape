package project.model.tower
{
	import project.model.data.DataModel;
	
	/**
	 * 1.	战斗结果报告
	 * @author bbjxl 2013
	 */
	public class ResultReport extends DataModel
	{
		/*0	战斗失败
		   1	惨胜
		   2	胜利
		   3	大胜
		   4	完胜
		 */
		   
		public static const Fail:int = 0;
		public static const PyrrhicV:int = 1;
		public static const Victory:int = 2;
		public static const Whup:int = 3;
		public static const ThoroughlyWin:int = 4;
		
		
		private var _result:int = 0;
		public function ResultReport()
		{
			
		}
		
		public function get result():int 
		{
			return _result;
		}
		
		public function set result(value:int):void 
		{
			_result = value;
		}
	
	}

}