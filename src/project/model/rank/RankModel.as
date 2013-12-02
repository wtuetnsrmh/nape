package project.model.rank
{
	import project.config.ErrorZhCn;
	import project.events.SMZTDataChangeEvent;
	import project.model.data.DataModel;
	
	/**
	 * 排行榜模型
	 * @author bbjxl 2013
	 */
	public class RankModel extends DataModel
	{
		/*items	array[RankItem]	排行数据数组，根据排行榜类型而定
		   page	int	当前页码
		   max	int	最大页码
		   me	int	当前玩家的排名所在的页数，当服务器还未统计当前玩家排名时此字段为最后一页页数
		 */
		private static var _rankModel:RankModel;
		private var _currentType:int;
		private var _currentList:Vector.<DataModel>; //当前的列表
		private var _page:int;
		private var _max:int;
		private var _me:int;
		
		public function RankModel()
		{
			if (_rankModel != null)
			{
				throw Error(new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE));
			}
			
			_currentType = RankType.LEVEL;
		}
		
		public function setData(param:Object):void
		{
			_currentList = new Vector.<DataModel>;
			var temp:Array = param["items"] as Array;
			_page = param["page"];
			_max = param["max"];
			_me = param["me"];
			if (temp != null && temp.length > 0)
			{
				var i:int = 0;
				switch (_currentType)
				{
					case RankType.LEVEL:
						for (i = 0; i < temp.length; i++ ) {
							var tempLv:UserRankItem = new UserRankItem(temp[i]);
							_currentList.push(tempLv);
							tempLv = null;
							}
						
						break;
					case RankType.TOWER:
						for (i = 0; i < temp.length; i++ ) {
							var tempTo:TowerRankItem = new TowerRankItem(temp[i]);
							_currentList.push(tempTo);
							tempTo = null;
							}
						break;
					case RankType.CARD: 
						for (i = 0; i < temp.length; i++ ) {
							var tempCard:CardRankItem = new CardRankItem(temp[i]);
							_currentList.push(tempCard);
							tempCard = null;
							}
						break;
				}
			}
		dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
		}
		
		public static function getInstance():RankModel
		{
			if (_rankModel == null)
			{
				_rankModel = new RankModel;
			}
			return _rankModel;
		} // end function
		
		public function get currentType():int
		{
			return _currentType;
		}
		
		public function set currentType(value:int):void
		{
			_currentType = value;
		}
		
		public function get currentList():Vector.<DataModel> 
		{
			return _currentList;
		}
		
		public function set currentList(value:Vector.<DataModel>):void 
		{
			_currentList = value;
		}
		
		public function get page():int 
		{
			return _page;
		}
		
		public function set page(value:int):void 
		{
			_page = value;
		}
		
		public function get max():int 
		{
			return _max;
		}
		
		public function set max(value:int):void 
		{
			_max = value;
		}
		
		public function get me():int 
		{
			return _me;
		}
		
		public function set me(value:int):void 
		{
			_me = value;
		}
	
	}

}