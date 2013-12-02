package project.base
{
    import com.greensock.TweenLite;
    import com.greensock.easing.Back;
    
    import flash.ui.Keyboard;
    
    import project.config.ApplicationConfig;
    
    import starling.core.Starling;
    import starling.display.Button;
    import starling.display.DisplayObject;
    import starling.display.Image;
    import starling.events.Event;


    public class BaseTitleWindow extends BaseSpritePane
    {
        protected var _isPopUP:Boolean;//是否弹出
        protected var closeButton:Button;//关闭按钮
		
        //private var _dragable:Boolean = false;//是否可以拖动
        private var _showEffect:Boolean = false;//是否显示缓动效果

        public function BaseTitleWindow(param1:Boolean = true)
        {
            return;
        }// end function

        override public function setSpriteInstance(param1:String,uiName:String="UI") : void
        {
			
            this.confingerBase();
            return;
        }// end function

        protected function confingerBase() : void
        {
			//所有的关闭按钮基类为MovieClipButton
			//trace("confingerBase")
            /*if (getChild("closeBtn") as MovieClipButton)
            {
				//trace("confingerBase1")
                this.closeButton = getChild("closeBtn") as MovieClipButton;
            }
            if (this.closeButton)
            {
                addChild(this.closeButton);
                this.closeButton.addEventListener(MouseEvent.CLICK, this.hide);
            }
            helpBtn = getChild("helpb") as MovieClip;
            if (helpBtn != null)
            {
                helpBtn.gotoAndStop(1);
                helpBtn.buttonMode = true;
                helpBtn.addEventListener(MouseEvent.MOUSE_OVER, showHelp);
                helpBtn.addEventListener(MouseEvent.MOUSE_OUT, showHelp);
            }*/
           
            return;
        }// end function

        public function transfromAroundCenter(param1:DisplayObject, param2:Function = null) : void
        {
            TweenLite.to(param1, 0, {transformAroundCenter:{scaleX:0.3, scaleY:0.3}});
            TweenLite.to(param1, 0.3, {transformAroundCenter:{scaleX:1, scaleY:1}, ease:Back.easeOut, onComplete:param2});
            return;
        }// end function

        

        override public function set isOpened(param1:Boolean) : void
        {
            _isOpened = param1;
            return;
        }// end function

        override public function show(param1:Boolean = false) : void
        {
            if (isOpened)
            {
				return;
            }
            else if (rootContainer)
            {
                if (param1)
                {
                    drawModalRect();
                }
                rootContainer.addChild(this);
                this.x = (ApplicationConfig.STAGE_WIDTH - this.width) / 2;
                this.y = (ApplicationConfig.STAGE_HEIGHT - this.height) / 2 - 40;
                if (this._showEffect)
                {
                    this.alpha = 0.5;
					Starling.juggler.tween(this, 0.2, { alpha:1, y:this.y + 40 });
                    //TweenLite.to(this, 0.3, {alpha:1, y:this.y + 40});
                }
                this.isOpened = true;
                this.isPopUP = true;
                //this.addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
				
            }
            this.playShowSound();
            return;
        }// end function
		
		

        protected function playShowSound() : void
        {
            return;
        }// end function

		//关闭
        override public function hide(event:Event = null) : void
        {
			
			
            if (rootContainer)
            {
                if (modal != null && rootContainer.contains(modal))
                {
                    rootContainer.removeChild(modal);
                    modal = null;
                }
                if (this._showEffect)
                {
					Starling.juggler.tween(this, 0.2, { alpha:1, y:this.y - 40, onComplete:this.onTweenClose });
                    //TweenLite.to(this, 0.3, {alpha:0.2, y:this.y - 40, onComplete:this.onTweenClose});
                }
                else
                {
                    removeFromParent();
                    this.isOpened = false;
                    this.isPopUP = false;
                }
				
            }
            playUISound("UI_WINDOW_CLOSE");
            return;
        }// end function


		//缓动效果结束，清除自己
        protected function onTweenClose() : void
        {
			removeFromParent();
			this.isOpened = false;
			this.isPopUP = false;
            alpha = 1;
            return;
        }// end function

        public function get isPopUP() : Boolean
        {
            return this._isPopUP;
        }// end function

        public function set isPopUP(param1:Boolean) : void
        {
            this._isPopUP = param1;
            return;
        }// end function


        public function get showEffect() : Boolean
        {
            return this._showEffect;
        }// end function

        public function set showEffect(param1:Boolean) : void
        {
            this._showEffect = param1;
            return;
        }// end function

        //TweenPlugin.activate([TransformAroundCenterPlugin, TransformAroundPointPlugin, ShortRotationPlugin]);
    }
}
