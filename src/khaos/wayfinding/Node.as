package  khaos.wayfinding
{
	public class Node
	{
		public var row:int;
		public var col:int; 
		public var f:int; 
		public var g:int; 
		public var h:int; 
		public var walkable:int = 0; 
		public var parent:Node; 
		public var index:int = 1; 
		
		public function Node(r:int, c:int) 
		{ 
			this.row = r; 
			this.col = c;
			index = r*100000 + c;
		}
	}
}