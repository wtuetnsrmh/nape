package project.utils
{
	import de.polygonal.core.ObjectPoolFactory;
	
	public class CardModelPoolFactary implements ObjectPoolFactory
	{
		private var _class:Class;
		
		public function CardModelPoolFactary(C:Class)
		{
			_class = C;
		}
		
		public function create():*
		{
			return new _class();
		}
	}
}