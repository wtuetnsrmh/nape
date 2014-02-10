package bbjxl.com.content.three
{
	/**
	作者：被逼叫小乱
	模拟考试中的部件基类
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import bbjxl.com.display.Part;
	import bbjxl.com.utils.RandomExt;
	public class MNKS_Part extends Part
	{
		private var _currentSelecteFaultOption:int=-1;//当前选择的故障类型
		//===================================================================================================================//
		public function set currentSelecteFaultOption(_id:int):void {
			_currentSelecteFaultOption=_id;
		}
		public function get currentSelecteFaultOption():int {
			return _currentSelecteFaultOption;
		}
		//===================================================================================================================//
		public function MNKS_Part()
		{
			super();
		}//End Fun
		//-------------------------------------------------重写-------------------------------------------------------------------//
		//返回一个随机的故障类型
		override public function returnOptionSelect():int{
			var _totalOptionNum:uint = _Xml.children().length();//当前部件的故障类型数
			trace("_totalOptionNum="+_totalOptionNum)
			//保证只随机生成一次
			if(_currentSelecteFaultOption<0){
				var tempId:int = RandomExt.integet(_totalOptionNum);//随机获得一个数
					while (tempId == 0) {
						tempId = RandomExt.integet(_totalOptionNum);
						}
				_currentSelecteFaultOption=tempId;
			}
			return _currentSelecteFaultOption;
			}
		
		//对外接口
		override public function interfaceOut(_value:XMLList):void
		{
			_dkMc = this.getChildByName("dk") as MovieClip;
			//_dkMc.visible=false;//初始为隐藏断开状态

			_Xml=XML(_value.toXMLString());
			_RMPX_Fault_Select = new RMPX_Fault_Select(_Xml);
			_partId = String(_Xml.@partid);
			//部件点击事件
			_bgMC = this.getChildByName("bgMC") as MovieClip;
			_bgMC.buttonMode = true;
			//_bgMC.addEventListener(MouseEvent.CLICK,partClickEventHandler);
		}

		//显示表
		public function dispathShowForm():void
		{
			_gvar.T_MNKS_PARTED=true;
			var _partClick:PartClickEvent=new PartClickEvent();
			_partClick.clicked = true;
			dispatchEvent(_partClick);
		}
		//===================================================================================================================//
	}
}