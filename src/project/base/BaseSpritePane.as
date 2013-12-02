package project.base
{
	/*
	* 描述：所有面板基类
	* 
	*/
	import flash.events.MouseEvent;
	import starling.display.DisplayObject;
	
	import project.events.SMZTDataChangeEvent;
	import project.model.data.DataModel;
	
	import starling.display.Button;
	import starling.display.DisplayObjectContainer;
	import starling.display.Image;
	import starling.display.Quad;
	import starling.display.Sprite;
	import starling.events.Event;
	import flash.filesystem.File;
	import lzm.starling.STLConstant;
	import lzm.starling.STLMainClass;
	import lzm.starling.ui.layout.LayoutUitl;

    public class BaseSpritePane extends BaseSprite
    {
		
		private var _callbacks:Object;
		
        protected var isSoundPlaying:Boolean = false;//是否在播放声音
        protected var instanceLayer:Sprite;//实例层
        //protected var _spriteInstance:Image;//UI实例
        protected var _dataModel:DataModel;//数据模型  设置模型时同时侦听变化
        protected var _rootContainer:DisplayObjectContainer;//显示的父层
        protected var _isOpened:Boolean = false;//是否已打开
        protected var modal:Sprite;//鼠标不响应区域
		protected var _maskQuad:Quad;
        protected var helpBtn:Button;//帮助按钮，所有的面板类都有帮助按钮
        

        public function BaseSpritePane(param1:DisplayObjectContainer = null)
        {
            
            this.instanceLayer = new Sprite();
            addChild(this.instanceLayer);
			
            this._rootContainer = param1;
			
            this.addEventListener(Event.ADDED_TO_STAGE, this.onAddToStage);
            this.addEventListener(Event.REMOVED_FROM_STAGE, this.onRemoveFromStage);
            
			
            return;
        }// end function

		//--------------------------------------------------
		public function addHandler(param1:String, param2:Function, param3:Object = null) :void
        {
            if (this._callbacks == null)
            {
                this._callbacks = new Object();
            }
            this._callbacks[param1] = {handler:param2, extParam:param3};
            trace("add type " + param1 + "   " + param2);
            return;
        }// end function

        public function getHandler(param1:String) : Function
        {
            var type:String = param1;
            if (this._callbacks && this._callbacks[type])
            {
                trace("_callbacks " + type);
                return this._callbacks[type]["handler"];
            }
            return function ()
            {
                trace("Warnning: get Handler"+type+ " fail");
                return;
            }// end function
            ;
        }// end function

        public function getExtParam(param1:String) : Object
        {
            if (this._callbacks && this._callbacks[param1])
            {
                return this._callbacks[param1]["extParam"];
            }
            return null;
        }// end function
		//--------------------------------------------------


        public function showHelp(event:MouseEvent = null) : void
        {
            return;
        }// end function

        protected function onAddToStage(event:Event) : void
        {
            return;
        }// end function

        protected function onRemoveFromStage(event:Event) : void
        {
            return;
        }// end function

       /* public function set spriteInstance(param1:Image) : void
        {
            this._spriteInstance = param1;
            return;
        }// end function

        public function get spriteInstance() : Image
        {
            return this._spriteInstance;
        }// end function*/

		/*设置类的用到的UI实例
		* @ param UI在库中的类名
		*/
        public function setSpriteInstance(param1:String,uiName:String="UI") : void
        {
			/*var file:File = File.applicationDirectory;
			ApplictionConfig.assets.enqueue(file.resolvePath(param1));
			asset.loadQueue(loading);
			
			instanceLayer.removeChildren();
			
            function loading(ratio:Number):void{
				if(ratio == 1){
					var layoutUtil:LayoutUitl = new LayoutUitl(ApplictionConfig.assets.getOther("layout"),ApplictionConfig.assets);
					layoutUtil.buildLayout(uiName,instanceLayer);
					
				}
			}*/
           
            return;
        }// end function

		

        public function getChild(param1:String) :DisplayObject
        {
            return instanceLayer.getChildByName(param1) as DisplayObject;
        }// end function

        public function get dataModel() : DataModel
        {
            return this._dataModel;
        }// end function

        public function set dataModel(param1:DataModel) : void
        {
            this._dataModel = param1;
            this._dataModel.addEventListener(SMZTDataChangeEvent.ON_DATA_CHANGE, this.onDataChange);
            return;
        }// end function

        protected function onDataChange(event:SMZTDataChangeEvent) : void
        {
            return;
        }// end function

       /* protected function adjustPosition() : void
        {
            x = this._spriteInstance.x;
            y = this._spriteInstance.y;
            this._spriteInstance.x = 0;
            this._spriteInstance.y = 0;
            return;
        }// end function*/

        public function get isOpened() : Boolean
        {
            return this._isOpened;
        }// end function

        public function set isOpened(param1:Boolean) : void
        {
            this._isOpened = param1;
            return;
        }// end function

        public function show(param1:Boolean = false) : void
        {
            if (this._isOpened)
            {
                this.hide();
            }
            else if (this._rootContainer)
            {
                if (param1)
                {
                    this.drawModalRect();
                }
                this._rootContainer.addChild(this);
                this.x = (ApplictionConfig.STAGE_WIDTH - this.width) >>1;
                this.y = (ApplictionConfig.STAGE_HEIGHT - this.height) >>1;
                this._isOpened = true;
            }
            return;
        }// end function

        protected function playUISound(param1:String) : void
        {
            /*if (!this.isSoundPlaying && Capabilities.hasAudio && Capabilities.hasAudioEncoder && Capabilities.hasMP3)
            {
                this.isSoundPlaying = true;
                this.uiSoundChannel = SMZTSoundManager.playSimpleSound(param1);
				if (!uiSoundChannel) return;
                if (!this.uiSoundChannel.hasEventListener(Event.SOUND_COMPLETE))
                {
                    this.uiSoundChannel.addEventListener(Event.SOUND_COMPLETE, this.onPlayOver);
                }
            }*/
            return;
        }// end function

        protected function stopUISound() : void
        {
            /*if (this.isSoundPlaying && this.uiSoundChannel)
            {
                this.uiSoundChannel.stop();
                if (this.uiSoundChannel.hasEventListener(Event.SOUND_COMPLETE))
                {
                    this.uiSoundChannel.removeEventListener(Event.SOUND_COMPLETE, this.onPlayOver);
                }
                this.isSoundPlaying = false;
            }
            return;*/
        }// end function

        /*protected function playMusicSound(param1:String) : void
        {
            this.uiSoundChannel = SMZTSoundManager.playSimpleSound(param1);
            return;
        }// end function

        protected function stopMusicSound() : void
        {
            if (this.musicSoundChannel)
            {
                this.musicSoundChannel.stop();
            }
            return;
        }// end function

        protected function onPlayOver(event:Event) : void
        {
            if (this.uiSoundChannel.hasEventListener(Event.SOUND_COMPLETE))
            {
                this.uiSoundChannel.removeEventListener(Event.SOUND_COMPLETE, this.onPlayOver);
            }
            this.isSoundPlaying = false;
            return;
        }// end function*/

		//屏蔽鼠标响应的sprite
        protected function drawModalRect() : void
        {
            if (this.modal == null)
            {
                this.modal = new Sprite();
				_maskQuad = new Quad(ApplictionConfig.STAGE_WIDTH, ApplictionConfig.STAGE_HEIGHT, 0x000000);
				_maskQuad.alpha = 0.3;
            }
			modal.addChild(_maskQuad);
            this._rootContainer.addChild(this.modal);
            return;
        }// end function

        public function hide(event:Event = null) : void
        {
            if (this._rootContainer)
            {
                if (this.modal != null && this.rootContainer.contains(this.modal))
                {
                    this._rootContainer.removeChild(this.modal,true);
                    this.modal = null;
                }
                removeFromParent();
                this._isOpened = false;
            }
            return;
        }// end function

        private function playEffect() : void
        {
            return;
        }// end function

        public function get rootContainer() : DisplayObjectContainer
        {
            return this._rootContainer;
        }// end function

        public function set rootContainer(param1:DisplayObjectContainer) : void
        {
            this._rootContainer = param1;
            return;
        }// end function


    }
}
