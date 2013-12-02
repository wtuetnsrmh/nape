package project.model.arena 
{
	import project.model.data.DataModel;
	import project.model.data.User;
	
	/**
	 * 一个模式对应的数据模式：擂主信息等
	 * @author bbjxl 2012
	 */
	public class ArenaSlotModel extends DataModel 
	{
		/*id	int	竞技场编号
		name	string	竞技场名称
		mode	int	战斗模式，参考战斗：战斗模式
		type	int	报名费类型，参考商城：支付类型 0:免支付  1:金币支付 2:水晶支付 3:荣誉支付
		cost	int	报名消耗的点数
		champion	User	擂主信息
		bonus	int	奖池中的点数
		win	int	擂主连胜数*/
		
		//----------------------容器---------------------------------
		
		//-----------------------UI---------------------------------
		
		//-----------------------数据---------------------------------
		private var _id:int;
		private var _name:String;
		private var _mode:int;
		private var _type:int;
		private var _cost:int;
		private var _champion:User;
		private var _bonus:int;
		private var _win:int;
		//-----------------------事件--------------------------------
		
		public function ArenaSlotModel() 
		{
			
		}
		
		public function setData(param:Object):void 
		{
			_id=(param["id"] == null)?0:param["id"];
			_name = (param["name"] == null)?"":param["name"];
			_mode=(param["mode"] == null)?0:param["mode"];
			_type=(param["type"] == null)?0:param["type"];
			_cost=(param["cost"] == null)?0:param["cost"];
			(param["champion"] == null)?_champion =null:_champion = new User(param["champion"]);
			_bonus=(param["bonus"] == null)?0:param["bonus"];
			_win=(param["win"] == null)?0:param["win"];
		}
		public function get win() : int
		 {
		   return _win;
		}// end function
		
		public function set win(param1:int) : void
		{
		  _win= param1;
		  return;
		}// end function
		public function get bonus() : int
		 {
		   return _bonus;
		}// end function
		
		public function set bonus(param1:int) : void
		{
		  _bonus= param1;
		  return;
		}// end function
		public function get champion() : User
		 {
		   return _champion;
		}// end function
		
		public function set champion(param1:User) : void
		{
		  _champion= param1;
		  return;
		}// end function
		public function get cost() : int
		 {
		   return _cost;
		}// end function
		
		public function set cost(param1:int) : void
		{
		  _cost= param1;
		  return;
		}// end function
		public function get mode() : int
		 {
		   return _mode;
		}// end function
		
		public function set mode(param1:int) : void
		{
		  _mode= param1;
		  return;
		}// end function
		public function get name() : String
		 {
		   return _name;
		}// end function
		
		public function set name(param1:String) : void
		{
		  _name= param1;
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
		public function get type() : int
		 {
		   return _type;
		}// end function
		
		public function set type(param1:int) : void
		{
		  _type= param1;
		  return;
		}// end function
		
	}

}