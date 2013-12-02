package khaos.view
{
	
	
	import khaos.events.XDispatch;
	import khaos.interfaces.IView;
	import starling.display.Sprite;
	

	//enumamre

	public class BaseView implements IView
	{
		public var viewParam:* = null; //面板显示参数

		protected var container:Sprite = null;

		protected var _ui:Sprite = null;

		protected var _viewType:int = -1;

		protected var _isAtBottom:Boolean;

		protected var _preui:Sprite;

		public function BaseView(viewType_:int, bottom:Boolean = false)
		{
			_viewType = viewType_;
			_isAtBottom = bottom;
			container = ViewMgr.getInstance().getContainer(_viewType) as Sprite;
		}

		public function get ui():Sprite
		{
			return _ui;
		}

		public function get preui():Sprite
		{
			return _preui;
		}

		public function set ui(value:Sprite):void
		{
			
			if (_ui != null && container.contains(_ui))
			{
				_ui.visible = false;
				_preui = ui;
			}

			_ui = value;

			if (_ui != null)
			{
				if (!container.contains(_ui))
				{
					if (_isAtBottom)
						container.addChildAt(_ui, 0);
					else
						container.addChild(_ui);
				}

				_ui.visible = true;
			}
		}

		public function visible():Boolean
		{
			return _ui != null && _ui.visible;
		}

		/**
		 *
		 *  侦听
		 *
		 */
		protected function addNotify(type:String, listener:Function):void
		{
			XDispatch.getInstance().addEventListener(type, listener);
		}

		protected function removeNotify(type:String, listener:Function):void
		{
			XDispatch.getInstance().removeEventListener(type, listener);
		}
 
		/**
		 * 视图类型
		 */

		public function set viewType(value:int):void
		{
			_viewType = value;
			container = ViewMgr.getInstance().getContainer(_viewType) as Sprite; 
		}

		public function get viewType():int
		{
			return _viewType;
		}

		public function hide():void
		{
			if (ui == null)
				return;
			ui.visible = false;
			internalHide();
		}
		
		public function get x():Number
		{
			if (ui == null)
				return 0;
			return ui.x;
		}
		public function get y():Number
		{
			if (ui == null)
				return 0;
			return ui.y;
		}
		public function set x(tx:Number):void
		{
			if (ui == null)
				return ;
			ui.x = tx;
		}
		public function set y(ty:Number):void
		{
			if (ui == null)
				return ;
			ui.y = ty;
		}

		protected function internalHide():void
		{
			throw new ArgumentError("This function is not implemented!");
		}

		public function show():void
		{
			
			if (ui != null)
				ui.visible = true;
			_preui = null;
			internalShow();
			
			if (ui != null && ui.parent != null){
				ui.parent.setChildIndex(ui, ui.parent.numChildren-1); //最上面
			}
		}

		protected function internalShow():void
		{
			trace("	protected function internalShow():void");
			throw new ArgumentError("This function is not implemented!");
		}
	}
}



