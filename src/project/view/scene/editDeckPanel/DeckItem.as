package project.view.scene.editDeckPanel 
{
	import lzm.starling.display.ScrollContainerItem;
	import lzm.starling.texture.DynamicTextureAtlas;
	import project.view.common.MyButton;
	import starling.display.Sprite;
	import starling.events.Event;
	
	import project.Cellcard.Card;
	import project.model.item.CardModel;
	import project.utils.CardFactary;
	
	import starling.display.Image;
	import starling.display.Quad;
	
	/**
	 * 编辑卡组界面一中的卡组槽
	 * @author bbjxl 2013
	 */
	public class DeckItem extends Sprite 
	{
		private var _addDeckBt:MyButton;
		private var _sCard:Card;
		private var _locked:Boolean = false;
		private var _lockIco:Image;
		private var _cardId:int = -1;
		public function DeckItem() 
		{
			super();
			_lockIco = ApplictionConfig.creaImage("锁0000");
			_addDeckBt = new MyButton("增加卡组图标0000");
			_sCard = new Card();
			_sCard.currentCardTye = 2;
			addChild(_sCard);
			addChild(_addDeckBt);
			addChild(_lockIco);
			_addDeckBt.addEventListener(Event.TRIGGERED, addDeckHandler);
			/*var a:Image=new Image(ApplictionConfig.assets.getTexture("大卡外框0001"));
			addChild(a);*/
			/*var dyTa:DynamicTextureAtlas = new DynamicTextureAtlas(ApplictionConfig.MIDDLE_CARD_WIDTH, ApplictionConfig.MIDDLE_CARD_HEIGHT);
			
			var a:Card = new Card();
			var temp:CardModel=new CardModel(id+1);
			
			a.setCardModel(temp,true,function():void{
			a.flatten();
			dyTa.addTextureFromDisplayobject(temp.bigCardImage, a);
			_image = new Image(dyTa.getTexture(temp.bigCardImage));
			addChild(_image);
			a.removeFromParent(true);
			ApplictionConfig.assets.clearRuntimeLoadTexture();
			})
			
			addChild(a);*/
			
		}
		
		private function addDeckHandler(e:Event):void {
				
			}
		
		public function get sCard():Card 
		{
			return _sCard;
		}
		
		public function set sCard(value:Card):void 
		{
			_sCard = value;
			
		}
		
		public function get locked():Boolean 
		{
			return _locked;
		}
		
		public function set locked(value:Boolean):void 
		{
			_locked = value;
			_lockIco.visible = value;
			
			if (_locked) {
				if (_sCard)_sCard.dispose();
				}
		}
		
		public function get cardId():int 
		{
			return _cardId;
		}
		
		public function set cardId(value:int):void 
		{
			_cardId = value;
			if (value < 0 || _cardId == null) {
				_addDeckBt.visible = false;
				if (_sCard) { _sCard.dispose(); _sCard = null; }
				}else {
					_addDeckBt.visible = true;
					if (_sCard && _sCard.getCardModel() && _sCard.getCardModel().id != value) {
						_sCard.setCardModel(new CardModel(value));
					}
					else if (!_sCard || !_sCard.getCardModel()) {
						_sCard = CardFactary.creaCard(value);
						_sCard.currentCardTye = 2;
						addChild(_sCard);
						}
					}
		}
		
		
	}

}