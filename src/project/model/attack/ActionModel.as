package project.model.attack 
{
	import project.model.data.DataModel;
	import project.model.item.IModel;
	/**
	 * 一个战斗动作模型
	 * @author bbjxl 2012
	 */
	public class ActionModel extends DataModel implements IModel 
	{
		/*uid	string	战场单位唯一编号，表示当前行动的发起单位
		act	int	行动类型，详细见行动编号列表。
		to	array[uid]	本行动针对的目标战场单位唯一编号列表。（可为空）
		val	int	本行动造成的影响的数值。（可为空）*/
		
		private var _uid:String = "";
		private var _act:int = 0;
		private var _to:Vector.<AttackCardModel>;
		private var _val:int = 0;
		
		public function ActionModel() 
		{
			
		}
		//--------------------------------------------------------
		public function setData(parma:Object):void {
			_uid=(parma["uid"] == null)?"":parma["uid"];
			_act=(parma["act"] == null)?0:parma["act"];
			_val = (parma["val"] == null)?0:parma["val"];
			
			var tempTo:Object = (parma["to"] == null)?null:parma["to"];
			_to = new Vector.<AttackCardModel>();
			if (tempTo) {
				for (var i:String in tempTo) {
					var tempAttack:AttackCardModel = new AttackCardModel();//这里只用到唯一卡的属性，真实卡ID不用
					tempAttack.uniqueId = tempTo[i];
					_to.push(tempAttack);
					}
				}else {
					_to = null;
					}
			}
		
		//--------------------------------------------------------
		public function get val() : int
		 {
		   return _val;
		}// end function
		
		public function set val(param1:int) : void
		{
		  _val= param1;
		  return;
		}// end function
		public function get to() : Vector.<AttackCardModel>
		 {
		   return _to;
		}// end function
		
		public function set to(param1:Vector.<AttackCardModel>) : void
		{
		  _to= param1;
		  return;
		}// end function
		public function get act() : int
		 {
		   return _act;
		}// end function
		
		public function set act(param1:int) : void
		{
		  _act= param1;
		  return;
		}// end function
		public function get uid() : String
		 {
		   return _uid;
		}// end function
		
		public function set uid(param1:String) : void
		{
		  _uid= param1;
		  return;
		}// end function
		
	}

}