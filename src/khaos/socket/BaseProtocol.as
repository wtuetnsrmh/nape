package khaos.socket
{
	import flash.system.System;
	import flash.utils.ByteArray;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;

	public class BaseProtocol implements IProtocol
	{
		public var head:IProtocolHeader;
		protected var _headBuff:ByteArray = new ByteArray;
		public var body:ByteArray;
		private var _curPos:int = 0;
	

		public function BaseProtocol(header:IProtocolHeader = null) {
			if (header == null)
				initHeader();
			else
				this.head = header;
			_headBuff.length = head.headLength();
		}

		protected function initHeader():void
		{
			throw new UninitializedError;
		}

		public function readFrom(input:IDataInput):void
		{
			input.endian = endian();
			if (body == null)
				readHead(input);
			if (body != null)
				readBody(input);
		}

		protected function readHead(input:IDataInput):void
		{
			
			var dataLen:int = Math.min(input.bytesAvailable,_headBuff.length - _curPos);
			input.readBytes(_headBuff, _curPos, dataLen);
			_curPos += dataLen;
			if (_curPos == _headBuff.length)
			{
				_headBuff.endian = endian();
				head.readFrom(_headBuff);
				body = new ByteArray;
				body.length = head.dataLength();
				_curPos = 0;
			}
		}

		protected function readBody(input:IDataInput):void
		{
			body.endian = endian();
			var dataLen:int = Math.min(input.bytesAvailable,body.length - _curPos);
			input.readBytes(body, _curPos, dataLen);
			_curPos += dataLen;
		}

		public function writeTo(output:IDataOutput):void
		{
			output.endian = endian();
			head.writeTo(output);
			output.writeBytes(body);
		}

		public function remain():int
		{
			if (body == null)
				return _headBuff.length - _curPos;
			else
				return body.length - _curPos;
		}

		public function size():int
		{
			return head.dataLength() + head.headLength();
		}

		public function endian():String
		{
			return Endian.BIG_ENDIAN;
		}
	}
}