package project.utils
{
	import de.polygonal.core.ObjectPoolFactory;
	
	public class CardPoolFactary implements ObjectPoolFactory
	{
		private var _class:Class;
		public function CardPoolFactary(C:Class)
		{
			_class = C;
		}
		public function create():*
		{
			return new _class();
		}
		
	}
}