package project.model.event 
{
	import flash.events.IEventDispatcher;
	import project.controller.SMZTController;
	import project.core.SMZTUIManager;
	import project.model.data.DataModel;
	import project.model.friends.BonusModel;
	
	/**
	 * 首冲活动－接口对象
	 * @author bbjxl 2013
	 */
	public class FirstFlushEvent extends DataModel implements IEventModel 
	{
		private var _buyGoodsFun:Function;
		private var _getEventInfor:Function;
		public function FirstFlushEvent() 
		{
			//购买指定编号的特惠商品。
			_buyGoodsFun = function(id:int,callback:Function=null):void {
				SMZTController.getInstance().buyGoodsById(id, function (param:Object):void {
					var tempBM:BonusModel = new BonusModel();
					tempBM.setData(param);
					SMZTUIManager.getInstance().manageShowBonus.showBonus(tempBM);
					param = null;
					SMZTUIManager.getInstance().mainPane.refreshSelfData();//刷新个人数据
					if (callback != null) {
						callback.call(null);//回调刷新活动界面
						}
					});
				}
			
			_getEventInfor = SMZTController.getInstance().getFistEventInfor;
		}
		
		public function get buyGoodsFun():Function 
		{
			return _buyGoodsFun;
		}
		
		public function get getEventInfor():Function 
		{
			return _getEventInfor;
		}
		

	}

}