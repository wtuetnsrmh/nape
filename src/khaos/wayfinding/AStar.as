
package khaos.wayfinding
{
	import flash.utils.Dictionary;

	/**
	 * author zhaojun
	 * email junzhao.hz@gmail.com
	 * */
	public class AStar
	{
		private var _open:Array;
		private var _openDict:Dictionary;
		private var _closed:Dictionary;
		private var _grid:Grid;
		private var _endNode:Node;
		private var _startNode:Node;
		private var _path:Array;

		private var _heuristic:Function = diagonal;
		private var _straightCost:int = 1;
		private var _diagCost:int = 2;//Math.SQRT2;

		private var m_dAvailableRange:Number = 0;
		
		public function AStar()
		{
		}
		public function getEndNode():Node{
			return _endNode;
		}

		/****传入2维数组*******
		 * grid: setStartNode, setEndNode其中在startNode和endNode中找一条路
		 */
		public function findPath(grid:Grid, dAvailableRange:Number = 0):Boolean
		{
			_grid = grid;
			_open = new Array();
			_closed = new Dictionary();
			_openDict = new Dictionary();
			_startNode = _grid.startNode;
			_endNode = _grid.endNode;
			_startNode.g = 0;
			_startNode.h = _heuristic(_startNode);
			_startNode.f = _startNode.g + _startNode.h;
			m_dAvailableRange = dAvailableRange;
			return search();
		}

		public function search():Boolean
		{
			var node:Node = _startNode;
			node.g = 0; //自己到自己
			while (node != _endNode)
			{
				if(m_dAvailableRange > 0){
					var dDistance:Number = Math.sqrt( (node.col - _endNode.col)*(node.col - _endNode.col) + (node.row - _endNode.row)*(node.row - _endNode.row) );
					if(dDistance <= m_dAvailableRange){
						_endNode = node;
						break;
					}
				}
				var startX:int = Math.max(0, node.row - 1);
				var endX:int = Math.min(_grid.numRows - 1, node.row + 1);
				var startY:int = Math.max(0, node.col - 1);
				var endY:int = Math.min(_grid.numCols - 1, node.col + 1);
				for (var i:int = startX; i <= endX; i++)
				{
					for (var j:int = startY; j <= endY; j++)
					{
//						if ( ((i==node.row-1) && (j==node.col-1)) || ((i==node.row+1) && (j==node.col+1)) 
//							|| ((i==node.row+1) && (j==node.col-1)) ||( (i==node.row-1) &&(j==node.col+1)) ){
//							continue;
//						}
						
						var test:Node = _grid.getNode(i, j);
						/*||
						   !_grid.getNode(node.x, test.y).walkable ||
						   !_grid.getNode(test.x, node.y).walkable)
						 */

						if (test == node || !test.walkable)
						{
							continue;
						}
						var cost:int = _straightCost;
//						if (!((node.row == test.row) || (node.col == test.col)))
//						{
//							cost = _diagCost;
//						}
						var g:int = node.g + cost ;
						var h:int = _heuristic(test);
						var f:int = g + h

						if ( isClosed(test) ){
							continue;
						}

						if ( isOpen(test)  ){
							if (test.f > f){
								test.f = f;
								test.g = g;
								test.h = h;
								test.parent = node;
							}
						}
						else{
							test.f = f;
							test.g = g;
							test.h = h;
							test.parent = node;
							_open.push(test);
							_openDict[ test.index] = test;
						}
					}
				}
				
				_closed[ node.index ] = node;
				if (_open.length == 0)
				{
					trace("no path found");
					return false
				}
				_open.sortOn("f", Array.NUMERIC);
				node = _open.shift() as Node;
			} //while

			buildPath();
			return true;
		}

		private function buildPath():void
		{
			_path = new Array();
			var node:Node = _endNode;
			_path.push(node);
			while (node != _startNode)
			{
				node = node.parent;
				_path.unshift(node);
			}
		}

		public function isOpen(node:Node):Boolean
		{
			if( _openDict[node.index] == node ){
				return true;
			}
			else{
				return false;
			}
		}

		public function isClosed(node:Node):Boolean
		{
			if ( _closed[node.index] == node ){
				return true;	
			}
			else{
				return false;	
			}
		}

		//估算方法
		private function diagonal(node:Node):int
		{
			var dx:int = Math.abs(node.row - _endNode.row);
			var dy:int = Math.abs(node.col - _endNode.col);
			
			return  (dx+dy);
		}

		public function getPath():Array
		{
			return optimizePath();
		}
		
		private function optimizePath ( ):Array{
			var optimizePath:Array = new Array;
			var lastNode:Node = _path[_path.length - 1];
			var currentNode:Node = _path[0];
			
			
			optimizePath.push( _path[0] );
			
			
			for( var i:int=1; i<_path.length; i++){
				if ( !diagonalOptimize( currentNode, _path[i]) && i>1 ){
					//不通
					optimizePath.push( _path[i-1] );
					currentNode =  _path[i-1];
					
				}
			}
			
			optimizePath.push( lastNode);
			
			return optimizePath;
		}
		
		private function diagonalOptimize( current:Node, next:Node):Boolean{
			
			
			var x0:int=current.col;
			var y0:int = current.row;
			var x1:int = next.col;
			var y1:int = next.row;
			
			var dx:int =  Math.abs(x1-x0)
			var sx:int = x0<x1 ? 1 : -1;
			
			var dy:int = -Math.abs(y1-y0);
			var sy:int = y0<y1 ? 1 : -1; 
			
			var err:int = dx+dy;
			var e2:int; 
			
			for(;;){  /* loop */
				
				if ( !this._grid.getNode( y0, x0).walkable ){ 
					return false;
				}
				
				if (x0==x1 && y0==y1){
					break;
				} 
				e2 = 2*err;
				if (e2 >= dy) { err += dy; x0 += sx; } /* e_xy+e_x > 0 */
				if (e2 <= dx) { err += dx; y0 += sy; } /* e_xy+e_y < 0 */
			}
			
			return true;
		}
		

		public function printPath():void
		{
			if (_path != null)
			{
				for (var i:int = 0; i < _path.length; i++)
				{
					var node:Node = _path[i] as Node;
					trace((node.row + 1) + ":" + (node.col + 1));
				}
			}
		}
	}
}