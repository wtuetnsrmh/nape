package project.model.event.eventTower 
{
	import project.model.data.DataModel;
	import project.model.friends.BonusModel;
	
	/**
	 * ...
	 * @author bbjxl 2013
	 */
	public class ExchangeGoods extends DataModel 
	{
		/*id	int	商品编号
			bonus	Bonus	商品奖励内容
			price	int	商品价格
			*/
			
		private var _id:int;
		private var _price:int;
		private var _bonus:BonusModel;
		private var _isCard:Boolean;//是否bonus中有卡
		public function ExchangeGoods(param:Object) 
		{
			_id = param["id"];
			_price = param["price"];
			_bonus = new BonusModel();
			_bonus.setData(param["bonus"]);
		}
		
		public function get id():int 
		{
			return _id;
		}
		
		public function set id(value:int):void 
		{
			_id = value;
		}
		
		public function get bonus():BonusModel 
		{
			return _bonus;
		}
		
		public function set bonus(value:BonusModel):void 
		{
			_bonus = value;
		}
		
		public function get isCard():Boolean 
		{
			if (_bonus.cards && _bonus.cards.length > 0) {
				_isCard = true;
				}else {
					_isCard = false;
					}
			return _isCard;
		}
		
		public function set isCard(value:Boolean):void 
		{
			_isCard = value;
		}
		
		public function get price():int 
		{
			return _price;
		}
		
		public function set price(value:int):void 
		{
			_price = value;
		}
		
	}

}