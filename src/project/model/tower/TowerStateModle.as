package project.model.tower
{
	import project.config.ErrorZhCn;
	import project.controller.NewBieControler;
	import project.controller.SMZTController;
	import project.events.SMZTDataChangeEvent;
	import project.model.data.DataModel;
	import project.model.item.IModel;
	import project.model.newBie.NewBieModel;
	import project.model.newBie.NewBieModelId;
	
	/**
	 * 3.	宿命之塔信息
	 * @author bbjxl 2013
	 */
	public class TowerStateModle extends DataModel implements IModel
	{
		/*lv	int	当前层数（当超过最高塔层时无此字段）
			mode	BattleMode	战斗模式（当超过最高塔层时无此字段）
			cards	array[int]	敌方卡牌编号列表（当超过最高塔层时无此字段）
			hi-lv	int	最高关卡层数
			free	int	已免费进入的次数
			pay	int	已付费进入的次数

			lose	int	闯关失败的次数， 0和1-可继续挑战
			reports	array[TowerReport]	战报信息数组  长度为１这里取第一个数据

		 */
		
		public static const MAX_FREE_ENTER:int = 3;//免费最多可以进入三次
		public static const MAX_ITEM_ENTER:int = 2;//破魔钥最多进入二次
		 
		private var _lv:TowerLevel;
		//private var _mode:int;
		//private var _cards:Array;
		private var _hi_lv:int;
		private var _free:int;
		private var _pay:int;
		private var _lose:int;
		private var _report:TowerReport;
		
		
		private static var _towerStateModel:TowerStateModle;
		
		public function TowerStateModle()
		{
			if (_towerStateModel != null)
			{
				throw(new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE));
			}
		}
		
		public static function getInstance():TowerStateModle
		{
			if (_towerStateModel == null)
			{
				_towerStateModel = new TowerStateModle;
			}
			return _towerStateModel;
		} // end function
		
		public function setData(param:Object):void
		{
			_lv = new TowerLevel();
			if (param["lv"] != null) {
				_lv.setData(param["lv"]);
				}
				
			_hi_lv = (param["hi-lv"] == null) ? 0 : param["hi-lv"];
			
			_free = (param["free"] == null) ? 0 : param["free"];
			//-------------------新手引导用-----------------------
			//如果进入塔后(表示之前进入后就刷新退出了，之后再进来时)
			if (_lv!=null && _lv.id == 1 && !NewBieControler.getInstance().finishDic[NewBieModelId.FISET] && !NewBieControler.getInstance()._newBieEnterTower) {
				NewBieControler.getInstance()._newBieEnterTower = true;
				NewBieControler.getInstance().refreshByValue( -1, -1, NewBieControler.ENTERED_TOWER);//直接进入点"战斗"的引导界面
				}
			//--------------------end--------------------
			
			_pay = (param["pay"] == null) ? 0 : param["pay"];
			_lose = (param["lose"] == null) ? 0 : param["lose"];
			var temp:Array = (param["reports"] == null) ? new Array() : (param["reports"] as Array);
			if (temp.length > 0) {
				_report = new TowerReport(temp[0]);
				}else {
					_report = null;
					}
			
			dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
		}
		
		public function get lv():TowerLevel
		{
			return _lv;
		}
		
		public function set lv(value:TowerLevel):void
		{
			_lv = value;
		}
		
		public function get hi_lv():int
		{
			return _hi_lv;
		}
		
		public function set hi_lv(value:int):void
		{
			_hi_lv = value;
		}
		
		public function get free():int
		{
			return _free;
		}
		
		public function set free(value:int):void
		{
			_free = value;
		}
		

		
		public function get pay():int
		{
			return _pay;
		}
		
		public function set pay(value:int):void
		{
			_pay = value;
		}
		
		public function get lose():int
		{
			return _lose;
		}
		
		public function set lose(value:int):void
		{
			_lose = value;
		}
		

		
		public function get report():TowerReport 
		{
			return _report;
		}
		
		public function set report(value:TowerReport):void 
		{
			_report = value;
		}
	
	}

}