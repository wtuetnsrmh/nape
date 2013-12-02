package project.model.attack 
{
	import project.model.data.DataModel;
	import project.model.item.CardModel;
	import project.model.item.IModel;
	
	/**
	 * 战斗场景中卡的模型
	 * 键表示该卡牌在战斗记录中的唯一编号，值表示卡牌本身的编号。
	 * @author bbjxl 2012
	 */
	public class AttackCardModel extends DataModel implements IModel 
	{
		private var _uniqueId:String = "0";//战斗记录中的唯一编号
		private var _cardId:int = 0;//卡牌本身的编号。
		private var _cardModel:CardModel;//卡的数据模型
		public function AttackCardModel() 
		{
			
		}
		public function get cardId() : int
		 {
		   return _cardId;
		}// end function
		//--------------------------------------------------------
		
		
		//--------------------------------------------------------
		public function get cardModel() : CardModel
		 {
		   return _cardModel;
		}// end function
		
		public function set cardModel(param1:CardModel) : void
		{
		  _cardModel= param1;
		  return;
		}// end function
		public function set cardId(param1:int) : void
		{
		  _cardId = param1;
		  _cardModel = new CardModel(_cardId);
		  return;
		}// end function
		public function get uniqueId() : String
		 {
		   return _uniqueId;
		}// end function
		
		public function set uniqueId(param1:String) : void
		{
		  _uniqueId= param1;
		  return;
		}// end function
		
	}

}