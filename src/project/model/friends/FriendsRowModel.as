package project.model.friends
{
	import project.model.data.DataModel;
	
	/**
	 * 好友列表中一行的数据：一个好友信息
	 * @author bbjxl 2012
	 */
	public class FriendsRowModel extends DataModel
	{
		/*id	int	玩家编号
		   name	string	玩家姓名
		   head	string	玩家头像链接地址
		   lv	int	玩家等级
		   vip	int	玩家会员等级
		   bonus	int	随机事件模版编号，为0表示没有随机事件
		   holder	int	奴隶主玩家编号
		
		 */
		
		private var _id:int;
		private var _name:String;
		private var _head:String;
		private var _lv:int;
		private var _vip:int;
		private var _bonus:int;
		private var _holder:int;
		
		public function FriendsRowModel(parma:Object)
		{
			_id = (parma["id"] == null) ? 0 : parma["id"];
			_name = (parma["name"] == null) ? "" : parma["name"];
			_head = (parma["head"] == null) ? null : parma["head"];
			_lv = (parma["lv"] == null) ? 0 : parma["lv"];
			_vip = (parma["vip"] == null) ? 0 : parma["vip"];
			_bonus = (parma["bonus"] == null) ? 0 : parma["bonus"];
			_holder = (parma["holder"] == null) ? 0 : parma["holder"];//如果没有被奴仅则服务端不会返回这个字段，即为NULL
		
		}
		
		public function get id():int
		{
			return _id;
		}
		
		public function set id(value:int):void
		{
			_id = value;
		}
		
		public function get name():String
		{
			return _name;
		}
		
		public function set name(value:String):void
		{
			_name = value;
		}
		
		public function get head():String
		{
			return _head;
		}
		
		public function set head(value:String):void
		{
			_head = value;
		}
		
		public function get lv():int
		{
			return _lv;
		}
		
		public function set lv(value:int):void
		{
			_lv = value;
		}
		
		public function get vip():int
		{
			return _vip;
		}
		
		public function set vip(value:int):void
		{
			_vip = value;
		}
		
		public function get bonus():int 
		{
			return _bonus;
		}
		
		public function set bonus(value:int):void 
		{
			_bonus = value;
		}
		
		public function get holder():int 
		{
			return _holder;
		}
		
		public function set holder(value:int):void 
		{
			_holder = value;
		}
		
		
	
	}

}