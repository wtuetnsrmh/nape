package project.view.module.loading
{
	
	/*
	* 描述：加载中 界面
	* 
	*/
    //import project.config.*;
	import flash.events.MouseEvent;
	
	import khaos.view.ViewType;
	
	import project.base.BaseTitleWindow;
	import project.config.ApplicationConfig;
	
	import starling.core.Starling;
	import starling.events.Event;
	import starling.events.Touch;
	import starling.text.TextField;

    public class LockScreen extends project.base.BaseTitleWindow
    {
        private static var lockScreen:LockScreen;
		private var _loading:TextField=new TextField(100,100,"loading...","wlyh",30,0xffffff,true);

        public function LockScreen()
        {
            if (lockScreen != null)
            {
                throw new Error("Error");
            }
            dragable = false;
          //  setSpriteInstance("LockScreen");
			
			_loading.alignPivot("left");
			
			_loading.x=(ApplictionConfig.STAGE_WIDTH-_loading.width)>>1;
			_loading.y=ApplictionConfig.STAGE_HEIGHT-_loading.height>>1;
			trace(_loading.x)
			addChild(_loading);
			rootContainer=Root.vmgr.getContainer(ViewType.TOP);
            return;
        }// end function

		/*锁屏
		* @ param 是否屏蔽鼠标
		* @ param
		*/
        override public function show(param1:Boolean = false) : void
        {
            if (isOpened)
            {
            }
            else if (rootContainer)
            {
                if (param1)
                {
                    drawModalRect();
                }
                rootContainer.addChild(this);
                this.x = 0;
                this.y = 0;
                isOpened = true;
                isPopUP = true;
                this.addEventListener(Event.TRIGGERED,hide);
            }
            return;
        }// end function

        override public function hide(event:Event = null) : void
		{
			
			
			if (rootContainer)
			{
				if (modal != null && rootContainer.contains(modal))
				{
					rootContainer.removeChild(modal);
					modal = null;
				}
				
					removeFromParent();
					this.isOpened = false;
					this.isPopUP = false;
				
				
			}
			return;
		}// end function

        public static function getInstance() : LockScreen
        {
            if (lockScreen == null)
            {
                lockScreen = new LockScreen;
            }
            return lockScreen;
        }// end function

    }
}
