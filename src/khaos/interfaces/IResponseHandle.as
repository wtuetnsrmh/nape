package khaos.interfaces
{
	

	public interface IResponseHandle
	{
		function onResult(command:String, result:Object):void;

		function onException(command:String, code:int, msg:String, value:Object):void;
	}
}