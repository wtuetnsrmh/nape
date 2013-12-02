package project.model.data 
{
	import project.config.ErrorZhCn;
	import project.model.item.CardModel;
	/**
	 * 卡组模型
	 * @author bbjxl 2012
	 */
	public class DeckModel extends DataModel 
	{
		private var _id:int;//卡组编号
		private var _cards:Array;//卡牌编号
		private var _locked:int;//0-已解锁 1-未解锁
		private var _deckName:String;//卡组名称
		private var _heroCard:CardModel;//英雄卡
		private var _soldierCard:Vector.<CardModel>;//兵卡
		private var _mitacCard:Vector.<CardModel>;//神通卡
		private var _talismanCard:Vector.<CardModel>;//法宝卡
		public function DeckModel() 
		{
			_cards = new Array();
			_heroCard = new CardModel();
			_soldierCard = new Vector.<CardModel>();
			_mitacCard = new Vector.<CardModel>();
			_talismanCard = new Vector.<CardModel>();
		}
		//--------------------------------------------------------
		
		
		//--------------------------------------------------------
		public function get deckName() : String
		 {
		   return _deckName;
		}// end function
		
		public function set deckName(param1:String) : void
		{
		  _deckName= param1;
		  return;
		}// end function
		public function get locked() : int
		 {
		   return _locked;
		}// end function
		
		public function set locked(param1:int) : void
		{
		  _locked= param1;
		  return;
		}// end function
		
		public function get talismanCard() : Vector.<CardModel>
		 {
		   return _talismanCard;
		}// end function
		
		public function set talismanCard(param1:Vector.<CardModel>) : void
		{
		  _talismanCard= param1;
		  return;
		}// end function
		public function get mitacCard() : Vector.<CardModel>
		 {
		   return _mitacCard;
		}// end function
		
		public function set mitacCard(param1:Vector.<CardModel>) : void
		{
		  _mitacCard= param1;
		  return;
		}// end function
		public function get soldierCard() : Vector.<CardModel>
		 {
		   return _soldierCard;
		}// end function
		
		public function set soldierCard(param1:Vector.<CardModel>) : void
		{
		  _soldierCard= param1;
		  return;
		}// end function
		
		public function get heroCard() : CardModel
		 {
			 
		   return _heroCard;
		}// end function
		
		public function set heroCard(param1:CardModel) : void
		{
		  _heroCard= param1;
		  return;
		}// end function
		public function get cards() : Array
		 {
		   return _cards;
		}// end function
		
		public function set cards(param1:Array) : void
		{
			_talismanCard = new Vector.<CardModel>();
			_mitacCard = new Vector.<CardModel>();
			_soldierCard = new Vector.<CardModel>();
			_heroCard = new CardModel();
		  _cards = param1;
		  for (var i:String in _cards) {
				var temp:CardModel = new CardModel(_cards[i]);
				if (temp.ally > 0) {
					//英雄
					_heroCard = temp;
					continue;
					}else if(temp._Class==12) {
						//法宝
						_talismanCard.push(temp);
						continue;
						}else if (temp._Class == 13) {
							//神通
							_mitacCard.push(temp);
							continue;
							}else {
								//兵
								_soldierCard.push(temp);
								}
				}
		  return;
		}// end function
		
		public function get id() : int
		 {
		   return _id;
		}// end function
		
		public function set id(param1:int) : void
		{
		  _id= param1;
		  return;
		}// end function
	}

}