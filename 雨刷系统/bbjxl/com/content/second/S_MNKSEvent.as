package bbjxl.com.content.second{
	/**
	作者：被逼叫小乱
	www.bbjxl.com/Blog
	自定义类
	
	**/
	import flash.events.Event;

	public class S_MNKSEvent extends Event {

		public static  const SMNKSEVENT:String="smnksevent";//进入点击事件
		
		
		
		private var _score:uint;//分数
		private var _errorArr:Array=new Array();//出错的信息
		
		public function set errorArr(_id:Array):void {
			_errorArr=_id;
		}
		public function get errorArr():Array {
			return _errorArr;
		}
		public function set score(_id:uint):void {
			_score=_id;
		}
		public function get score():uint {
			return _score;
		}

		public function S_MNKSEvent(eventType:String="smnksevent"):void {

			super(eventType);//super(eventType),ture;//父类侦听用true

		}
	}
}