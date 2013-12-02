package project.model.cultivation 
{
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	import project.config.ApplicationConfig;
	import project.model.item.CardModel;
	import project.view.module.cell.Card;
	
	/**
	 * 升阶的下面六个可以拖动的卡，带数量
	 * @author bbjxl 2013
	 */
	public class StarUpCard extends Sprite 
	{
		//----------------------容器---------------------------------
		
		//-----------------------UI---------------------------------
		private var _numText:TextField;//数量
		private var _card:Card;
		//-----------------------数据---------------------------------
		private var _selected:Boolean = false;
		//-----------------------事件--------------------------------
		public function StarUpCard() 
		{
			
			_card = new Card();
			_card._currentCardTye = 1;
			_card.showTip = true;
			addChild(_card);
			
			_numText = new TextField();
			var tf:TextFormat = new TextFormat();
			tf.font = ApplicationConfig.FONT;
			tf.color = 0xffffff;
			tf.size = 12;
			_numText.autoSize = TextFieldAutoSize.CENTER;
			_numText.defaultTextFormat = tf;
			
			_numText.x = (ApplicationConfig.CARD_WIDTH >> 1) >> 1;
			_numText.y = (ApplicationConfig.CARD_HEIGHT >> 1) + 5;
			_numText.mouseEnabled = false;
			_numText.mouseWheelEnabled = false;
			addChild(_numText);
		}
		
		public function updataCard(value:CardModel):void {
			_numText.text = value.number.toString()+"可用";
			if (value.number <= 0) {
				_card.enable = false;
				this.mouseChildren = false;
				this.mouseEnabled = false;
				//_numText.visible = false;
				}else {
					_card.enable = true;
					this.mouseChildren = true;
					this.mouseEnabled = true;
					_numText.visible = true;
					}
			_card.setCardModel(value,true);
			value = null;
			}
		/**
		 * 更新卡的数量
		 * @param	value
		 */
		public function updataCardNumber(value:int):void {
			_numText.text = value.toString()+"可用";
			if (value <= 0) {
				_card.enable = false;
				this.mouseChildren = false;
				this.mouseEnabled = false;
				//_numText.visible = false;
				}else {
					_card.enable = true;
					this.mouseChildren = true;
					this.mouseEnabled = true;
					_numText.visible = true;
					}
			_card.getCardModel().number = value;
			
			}
		public function get card():Card 
		{
			return _card;
		}
		
		public function set card(value:Card):void 
		{
			_card = value;
		}
		
		public function get selected():Boolean 
		{
			return _selected;
		}
		
		public function set selected(value:Boolean):void 
		{
			_selected = value;
			_card.selected = value;
		}
		
	}

}