package project.view.scene
{
	import flash.utils.Timer;
	import flash.utils.getTimer;
	import manage.TexturePool;
	
	import project.Cellcard.Card;
	
	import starling.animation.Juggler;
	import starling.animation.Transitions;
	import starling.animation.Tween;
	import starling.core.Starling;
	import starling.display.DisplayObjectContainer;
	import starling.display.Image;
	import starling.display.Quad;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.Touch;
	import starling.events.TouchPhase;
	import starling.textures.Texture;
	import starling.utils.AssetManager;
	import project.model.ModelLocator;
	import project.utils.ProgressBar;
	import project.utils.CustomTool;
	import project.view.scene.CardMap;
	import project.view.scene.IScene;
	
	/**
	 * 图鉴场景
	 * @author bbjxl
	 */
	public class CardMap extends Sprite implements IScene
	{
		public static const SceneId:uint = 2;
		
		private var _cards:Sprite;
		private var _locX:Number;
		private var _locY:Number;
		private var _cardsV:Vector.<Card>;
		private var _currentPage:Page;
		private var _currentPageNum:int = 0;
		private var _maxPageNum:int = 5;
		private var _moveLenght:int=4;//超过多少才响应移动
		private var _page1:Page;
		private var _page2:Page;
		private var _page3:Page;
		
		private var _lenX:Number;
		private var _lenY:Number;
		private var _carsX:Number;
		private var _carsY:Number;
		
		private static var _cardMap:CardMap;
		
		public function CardMap()
		{
			if (_cardMap != null)
			{
				throw Error(new Error("singal"))
			}
			//init();
		if(stage!=null){init();}
		   else
		 this.addEventListener(Event.ADDED_TO_STAGE,addtostage);
		}
		
		private function addtostage(e:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, addtostage);
			init();
		}
		
		public function updata():void
		{
		}
		
		private function init():void
		{
			for (var i:int = 1; i < 500; i++ ) {
				TexturePool.getInstance().loadAssets(ModelLocator.getInstance().dynamicURL+"B/" +  CustomTool.turn000Num(i) + ".jpg", null,1,false);
				}
			
			_cards = new Sprite();
			addChild(_cards);
			_page1 = new Page(2, 4);
			_page2 = new Page(2, 4);
			_page3 = new Page(2, 4);
			_page2.x = ApplictionConfig.STAGE_WIDTH;
			_page3.x = ApplictionConfig.STAGE_WIDTH * 2;
			_cards.addChild(_page1);
			_cards.addChild(_page2);
			_cards.addChild(_page3);
			this.addEventListener(starling.events.TouchEvent.TOUCH, touchHandler);
			_carsX = _cards.x;
			_carsY = _cards.y;
			updatPage();
		}
		
		private function updatPage():void
		{
			if (_currentPageNum == 0)
			{
				_page1.setPage(_currentPageNum);
				_page2.setPage(_currentPageNum + 1);
				_page3.setPage(_currentPageNum + 2);
			}
			else
			{
				_page1.setPage(_currentPageNum - 1);
				_page2.setPage(_currentPageNum);
				
			}
		
		}
		//private var juggler:Juggler = Starling.juggler;
		private var _time:int;
		
		private function touchHandler(e:starling.events.TouchEvent):void
		{
			var a:Vector.<Touch> = e.touches;
			var touch:Touch = a[0];
			//trace(touch.phase);
			if (touch.phase == TouchPhase.BEGAN)
			{
				_time = getTimer();
//				trace("_cards.x=" + _cards.x)
				_locX = touch.globalX;
				_locY = touch.globalY;
				
			}
			else if (touch.phase == TouchPhase.MOVED)
			{
				var templenght:Number=Math.abs(touch.globalX - _locX);
				if(templenght<_moveLenght)return;
				_cards.x += touch.globalX - _locX;
				//_cards.y += touch.globalY - _locY;
				
				_locX = touch.globalX;
				_locY = touch.globalY;
				
			}
			else if (touch.phase == TouchPhase.ENDED)
			{
				//trace("((_date.getTime()-_time)/10<10)=" + ((getTimer() - _time) / 10))
				if (_carsX - _cards.x > 40 || (_carsX - _cards.x > 5 && ((getTimer() - _time) / 10 < 20)))
				{
					nextPage();
				}
				else if (_cards.x - _carsX > 40 || (_cards.x - _carsX > 5 && ((getTimer() - _time) / 10 < 20)))
				{
					if (_currentPageNum == 0)
						return;
					prevPage();
				}
				else if (_carsX != _cards.x)
				{
					removeMouseListener();
					Starling.juggler.tween(_cards, 0.5, {x: _carsX, transition: Transitions.EASE_IN_OUT, onComplete: function():void
						{
							addMouseListener();
						}});
				}
				
			}
		}
		
		private function addMouseListener():void
		{
			if (this)
				this.addEventListener(starling.events.TouchEvent.TOUCH, touchHandler);
		}
		
		private function removeMouseListener():void
		{
			if (this)
				this.removeEventListener(starling.events.TouchEvent.TOUCH, touchHandler);
		}
		
		private function prevPage():void
		{
			removeMouseListener();
			
			var targetX:Number = _carsX + ApplictionConfig.STAGE_WIDTH;
			Starling.juggler.tween(_cards, .8, {x: targetX, transition: Transitions.EASE_OUT, onComplete: function():void
				{
					_currentPageNum--;
					updatPage();
					if (_currentPageNum != 0)
					{
						_cards.x = -ApplictionConfig.STAGE_WIDTH;
						_carsX = _cards.x;
						_carsY = _cards.y;
					}
					_carsX = _cards.x;
					_carsY = _cards.y;
					_page3.setPage(_currentPageNum + 1);
					addMouseListener();
				}});
		
		}
		
		public static function getInstance():CardMap
		{
			if (_cardMap == null)
			{
				_cardMap = new CardMap();
			}
			return _cardMap;
		} // end function
		
		private function nextPage():void
		{
			removeMouseListener();
			
			var targetX:Number = _carsX - ApplictionConfig.STAGE_WIDTH;
			Starling.juggler.tween(_cards, .8, {x: targetX, transition: Transitions.EASE_OUT, onComplete: function():void
				{
					_currentPageNum++;
					updatPage();
					if (_currentPageNum != 0)
					{
						_cards.x = -ApplictionConfig.STAGE_WIDTH;
						_carsX = _cards.x;
						_carsY = _cards.y;
					}
					_carsX = _cards.x;
					_carsY = _cards.y;
					_page3.setPage(_currentPageNum + 1);
					addMouseListener();
				}});
		
		}
	}

}