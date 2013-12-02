package project.model.event.eventTower
{
	import project.config.ErrorZhCn;
	import project.events.SMZTDataChangeEvent;
	import project.model.data.DataModel;
	
	/**
	 * ...
	 * @author bbjxl 2013
	 */
	public class Goods extends DataModel
	{
		private var _goods:Vector.<ExchangeGoods>;
		private var _cards:Vector.<ExchangeGoods>;
		private var _items:Vector.<ExchangeGoods>;
		
		private static var _instance:Goods;
		
		public function Goods()
		{
			if (_instance != null)
			{
				throw new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE);
			}
		
		}
		
		public static function getInstance() : Goods
		{
			if (_instance == null)
			{
			  _instance = new Goods;
			}
			return _instance; 
		}// end function
		
		public function setData(param:Object):void
		{
			_goods = new Vector.<ExchangeGoods>();
			_cards = new Vector.<ExchangeGoods>();
			_items = new Vector.<ExchangeGoods>();
			for (var i:String in param) {
				var tempGood:ExchangeGoods = new ExchangeGoods(param[i]);
				if (tempGood.isCard) {
					_cards.push(tempGood);
					}else {
						_items.push(tempGood);
						}
					_goods.push(tempGood);
					tempGood = null;
				}
			dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
		}
	}

}