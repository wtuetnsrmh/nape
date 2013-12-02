package  khaos.wayfinding
{
	import flash.geom.Point;

	public class Grid
	{
		private var _startNode:Node;
		private var _endNode:Node; 
		private var _nodes:Array; 
		private var _numCols:int; 
		private var _numRows:int; 
		
		private var _walkableList:Array = new Array;
		public function Grid(numRows:int, numCols:int)
		{
			_numCols = numCols; 
			_numRows = numRows; 
			_nodes = new Array(); 
			for(var i:int = 0; i < _numRows; i++) 
			{ 
				_nodes[i] = new Array(); 
				for(var j:int = 0; j < _numCols; j++) 
				{ 
					_nodes[i][j] = new Node(i, j); 
				} 
			} 
			_walkableList.slice(0);
		}
		
		public function getNode(row:int, col:int):Node 
		{ 
			if( !(row<_numRows && row>=0 && col<_numCols && col>=0) ){
				row = 0;
				col = 0;
			}
			return _nodes[row][col] as Node; 
		}
		
		public function setEndNode(row:int, col:int):void 
		{ 
			if( !(row<_numRows && row>=0 && col<_numCols && col>=0) ){
				row = 0;
				col = 0;
			}
			_endNode = _nodes[row][col] as Node; 
		} 
		
		public function setStartNode(row:int, col:int):void 
		{ 
			if( !(row<_numRows && row>=0 && col<_numCols && col>=0) ){
				row = 0;
				col = 0;
			}
			_startNode = _nodes[row][col] as Node; 
		}
		
		public function setWalkable(row:int, col:int, value:int):void 
		{ 
			_nodes[row][col].walkable = value; 
			_walkableList.push(_nodes[row][col]);
		} 
		
		public function get endNode():Node 
		{ 
			return _endNode; 
		}
		
		public function get numCols():int 
		{ 
			return _numCols; 
		} 
		
		public function get numRows():int 
		{ 
			return _numRows; 
		}
		
		public function get startNode():Node 
		{ 
			return _startNode; 
		} 
		
		public function getRandomWalkableNode():Node
		{
			var iLen:int = _walkableList.length;
			var iRandom:int = Math.ceil((Math.random() * iLen));
			for(var i:int = 0;i<iLen;++i){
				var nd:Node = _walkableList[(iRandom + i)%iLen];
				if(nd.walkable != 0){
					return nd;
				}
			}
			return null;
		}
		
		public function getNearByWalkableNode(row:Number, col:Number, range:int):Node
		{
			var inc1:int = int(Math.random() * 100);
			var inc2:int = int(Math.random() * 100);
			var rowMulti:int = 1;
			var colMulti:int = 1;
			var count:int = 0;
			if(inc1 % 2 == 1){
				rowMulti = -1;
			}
			if(inc2 % 2 == 1){
				colMulti = -1;
			}
			
			while(count < 10){
				var tmpRow:int = row + rowMulti * int(range * Math.random());
				var tmpCol:int = col + colMulti * int(range * Math.random());
				if(tmpRow<0 || tmpRow >= _numRows || tmpCol<0 || tmpCol >= _numCols){
					count++;
					continue;
				}
				if(_nodes[tmpRow][tmpRow].walkable != 0)
					return _nodes[tmpRow][tmpRow];
				
				count++;
			}
			
			return  _nodes[row][col];
		}

	}
}