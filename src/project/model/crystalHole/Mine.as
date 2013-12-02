package project.model.crystalHole
{
	import project.model.data.DataModel;
	import project.model.data.User;
	
	/**
	 * 2.	矿点信息
	 * @author bbjxl 2013
	 */
	public class Mine extends DataModel
	{
		/*id	int	矿点编号
			type	MineType	矿点类型
			owner	User	占领玩家信息
			mode	BattleMode	战斗模式，若为NPC占领则为0
			yield	int	标准总产量
			yieldNow	int	当前产量
			occupy	int	标准占领时间（单位：秒）
			occupyLeft	int	占领剩余时间（单位：秒）
			robCd	int	掠夺保护剩余时间（单位：秒）
			occupyCd	int	占领保护剩余时间（单位：秒）
			assists	array[User]	协助过的玩家数组
			steals	array[User]	偷窃过的玩家数组
			isFriend	int	与当前玩家是否为好友关系 1-是 0-否
*/
		
		private var _id:int;
		private var _type:int;
		private var _owner:User;
		private var _mode:int;
		private var _yield:int;
		private var _yieldNow:int;
		private var _robCd:int;
		private var _occupyCd:int;
		private var _occupyLeft:int;
		private var _occupy:int;
		private var _assists:Vector.<User>;
		private var _steals:Vector.<User>;
		private var _isFriend:Boolean;
		
		public function Mine()
		{
		
		}
		
		public function setData(param:Object):void
		{
			_id = param["id"];
			_mode = (param["mode"] == null)?0:param["mode"];
			_type = (param["type"] == null)?0:param["type"];
			_owner = (param["owner"] == null)?null: new User(param["owner"]);
			_occupy = (param["occupy"] == null)?0:param["occupy"];
			_occupyLeft =(param["occupyLeft"] == null)?0:param["occupyLeft"];
			_yield = (param["yield"] == null)?0:param["yield"];
			_yieldNow = (param["yieldNow"] == null)?0:param["yieldNow"];
			_robCd = (param["robCd"] == null)?0:param["robCd"];
			_occupyCd = (param["occupyCd"] == null)?0:param["occupyCd"];
			
			_assists = new Vector.<User>();
			if(param["assists"]!=null)
			for (var i:String in param["assists"]) {
				_assists.push(new User(param["assists"][i]));
				}
				
			_steals = new Vector.<User>();
			if(param["steals"]!=null)
			for (var i:String in param["steals"]) {
				_steals.push(new User(param["steals"][i]));
				}
			
			_isFriend = (param["isFriend"] == 1)?true:false;
		}
		
		public function get isFriend():Boolean
		{
			return _isFriend;
		}
		
		public function set isFriend(value:Boolean):void
		{
			_isFriend = value;
		}
		
		public function get id():int
		{
			return _id;
		}
		
		public function set id(value:int):void
		{
			_id = value;
		}
		
		public function get type():int
		{
			return _type;
		}
		
		public function set type(value:int):void
		{
			_type = value;
		}
		
		public function get owner():User
		{
			return _owner;
		}
		
		public function get yield():int
		{
			return _yield;
		}
		
		public function get yieldNow():int
		{
			return _yieldNow;
		}
		
		public function get robCd():int
		{
			return _robCd;
		}
		
		public function get occupyCd():int
		{
			return _occupyCd;
		}
		
		public function get assists():Vector.<User>
		{
			return _assists;
		}
		
		public function get occupy():int 
		{
			return _occupy;
		}
		
		public function set occupy(value:int):void 
		{
			_occupy = value;
		}
		
		public function get occupyLeft():int 
		{
			return _occupyLeft;
		}
		
		public function set occupyLeft(value:int):void 
		{
			_occupyLeft = value;
		}
		
		public function get steals():Vector.<User> 
		{
			return _steals;
		}
		
		public function set steals(value:Vector.<User>):void 
		{
			_steals = value;
		}
		
		public function get mode():int 
		{
			return _mode;
		}
		
		public function set mode(value:int):void 
		{
			_mode = value;
		}
	
	}

}