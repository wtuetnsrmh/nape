package project.view.controls
{
	/*
	* 描述：提示信息
	* 
	*/
    import project.config.ApplicationConfig;
    import flash.display.*;
    import flash.events.*;
    import flash.filters.*;
    import flash.geom.*;
    import flash.text.*;
    import flash.utils.*;
	import project.debug.Debug;

    public class ToolTip extends Sprite
    {
        private var _stage:Stage;
        private var _parentObject:DisplayObject;
        private var _tf:TextField;
        private var _cf:TextField;
        private var _contentContainer:Sprite;
        private var _titleFormat:TextFormat;
        private var _contentFormat:TextFormat=new TextFormat();
        private var _stylesheet:StyleSheet;
        private var _styleOverride:Boolean = false;//鼠标移上是否有样式
        private var _titleOverride:Boolean = false;//是否有鼠标移上响应
        private var _contentOverride:Boolean = false;
        private var _titleEmbed:Boolean = false;//标题是否嵌入字体
        private var _contentEmbed:Boolean = false;//内容是否嵌入字体
        private var _defaultWidth:Number = 200;
        private var _defaultHeight:Number;
        private var _buffer:Number = 10;
        private var _align:String = "center";//right left center
        private var _cornerRadius:Number = 0;//拐角度
        private var _bgColors:Array;
        private var _autoSize:Boolean = false;//自适应大小
        private var _hookEnabled:Boolean = false;//是否有倒钩
        private var _delay:Number = 500;//显示多久
        private var _hookSize:Number = 10;//钩的大小
        private var _border:Number=4211070;//边的颜色
        private var _borderSize:Number = 1;//边的粗细
        private var _bgAlpha:Number = .7;
        private var _offSet:Number;//偏移位置
        private var _hookOffSet:Number;//钩的偏移位置
        private var _timer:Timer;
        private static var tp:ToolTip;

        public function ToolTip() : void
        {
            this._contentContainer = new Sprite();
            this._bgColors = [16777215, 10263708];
            if (tp)
            {
                throw new Error("Singleton Error!");
            }
            this.mouseEnabled = false;
            this.buttonMode = false;
            this.mouseChildren = false;
            this._timer = new Timer(this._delay, 1);
            this._timer.addEventListener("timer", this.timerHandler);
            return;
        }// end function

		/*
		* @ param 标题文字
		* @ param 内容文字
		*/
        public function setContent(param1:String, param2:String = null) : void
        {
            this.graphics.clear();
            this.addCopy(param1, param2);
            this.setOffset();
            this.drawBG();
            return;
        }// end function

		/*显示指定对象的提示
		* @ param 显示对象
		* @ param 标题文字
		* @ param 内容文字
		*/
        public function show(param1:DisplayObject, param2:String, param3:String = null) : void
        {
            this._stage = param1.stage;
            this._parentObject = param1;
            var _loc_4:Boolean = this.addedToStage(this._contentContainer);
            if (!_loc_4)
            {
                this.addChild(this._contentContainer);
            }
            if (param3.length > 20)
            {
                this.defaultWidth = 220;
            }
            else if (param3.length > 10 && param3.length <= 20)
            {
                this.defaultWidth = 110;
            }
            else
            {
                this.defaultWidth = 100;// param3.length * 12;
            }
            this.addCopy(param2, param3);
            this.setOffset();
            this.drawBG();
            this.bgGlow();
            var _loc_5:Point = new Point(this._parentObject.mouseX, this._parentObject.mouseY);
            var _loc_6:Point= param1.localToGlobal(_loc_5);
            this.x = _loc_6.x + this._offSet;
            this.y = _loc_6.y - this.height - 10;
            this.alpha = 0;
            visible = false;
            this._stage.addChild(this);
            this.addEventListener(MouseEvent.ROLL_OUT, this.onMouseOut);
            this.addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
            this._parentObject.addEventListener(MouseEvent.ROLL_OUT, this.onMouseOut);
            this._parentObject.addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
            param1.addEventListener(Event.REMOVED_FROM_STAGE, this.onRemoveFromStage);
            this.follow(true);
            this._timer.start();
			
            return;
        }// end function

        private function onRemoveFromStage(event:Event) : void
        {
            this._timer.stop();
            this._timer.reset();
            if (this._parentObject.stage && this._tf)
            {
                this.cleanUp();
            }
            if (this._parentObject.hasEventListener(Event.REMOVED_FROM_STAGE))
            {
                this._parentObject.removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemoveFromStage);
            }
            return;
        }// end function

		//隐藏
        public function hide() : void
        {
            this.animate(false);
            return;
        }// end function

        private function timerHandler(event:TimerEvent) : void
        {
			//隐藏
            this.animate(true);
            return;
        }// end function

        private function onMouseOut(event:MouseEvent) : void
        {
            event.currentTarget.removeEventListener(event.type, arguments.callee);
            this.hide();
            return;
        }// end function

		/*是否鼠标跟随
		* @ param
		* @ param
		*/
        private function follow(param1:Boolean) : void
        {
            if (param1)
            {
                addEventListener(Event.ENTER_FRAME, this.eof);
            }
            else
            {
                removeEventListener(Event.ENTER_FRAME, this.eof);
            }
            return;
        }// end function

        private function eof(event:Event) : void
        {
            this.position();
            return;
        }// end function

        private function position() : void
        {
            var _loc_1:Number = 3;
            var _loc_2:Point = new Point(this._parentObject.mouseX, this._parentObject.mouseY);
            var _loc_3:Point = this._parentObject.localToGlobal(_loc_2);
            var _loc_4:Number = _loc_3.x + this._offSet;
            var _loc_5:Number = _loc_3.y - this.height - 10;
            var _loc_6:Number = this._defaultWidth + _loc_4;
            if (this._defaultWidth + _loc_4 > stage.stageWidth)
            {
                _loc_4 = stage.stageWidth - this._defaultWidth;
            }
            if (_loc_4 < 0)
            {
                _loc_4 = 0;
            }
            if (_loc_5 < 0)
            {
                _loc_5 = 0;
            }
            this.x = this.x + (_loc_4 - this.x) / _loc_1;
            this.y = this.y + (_loc_5 - this.y) / _loc_1;
            return;
        }// end function

		/*
		* @ param 标题文字
		* @ param 内容文字
		*/
        private function addCopy(param1:String, param2:String = null) : void
        {
            var _loc_3:Rectangle = null;
            var _loc_4:Number = 0;
            if (this._tf == null)
            {
                this._tf = this.createField(this._titleEmbed);
            }else {
				//更新是否自适应宽度
				 if (this._autoSize) {
					_tf.multiline = false;
					_tf.wordWrap = false;
					 }else {
						 _tf.multiline = true;
						_tf.wordWrap = true;
						 
						 }
				}
            if (this._styleOverride)
            {
                this._tf.styleSheet = this._stylesheet;
            }
            this._tf.htmlText = param1;
            if (!this._styleOverride)
            {
                if (!this._titleOverride)
                {
                    this.initTitleFormat();
                }
                this._tf.setTextFormat(this._titleFormat);
            }
            if (this._autoSize)
            {
                this._defaultWidth = this._tf.textWidth + 4 + this._buffer * 2;
            }
            else
            {
                this._tf.width = this._defaultWidth - this._buffer * 2;
            }
            //var _loc_5:Number= this._buffer;
            this._tf.y = this._buffer;
            this._tf.x = this._buffer;
            this.textGlow(this._tf);
            this._contentContainer.addChild(this._tf);
            if (param2 != null)
            {
                if (this._cf == null)
                {
                    this._cf = this.createField(this._contentEmbed);
                }else {
					//更新是否自适应宽度
					 if (this._autoSize) {
						_cf.multiline = false;
						_cf.wordWrap = false;
						 }else {
							 _cf.multiline = true;
							 _cf.wordWrap = true;
							 }
					}
                if (this._styleOverride)
                {
                    this._cf.styleSheet = this._stylesheet;
                }
                if (!this._styleOverride)
                {
                    if (!this._contentOverride)
                    {
                        this.initContentFormat();
                    }
                    this._cf.setTextFormat(this._contentFormat);
                }
                this._cf.htmlText = param2;
                _loc_3 = this.getBounds(this);
                this._cf.x = this._buffer;
                this._cf.y = this._tf.y + this._tf.textHeight;
                this.textGlow(this._cf);
                if (this._autoSize)
                {
                    _loc_4 = this._cf.textWidth + 4 + this._buffer * 2;
                    this._defaultWidth = _loc_4 > this._defaultWidth ? (_loc_4) : (this._defaultWidth);
                }
                else
                {
                    this._cf.width = this._defaultWidth - this._buffer * 2;
                }
                this._contentContainer.addChild(this._cf);
            }
            this._tf.defaultTextFormat = this._titleFormat;
            this._cf.defaultTextFormat = this._contentFormat;
            return;
        }// end function

		/*//建立文本
		* @ param 字体是否嵌入
		*/
        private function createField(param1:Boolean) : TextField
        {
            var _loc_2:TextField = new TextField();
            _loc_2.embedFonts = param1;
            _loc_2.gridFitType = "pixel";
            _loc_2.autoSize = TextFieldAutoSize.LEFT;
            _loc_2.selectable = false;
            if (!this._autoSize)
            {
                _loc_2.multiline = true;
                _loc_2.wordWrap = true;
            }
            return _loc_2;
        }// end function

		/*背景
		* @ param
		* @ param
		*/
        private function drawBG() : void
        {
            var _loc_9:Number = 0;
            var _loc_10:Number = 0;
            var _loc_11:Number = 0;
            this.graphics.clear();
            var _loc_1:Rectangle = this.getBounds(this);
            var _loc_2:Number = isNaN(this._defaultHeight) ? (_loc_1.height + this._buffer * 2) : (this._defaultHeight);
            var _loc_3:String = GradientType.LINEAR;
            var _loc_4:Array = [this._bgAlpha, this._bgAlpha];
            var _loc_5:Array = [0, 255];
            var _loc_6:Matrix = new Matrix();
            var _loc_7:Number = 90 * Math.PI / 180;
            _loc_6.createGradientBox(this._defaultWidth, _loc_2, _loc_7, 0, 0);
            var _loc_8:String = SpreadMethod.PAD;
            if (!isNaN(this._border))
            {
                this.graphics.lineStyle(this._borderSize, this._border, 1);
            }
            this.graphics.beginGradientFill(_loc_3, this._bgColors, _loc_4, _loc_5, _loc_6, _loc_8);
            if (this._hookEnabled)
            {
                _loc_9 = 0;
                _loc_10 = 0;
                _loc_11 = this._defaultWidth;
                this.graphics.moveTo(_loc_9 + this._cornerRadius, _loc_10);
                this.graphics.lineTo(_loc_9 + _loc_11 - this._cornerRadius, _loc_10);
                this.graphics.curveTo(_loc_9 + _loc_11, _loc_10, _loc_9 + _loc_11, _loc_10 + this._cornerRadius);
                this.graphics.lineTo(_loc_9 + _loc_11, _loc_10 + _loc_2 - this._cornerRadius);
                this.graphics.curveTo(_loc_9 + _loc_11, _loc_10 + _loc_2, _loc_9 + _loc_11 - this._cornerRadius, _loc_10 + _loc_2);
                this.graphics.lineTo(_loc_9 + this._hookOffSet + this._hookSize, _loc_10 + _loc_2);
                this.graphics.lineTo(_loc_9 + this._hookOffSet, _loc_10 + _loc_2 + this._hookSize);
                this.graphics.lineTo(_loc_9 + this._hookOffSet - this._hookSize, _loc_10 + _loc_2);
                this.graphics.lineTo(_loc_9 + this._cornerRadius, _loc_10 + _loc_2);
                this.graphics.curveTo(_loc_9, _loc_10 + _loc_2, _loc_9, _loc_10 + _loc_2 - this._cornerRadius);
                this.graphics.lineTo(_loc_9, _loc_10 + this._cornerRadius);
                this.graphics.curveTo(_loc_9, _loc_10, _loc_9 + this._cornerRadius, _loc_10);
                this.graphics.endFill();
            }
            else
            {
                this.graphics.drawRoundRect(0, 0, this._defaultWidth, _loc_2, this._cornerRadius);
            }
            return;
        }// end function

        private function animate(param1:Boolean) : void
        {
            if (!this._parentObject.stage || !this._parentObject.parent)
            {
                return;
            }
            var _loc_2:* = param1 == true ? (1) : (0);
            this.alpha = _loc_2;
            visible = true;
            if (!param1)
            {
                this.alpha = _loc_2;
                visible = false;
                this._timer.reset();
            }
            return;
        }// end function

        private function onTweenComplete() : void
        {
            this.cleanUp();
            return;
        }// end function

        public function set buffer(param1:Number) : void
        {
            this._buffer = param1;
            return;
        }// end function

        public function get buffer() : Number
        {
            return this._buffer;
        }// end function

        public function set bgAlpha(param1:Number) : void
        {
            this._bgAlpha = param1;
            return;
        }// end function

        public function get bgAlpha() : Number
        {
            return this._bgAlpha;
        }// end function

        public function set tipWidth(param1:Number) : void
        {
            this._defaultWidth = param1;
            return;
        }// end function

        public function set titleFormat(param1:TextFormat) : void
        {
            this._titleFormat = param1;
            if (this._titleFormat.font == null)
            {
                this._titleFormat.font = ApplicationConfig.mainConfig.appFont;
            }
			if (this._contentFormat.color !=0xABFC14)
				{
					this._contentFormat.color = 0xABFC14;
				}
            this._titleOverride = true;
            return;
        }// end function

        public function set contentFormat(param1:TextFormat) : void
        {
            this._contentFormat = param1;
			try {
				if (this._contentFormat.font == null)
				{
					this._contentFormat.font = ApplicationConfig.mainConfig.appFont;
				}
				if (this._contentFormat.color !=0xffffff)
				{
					this._contentFormat.color = ApplicationConfig.FONT_COLOR;
				}
				this._contentOverride = true;
				}catch (e:Error) {
					//trace("ToolTip:"+e)
					}
            
            return;
        }// end function

        public function set stylesheet(param1:StyleSheet) : void
        {
            this._stylesheet = param1;
            this._styleOverride = true;
            return;
        }// end function

        public function set align(param1:String) : void
        {
            var _loc_2:String = param1.toLowerCase();
            var _loc_3:String = "right left center";
            if (_loc_3.indexOf(param1) == -1)
            {
                throw new Error(this + " : Invalid Align Property, options are: \'right\', \'left\' & \'center\'");
            }
            this._align = _loc_2;
            return;
        }// end function

        public function set delay(param1:Number) : void
        {
            this._delay = param1;
            this._timer.delay = param1;
            return;
        }// end function

        public function set hook(param1:Boolean) : void
        {
            this._hookEnabled = param1;
            return;
        }// end function

        public function set hookSize(param1:Number) : void
        {
            this._hookSize = param1;
            return;
        }// end function

        public function set cornerRadius(param1:Number) : void
        {
            this._cornerRadius = param1;
            return;
        }// end function

        public function set colors(param1:Array) : void
        {
            this._bgColors = param1;
            return;
        }// end function

        public function set autoSize(param1:Boolean) : void
        {
            this._autoSize = param1;
			/*if (!this._autoSize)
            {
				if(_cf){
                _cf.multiline = true;
                _cf.wordWrap = true;
				}
            }else {
				if(_cf){
				_cf.multiline = false;
                _cf.wordWrap = false;
				}
				}*/
            return;
        }// end function

        public function set border(param1:Number) : void
        {
            this._border = param1;
            return;
        }// end function

        public function set borderSize(param1:Number) : void
        {
            this._borderSize = param1;
            return;
        }// end function

        public function set tipHeight(param1:Number) : void
        {
            this._defaultHeight = param1;
            return;
        }// end function

        public function set titleEmbed(param1:Boolean) : void
        {
            this._titleEmbed = param1;
            return;
        }// end function

        public function set contentEmbed(param1:Boolean) : void
        {
            this._contentEmbed = param1;
            return;
        }// end function

		//文字滤镜
        private function textGlow(param1:TextField) : void
        {
            var _loc_2:Number = 0;
            var _loc_3:Number = 0.35;
            var _loc_4:Number = 2;
            var _loc_5:Number = 2;
            var _loc_6:Number = 1;
            var _loc_7:Boolean = false;
            var _loc_8:Boolean = false;
            var _loc_9:* = BitmapFilterQuality.HIGH;
            var _loc_10:* = new GlowFilter(_loc_2, _loc_3, _loc_4, _loc_5, _loc_6, _loc_9, _loc_7, _loc_8);
            var _loc_11:* = new Array();
            new Array().push(_loc_10);
            param1.filters = _loc_11;
            return;
        }// end function

        private function bgGlow() : void
        {
            var _loc_1:Number = 0;
            var _loc_2:Number = 0.2;
            var _loc_3:Number = 5;
            var _loc_4:Number = 5;
            var _loc_5:Number = 1;
            var _loc_6:Boolean = false;
            var _loc_7:Boolean = false;
            var _loc_8:* = BitmapFilterQuality.HIGH;
            var _loc_9:* = new GlowFilter(_loc_1, _loc_2, _loc_3, _loc_4, _loc_5, _loc_8, _loc_6, _loc_7);
            var _loc_10:* = new Array();
            new Array().push(_loc_9);
            filters = _loc_10;
            return;
        }// end function

        private function initTitleFormat() : void
        {
            this._titleFormat = new TextFormat();
			//Debug.log("ApplicationConfig.mainConfig.appFont="+ApplicationConfig.mainConfig.appFont)
            //this._titleFormat.font = ApplicationConfig.mainConfig.appFont;
            this._titleFormat.bold = true;
            this._titleFormat.size = 20;
            this._titleFormat.color = 0xffffff;
            return;
        }// end function

        private function initContentFormat() : void
        {
            this._contentFormat = new TextFormat();
            this._contentFormat.font = ApplicationConfig.mainConfig.appFont;
            this._contentFormat.bold = false;
            this._contentFormat.size = 14;
            this._contentFormat.color = 0xffffff;
            return;
        }// end function

        private function addedToStage(param1:DisplayObject) : Boolean
        {
            var _loc_2:* = param1.stage;
            return _loc_2 == null ? (false) : (true);
        }// end function

		/*设置位置
		* @ param
		* @ param
		*/
        private function setOffset() : void
        {
            switch(this._align)
            {
                case "left":
                {
                    this._offSet = -this._defaultWidth + this._buffer * 3 + this._hookSize;
                    this._hookOffSet = this._defaultWidth - this._buffer * 3 - this._hookSize;
                    break;
                }
                case "right":
                {
                    this._offSet = -this._buffer * 3 - this._hookSize;
                    this._hookOffSet = this._buffer * 3 + this._hookSize;
                    break;
                }
                case "center":
                {
                    this._offSet = -this._defaultWidth / 2;
                    this._hookOffSet = this._defaultWidth / 2;
                    break;
                }
                default:
                {
                    this._offSet = -this._defaultWidth / 2;
                    this._hookOffSet = this._defaultWidth / 2;
                    break;
                    break;
                }
            }
            return;
        }// end function

        private function cleanUp() : void
        {
            if (!this._tf)
            {
                return;
            }
            this._parentObject.removeEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
            this.follow(false);
            this._tf.filters = [];
            this.filters = [];
            this._contentContainer.removeChild(this._tf);
            this._tf = null;
            if (this._cf != null)
            {
                this._cf.filters = [];
                this._contentContainer.removeChild(this._cf);
            }
            this.graphics.clear();
            removeChild(this._contentContainer);
            parent.removeChild(this);
            return;
        }// end function

        public function get defaultWidth() : Number
        {
            return this._defaultWidth;
        }// end function

        public function set defaultWidth(param1:Number) : void
        {
            this._defaultWidth = param1;
            return;
        }// end function

        public function get defaultHeight() : Number
        {
            return this._defaultHeight;
        }// end function

        public function set defaultHeight(param1:Number) : void
        {
            this._defaultHeight = param1;
            return;
        }// end function

        public static function getInstance() : ToolTip
        {
            if (!tp)
            {
                tp = new ToolTip;
            }
            return tp;
        }// end function

    }
}
