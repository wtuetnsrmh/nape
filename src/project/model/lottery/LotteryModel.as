package project.model.lottery 
{
	import project.config.ErrorZhCn;
	import project.controller.SMZTController;
	import project.events.SMZTDataChangeEvent;
	import project.model.data.DataModel;
	import project.model.item.IModel;
	import project.model.item.ItemModel;
	
	/**
	 * ...
	 * @author bbjxl 2013
	 */
	public class LotteryModel extends DataModel implements IModel 
	{
		private var _lotteryIdArr:Array;//所有未抽奖ID数组
		private var _currentLotteryId:int;//当前抽奖ID
		private var _items:Array;//物品列表
		private var _showAfterBattle:Boolean=false;//战斗结束后是否有抽奖(抽奖界面一关闭就要设为false)
		
		private static var _lotteryModel:LotteryModel = null;
		
		public function LotteryModel() 
		{
			if (_lotteryModel != null)
			{
				throw new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE);
			}
			_lotteryIdArr = new Array();
		}
		
		
		public static function getInstance() : LotteryModel
		{
			if (_lotteryModel == null)
			{
			  _lotteryModel = new LotteryModel;
			}
			return _lotteryModel; 
		}// end function
		
		public function get lotteryIdArr():Array 
		{
			return _lotteryIdArr;
		}
		
		public function set lotteryIdArr(value:Array):void 
		{
			_lotteryIdArr = value;
		}
		
		public function get currentLotteryId():int 
		{
			return _currentLotteryId;
		}
		
		public function set currentLotteryId(value:int):void 
		{
			_currentLotteryId = value;
			_items = new Array();
			SMZTController.getInstance().getLotteryById(_currentLotteryId, function(param:Object):void {
				for (var i:String in param.items) {
					_items.push(returnItemModel(param.items[i]));
					}
				dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
				
				});
		}
		private function returnItemModel(value:int):ItemModel {
			var tempObj:Object = new Object();
			tempObj.item = value;
			return new ItemModel(tempObj);
			}
		
		public function get items():Array 
		{
			return _items;
		}
		
		public function set items(value:Array):void 
		{
			_items = value;
		}
		
		public function get showAfterBattle():Boolean 
		{
			return _showAfterBattle;
		}
		
		public function set showAfterBattle(value:Boolean):void 
		{
			_showAfterBattle = value;
		}
	}

}