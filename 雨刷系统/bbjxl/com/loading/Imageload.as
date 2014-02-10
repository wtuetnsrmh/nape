/**
* ...
* @author 被逼叫小乱 *********http://www.bbjxl.com/Blog********......
* @version 0.1
*/

package bbjxl.com.loading{
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.net.URLRequest;
    import flash.display.LoaderInfo;

	import flash.events.*;
	import flash.display.Bitmap;

	public class Imageload extends MovieClip {
		private var my_Number_x:Number;
		private var my_Number_y:Number;
		private var my_Request:URLRequest;
		private var my_load_Str:String;
		private var my_Loader:Loader;
		public var _thisWidth:Number;
		public var _thisHeight:Number;
		private var subload:String;
		private var thisImage:Bitmap=new Bitmap();
		private var _scale:Boolean;
		
		public static var LOADIMAGEOVER:String = "loadimageover";//加载XML完毕
		public function Imageload(__x:Number,__y:Number,__Str:String,_width:uint,_height:uint,scale:Boolean=false) {
			_scale=scale;
			//trace("subload="+subload);
			my_Number_x=__x;
			my_Number_y=__y;
			my_load_Str=__Str;
			_thisWidth=_width;
			_thisHeight=_height;
			
			my_Request=new URLRequest(my_load_Str);
			my_Loader=new Loader();
			//my_Loader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, loadProgress);
			my_Loader.contentLoaderInfo.addEventListener(Event.COMPLETE, loadComplete);
			my_Loader.load(my_Request);
			
			
		}
		private function loadProgress(event:ProgressEvent):void {
			/*var percentLoaded:Number=event.bytesLoaded/event.bytesTotal;
			percentLoaded=Math.round(percentLoaded*100);
			my_mc.bar_mc.scaleX=percentLoaded;
			my_mc2.loading.scaleX=percentLoaded;
			my_mc2.my_texta2.text=String(percentLoaded)+"%";
			my_mc.my_texta1.text="文件已加载"+percentLoaded+"% 请耐心等待.......";
			my_mc3.line.scaleX=percentLoaded;
			my_mc3.my_text.text=String(percentLoaded)+"%";*/
		}
		private function loadComplete(event:Event):void {
			//trace("subload="+subload);
			thisImage=event.target.content;
			if(_thisWidth>0){
			if (_scale) {
				if(thisImage.width>_thisWidth || thisImage.height>_thisHeight){
					if (thisImage.width > thisImage.height) {
						thisImage.width=_thisWidth;
						thisImage.scaleY=thisImage.scaleX;
						}else {
							
							trace("_thisHeight ="+_thisHeight)
							thisImage.height = _thisHeight;
							thisImage.scaleX = thisImage.scaleY;
							trace("thisImage.width ="+thisImage.width +"thisImage.height= "+thisImage.bitmapData.height)
							}
				}
				
				}else{
					thisImage.width=_thisWidth;
					thisImage.height=_thisHeight;
					}
			}
			
			//_thisWidth=my_Loader.width;
			//_thisHeight=my_Loader.height;
			dispatchEvent(new Event("loadimageover"));//广播
			var obj:Object = my_Loader.content; 
			//obj.init1(subload);
			addChild(thisImage)
		}
	}
}