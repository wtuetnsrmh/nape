package bbjxl.com.content.first
{
	/**
	作者：被逼叫小乱
	
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	import bbjxl.com.loading.Imageload;
	
	public class RMPXAlertImage extends Sprite
	{
		private var sText:TextField=new TextField();//实物图
		
		private var imageS:Imageload;
		
		private var _sd:Boolean=true;//是否是电路图
		private var _thisWidth:uint;
		//===================================================================================================================//
		public function get thisWidth():uint{
			return _thisWidth;
			}
		public function set thisWidth(_value:uint):void{
			_thisWidth=_value;
			}
		//===================================================================================================================//
		public function RMPXAlertImage(_url:String,_name:String,_width:uint,_height:uint,sd:Boolean=true)
		{
			_thisWidth=_width;
			imageS = new Imageload(0,0,_url,_width,_height);
			imageS.addEventListener("loadimageover",loadImageOverHandler);
			function loadImageOverHandler(e:Event)
			{
				dispatchEvent(new Event("loadimagesdover"));//广播
				addChild(imageS);

			}
			
			_sd=sd;
			creaText(_name,_width,_height);
		}//End Fun

		private function creaText(s:String,_width:uint,_height:uint):void{
			//sText.autoSize = TextFieldAutoSize.CENTER;
            var format:TextFormat = new TextFormat();
            format.color = 0x000000;
            format.size = 13;
			format.bold=true;
			format.align="center";
			sText.mouseEnabled=false;
			sText.selectable=false;
			//name_txt.background=true;
			sText.width=_width;
            sText.defaultTextFormat = format;
			sText.x=0;
			sText.y=imageS.y+_height+20;
			
			if(_sd){
				sText.htmlText=s+"\n"+"(实物图)";
				}else{
					sText.htmlText=s+"\n"+"(电路图)";
					}
			
			
			addChild(sText);
			}
		//--------------------------------------------------------------------------------------------------------------------//

		//===================================================================================================================//
	}
}