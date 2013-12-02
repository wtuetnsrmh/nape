package project.model.cultivation 
{
	import com.bbjxl.utils.ShapeFactory;
	import flash.display.MovieClip;
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.filters.GlowFilter;
	import project.config.ApplicationConfig;
	import project.debug.myDebug;
	import project.events.SMZTDataChangeEvent;
	import project.utils.XColor;
	import project.view.module.cell.Card;
	
	/**
	 * 响应拖动区域---上面的嵌入区
	 * @author bbjxl 2012
	 */
	public class StarUpCandDragArea extends Sprite 
	{
		private var tempEvent:SMZTDataChangeEvent;
		
		private var _canDrag:Boolean = true;//是否响应拖动
		private var _card:Card;//中卡
		private var _selected:Boolean = false;//
		private var _selGlowFilter:GlowFilter;
		private var _cardClass:int=0;//卡的类别（装备1，神通2，兵0）
		//public var _mask:Sprite;//遮罩
		private var _bg:Sprite;//背景
		private var _index:int = 0;//序号
		
		public function StarUpCandDragArea() 
		{
			//_bg = this["bg"] as MovieClip; 
			this._selGlowFilter = new GlowFilter(13408512, 1, 21, 21);
			_bg = new Sprite();
			_bg.graphics.beginFill(0x000000,0.1) ;
			_bg.graphics.drawRect(0, 0, ApplicationConfig.CARD_WIDTH>>1, ApplicationConfig.CARD_HEIGHT>>1);
			_bg.graphics.endFill();
			addChild(_bg);
			//this.mask = _mask;
		}
		//--------------------------------------------------------
		
		
		//--------------------------------------------------------
		public function get selected() :Boolean
		 {
		   return _selected;
		}// end function
		
		public function set selected(param1:Boolean) : void
		{
		  _selected = param1;
		  if (param1) {
			  this.filters = [this._selGlowFilter];
			  }else {
				 //如果是可以嵌入的框
					this.filters = [];
				  }
		  
		  return;
		}// end function
		public function get card() : Card
		 {
		   return _card;
		}// end function
		
		public function set card(param1:Card) : void
		{
			
			if (_card == null) {
				_card = new Card();
				addChild(_card);
				}else {
					if (!contains(_card)) {
						addChild(_card);
						}
					}
			_card.showTip = true;
			_card._currentCardTye = 1;
			_card.setCardModel(param1.getCardModel());
			_card.visible = true;
			_card.setLocation(2, 2);
			tempEvent = new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_REFRESH);
			tempEvent.dataObject = param1.getCardModel().starCard;
			dispatchEvent(tempEvent);
		  return;
		}// end function
		public function get canDrag() : Boolean
		 {
		   return _canDrag;
		}// end function
		
		public function set canDrag(param1:Boolean) : void
		{
		  _canDrag = param1;
		  if (param1) {
			  this.filters = [];
			  }
		  return;
		}// end function
		
		public function get cardClass() : int
		 {
		   return _cardClass;
		}// end function
		
		public function set cardClass(param1:int) : void
		{
		  _cardClass= param1;
		  return;
		}// end function
		public function get index() : int
		 {
		   return _index;
		}// end function
		
		public function set index(param1:int) : void
		{
		  _index= param1;
		  return;
		}// end function
		
		public function get bg():Sprite 
		{
			return _bg;
		}
		
		public function set bg(value:Sprite):void 
		{
			_bg = value;
		}
		//--------------------------------------------------------
		public function dispose():void {
			if (card) {
				card.showTip = false;
				card.dispose();
				_card.visible = false;
				_card = null;
				}
				
			tempEvent = new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_REFRESH);
			tempEvent.dataObject = null;
			dispatchEvent(tempEvent);
			}
		
		//--------------------------------------------------------
	}

}