package project.model.chat 
{
	import flash.utils.Dictionary;
	import project.config.ErrorZhCn;
	import project.model.data.DataModel;
	import project.model.item.IModel;
	
	/**
	 * 链接对象池
	 * @author bbjxl
	 */
	public class HrefInfoPool extends DataModel implements IModel 
	{
		private static var _hrefinforPool:HrefInfoPool = null;
		private var _dic:Dictionary;
		public function HrefInfoPool() 
		{
			if (_hrefinforPool != null) {
				throw(new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE));
				}
		}

		public static function getInstance() : HrefInfoPool
		{
			if (_hrefinforPool == null)
			{
			  _hrefinforPool = new HrefInfoPool;
			}
			return _hrefinforPool; 
		}// end function
		
		public function get dic():Dictionary 
		{
			return _dic;
		}
		
		public function set dic(value:Dictionary):void 
		{
			_dic = value;
		}
		
	}

}