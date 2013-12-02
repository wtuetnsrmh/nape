package project.model.crystalHole 
{
	/**
	 * ...
	 * @author bbjxl 2013
	 */
	public class MineType 
	{
		/*1	铜矿
		2	白银矿
		3	黄金矿
		4	白金矿
		5	水晶矿
		6	宝石矿*/

		public static const COPPER:int = 1;
		public static const SILVER:int = 2;
		public static const GOLD :int = 3;
		public static const PLATINUM:int = 4;
		public static const CRYSTAL:int = 5;
		public static const GEM:int = 6;
		public function MineType() 
		{
			
		}
		
		/**
		 * 返回矿种名称
		 * @return
		 */
		public static function returnTypeCName(value:int):String {
			switch(value) {
				case COPPER:
					return "铜矿";
					break;
				case SILVER:
					return "白银矿";
					break;
				case GOLD:
					return "黄金矿";
					break;
				case PLATINUM:
					return "白金矿";
					break;
				case CRYSTAL:
					return "水晶矿";
					break;
				case GEM:
					return "宝石矿";
					break;
				}
			return "";
			}
		
		/**
		 * 返回产量类型名称
		 * @return
		 */
		public static function returnTypeName(value:int):String {
			switch(value) {
				case COPPER:
					return "(金币):";
					break;
				case SILVER:
					return "(金币):";
					break;
				case GOLD:
					return "(金币):";
					break;
				case PLATINUM:
					return "(金币):";
					break;
				case CRYSTAL:
					return "(水晶):";
					break;
				case GEM:
					return "(宝石):";
					break;
				}
			return "";
			}
	}

}