package khaos.socket
{
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	
	public  class BaseProtocolHeader implements IProtocolHeader
	{
		protected var redundantField:int=-11;
		
		private var _type:int = 3;
		
		public function set type(tp:int):void
		{
			_type = tp;
		}
		
		public function get type():int{
			return _type;
		}
		
		public function dataLength():int
		{
			throw new ProtocolError("can not call dataLength od BaseProtocolHeader");
		}
		public function headLength():int
		{
			throw new ProtocolError("can not call headLength od BaseProtocolHeader");
		}
		public function readFrom(input:IDataInput):void
		{
			throw new ProtocolError("can not call readFrom od BaseProtocolHeader");
		}
		public function writeTo(output:IDataOutput):void
		{
			throw new ProtocolError("can not call writeTo od BaseProtocolHeader");
		}
		
	}
}