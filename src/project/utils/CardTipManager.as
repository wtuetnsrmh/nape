package project.utils 
{
	import flash.display.DisplayObjectContainer;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.events.TimerEvent;
	import flash.geom.Point;
	import flash.utils.Timer;
	import project.config.ApplicationConfig;
	import project.config.ErrorZhCn;
	import project.core.SMZTUIManager;
	import project.debug.myDebug;
	import project.view.module.cell.Card;
	
	/**
	 * 卡牌提示信息管理类
	 * @author bbjxl 2012
	 */
	public class CardTipManager extends Object 
	{
		private static var _cardContent:Sprite=new Sprite();//用于放两个提示卡牌的容器
		
		private var _card:Card;
		private var _bigCard:Card
		private var _backCard:Card
		private var _timer:Timer;
		
		private static var _instance:CardTipManager;
		
		public function CardTipManager() 
		{
			
            if (_instance != null)
            {
                throw new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE);
            }
            
		}
		/**
		 * 显示提示
		 */
		public function showTip(param:Card):void {
			
			var card:Card = param;
            if (card.stage)
            {
                initTip(card);
            }
            else
            {
                card.addEventListener(Event.ADDED_TO_STAGE, function (event:Event)
            {
                card.removeEventListener(Event.ADDED_TO_STAGE, arguments.callee);
                initTip(card);
                return;
            }// end function
            );
            }
            return;
			}
		private function initTip(card:Card) : void
        {
			//_card = card;
            //_tipRecord[card] = new Timer(500, 1);
			_timer = new Timer(500, 1);
            card.addEventListener(MouseEvent.ROLL_OVER, onCardRollOver);
            return;
        }// end function

		/**
		 * 刷新此时卡牌提示信息
		 * @param	event
		 */
		public function updataInfor():void {
			onTimer(null);
           /* _timer.reset();
            _timer.addEventListener(TimerEvent.TIMER, onTimer);
            _timer.start();
            _card.addEventListener(MouseEvent.ROLL_OUT, onCardRollOut);*/
            //_card.addEventListener(MouseEvent.MOUSE_OUT, onCardRollOut);
            return;
			}
		
        private function onCardRollOver(event:MouseEvent) : void
        {
			
			//myDebug.Trace("-------------------------onCardRollOver");
            _card = event.currentTarget as Card;
			_card.addEventListener(MouseEvent.ROLL_OUT, onCardRollOut);
			//_card.selected = true;//选中状态
            _timer.stop();
            //_timer.reset();
            _timer.addEventListener(TimerEvent.TIMER, onTimer);
            _timer.start();
            //trace("onCardRollOver1"+"/"+_card.cardId)
            //_card.addEventListener(MouseEvent.MOUSE_OUT, onCardRollOut);
            return;
        }// end function

        private function onCardRollOut(event:MouseEvent) : void
        {
			
			//myDebug.Trace(event.type+"-------------------------");
			//_card.selected = false;//不选中状态
			_timer.removeEventListener(TimerEvent.TIMER, onTimer);
			if (_timer)
            {
                _timer.stop();
            }
            var _loc_2:Card = event.currentTarget as Card;
            _loc_2.removeEventListener(MouseEvent.ROLL_OUT, onCardRollOut);
           
            //trace("onCardRollOut2"+"/"+_loc_2.cardId)
            _cardContent.visible = false;
			_card = null;//4.22添加
            return;
        }// end function

        private function onTimer(event:TimerEvent) : void
        {
			//trace("onTimer3")
			_timer.removeEventListener(TimerEvent.TIMER, onTimer);
			_timer.stop();
			
            var _loc_2:Card = null;
            var _loc_3:Point = null;
            if (_card && _card.stage)
            {
                
				creaBigCardAndBack(_card);
				_cardContent.visible = true;
                _loc_3 = _card.parent.localToGlobal(new Point(_card.x, _card.y));
                if (_loc_3.x + _card.currentCardWidth + _cardContent.width <= _card.stage.stageWidth)
                {
                    _cardContent.x = _loc_3.x + _card.currentCardWidth;
                }
                else
                {
					if (_loc_3.x - _cardContent.width < 0) {
						_cardContent.x = 0;
						}else {
							_cardContent.x = _loc_3.x - _cardContent.width;
							}
                    
                }
				var temmpy:Number = _loc_3.y + (_card.currentCardHeight - _cardContent.height) / 2;
				if (temmpy < 0) {
					temmpy = 0;
					}else if ((temmpy + _cardContent.height) > _card.stage.stageHeight) {
						temmpy = _card.stage.stageHeight - _cardContent.height;
						}
                _cardContent.y = temmpy;
                _card.stage.addChild(_cardContent);
                _card.stage.setChildIndex(_cardContent, (_card.stage.numChildren - 1));
            }
            return;
        }// end function
		
		/**
		 * 显示大图加背面描述
		 */
			private function creaBigCardAndBack(param:Card):void {
			
				//第一次加载
				while (_cardContent.numChildren > 0) {
					_cardContent.removeChildAt(0);
					}
					
					_bigCard = param.clone(1);
					_bigCard.showBigImage(false);
					_bigCard._currentCardTye=0;
					_bigCard.showMask();
					_bigCard.enable = true;
					_backCard = param.clone(3);
					_backCard.showCardDes();
					_backCard.enable = true;
					_backCard.x = ApplicationConfig.CARD_WIDTH - 1;
					_cardContent.addChild(_bigCard);
					_cardContent.addChild(_backCard);
					_cardContent.mouseChildren = false;
					_cardContent.mouseEnabled = false;
				/*if (_cardContent.numChildren == 0 ) {
					//第一次加载
					var _bigCard:Card = param.clone(1);
					_bigCard.showBigImage();
					_bigCard._currentCardTye=0;
					_bigCard.showMask();
					_bigCard.enable = true;
					var _backCard:Card = param.clone(3);
					_backCard.showCardDes();
					_backCard.enable = true;
					_backCard.x = ApplicationConfig.CARD_WIDTH - 1;
					_cardContent.addChild(_bigCard);
					_cardContent.addChild(_backCard);
					_cardContent.mouseChildren = false;
					_cardContent.mouseEnabled = false;
					}else {
						//显示的提示信息是同张卡就不重新加载
						if ((_cardContent.getChildAt(0) as Card).cardId == param.cardId) {
							return;
							}
						for (var i:int = 0; i < _cardContent.numChildren - 1; i++ ) {
							if ((_cardContent.getChildAt(i) as Card).x == 0) {
								(_cardContent.getChildAt(i) as Card)._currentCardTye = 0;
								(_cardContent.getChildAt(i) as Card).setCardModel(param.getCardModel());
								}else {
									(_cardContent.getChildAt(i) as Card)._currentCardTye = 3;
									(_cardContent.getChildAt(i) as Card).setCardModel(param.getCardModel());
									}
							}
						}*/
			
			
			}
		 
		/**
		 * 隐藏提示
		 * @return
		 */
		public function hideTip(card:Card):void {
			
            if (_timer)
            {
                card.removeEventListener(MouseEvent.ROLL_OVER, onCardRollOver);
               
                _timer.stop();
                
                _card = null;
            }
            return;
			}
		
		/**
		 * 隐藏
		 * @return
		 */
		public function hide():void {
			_timer.removeEventListener(TimerEvent.TIMER, onTimer);
            if (_timer)
            {
                _timer.stop();
            }
            _cardContent.visible = false;
			}
			
		public static function getInstance() : CardTipManager
        {
            if (_instance == null)
            {
                _instance = new CardTipManager;
            }
            return _instance;
        }// end function
	}

}