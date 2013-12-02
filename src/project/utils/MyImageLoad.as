package project.utils 
{
	
	import flash.display.Bitmap;
	import flash.display.Loader;
	import flash.errors.IOError;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IOErrorEvent;
	import flash.events.ProgressEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.URLRequest;
	import project.debug.Debug;
	import project.debug.myDebug;
	
	/**
	 * ...
	 * @author bbjxl 
	 * http://www.bbjxl.com/
	 * 自定义图片加载类
	 * 
	 * var myimageload:MyImageLoad = new MyImageLoad("asset/1.png");
			myimageload.addEventListener(MyImageLoad.LOADIMAGEOVER,loadover);
			function loadover(e:Event):void {
				addChild(myimageload._bitmap)
				trace(myimageload._bitmap.width);
				
				}
	 */
	public class MyImageLoad extends EventDispatcher 
	{
		public static const LOADIMAGEOVER:String = "loadimageover";//加载图片完毕
		
		public var _bitmap:Bitmap;
		private var _width:Number=0;
		private var _height:Number = 0;
		private var _scale:Boolean = false;
		private var my_Request:URLRequest;
		private var my_Loader:Loader;
		
		public function MyImageLoad(url:String, thisWidth:Number = 0, thisHeight:Number = 0,thisScale:Boolean=false ):void 
		{
			_width = thisWidth;
			_height = thisHeight;
			_scale = thisScale;
			
			try{
			my_Request=new URLRequest(url);
			my_Loader=new Loader();
			my_Loader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, loadProgress);
			my_Loader.contentLoaderInfo.addEventListener(Event.COMPLETE, loadComplete);
			my_Loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, ioErrorEventHandler);
			my_Loader.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR, securityErrorHanlder);
			
			my_Loader.load(my_Request);
			}catch(err:IOErrorEvent){
				Debug.log(err);
				}
		}
		
		private function loadProgress(event:ProgressEvent):void {
			var percentLoaded:Number=event.bytesLoaded/event.bytesTotal;
			percentLoaded=Math.round(percentLoaded*100);
			Debug.log(percentLoaded);
			}
			
		//
		private function ioErrorEventHandler(e:IOErrorEvent):void {

			Debug.log(e);
			}
		private function securityErrorHanlder(e:SecurityErrorEvent):void {
			Debug.log(e);
			}
		//
		private function loadComplete(e:Event):void {
			my_Loader.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS, loadProgress);
			my_Loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, loadComplete);
			my_Loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR, ioErrorEventHandler);
			my_Loader.contentLoaderInfo.removeEventListener(SecurityErrorEvent.SECURITY_ERROR, securityErrorHanlder);
			
			_bitmap = e.target.content;
			
			if (_width > 0) {
				if(_bitmap.width>_width){
					if (_scale) {
						trace("_thisWidth="+_width)
						_bitmap.width=_width;
						_bitmap.scaleY=_bitmap.scaleX;
						}else{
							_bitmap.width=_width;
							_bitmap.height=_height;
							}
				}
			}
			dispatchEvent(new Event("loadimageover"));//广播
			}
	}

}