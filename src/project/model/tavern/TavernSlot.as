package project.model.tavern
{
	import project.model.data.DataModel;
	
	/**
	 * 1.	招募栏位
	 * @author bbjxl 2013
	 */
	public class TavernSlot extends DataModel
	{
		/*id	int	酒馆卡槽编号
		   card	int	卡牌编号
		   gold	int	招募所需金币数
		   locked	int	是否锁定 0-已解锁 1-已锁定
		   purchased	int	是否已购买 0-未购买 1-已购买
		 */
		private var _id:int;
		private var _card:int;
		private var _gold:int;
		private var _locked:Boolean;
		private var _purchased:Boolean;
		
		public function TavernSlot(param:Object)
		{
			_id = (param["id"] == null)?0:param["id"];
			_card = (param["card"] == null)?0:param["card"];
			_gold = (param["gold"] == null)?0:param["gold"];
			_locked = (param["locked"] == null)? true:((param["locked"] == 0)?false:true );
			_purchased = (param["purchased"] == null)? true:((param["purchased"] == 0)?false:true );
		}
		
		public function get id():int 
		{
			return _id;
		}
		
		public function set id(value:int):void 
		{
			_id = value;
		}
		
		public function get card():int 
		{
			return _card;
		}
		
		public function set card(value:int):void 
		{
			_card = value;
		}
		
		public function get gold():int 
		{
			return _gold;
		}
		
		public function set gold(value:int):void 
		{
			_gold = value;
		}
		
		public function get locked():Boolean 
		{
			return _locked;
		}
		
		public function set locked(value:Boolean):void 
		{
			_locked = value;
		}
		
		public function get purchased():Boolean 
		{
			return _purchased;
		}
		
		public function set purchased(value:Boolean):void 
		{
			_purchased = value;
		}
	
	}

}