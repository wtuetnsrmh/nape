package project.model.event.eventTower 
{
	import project.config.SpecialItemIdConfig;
	import project.model.data.DataModel;
	import project.model.friends.BonusModel;
	
	/**
	 * 1.	关卡信息
	 * @author bbjxl 2013
	 */
	public class RushLevel extends DataModel 
	{
		/*id	int	关卡的编号
			mode	BattleMode	关卡的战斗模式
			cards	array[int]	关卡内敌方卡牌编号列表
			bonus	Bonus	过关奖励
			*/
			
		private var _id:int;
		private var _mode:int;
		private var _cards:Array;
		private var _bonus:BonusModel;
		public function RushLevel(param:Object) 
		{
			_id = param["id"];
			_mode = param["mode"];
			_cards = param["cards"];
			_bonus = new BonusModel();
			_bonus.setData(param["bonus"]);
		}
		
		/**
		 * 计算当前关卡奖励的兑换券数量
		 * @return
		 */	
		public function exchangeItemNum():int {
			var temp:Array = _bonus.items;
			var returnNum:int = 0;
			for (var i:String in temp) {
				if (temp[i].id == SpecialItemIdConfig.EXCHANGE_EVENT) {
					returnNum += temp[i].number;
					}
				}
				return returnNum;
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