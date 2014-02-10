package bbjxl.com.display{
	/**
	作者：被逼叫小乱
	加载所有的部件XML信息
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import bbjxl.com.loading.xmlReader;
	import bbjxl.com.Gvar;
	import flash.events.Event;

	public class LoadAllPartXml extends Sprite {
		private var _xmlArr:Array=["bxs.xml","dfkg.xml","dwkg.xml","jdq.xml","qdj.xml"];//所有XML的地址
		private var _readXmlArr:Array=new Array();//存放读进来的XML数组
		
		private var _currentArrIndex:uint=0;
		//===================================================================================================================//
		public function get readXmlArr():Array
		{
			return _readXmlArr;
		}
		public function set readXmlArr(_value:Array):void
		{
			_readXmlArr = _value;
		}
		//===================================================================================================================//
		public function LoadAllPartXml() {
			loadXml(_xmlArr[_currentArrIndex]);
		}//End Fun
		
		//加载数据
		private function loadXml(_url:String):void
		{
			var temp:xmlReader=new xmlReader();
			temp.loadXml(0,0,Gvar.testUrl+"data/3/"+_url,0);
			temp.addEventListener(xmlReader.LOADXMLOVER,loadxmloverhandler);
		}

		private function loadxmloverhandler(e:Event):void
		{
			_readXmlArr.push((e.target as xmlReader)._xmlData);
			_currentArrIndex++;
			if(_currentArrIndex<_xmlArr.length){
			loadXml(_xmlArr[_currentArrIndex]);
			}else{
				//如果所有的XML都已经读进来了
				dispatchEvent(new Event("allPartXmlLoadOver"));
				}
			
		}
		//--------------------------------------------------------------------------------------------------------------------//
		
		//===================================================================================================================//
	}
}