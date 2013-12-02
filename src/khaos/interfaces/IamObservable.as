package khaos.interfaces
{
	public interface IamObservable
	{
		function attach(observer:IamObserver):void;
		function detach(observer:IamObserver):void;
		function notify(param:*, extarParam:*=null):void;
	}
}