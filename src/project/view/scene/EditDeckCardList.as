package project.view.scene
{
	import feathers.controls.Label;
	import feathers.controls.List;
	import feathers.controls.renderers.IListItemRenderer;
	import feathers.core.FeathersControl;
	import flash.display.BitmapData;
	import flash.geom.Point;
	import starling.display.Image;
	import starling.events.Touch;
	import starling.events.TouchEvent;
	import starling.events.TouchPhase;
	import starling.textures.Texture;
 
	import starling.events.Event;
	public class EditDeckCardList extends FeathersControl implements IListItemRenderer
	{
		protected var touchPointID:int = -1;
		private static const HELPER_POINT:Point = new Point();
		
		public function EditDeckCardList()
		{
			
			this.addEventListener(TouchEvent.TOUCH, touchHandler);
			this.addEventListener(Event.REMOVED_FROM_STAGE, removedFromStageHandler);
		}
		
		protected function removedFromStageHandler(event:Event):void
		{
			this.touchPointID = -1;
		}
		
		protected function touchHandler(event:TouchEvent):void
		{
			const touches:Vector.<Touch> = event.getTouches(this);
			if (touches.length == 0)
			{
				// hover has ended
				return;
			}
			if (this.touchPointID >= 0)
			{
				var touch:Touch;
				for each (var currentTouch:Touch in touches)
				{
					if (currentTouch.id == this.touchPointID)
					{
						touch = currentTouch;
						break;
					}
				}
				if (!touch)
				{
					return;
				}
				if (touch.phase == TouchPhase.ENDED)
				{
					this.touchPointID = -1;
					
					touch.getLocation(this, HELPER_POINT);
					// check if the touch is still over the target
					// also, only change it if we're not selected. we're not a toggle.
					if (this.hitTest(HELPER_POINT, true) != null && !this._isSelected)
					{
						this.isSelected = true;
					}
					return;
				}
			}
			else
			{
				for each (touch in touches)
				{
					if (touch.phase == TouchPhase.BEGAN)
					{
						this.touchPointID = touch.id;
						return;
					}
				}
			}
		}
		
		protected var itemLabel:Label;
		protected var _index:int = -1;
		
		public function get index():int
		{
			return this._index;
		}
		
		public function set index(value:int):void
		{
			if (this._index == value)
			{
				return;
			}
			this._index = value;
			this.invalidate(INVALIDATION_FLAG_DATA);
		}
		
		protected var _owner:List;
		
		public function get owner():List
		{
			return List(this._owner);
		}
		
		public function set owner(value:List):void
		{
			if (this._owner == value)
			{
				return;
			}
			if (this._owner)
			{
				this._owner.removeEventListener(Event.SCROLL, owner_scrollHandler);
			}
			this._owner = value;
			if (this._owner)
			{
				this._owner.addEventListener(Event.SCROLL, owner_scrollHandler);
			}
			this.invalidate(INVALIDATION_FLAG_DATA);
		}
		
		protected function owner_scrollHandler(event:Event):void
		{
			this.touchPointID = -1;
		}
		
		protected var _data:Object;
		
		public function get data():Object
		{
			return this._data;
		}
		
		public function set data(value:Object):void
		{
			if (this._data == value)
			{
				return;
			}
			this._data = value;
			this.invalidate(INVALIDATION_FLAG_DATA);
		}
		
		protected var _isSelected:Boolean;
		
		public function get isSelected():Boolean
		{
			return this._isSelected;
		}
		
		public function set isSelected(value:Boolean):void
		{
			if (this._isSelected == value)
			{
				return;
			}
			this._isSelected = value;
			this.invalidate(INVALIDATION_FLAG_SELECTED);
			this.dispatchEventWith(Event.CHANGE);
		}
		
		override protected function initialize():void
		{
			if (!this.itemLabel)
			{
				this.itemLabel = new Label();
				
				this.addChild(this.itemLabel);
			}
		}
		
		override protected function draw():void
		{
			const dataInvalid:Boolean = this.isInvalid(INVALIDATION_FLAG_DATA);
			const selectionInvalid:Boolean = this.isInvalid(INVALIDATION_FLAG_SELECTED);
			var sizeInvalid:Boolean = this.isInvalid(INVALIDATION_FLAG_SIZE);
			
			if (dataInvalid)
			{
				this.commitData();
			}
			
			sizeInvalid = this.autoSizeIfNeeded() || sizeInvalid;
			
			if (dataInvalid || sizeInvalid)
			{
				this.layout();
			}
		}
		
		protected function autoSizeIfNeeded():Boolean
		{
			const needsWidth:Boolean = isNaN(this.explicitWidth);
			const needsHeight:Boolean = isNaN(this.explicitHeight);
			if (!needsWidth && !needsHeight)
			{
				return false;
			}
			this.itemLabel.width = NaN;
			this.itemLabel.height = NaN;
			this.itemLabel.validate();
			var newWidth:Number = this.explicitWidth;
			if (needsWidth)
			{
				newWidth = this.itemLabel.width;
			}
			var newHeight:Number = this.explicitHeight;
			if (needsHeight)
			{
				newHeight = this.itemLabel.height;
			}
			return this.setSizeInternal(newWidth, newHeight, false);
		}
		
		protected function commitData():void
		{
			
			var bmpd:BitmapData = new BitmapData(10, 10, false, 0xFF0000);
	var iconTxt:Texture = Texture.fromBitmapData(bmpd);
	var icon:Image = new Image(iconTxt);
	addChild(icon);
			if (this._data)
			{
				this.itemLabel.text = "data in";
					// this._data.toString();
			}
			else
			{
				this.itemLabel.text = "no data";
			}
		}
		
		protected function layout():void
		{
			this.itemLabel.width = this.actualWidth;
			this.itemLabel.height = this.actualHeight;
		}
	}
}