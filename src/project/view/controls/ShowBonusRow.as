package project.view.controls 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.filters.BitmapFilterQuality;
	import flash.filters.GlowFilter;
	import flash.geom.Point;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	import com.greensock.*;
	import com.greensock.easing.*;
	import project.config.ApplicationConfig;
	/**
	 * 显示在舞台的一条奖品信息
	 * @author bbjxl 2013
	 */
	public class ShowBonusRow extends Sprite 
	{
		private var _text:TextField;
		private var _tf:TextFormat;
		private var _filter:GlowFilter;
		public function ShowBonusRow(value:String) 
		{
			_filter = new GlowFilter();
			_filter.color = 0x5e2604;//0x793207;
			_filter.alpha = 1;
			_filter.blurX = 4;
			_filter.blurY = 4;
			_filter.quality = BitmapFilterQuality.LOW;
			_filter.strength = 10;
			
			_text = new TextField();
			
			_text.autoSize = TextFieldAutoSize.LEFT;
			_text.mouseEnabled = false;
			_text.mouseWheelEnabled = false;
			_text.selectable = false;
			_text.htmlText = value;
			_tf = new TextFormat();
			_tf.size = 20;
			//_tf.color = 0xffffff;
			_tf.font = "宋体";
			
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
		
		private function init():void 
		{
			_text.x = ApplicationConfig.STAGE_WIDTH - _text.textWidth >> 1;
			_text.y = ApplicationConfig.STAGE_HEIGHT - _text.textHeight >> 1;
			addChild(_text);
			TweenLite.to(_text, 1.5, { y:"-100", ease:Cubic.easeOut, onComplete:function ():void {
				dispose();
				}});
				
			
		}
		
		private function dispose():void 
		{
			_text.filters =null;
			removeChild(_text);
			_text = null;
			_tf = null;
			_filter = null;
			if (parent) {
				parent.removeChild(this);
				}
		}
		
	}

}