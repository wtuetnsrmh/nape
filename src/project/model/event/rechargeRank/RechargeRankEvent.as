package project.model.event.rechargeRank
{
	import project.model.data.DataModel;
	import flash.events.IEventDispatcher;
	import project.controller.SMZTController;
	import project.core.SMZTUIManager;
	import project.model.event.IEventModel;
	import project.model.friends.BonusModel;
	import project.utils.CardFactary;
	import project.view.module.cell.Card;
	
	/**
	 * 充值排行活动
	 * @author bbjxl 2013
	 */
	public class RechargeRankEvent extends DataModel implements IEventModel
	{
		
		private var _getAward:Function;
		private var _getEventInfor:Function;
		private var _creaCard:Function;
		
		public function RechargeRankEvent()
		{
			//领取指定条件编号的奖励。
			_getAward = function(callback:Function = null):void
			{
				SMZTController.getInstance().getRechargeRankEventAward(function(param:Object):void
					{
						var tempBM:BonusModel = new BonusModel();
						tempBM.setData(param);
						SMZTUIManager.getInstance().manageShowBonus.showBonus(tempBM);
						param = null;
						//SMZTUIManager.getInstance().mainPane.refreshSelfData();//刷新个人数据
						if (callback != null)
						{
							callback.call(null); //回调刷新活动界面
						}
					});
			}
			_getEventInfor = function(callBackFun:Function):void
			{
				var _BonusCardId:Array;
				SMZTController.getInstance().getRechargeRankEventInfor(function(param:Object):void
					{
						if (callBackFun != null)
						{
							_BonusCardId = new Array();
							const indexArr:Array = [0, 1, 5];
							for (var i:int = 0; i < indexArr.length; i++)
							{
								var tempCard:Object = param.ranks[indexArr[i]]["bonus"]["cards"];
								if (tempCard != null)
								{
									var tempArr:Array = new Array();
									for (var j:String in tempCard)
									{
										var temp:Card = CardFactary.creaCard(int(j), tempCard[j], 2);
										tempArr.push(temp);
										temp = null;
									}
									_BonusCardId.push(tempArr);
									tempArr = null;
								}
							}
							
							var _bonus:Object = param["minBonus"];
							if (_bonus)
							{
								tempCard = _bonus["cards"];
								if (tempCard != null)
								{
									
									for (var j:String in tempCard)
									{
										var tempArr:Array = new Array();
										var temp:Card = CardFactary.creaCard(int(j), tempCard[j], 2);
										tempArr.push(temp);
										temp = null;
									}
									_BonusCardId.push(tempArr);
									tempArr = null;
								}
								_bonus = null;
								tempCard = null;
							}
							
							
							callBackFun.call(null, param,_BonusCardId);
							callBackFun = null;
							
							
						}
					});
			}
			//_getEventInfor = SMZTController.getInstance().getRechargeRankEventInfor;
		}
		
		public function get getAward():Function
		{
			return _getAward;
		}
		
		public function set getAward(value:Function):void
		{
			_getAward = value;
		}
		
		public function get getEventInfor():Function
		{
			return _getEventInfor;
		}
		
		public function set getEventInfor(value:Function):void
		{
			_getEventInfor = value;
		}
		
		public function get creaCard():Function
		{
			return CardFactary.creaCard;
		}
	
	}

}