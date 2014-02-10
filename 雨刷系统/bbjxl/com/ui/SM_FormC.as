package bbjxl.com.ui
{
	/**
	作者：被逼叫小乱
	连线部分-模拟考试表格一行
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.display.Shape;
	import flash.geom.Point;
	import flash.text.TextField;
	import flash.utils.getDefinitionByName;
	import flash.text.TextFieldAutoSize;
	import flash.display.SimpleButton;
	import flash.text.TextFormat;
	import bbjxl.com.Gvar;
	

	public class SM_FormC extends Sprite
	{
		private var _tiArr:Object=new Object();
		private var _myScore:uint;
		private var _noOperate:String = "";//连接完后是否未操作
		
		//===================================================================================================================//
		public function get myScore():uint
		{
			return _myScore;
		}
		public function set myScore(_value:uint):void
		{
			_myScore = _value;
		}
		
		//eventFlag是否影响点击事件
		public function SM_FormC(_value:Object,_no:uint,noOperate:String="")
		{
			_noOperate = noOperate;
			_tiArr=_value;
			init(_no);
			
		}// end function
		
		private function init(_no:uint):void{
			//序号
			var hId:FormCell=new FormCell(String(_no+1),100,42,0xffffff,0x000000,15);
			addChild(hId);
			//您曾连错线的起止点ID
			var hselected:FormCell
			if (_noOperate!="") {
				hselected=new FormCell(_noOperate,300,42,0xffffff,0x000000,15);
				}else {
					hselected=new FormCell(trunPartName(_tiArr.startId)+"-"+trunPartName(_tiArr.endId),300,42,0xffffff,0x000000,15);
					}
			
			hselected.x=hId.x+hId.width-1;
			addChild(hselected);
			}
		//根据点的ID转换成相应的部件中文名称
		private function trunPartName(_value:uint ):String {
			var returnStr:String="";
			var tempXml:XML = Gvar.getInstance()._lineXml;
			for (var i:uint=0; i<tempXml.children().length(); i++)
			{
				if (_value == uint(tempXml.child(i).linedetail.(@name == "starpointnumber"))) {
					returnStr = tempXml.child(i).linedetail.(@name == "starpointname");
					return returnStr;
					}
				if (_value == uint(tempXml.child(i).linedetail.(@name == "endpointnumber"))) {
					returnStr = tempXml.child(i).linedetail.(@name == "endpointname");
					return returnStr;
					}
					
				
			}
			return returnStr;
			
			}

	}
}