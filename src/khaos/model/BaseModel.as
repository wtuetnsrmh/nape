package khaos.model
{
	import khaos.events.*;
	import khaos.interfaces.IModel;

	public class BaseModel implements IModel
	{
		private var _initialized:Boolean = false;

		public function BaseModel()
		{

		}

		protected function notify(type:String, info:* = null):void
		{
			XDispatch.getInstance().dispatchEvent(new XEvent(type, info));
		}

		protected function addNotify(type:String, listener:Function):void
		{
			XDispatch.getInstance().addEventListener(type, listener);
		}

		public function initial():void
		{
			if (!_initialized)
			{
				internalInitial();
				_initialized = true;
			}
		}

		protected function internalInitial():void
		{
			//throw new ArgumentError("This function is not implemented!");
		}

		public function onResult(command:String, result:Object):void
		{
			throw new ArgumentError("This function is not implemented!");
		}

		public function onException(command:String, code:int, msg:String, value:Object):void
		{
			
		}

	}
}



