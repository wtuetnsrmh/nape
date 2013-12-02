package khaos.profile
{
	import starling.display.Sprite;
	import starling.text.TextField;
	
	public class NetWorkMonitor extends Sprite
	{
		private var _textField:TextField = new TextField(500,400,"");
		private var _msgList:Array = new Array;
		public function NetWorkMonitor()
		{
			super();
			this.touchable=false;
			
			this.addChild(_textField);
		}
		
		public function addTextMonitor(txt:String, maxLine:int=20):void
		{
			if(_msgList.length > maxLine){
				_msgList.shift();
			}
			_msgList.push(txt);
			var showMsg:String = "";
			for(var i:int=0; i<_msgList.length; i++){
				var msg:String = _msgList[i];
				showMsg += msg + "\r";
			}
			_textField.text = showMsg;
		}
	}
}