package khaos.model
{
	import flash.utils.Dictionary;
	
	import khaos.interfaces.IModel;



	public class ModelMgr
	{
		private var modelDictionary:Dictionary = new Dictionary();
		private static var _instance:ModelMgr = null;
		private static var _instanceCount:int=0;

		public function ModelMgr()
		{
			_instanceCount++;
			if(_instanceCount >= 2)
				throw new Error("Only one Instance could be instanced");
		}

		public static function initModelMgr():void
		{
			_instance = new ModelMgr();
		}

		public static function getInstance():ModelMgr
		{
			if (_instance == null)
				throw new UninitializedError("ModelMgr not initialized");
			return _instance;
		}

		public function getModel(claz:Class):IModel
		{
			if (modelDictionary[claz] == null)
			{
				modelDictionary[claz] = new claz() as IModel;
				modelDictionary[claz].initial();
			}
			return modelDictionary[claz];
		}
	}
}
