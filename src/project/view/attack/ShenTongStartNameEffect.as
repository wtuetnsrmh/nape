package project.view.attack 
{
	import flash.display.Sprite;
	import com.greensock.*;
	import com.greensock.core.*;
	import com.greensock.easing.*;
	import com.greensock.plugins.*;
	import flash.text.Font;
	import flash.text.FontType;
	import flash.text.TextField;
	import flash.filters.GlowFilter;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	/**
	 * 神通发起时显示的神通名称动画效果
	 * @author bbjxl 2012
	 */
	public class ShenTongStartNameEffect extends Sprite 
	{
		private var _name:String;
		private var _timeLen:Number = .1;
		private var _currentId:int = 0;
		private var _len:int = 0;
		private var tempTextArr:Array;
		private var timeline:TimelineLite;
		public function ShenTongStartNameEffect(name:String,timeLen:Number=0.1) 
		{
			_name = name;
			_timeLen = timeLen;
			creaNameText();
		}
		private function creaNameText():void {
			timeline = new TimelineLite();
			var tempArr:Array = _name.split("");
			_len = tempArr.length;
			 tempTextArr= new Array();
			for (var i:String in tempArr) {
				tempTextArr.push(returnText(tempArr[i]));
				}
			for (var j:int = 0; j < tempTextArr.length; j++ ) {
				tempTextArr[j].x = j * tempTextArr[j].textWidth + j * 10;
				addChild(tempTextArr[j]);
				if(j==(tempTextArr.length-1)){
					move(tempTextArr[j],true);
					}else {
						move(tempTextArr[j],false);
						}
				}
			
			}
		private function move(parma1:TextField,parma:Boolean=false):void {
			if(parma){
				timeline.append( new TweenLite(parma1, _timeLen, { x:"20", scaleX:1, scaleY:1 ,alpha:1, onComplete:function () : void
				{
					for (var j:String in tempTextArr) {
						alphaMove(tempTextArr[j]);
						}
				 }}));
				}else {
					timeline.append( new TweenLite(parma1, _timeLen, { x:"20", scaleX:1, scaleY:1,alpha:1 } ));
					}
			}
		private function alphaMove(param:TextField):void {
			TweenLite.to(param, _timeLen, {ease:Quint.easeOut,alpha:0,delay:_timeLen*2,onComplete:function () : void
			{
				removeChild(param);
				param = null;
				if (param == tempTextArr[tempTextArr.length - 1]) {
					tempTextArr = null;
					timeline = null;
					if (parent) {
						parent.removeChild(this);
						}
					
					}
			 }});
			}
		private function returnText(arg:String):TextField {
			var tempText:TextField = new TextField();
			tempText.autoSize = TextFieldAutoSize.LEFT;
			tempText.selectable = false;
			var tf:TextFormat = new TextFormat();
			tf.color = 0xEA9600;
			tf.italic = true;
			tf.size = 40;
			var a = Font.enumerateFonts(); 
			trace(a[0].fontName)
			tf.font = a[0].fontName; //"微软雅黑";
			tempText.defaultTextFormat = tf;
			tempText.embedFonts = true; 
			tempText.antiAliasType = FontType.DEVICE;
			tempText.filters = [new GlowFilter(0x000000, 1,4, 4,4)];
			tempText.text = arg;
			tempText.scaleX = tempText.scaleY = 1.5;
			tempText.alpha = 0;
			
			return tempText;
			}
	}

}