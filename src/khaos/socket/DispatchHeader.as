package khaos.socket
{
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	
	public class DispatchHeader implements IProtocolHeader
	{
		public var servID:int = 0;
		public var dataLen:int = 0;
		
		public function DispatchHeader()
		{
		}
		
		public function dataLength():int
		{
			return 0;
		}
		
		public function headLength():int
		{
			return 4;
		}
		
		public function readFrom(input:IDataInput):void
		{
			servID = input.readInt();
			dataLen = input.readInt();
		}
		
		public function writeTo(output:IDataOutput):void
		{
			output.writeInt(servID);
			output.writeInt(dataLen);
		}
	}
}