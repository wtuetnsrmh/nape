package lzm.starling.gestures
{
	import flash.geom.Matrix;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import project.view.scene.editDeckPanel.CreaDeckItem;
	import starling.display.DisplayObjectContainer;
	import starling.utils.MatrixUtil;
	import starling.utils.RectangleUtil;
	
	import project.Cellcard.Card;
	import project.model.item.CardModel;
	import project.utils.CardFactary;
	import project.view.scene.ListItemRenderer.MyDefaultListItemRenderer;
	
	import starling.core.Starling;
	import starling.display.DisplayObject;
	import starling.display.Quad;
	import starling.events.Touch;
	import starling.events.TouchEvent;
	import starling.events.TouchPhase;
	import starling.utils.AssetManager;
	
	/**
	 * 拖拽手势
	 * @author lzm
	 *
	 */
	public class DragGestures extends Gestures
	{
		protected var _downPoint:Point = null; //点击在target的什么位置
		protected var _initdownPoint:Point = null; //点击在target的什么位置
		public var _moveingCard:Card;
		private var _touchevent:TouchEvent;
		private var _flag:Boolean = false;
		private var _flagMoving:Boolean = false;
		private var _ower:DisplayObjectContainer;
		private var _hitArr:Array;
		private var _currentHit:CreaDeckItem;
		
		public function DragGestures(target:DisplayObject, callBack:Function = null)
		{
			super(target, callBack);
			//_moveingCard=new Card();
			//_moveingCard.currentCardTye=2;
		}
		
		protected function onTouch(e:TouchEvent):void
		{
			_touchevent = e;
			
			checkGestures(e.touches);
		
		}
		
		public override function checkGestures(touches:Vector.<Touch>):void
		{
			var touch:Touch = touches[0];
			if (touch.phase == TouchPhase.BEGAN)
			{
				_flagMoving = false;
				_downPoint = touch.getLocation(_target.stage);
				_initdownPoint = touch.getLocation(_target.stage);
			}
			else if (touch.phase == TouchPhase.MOVED)
			{
//				trace("_flag======="+_flag)
				if (_callBack != null && _flag)
				{
					_callBack.call(null, false)
				}
//				(_target as MyDefaultListItemRenderer).parent.isEnabled=false;
				_moveingCard.x = _downPoint.x - 50;
				_moveingCard.y = _downPoint.y - 50;
				
				var movePoint:Point = touch.getLocation(_target.stage);
				_moveingCard.x += movePoint.x - _downPoint.x;
				_moveingCard.y += movePoint.y - _downPoint.y;
				
				//trace(_target.stage.hitTest(movePoint, true));
				//trace((_target as MyDefaultListItemRenderer).owner.isScrolling)
				if ((_target as MyDefaultListItemRenderer).owner.isScrolling)
					_flagMoving = true;
				if ((_downPoint.y - movePoint.y) > 10 && !(_target as MyDefaultListItemRenderer).owner.isScrolling)
				{
					_flag = true;
					if(!_touchevent)return;
					_touchevent.stopImmediatePropagation();
				}
				
				_downPoint = movePoint;
				if (_flag && !(Main.mStarling.root as Root).topLayer.contains(_moveingCard))
				{
					var temp:CardModel = new CardModel((_target as MyDefaultListItemRenderer).cardModel.id);
					_moveingCard.setCardModel(temp);
					temp = null;
					(Main.mStarling.root as Root).mActiveScene.addChild(_moveingCard);
				}
				
				if (_flag)
				{
					var temprec:Rectangle = new Rectangle(movePoint.x, movePoint.y, 1, 1);
					var temprec1:Rectangle;
					for (var i:String in _hitArr)
					{
						var tempHitPoint:Point = new Point(_hitArr[i].x, _hitArr[i].y);
						/*var  tempMix:Matrix = new Matrix();
						   _hitArr[i].stage.getTransformationMatrix(_hitArr[i].stage.base, tempMix);
						 MatrixUtil.transformCoords(tempMix, _hitArr[i].x, _hitArr[i].y, tempHitPoint);*/
						temprec1 = new Rectangle(tempHitPoint.x + 95, tempHitPoint.y + 70, ApplictionConfig.SMALL_CARD_WH, ApplictionConfig.SMALL_CARD_WH);
						if (temprec.intersects(temprec1))
						{
							//碰到
							(_hitArr[i] as CreaDeckItem).selected = true;
							_currentHit = (_hitArr[i] as CreaDeckItem);
						}
						else
						{
							(_hitArr[i] as CreaDeckItem).selected = false;
						}
					}
				}
			}
			else if (touch.phase == TouchPhase.ENDED)
			{
				if (_currentHit && _moveingCard.getCardModel())
				{
					var movePoint:Point = touch.getLocation(_target.stage);
					var temprec:Rectangle = new Rectangle(movePoint.x, movePoint.y, 1, 1);
					var temprec1:Rectangle = new Rectangle(_currentHit.x + 95, _currentHit.y + 70, ApplictionConfig.SMALL_CARD_WH, ApplictionConfig.SMALL_CARD_WH);
					if (temprec.intersects(temprec1))
					{
						var tempCm:CardModel = _currentHit.card.getCardModel();
						
						_currentHit.card.setCardModel(_moveingCard.getCardModel());
						if (tempCm && !existTexture(tempCm.bigCardImage, hitArr)) {
							//不存在在用的tt就清除
							//trace("清除")
							ApplictionConfig.assets.clearRuntimeLoadTextureByPath(tempCm.bigCardImage)
						}
						tempCm = null;
					}
					
					_currentHit.selected = false;
					_currentHit = null;
				}
				_downPoint = null;
				_moveingCard.removeFromParent(true)
//				(_target as MyDefaultListItemRenderer).owner.isEnabled=true;
				if (_callBack != null)
				{
					_callBack.call(null, true)
				}
				_flag = false;
			}
		
		}
		
		/**
		 * 判断将要去掉的texture是否在实用中
		 */
		public function existTexture(cid:String, haveArr:Array):Boolean
		{
			var temp:CreaDeckItem;
			for each (temp in haveArr)
			{
				var tempCM:CardModel = temp.card.getCardModel();
				if (tempCM && tempCM.bigCardImage==cid) {
					return true;
					}
				tempCM = null;
			}
			temp = null;
			return false;
		}
		
		public function get ower():DisplayObjectContainer
		{
			return _ower;
		}
		
		public function set ower(value:DisplayObjectContainer):void
		{
			_ower = value;
		}
		
		public function get hitArr():Array
		{
			return _hitArr;
		}
		
		public function set hitArr(value:Array):void
		{
			_hitArr = value;
		}
	}
}