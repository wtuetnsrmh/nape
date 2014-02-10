/**
* ...
* @author 被逼叫小乱 *********http://www.bbjxl.com/Blog********......
* @version 0.1
*/

package bbjxl.com.loading{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.net.URLVariables;
	import flash.xml.XMLDocument;
	import flash.xml.XMLNode;
	import flash.xml.XMLNodeType;
	import flash.events.ProgressEvent;
	import flash.events.EventDispatcher;
	import flash.events.IOErrorEvent;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	import flash.text.TextFieldType;


	public class xmlReader extends Sprite{
		private var Loader:URLLoader = new URLLoader();
		public static var LOADXMLOVER:String = "loadxmlover";//加载XML完毕
		private var xmlData:XML = new XML();
		private var my_Sprite:Sprite;
		/*private var my_mc:loading_mc_1;
		private var my_mc2:loading_mc_2;
		private var my_mc3:loading_mc_3;*/
		private var my_Choose:Number=0;
		private var my_Number_x:Number=0;
		private var my_Number_y:Number=0;
		private var my_Request:URLRequest;
		private var my_load_Str:String;
		
		private var jd:TextField=new TextField(); 
		//private var my_Loader:Loader;
		public function get _xmlData():XML {
			return xmlData;
		}
		public function set _xmlData(setValue:XML):void {
			xmlData = setValue;
		}
		public function xmlReader() {

		}
		public function loadXml(__Str:String):void{
			/*my_Number_x=__x;
			my_Number_y=__y;*/
			my_load_Str=__Str;
			//my_Choose=__C;
			
			var format:TextFormat = new TextFormat();
				format.color = 0x000000;
				format.size = 15;
				//format.bold = true;
				format.align="center";
				//streetName.width=rowW;
				//streetName.autoSize = TextFieldAutoSize.LEFT;
				jd.height=20;
				//streetName.background=true;
				//streetName.backgroundColor=0x333333;
				jd.selectable = false;
				jd.defaultTextFormat = format;
				jd.mouseEnabled=false;
				//streetName.x=25;
				//addChild(jd);
			
			var _URL:String = __Str;
			var xmlDataURL:URLRequest = new URLRequest(_URL);
			var xmlLoader:URLLoader = new URLLoader(xmlDataURL);
			xmlLoader.addEventListener(ProgressEvent.PROGRESS, loadProgress);
			xmlLoader.addEventListener(Event.COMPLETE, onLoaded);
			xmlLoader.addEventListener(IOErrorEvent.IO_ERROR, onError); 
			
			/*switch (__C) {
				case 1 :
					my_Sprite.addChildAt(my_mc,0);
					break;
				case 2 :
					my_Sprite.addChildAt(my_mc2,0);
					break;
				case 3 :
					my_Sprite.addChildAt(my_mc3,0);
					break;
			}*/
			function onLoaded(evtObj:Event) {
				//removeChild(my_Sprite);
				xmlData = XML(xmlLoader.data);
				dispatchEvent(new Event("loadxmlover"));//广播
				//OutputXml();
				//return xmlData;
			}
			
		}
		private function loadProgress(event:ProgressEvent):void {
				var percentLoaded:Number=event.bytesLoaded/event.bytesTotal;
				percentLoaded=Math.round(percentLoaded*100);
				jd.text ="文件已加载"+percentLoaded+"% ";
				
				if(percentLoaded>=100){
					jd.text ="";
					//removeChild(jd);
					}
				/*my_mc.bar_mc.scaleX=percentLoaded;
				my_mc2.loading.scaleX=percentLoaded;
				my_mc2.my_texta2.text=String(percentLoaded)+"%";
				my_mc.my_texta1.text="文件已加载"+percentLoaded+"% 请耐心等待.......";
				my_mc3.line.scaleX=percentLoaded;
				my_mc3.my_text.text=String(percentLoaded)+"%";*/
			}
		private function OutputXml() {
			//trace(xmlData);
			//trace(xmlData.child("book")[1].attribute("name"));
		}
		
		private function onError(event:IOErrorEvent):void  
		{   
   		 trace("ErrorEvent");   
		} 
	}
}