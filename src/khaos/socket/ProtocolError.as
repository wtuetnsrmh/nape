package khaos.socket
{

	public class ProtocolError extends Error
	{
		public function ProtocolError(message:* = "", id:* = 0)
		{
			super(message, id);
		}
	}
}