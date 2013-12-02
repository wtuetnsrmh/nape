package khaos.socket
{
	import flash.events.*;
	import flash.net.Socket;
	import flash.utils.ByteArray;
	import flash.utils.Endian;
	import flash.utils.clearTimeout;
	import flash.utils.setTimeout;

	public class XSocket extends Socket
	{

		private var _host:String;
		private var _port:int;
		private var _failed:int = 0;

		private var _handler:SocketHandler;
		private var _protocol:Class;
		private var _protocolBuff:IProtocol;
		private var _maxReconnetcCount:int = 0;

		private var _timerID:int;

		private var _queue:Array = new Array;

		private var _lastActiveTime:Number = new Date().getTime();
		private var _duplicatedLogin:Boolean = false;

		private var m_strHead:String = null;

		public function XSocket(host:String, port:int, handler:SocketHandler, protocol:Class, strHead:String="head")
		{
			super(null, 0);
			this._host = host;
			this._port = port;
			this._handler = handler;
			this._protocol = protocol;
			this.m_strHead = strHead;
			this._protocolBuff = new _protocol() as IProtocol;
			this.endian = flash.utils.Endian.BIG_ENDIAN;
			initListener();


		}

		public function closeSocket():void
		{
			this.close();
			clearTimeout(this._timerID);
			_duplicatedLogin = true;
		}

		public function asyncCall(protocolBuff:IProtocol):void
		{
			if (this.connected)
			{
				protocolBuff.writeTo(this);
				this.flush();
			}
			else
			{
				_queue.push(protocolBuff);
				//connect(this._host, this._port);
			}
		}

		public function openSocket():void
		{
			if (this.connected == false)
			{
				this.connect(_host, _port);
			}
		}

		private function initListener():void
		{
			this.addEventListener(Event.CONNECT, onConnect);
			this.addEventListener(Event.CLOSE, onServerClose);
			this.addEventListener(IOErrorEvent.IO_ERROR, onIOError);
			this.addEventListener(SecurityErrorEvent.SECURITY_ERROR, onSecurityError);
			this.addEventListener(ProgressEvent.SOCKET_DATA, onData);

		}

		private function onConnect(event:Event):void
		{
			//this._failed = 0;
			/*var data:ByteArray = new ByteArray();
			data.length = 23;
			this.writeBytes(data, 0, 23);*/
			
			//暂时不处理，腾讯平台需要发一个头过去
			
			var objBytes:ByteArray = new ByteArray();
			objBytes.endian=flash.utils.Endian.LITTLE_ENDIAN;		
			objBytes.writeMultiByte(m_strHead,"GBK");			
			this.writeBytes(objBytes, 0, objBytes.length);
			var dataPadding:ByteArray = new ByteArray();
			dataPadding.length = 80 - objBytes.length;
			this.writeBytes(dataPadding, 0, dataPadding.length);
			this.flush();
			
			_handler.onConnect();
			while (_queue.length > 0)
			{
				var buff:IProtocol = _queue.shift();
				buff.writeTo(this);
			}
			
		}

		private function onData(event:ProgressEvent):void
		{
			if (!this.connected)
			{
				return;
			}

			while (_protocolBuff.remain() > 0 && this.bytesAvailable > 0)
			{

				_protocolBuff.readFrom(this);
				if (_protocolBuff.remain() == 0)
				{
					
					var temp:IProtocol = _protocolBuff; 
					_protocolBuff = new _protocol() as IProtocol;
					_handler.onData( temp );
				}
				if ( _duplicatedLogin ){
					_handler.onFailedForever();
					break;
				}
			}
			
			

		}

		private function onServerClose(event:Event):void
		{
			if (_failed <= _maxReconnetcCount)
				_handler.onDisconnect();

			this.reConnect();
		}

		private function onIOError(event:Event):void
		{
			if (_failed <= _maxReconnetcCount)
				_handler.onIOError();
			this.reConnect();
		}

		private function onSecurityError(event:Event):void
		{
			if (_failed <= _maxReconnetcCount)
				_handler.onSecurityError();
			this.reConnect();
		}

		private function reConnect():void
		{
			_failed++;
			
			if (this.connected == true)
				return;
			if (_failed <= _maxReconnetcCount){
				//_timerID = setTimeout(onTimer, 2000);
				this.connect(this._host, this._port);
			}
			else{
				_handler.onFailedForever();
			}
		}
		
		public function setMaxReConnection(count:int):void
		{
			_maxReconnetcCount = count;
		}
		
		public function getReConnectCount():int
		{
			return _failed;
		}

		/*private function onTimer():void
		{
			if (this.connected == false)
				this.connect(this._host, this._port);
		}*/
	}
}