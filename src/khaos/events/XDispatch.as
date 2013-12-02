package khaos.events
{
	import starling.events.EventDispatcher;
	

	public class XDispatch extends EventDispatcher
	{

		private static var instance:XDispatch = null;

		public static function getInstance():XDispatch
		{
			if (instance == null)
			{
				instance = new XDispatch();
			}
			return instance;
		}

	}
}