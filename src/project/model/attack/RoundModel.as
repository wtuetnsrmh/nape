package project.model.attack 
{
	import project.model.data.DataModel;
	
	/**
	 * 回合模型
	 * @author bbjxl 2012
	 */
	public class RoundModel extends DataModel 
	{
		/*id	int	当前回合数
		side	int	当前行动的玩家，若为0表示攻方行动，为1表示守方行动
		actions	array[Action]	当前回合单位的行动列表（可为空）*/
		
		public var skillIdArr:Array;
		private var _id:int = 0;
		private var _side:int = 0;
		private var _actions:Vector.<ActionModel>;
		public function RoundModel() 
		{
			
		}
		//--------------------------------------------------------
		public function setData(parma:Object):void {
			_id = parma["id"];
			_side = parma["side"];
			
			_actions = new Vector.<ActionModel>();
			var tempActions:Object = parma["actions"];
			skillIdArr = new Array();
			if (tempActions) {
				for (var i:String in tempActions) {
					var tempAction:ActionModel = new ActionModel();
					tempAction.setData(tempActions[i]);
					if (tempAction.act > 100) {
						var temp:int = AttackSkillDir.attackDir[tempAction.act];
						if(temp!=0){
						skillIdArr.push(temp);
						}
						}
					_actions.push(tempAction);
					}
				
				}else {
					_actions = new Vector.<ActionModel>();
					}
			}
		
		//--------------------------------------------------------
		public function get actions() : Vector.<ActionModel>
		 {
		   return _actions;
		}// end function
		
		public function set actions(param1:Vector.<ActionModel>) : void
		{
		  _actions= param1;
		  return;
		}// end function
		public function get side() : int
		 {
		   return _side;
		}// end function
		
		public function set side(param1:int) : void
		{
		  _side= param1;
		  return;
		}// end function
		public function get id() : int
		 {
		   return _id;
		}// end function
		
		public function set id(param1:int) : void
		{
		  _id= param1;
		  return;
		}// end function
		
	}

}