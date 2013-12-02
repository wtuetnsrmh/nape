package project.model.vip 
{
	import com.bbjxl.debug.Debug;
	import project.config.ErrorZhCn;
	import project.config.ItemConfig;
	import project.events.SMZTDataChangeEvent;
	import project.model.data.DataModel;
	import project.model.friends.BonusModel;
	
	/**
	 * VIP模型
	 * @author bbjxl 2013
	 * lv	int	会员等级
		exp	int	会员经验值（即充值水晶数）
		dialy	int	是否可领取每日奖励（1-是，2-否）
		once	int[]	可领取充值奖励等级数组

	 */
	public class VipState extends DataModel 
	{
		private var _lv:int;
		private var _exp:int;
		private var _dialy:Boolean;
		private var _once:Array;
		private static var _vipState:VipState;
		public function VipState() 
		{
			if (_vipState != null) {
				throw Error(new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE));
				}
		}
		
		/**
		 * 根据ＶＩＰ等级返回每日奖励/充值奖励
		 * @return
		 * <Level Exp="100" ID="1">
			  <DialyBonus>
				<Gold>100</Gold>
				<Honor>0</Honor>
				<Crystal>0</Crystal>
				<Exp>0</Exp>
			  </DialyBonus>
			  <OnceBonus>
				<Gold>100</Gold>
				<Honor>0</Honor>
				<Crystal>0</Crystal>
				<Exp>0</Exp>
			  </OnceBonus>
			</Level>
		 */
		public function returnDialyBonus(vipLevel:int,type:String="DialyBonus"):BonusModel {
			var temp:XML = null;
			var bm:BonusModel = new BonusModel();
			for each(temp in ItemConfig.VIP_CONFIG.Levels.Level) {
				if (temp.@ID == vipLevel) {
					bm.exp = int(temp.child(type).Exp.child(0).toXMLString());
					bm.gold = int(temp.child(type).Gold.child(0).toXMLString());
					bm.honor = int(temp.child(type).Honor.child(0).toXMLString());
					bm.crystal = int(temp.child(type).Crystal.child(0).toXMLString());
					var items:XMLList;
					var itemXml:XML;
					var tempItem:Object;
					if (temp.child(type).hasOwnProperty("Items")) {
						//如果有物品
						items= temp.child(type).Items;
						tempItem = new Object();
						bm.items = new Array();
						for each (itemXml in items.children())
							{
								tempItem.id = itemXml.@ID;
								tempItem.number = itemXml.@Amount;
								bm.items.push(tempItem);
							}
						}
					if (temp.child(type).hasOwnProperty("Cards")) {
						//如果有卡
						items= temp.child(type).Items;
						tempItem = new Object();
						bm.cards = new Array();
						for each (itemXml in items.children())
							{
								tempItem.id = itemXml.@ID;
								tempItem.number = itemXml.@Amount;
								bm.cards.push(tempItem);
							}
						}
					items = null;
					itemXml = null;
					tempItem = null;
					}
				}
				return bm;
			}
		
		public static function getInstance() : VipState
		{
			if (_vipState == null)
			{
			  _vipState = new VipState;
			}
			return _vipState; 
		}// end function
		
		public function setData(param:Object):void {
			_lv = (param["lv"] == null)?0:param["lv"];
			_exp = (param["exp"] == null)?0:param["exp"];
			_dialy = (param["dialy"] == null)?false:(param["dialy"] == 1)?true:false;
			_once = (param["once"] == null)?null:param["once"];
			dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_REFRESH));
			}
		
		public function get lv():int 
		{
			return _lv;
		}
		
		public function set lv(value:int):void 
		{
			_lv = value;
		}
		
		public function get exp():int 
		{
			return _exp;
		}
		
		public function set exp(value:int):void 
		{
			_exp = value;
		}
		
		public function get dialy():Boolean 
		{
			return _dialy;
		}
		
		public function set dialy(value:Boolean):void 
		{
			_dialy = value;
		}
		
		public function get once():Array 
		{
			return _once;
		}
		
		public function set once(value:Array):void 
		{
			_once = value;
		}
		
	}

}