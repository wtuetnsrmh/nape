package project.model.tower
{
	import project.model.data.DataModel;
	
	/**
	 * 3.	关卡信息（TowerLevel）
	 * @author bbjxl 2013
	 */
	public class TowerLevel extends DataModel
	{
		/*id	int	关卡的编号
		   mode	BattleMode	关卡的战斗模式
		   cards	array[int]	关卡内敌方卡牌编号列表
		 */
		   
		private var _id:int=0;
		private var _mode:int;
		private var _cards:Array;
		public function TowerLevel()
		{
			
		}
		public function setData(param:Object):void {
			_id = (param["id"] == null) ? 0 : param["id"];
			_mode = (param["mode"] == null) ? 0 : param["mode"];
			_cards = (param["cards"] == null) ? new Array() : param["cards"];
			}
		
		public function get id():int 
		{
			return _id;
		}
		
		public function set id(value:int):void 
		{
			_id = value;
		}
		
		public function get mode():int 
		{
			return _mode;
		}
		
		public function set mode(value:int):void 
		{
			_mode = value;
		}
		
		public function get cards():Array 
		{
			return _cards;
		}
		
		public function set cards(value:Array):void 
		{
			_cards = value;
		}
	
	}

}