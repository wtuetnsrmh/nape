package project.utils 
{
	import flash.geom.Point;
	/**
	 * ...
	 * @author bbjxl 2012
	 */
	public class MathTool 
	{
		
		public function MathTool() 
		{
			
		}
		/**
		 * 两点间的距离
		 * @param	param1
		 * @return
		 */
		public static function distance(p1:Point, p2:Point):Number {
			return Point.distance(p1, p2);
			}
	}

}