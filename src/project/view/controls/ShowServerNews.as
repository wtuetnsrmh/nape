package project.view.controls 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.filters.BitmapFilterQuality;
	import flash.filters.GlowFilter;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	import com.greensock.*;
	import com.greensock.easing.*;
	import project.config.ApplicationConfig;
	import project.debug.Debug;
	import project.utils.Reflection;
	/**
	 * 显示在全服公告消息
	 * @author bbjxl 2013
	 */
	public class ShowServerNews extends Sprite 
	{
		private var _text:TextField;
		private var _tf:TextFormat;
		private var _filter:GlowFilter;
		private var _callback:Function;
		private var _newBg:Sprite;
		private var _gap:int = 2;
		private var _scorllRec:Rectangle;
		//private var _textContainer:Sprite;
		public function ShowServerNews(value:String,callback:Function) 
		{
			//Debug.log("ShowServerNews="+value)
			_newBg = Reflection.createInstance("newBg");
			_newBg.y = 101;
			addChild(_newBg);
			
			//_textContainer = new Sprite();
			//addChild(_textContainer);
			
			_callback = callback;
			_filter = new GlowFilter();
			_filter.color = 0x301202;//0x793207;
			_filter.alpha = 1;
			_filter.blurX = 2;
			_filter.blurY = 2;
			_filter.quality = BitmapFilterQuality.LOW;
			_filter.strength = 10;
			
			_text = new TextField();
			//_text.width = 400;
			_text.autoSize = TextFieldAutoSize.LEFT;
			_text.mouseEnabled = false;
			_text.mouseWheelEnabled = false;
			_text.multiline = false;
			//_text.wordWrap = true;
			_text.selectable = false;
			_text.htmlText = value;
			_tf = new TextFormat();
			_tf.size = 15;
			_tf.color = 0xfbe845;
			_tf.font = ApplicationConfig.FONT;
			
			_text.setTextFormat(_tf);
			
			
			_text.filters = [_filter];
			if (stage) {
				init();
				}else {
					this.addEventListener(Event.ADDED_TO_STAGE, addToStage);
					}
			
			this.mouseChildren = false;
			this.mouseEnabled = false;
		}
		
		private function addToStage(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, addToStage);
			init();
		}
		
		/**
		 * 渲染，从右往左移
		 */
		public function render():void {
			if (_scorllRec == null) return;
			_scorllRec.x += _gap;
			_text.scrollRect= _scorllRec;
			if (_scorllRec.x > _text.textWidth + 5) {
				_callback.call(null);//回调表示已经显示完
				_callback = null;
				dispose();
				}
			}
		
		private function init():void 
		{
			_newBg.x = ApplicationConfig.STAGE_WIDTH - _newBg.width >> 1;
			_text.x = _newBg.x + 40;
			_text.y = _newBg.y + 13;
			addChild(_text);
			_scorllRec = new Rectangle(0, 0, 453, 50);
			_scorllRec.x = -450;
			_text.scrollRect= _scorllRec;
			
			/*_text.alpha = 0;
			var timeline:TimelineLite = new TimelineLite();
				timeline.append( new TweenLite(_text, .5, {alpha:1,y:"50", ease:Elastic.easeOut}) );
				timeline.append( new TweenLite(_text, .5, {alpha:0,y:"-50", delay:3, onComplete:function ():void {
				_callback.call(null);//回调表示已经显示完
				_callback = null;
				dispose();
				}}));*/
			
				
			
		}
		
		private function dispose():void 
		{
			_text.filters =null;
			removeChild(_text);
			_text = null;
			_tf = null;
			_filter = null;
			removeChild(_newBg);
			_newBg = null;
			_scorllRec = null;
			if (parent) {
				parent.removeChild(this);
				}
		}
		
	}

}