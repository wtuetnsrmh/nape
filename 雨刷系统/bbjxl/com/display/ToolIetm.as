package bbjxl.com.display{
	/**
	作者：被逼叫小乱
	
	www.bbjxl.com/Blog
	**/
	import flash.display.Sprite;
	import flash.display.MovieClip;
	import flash.utils.getDefinitionByName;
	import flash.events.Event;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	import flash.events.IOErrorEvent;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	import flash.display.Bitmap;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.display.Loader;
	import com._public._displayObject.IntroductionText;
	import bbjxl.com.Gvar;
	public class ToolIetm extends Sprite {
		private var name_txt:TextField=new TextField();//工具名字
		private var toolImage:Bitmap=new Bitmap();//工具图片
		private var toolImageUrl:String=new String();//工具图片URL
		private var _toolId:uint;//工具ID
		private var _toolItemId:uint;//工具里面的ID
		
		
		
		
		private var toolImageWidth:uint=50;
		private var toolImageHeight:uint=67;
		//===================================================================================================================//
		public function get toolItemId():uint{
			return _toolItemId;
			}
		public function set toolItemId(_value:uint):void{
			_toolItemId=_value;
			}
		public function get toolId():uint{
			return _toolId;
			}
		public function set toolId(_value:uint):void{
			_toolId=_value;
			}
		//===================================================================================================================//
		public function ToolIetm(toolName:String,toolUrl:String) {
			name_txt.autoSize = TextFieldAutoSize.CENTER;
            var format:TextFormat = new TextFormat();
            format.color = 0xffffff;
            format.size = 15;
			format.bold=true;
			name_txt.mouseEnabled=false;
			name_txt.selectable=false;
			//name_txt.background=true;
            name_txt.defaultTextFormat = format;
			name_txt.x=(toolImageWidth-name_txt.width)/2;
			name_txt.y=toolImageHeight;
			name_txt.text=toolName;
			addChild(name_txt);
			
			loadToolImage(toolUrl);
			var tooltip:IntroductionText = new IntroductionText(this, Gvar.getInstance()._stage, {titletext:"点击使用工具",contenttext:""} );
		}//End Fun
		//--------------------------------------------------------------------------------------------------------------------//
		//加载工具图片
		private function loadToolImage(hi:String):void{
			var urlrequest:URLRequest=new URLRequest(hi);
			var urlloader:Loader=new Loader();
			urlloader.contentLoaderInfo.addEventListener(Event.COMPLETE,complete_handler);
			urlloader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, onError); 
			urlloader.load(urlrequest);
			}
		private function complete_handler(event:Event):void{
				toolImage=event.target.content;
				/*toolImage.width=100;
				toolImage.scaleY=headImage.scaleX;*/
				toolImage.x=(toolImageWidth-toolImage.width)/2;
				toolImage.y=0;
				/*//描边效果
				var myGlowFilter = new flash.filters.GlowFilter(0xffffff,1, 12,12, 2, 3, false, false);
				var myFilters:Array = headImage.filters;
				myFilters.push(myGlowFilter);
				headImage.filters = myFilters;*/
				addChild(toolImage);
				
			}
			
		private function onError(event:IOErrorEvent):void  
		{   
   		 trace("ErrorEvent");   
		}
		//===================================================================================================================//
	}
}