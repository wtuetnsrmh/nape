package project.model.data
{
	
	/**
	 * 统计信息
	 * @author bbjxl 2012
	 *
	   achv	int	成就点数
	   tower	int	宿命之塔最高层数
	   ladder	int	天空之城最高排名，可为空
	   stars	array[int]	拥有的卡牌星数统计，数组长度为5（1-5星）
	   qualities	array[int]	拥有的卡牌品质统计，数组长度为6（1-6品质等级）
	
	 */
	public class Statistics extends DataModel
	{
		//private var _title:int;
		private var _achv:int;
		private var _tower:int;
		private var _ladder:int;
		private var _stars:Array;
		private var _qualities:Array;
		public function Statistics(param:Object)
		{
			if (param == null) {
				//_title = 0;
				_achv = 0;
				_tower = 0;
				_ladder = 0;
				_stars = [0,0,0,0,0];
				_qualities = [0,0,0,0,0,0];
				return;
			}
			//_title = (param["title"] == null)?0:param["title"];
			_achv = (param["achv"] == null)?0:param["achv"];
			_tower = (param["tower"] == null)?0:param["tower"];
			_ladder = (param["ladder"] == null)?0:param["ladder"];
			_stars = (param["stars"] == null)?null:param["stars"];
			_qualities = (param["qualities"] == null)?null:param["qualities"];
		}
		
		
		
		public function get achv():int 
		{
			return _achv;
		}
		
		public function set achv(value:int):void 
		{
			_achv = value;
		}
		
		public function get tower():int 
		{
			return _tower;
		}
		
		public function set tower(value:int):void 
		{
			_tower = value;
		}
		
		public function get ladder():int 
		{
			return _ladder;
		}
		
		public function set ladder(value:int):void 
		{
			_ladder = value;
		}
		
		public function get stars():Array 
		{
			return _stars;
		}
		
		public function set stars(value:Array):void 
		{
			_stars = value;
		}
		
		public function get qualities():Array 
		{
			return _qualities;
		}
		
		public function set qualities(value:Array):void 
		{
			_qualities = value;
		}
	
	}

}