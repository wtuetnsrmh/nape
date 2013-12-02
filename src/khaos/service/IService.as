package khaos.service
{
	import khaos.socket.BaseProtocol;

	public interface IService
	{
		function handData(protocol:BaseProtocol):void;
	}
}