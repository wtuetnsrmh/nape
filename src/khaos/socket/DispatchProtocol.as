package khaos.socket
{
	import flash.utils.ByteArray;

	public class DispatchProtocol extends BaseProtocol
	{
		public function DispatchProtocol()
		{
			super();
		}
		
		override protected function initHeader():void{
			head = new DispatchHeader;
		}
		
		public static function makePackage(servID:int,protocolBuffer:IProtocol):IProtocol{
			var res:DispatchProtocol = new DispatchProtocol;
			var head:DispatchHeader = res.head as DispatchHeader;
			head.servID = servID;
			head.dataLen = protocolBuffer.size();
			res.body = new ByteArray;
			res.body.length = head.dataLen;
			protocolBuffer.writeTo(res.body);
			return res;
		}
	}
}