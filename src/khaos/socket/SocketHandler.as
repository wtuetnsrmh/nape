package khaos.socket
{

	public interface SocketHandler
	{
		function onData(protocolBuff:IProtocol):void;
		function onConnect():void;
		function onDisconnect():void;
		function onIOError():void;
		function onSecurityError():void;
		function onFailedForever():void;
	}
}