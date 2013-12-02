package project.view.common
{
	import khaos.interfaces.IamView;
	import khaos.view.ViewMgr;
	
	import project.view.scene.BaseScene;
	
	import starling.display.Sprite;

	public class LogicView extends BaseScene implements IamView
	{
		
		
		private var _viewParam:* = null; //面板显示参数
		
		protected var container:Sprite = null;
		
		protected var _viewType:int = -1;
		
		protected var _isAtBottom:Boolean;
		
		public function LogicView(viewType_:int,bottom:Boolean = false)
		{
			super();
			_viewType = viewType_;
			_isAtBottom = bottom;
			container = ViewMgr.getInstance().getContainer(_viewType) as Sprite;
			this.visible = false;
			initUI();
			
		}
		
		//初始化UI
		public function initUI():void{
			
		}
		
		public function show():void
		{
			if(this.visible)return;
			registerMe();
			this.visible = true;
			internalShow();
			if (this.parent != null){
				this.parent.setChildIndex(this, this.parent.numChildren-1); //最上面
			}
			
		}
		
		protected function internalHide():void
		{
			throw new ArgumentError("This function is not implemented!");
		}
		
		protected function internalShow():void
		{
			throw new ArgumentError("This function is not implemented!");
		}
		
		public function hide():void
		{
			internalHide();
			this.visible = false;
			
		}
		
		public function set viewType(value:int):void
		{
			_viewType = value;
		}
		
		public function get viewType():int
		{
			return _viewType;
		}
		
		public function set showParam(value:Object):void
		{
			_viewParam = value;
		}
		
		public function get showParam():Object
		{
			return _viewParam;
		}
		
		protected function registerMe():void
		{
			/*if(container.contains(this))
			{
			this.visible = false;
			}
			*/	
			if (!container.contains(this))
			{
				if (_isAtBottom)
					container.addChildAt(this, 0);
				else
					container.addChild(this);
			}
		}
		
		public function moveTop():void
		{
			container.addChild(this);
		}
		
		
		public function isVisible():Boolean{
			return this.visible;
		}
		
		public function get posx():Number{
			return this.x;
		}
		public function get posy():Number{
			return this.y;
		}
	}
}