/**
*
* 6dn Avm1Loader 

*----------------------------------------------------------------
* @notice 6dn Avm1Loader类
* @author 6dn
* @as version3.0
* @date 2009-5-26
*
* AUTHOR ******************************************************************************
* 
* authorName : 黎新苑 - www.6dn.cn
* QQ :160379558(小星@6dn)
* MSN :xdngo@hotmail.com
* email :6dn@6dn.cn
* webpage : http://www.6dn.cn
* 
* LICENSE ******************************************************************************
* 
* ① 此类是基于Loader扩展!
* ② 支持以as2.0版本的flash,可使用加载进来的swf中任何位置的function(只支持调用function)；
* ③ 注意:由于使用LocalConnection在同一时间内connetID会出现冲突，所以请不要并发使用。
* ④ 此类作为开源使用，但请重视作者劳动成果，请使用此类的朋友保留作者信息。
* Please, keep this header and the list of all authors
* 
*/

package bbjxl.com.utils{
	import flash.net.LocalConnection;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.events.StatusEvent;
	import flash.utils.ByteArray;

	public class Avm1Loader extends Loader {

		private var avmLC:LocalConnection = new LocalConnection();
		private var avm1LC:LocalConnection = new LocalConnection();
		private var avm2LC:LocalConnection = new LocalConnection();

		private const AVM_SER:String="6DN_Avm_server";
		private var AVM1_SER:String="6DN_Avm1_server";
		private var AVM2_SER:String="6DN_Avm2_server";
		private var AVM1_URL:String;
		private var SER_code:String;

		private const EVENT_LOADED:String="Avm1Loaded";
		private const EVENT_LOADPROGRESS:String="Avm1LoadProgress";
		private var Avm1Precent:Number;
		private var intervalId:uint;

		private const str:String="Q1dTCWoGAAB4nLVT3VLTQBQ+SVO6/AlUpChBRCoqIlguvKoKFiyMpdXgeJsJ7VJa02wnSSs8gV5xmRnHccZn8C18FJ+inrNbKB2Kd+Zik/N95+fbb7MnELcBJn4CjGmwPQX45PROp/MqtjkE8PWXloEj16m+5acgDutFp8EhjR8QOn6Vh+AKp1I6rPNyCLYvRAhB062FUBc1D8LjWkBFgKkBHLU8WKPVox4u96rhMTjNpnsKTrtRyEHZFQGHrY/7G/bBjgXPt4v2VruxYQfcb3PfBrsh2jUOZZ87Id9pNMPTfQJybq0JtivKn+R8EiRxEN6OF3L/jU/zUOvr05AHBaR55SL8IELHpfkZIt75ourzICBgAxUF3KtckFiF2i5L6yojOCPxgig7bk54HtpRE54qzYEnPsM2aoYg9Gnyrmj5Adj0uV/zWiiDPg94WXiVQKGuWwu6cXdY5sKHshqgdoq2NZTG7lyU+X1cgpo6qBdapAMDM5n8oUMcIg1iLyMDmMZ0k5hYMRslKTQSGh4+i6uXJskhi9aENd+XwganYNNhBM0sfY10249ge3wNmwSOdmvG8rSqhPFi3izJTBneKEZxkP13SfAcRKMwBN2H2mDOqJX6pkMFBlXtUdXKOTXcqy1GCZXR12ThPJOBntAvsUVaJ6zU2cK50eheHWLplu+CkcbDsMuiwuGP1idwUlZPWaloCFiS3TSM/Hw0A2y6l2LIOYbGblnSmmlpzUxcK6FcI6Y0Tss+KexjUOrsGaPaWB1O+uepvNsWbb+CwNgA9o41PvtFAz01kKNKvO8dadx7QN04D5Qa2ZLNsaRJ5sUoMGXZvBTG7nYZvZ+JS8l6Cf39DYOHXjqYvWSBRq/CIH24s0H1/0esKRvq1/QoURO8QfL3XmD35OEtbtGa3IrG8ex7Ou9vZglZuoKYV5B0D3mgkOUekpbDH8or9ijfZ4WiHlv5a7mVf3BPrHyWftFFtsqWTfxHaS/mxRVZkklP0R5dBrjjNbam7qkK19m6Cpdl+Iwt9CybPLcMNjH8CwprKeg=";
		private var bytearray:ByteArray;

		public function Avm1Loader():void {
			bytearray=new Base64(str);
		}
		public function Load($url:String):void {
			AVM1_URL=$url;
			SER_code=getRndCode(AVM1_URL);
			AVM2_SER=AVM2_SER+"_"+SER_code;
			try {
				avm2LC.connect(AVM2_SER);
			} catch (error:ArgumentError) {
				trace("error on avm2LC connection");
			}
			avm2LC.client=this;
			this.loadBytes(bytearray);
			this.contentLoaderInfo.addEventListener(Event.COMPLETE,eventHandler);
		}
		private function eventHandler(evt:Event):void {
			this.contentLoaderInfo.removeEventListener(Event.COMPLETE,eventHandler);
			try {
				avmLC.connect(AVM_SER);
			} catch (error:ArgumentError) {
				trace("error on avmLC connection");
			}
			avmLC.client=this;
		}
		private function onStatus(event:StatusEvent):void {
			switch (event.level) {
				case "status" :
					trace("LocalConnection.send() succeeded");
					break;
				case "error" :
					trace("LocalConnection.send() failed");
					break;
			}
		}
		public function avm1Connected($str:String):void {
			trace("connect");
			avmLC.close();
			AVM1_SER=AVM1_SER+"_"+$str;
			trace(AVM1_SER);
			avm1LC.send(AVM1_SER, "loadMC", AVM1_URL, SER_code);
			avm1LC.addEventListener(StatusEvent.STATUS, onStatus);
		}
		public function avm1LoadProgress($percent:Number):void {
			Avm1Precent=$percent;
			dispatchEvent(new Event(EVENT_LOADPROGRESS));
		}
		public function avm1Loaded():void {
			//trace("loaded");
			dispatchEvent(new Event(EVENT_LOADED));
		}
		public function avm1Execute($obj:Object):void {
			avm1LC.send(AVM1_SER, "cmd", $obj);
		}
		private function getRndCode($url:String):String {
			var len:Number=$url.length;
			var tmpstr:String=len<8?$url+"6dn_avm1_ser"+Math.random()*1000:$url;
			len=tmpstr.length;
			var mystr:String=tmpstr.charAt(int(Math.random()*len))+tmpstr.charAt(int(Math.random()*len))+tmpstr.charAt(int(Math.random()*len))+tmpstr.charAt(int(Math.random()*len))+tmpstr.charAt(int(Math.random()*len))+tmpstr.charAt(int(Math.random()*len))+tmpstr.charAt(int(Math.random()*len))+tmpstr.charAt(int(Math.random()*len));
			return mystr;
		}
		public function get Complete():String {
			return EVENT_LOADED;
		}
		public function get Progress():String {
			return EVENT_LOADPROGRESS;
		}
		public function get loadedprecent():Number {
			return Avm1Precent;
		}
	}
}

import flash.utils.ByteArray;
internal class Base64 extends ByteArray {
	private static  const BASE64:Array = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,62,0,0,0,63,52,53,54,55,56,57,58,59,60,61,0,0,0,0,0,0,0,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,0,0,0,0,0,0,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,0,0,0,0,0];
	public function Base64(str:String):void {
		var n:int, j:int;
		for (var i:int = 0; i < str.length && str.charAt(i) != "="; i++) {
			j = (j << 6) | BASE64[str.charCodeAt(i)];
			n += 6;
			while (n >= 8) {
				writeByte((j >> (n -= 8)) & 0xFF);
			}
		}
		position = 0;
	}
}