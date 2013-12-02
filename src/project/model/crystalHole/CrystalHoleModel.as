package project.model.crystalHole 
{
	import project.config.ErrorZhCn;
	import project.events.SMZTDataChangeEvent;
	import project.model.data.DataModel;
	
	/**
	 * 水晶矿洞数据模型
	 * 
	 *
		键名	类型	说明
		mines	array[Mine]	区域内的所有矿点信息数组
		page	int	当前区域编号
		maxPage	int	最大区域编号
				

		mines	array[Mine]	我的矿点信息数组
		//rob	int	今日掠夺剩余次数
		assist	int	剩余协助次数
		stamina	int	剩余活力

	 * @author bbjxl 2013
	 */
	public class CrystalHoleModel extends DataModel 
	{
		//----------------------容器---------------------------------
		
		//-----------------------UI---------------------------------
		
		//-----------------------数据---------------------------------
		private var _mines:Vector.<Mine>;
		private var _maxPage:int;
		private var _page:int;
		
		private var _myMines:Vector.<Mine>;
		//private var _rob:int;
		private var _assist:int;
		private var _stamina:int;
		//-----------------------事件--------------------------------
		private static var _crystalHoleModel:CrystalHoleModel;
		
		public function CrystalHoleModel() 
		{
			if (_crystalHoleModel != null) {
				throw Error(new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE));
				}
		}
		
		/**
		 * 当前区的矿点信息
		 * @param	value
		 */
		public function updataAreaData(value:Object):void {
			_mines = new Vector.<Mine>();
			for (var i:String in value["mines"]) {
				var temp:Mine = new Mine();
				temp.setData(value["mines"][i]);
				_mines.push(temp);
				}
			_maxPage = value["maxPage"];
			_page = value["page"];
			
			dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
			}
			
		/**
		 * 更新我的矿点信息
		 * @param	value
		 */
		public function updataMyMineData(value:Object):void {
			_myMines = new Vector.<Mine>();
			for (var i:String in value["mines"]) {
				var temp:Mine = new Mine();
				temp.setData(value["mines"][i]);
				_myMines.push(temp);
				}
			//_rob = value["rob"];
			_assist = value["assist"];
			_stamina = value["stamina"];
			
			dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_REFRESH));
			}
		
		/**
		 * 判断当前所在的矿区是否有我的矿体
		 * @return
		 */	
		public function existMyMienInCurrentArea():Boolean {
			for (var i:String in _myMines) {
				for (var j:String in _mines) {
					if (_myMines[i].id == _mines[j].id) {
						return true;
						}
					}
				
				}
			return false;
			}
			
		public static function getInstance() : CrystalHoleModel
		{
			if (_crystalHoleModel == null)
			{
			  _crystalHoleModel = new CrystalHoleModel;
			}
			return _crystalHoleModel; 
		}// end function
		
		public function get mines():Vector.<Mine> 
		{
			return _mines;
		}
		
		public function set mines(value:Vector.<Mine>):void 
		{
			_mines = value;
		}
		
		public function get maxPage():int 
		{
			return _maxPage;
		}
		
		public function set maxPage(value:int):void 
		{
			_maxPage = value;
		}
		
		public function get page():int 
		{
			return _page;
		}
		
		public function set page(value:int):void 
		{
			_page = value;
		}
		
		public function get myMines():Vector.<Mine> 
		{
			return _myMines;
		}
		
		public function set myMines(value:Vector.<Mine>):void 
		{
			_myMines = value;
		}
		
		/*public function get rob():int 
		{
			return _rob;
		}
		
		public function set rob(value:int):void 
		{
			_rob = value;
		}*/
		
		public function get assist():int 
		{
			return _assist;
		}
		
		public function set assist(value:int):void 
		{
			_assist = value;
		}
		
		public function get stamina():int 
		{
			return _stamina;
		}
		
		public function set stamina(value:int):void 
		{
			_stamina = value;
		}
	}

}