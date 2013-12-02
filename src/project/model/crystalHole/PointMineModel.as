package project.model.crystalHole 
{
	import project.config.ErrorZhCn;
	import project.events.SMZTDataChangeEvent;
	import project.model.data.DataModel;
	
	/**
	 * 矿点数据模型
	 * @author bbjxl 2013
	 */
	public class PointMineModel extends DataModel 
	{
		//----------------------容器---------------------------------
		
		//-----------------------UI---------------------------------
		
		//-----------------------数据---------------------------------
		private var _mine:Mine;
		//-----------------------事件--------------------------------
		private static var _pointMineModel:PointMineModel;
		public function PointMineModel() 
		{
			if (_pointMineModel != null) {
				throw Error(new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE));
				}
		}
		
		public function setData(value:Object):void {
			_mine = new Mine();
			_mine.setData(value);
			dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
			}
		
		public static function getInstance() : PointMineModel
		{
			if (_pointMineModel == null)
			{
			  _pointMineModel = new PointMineModel;
			}
			return _pointMineModel; 
		}// end function
		
		public function get mine():Mine 
		{
			return _mine;
		}
		
		public function set mine(value:Mine):void 
		{
			_mine = value;
		}
		
	}

}