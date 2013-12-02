package khaos.socket
{
	import khaos.view.ViewMgr;
	
	public class SocketProxy
	{
		private static var socket:XSocket;
		
		public static function directConnect(host:String, port:int, handler:SocketHandler, protocol:Class, strHead:String="head"):void
		{
			socket = new XSocket(host, port, handler, protocol, strHead);
			socket.openSocket();
			
		}
		
		public static function setMaxReConnection(count:int):void
		{
			socket.setMaxReConnection(count);
		}
		
		public static function getReConnectCount():int
		{
			return socket.getReConnectCount();
		}
		
		public static function connectToDispath(host:String, port:int, handler:SocketHandler):void {
			
		}
		
		public static function send(servID:int, protocolBuffer:IProtocol):void
		{
			if(socket!=null)
			{
				var protocol:BaseProtocol= protocolBuffer as BaseProtocol;
				(protocol.head as BaseProtocolHeader).type = servID;
				socket.asyncCall(protocolBuffer);
				
				ViewMgr.getInstance().addNetMonitor("servId:" + servID );
			}
			else
			{
				//Logger.error(SocketProxy,"send error: socket is null");
				trace("SocketProxy send error: socket is null");
			}
		}
		
		public static function disConnect():void{
			socket.closeSocket();
			socket = null;
		}
	}
}