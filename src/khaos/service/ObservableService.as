package khaos.service
{
	import khaos.interfaces.IamObservable;
	import khaos.interfaces.IamObserver;
	import khaos.socket.BaseProtocol;
	import khaos.utils.HashMap;
	
	public class ObservableService implements IamObservable, IService
	{
		private var _observrMap:HashMap = new HashMap;
		public function ObservableService()
		{
		}
		
		public function attach(observer:IamObserver):void
		{
			_observrMap.put(observer, 1);
		}
		
		public function detach(observer:IamObserver):void
		{
			_observrMap.remove(observer);
		}
		
		public function notify(param:*, extarParam:*=null):void
		{
			for each( var item:IamObserver in _observrMap.getKeys() ){
				item.update(this, param);
			}
		}
		
		public function handData(protocol:BaseProtocol):void
		{
		}
	}
}