package project.model.longBao.vo 
{
	/**
	 * ...
	 * @author bbjxl 2013
	 */
	public class Difficulty extends Object 
	{
		/*1	简单
			2	困难
			3	噩梦
			*/
		public static const EASY:int = 1;
		public static const DIFFICULT:int = 2;
		public static const NIGHT_MARE:int = 3;
		
		public function Difficulty() 
		{
			
		}
		public static function returnString(value:int):String {
			switch(value) {
				case EASY:
					return "简单";
					break;
				case DIFFICULT:
					return "困难";
					break;
				case NIGHT_MARE:
					return "噩梦";
					break;
				}
			return "简单";
			}
	}

}