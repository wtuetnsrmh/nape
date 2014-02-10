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
	import flash.events.*;
	public class mainloading extends MovieClip {
		private var my_Sprite:Sprite;
		private var my_mc:loading_mc_1;
		private var my_mc2:loading_mc_2;
		private var my_mc3:loading_mc_3;
		private var my_Choose:Number;
		private var my_Number_x:Number;
		private var my_Number_y:Number;
		private var my_Request:URLRequest;
		private var my_load_Str:String;
		private var my_Loader:Loader;
		public function mainloading(__x:Number,__y:Number,__Str:String,__C) {
			my_Number_x=__x;
			my_Number_y=__y;
			my_load_Str=__Str;
			my_Choose=__C;
			my_Sprite=new Sprite();
			my_mc=new loading_mc_1();
			my_mc.x=my_Number_x;
			my_mc.y=my_Number_y;
			my_mc2=new loading_mc_2  ;
			my_mc2.x=my_Number_x;
			my_mc2.y=my_Number_y;
			my_mc3=new loading_mc_3();
			my_mc3.x=my_Number_x;
			my_mc3.y=my_Number_y;
			my_Request=new URLRequest(my_load_Str);
			my_Loader=new Loader();
			my_Loader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, loadProgress);
			my_Loader.contentLoaderInfo.addEventListener(Event.COMPLETE, loadComplete);
			my_Loader.load(my_Request);
			switch (__C) {
				case 1 :
					my_Sprite.addChildAt(my_mc,0);
					break;
				case 2 :
					my_Sprite.addChildAt(my_mc2,0);
					break;
					case 3 :
					my_Sprite.addChildAt(my_mc3,0);
					break;
			}
			addChild(my_Sprite);
		}
		
		private function loadProgress(event:ProgressEvent):void {
			var percentLoaded:Number=event.bytesLoaded/event.bytesTotal;
			percentLoaded=Math.round(percentLoaded*100);
			my_mc.bar_mc.scaleX=percentLoaded;
			my_mc2.loading.scaleX=percentLoaded;
			my_mc2.my_texta2.text=String(percentLoaded)+"%";
			my_mc.my_texta1.text="文件已加载"+percentLoaded+"% 请耐心等待.......";
			my_mc3.line.scaleX=percentLoaded;
			my_mc3.my_text.text=String(percentLoaded)+"%";
		}
		private function loadComplete(event:Event):void {
			//trace("Complete");
			removeChild(my_Sprite);
			addChild(my_Loader);
		}
	}
}