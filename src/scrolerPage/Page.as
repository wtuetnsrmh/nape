package scrolerPage 
{
	import project.base.BaseSprite;
	
	/**
	 * ...
	 * @author bbjxl 2013
	 */
	public class Page extends BaseSprite implements IPage 
	{
		public var _index:int = 1;
		private var _r:uint;
		private var _c:uint;
		private var _gap:Number;
		public function Page(r:uint, c:uint, gap:Number = 5) 
		{
			_r = r;
			_c = c;
			_gap = 5;
		}
		public function updata(arg:Vector.<BaseSprite>):void {
			removeChildren();
			
			for (var i:uint = 0; i < _r; i++ ) {
				for (var j:uint = 0; j < _c; j++ ) {
					var temp:BaseSprite = arg[i * _c + j];
					if (temp) {
						addChild(temp);
						temp.x = i * temp.width + i * _gap;
						temp.y = j * temp.height + j * _gap;
						}
					}
				}
			}
		
	}

}