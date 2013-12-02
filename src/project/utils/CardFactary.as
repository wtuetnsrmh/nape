package project.utils 
{
	
	import de.polygonal.core.ObjectPool;
	
	import project.Cellcard.Card;
	import project.config.ApplicationConfig;
	import project.config.ErrorZhCn;
	import project.model.item.CardModel;
	
	/**
	 * 卡牌工厂
	 * @author bbjxl 2012
	 */
	public class CardFactary extends Object 
	{
		private static var _instance:CardFactary;
		public var cardPool:ObjectPool;
		public function CardFactary() 
		{
			
            if (_instance != null)
            {
                throw new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE);
            }
			/*cardPool=new ObjectPool(true);
			cardPool.setFactory(new CardPoolFactary(Card));
			cardPool.allocate(1);*/
			
			
		}
		
		/**
		 * 
		 * @param	cardid
		 * @param	cardNumber
		 * @param	cardType
		 * @param	showTip
		 * @return Card
		 */
		public static function creaCard(cardid:int, cardNumber:int = 1, cardType:int = 1,showTip:Boolean=true,RT:Boolean=false):Card {
			var card:Card =new Card();
			card.RT=RT;
			var cardMod:CardModel = new CardModel(cardid, cardNumber);
			card.currentCardTye=cardType;
			card.setCardModel(cardMod);
			cardMod=null;
			return card;
			}
		
		public static function getInstance() : CardFactary
        {
            if (_instance == null)
            {
                _instance = new CardFactary;
            }
            return _instance;
        }// end function
	}

}