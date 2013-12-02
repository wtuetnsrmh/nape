package project.model.data 
{
	import project.config.ItemConfig;
	/**
	 * 用户信息模型
	 * @author bbjxl 2012
	 */
	public class User extends DataModel 
	{
		private var _expGain:int;//当前经验值  --exp
		private var _level:int;//用户当前等级  --lv
		private var _avatar:String;//用户头像地址  --head
		private var _gold:int;//金币  --gold
		private var _crystal:int;//水晶   --crystal
		private var _honor:int;//荣誉  --honor
		private var _nick:String;//玩家名字 --name
		private var _vipLevel:int = 0;//VIP等级  0:普通用户 大于0时显示VIP _ownVip=true;
		private var _snsName:String = "";//社交网站唯一编号 --snsid
		private var _userId:int;//玩家唯一编号  --id
		private var _title:int;//玩家称号编号，成就编号
		
		private var _expRec:int; //下次升级需要的经验值
		private var _expRatio:int; //进度条宽度
		private var _expStr:String; //显示的进度值
		
		public function User(param:Object) 
		{
			var userObj:Object = new Object();
				userObj = param;
				_expGain = (userObj["exp"] == null)?0:userObj["exp"];
				_level = (userObj["lv"] == null)?0:userObj["lv"];
				_avatar = (userObj["head"] == null)?"":userObj["head"];
				_gold = (userObj["gold"] == null)?0:userObj["gold"];
				_crystal = (userObj["crystal"] == null)?0:userObj["crystal"];
				_honor = (userObj["honor"] == null)?0:userObj["honor"];
				_nick = (userObj["name"] == null)?"":userObj["name"];
				_vipLevel = (userObj["vip"] == null)?0:userObj["vip"];
				_snsName = (userObj["snsid"] == null)?"":userObj["snsid"];
				_userId = (userObj["id"] == null)?0:userObj["id"];
				_title = (userObj["title"] == null)?0:userObj["title"];
				userObj = null;
		}
		//--------------------------------------------------------
		public function get title():int 
		{
			return _title;
		}
		
		public function set title(value:int):void 
		{
			_title = value;
		}
		
		public function get expStr():String
		{
			_expStr = String(_expGain) + " / " + String(expRec);
			return _expStr;
		} // end function
		
		public function set expStr(param1:String):void
		{
			_expStr = param1;
			return;
		} // end function
		public function get expRatio():int
		{
			_expRatio = Math.round((_expGain / expRec) * 100);
			return this._expRatio;
		} // end function
		
		public function set expRatio(param1:int):void
		{
			this._expRatio = param1;
			return;
		} // end function
		public function get expRec():int
		{
			if (ItemConfig.LEVEL_CONFIG.Level.(@ID == (level + 1)).@Exp)
			{
				_expRec = ItemConfig.LEVEL_CONFIG.Level.(@ID == (level + 1)).@Exp;
			}
			else
			{
				_expRec = 10000000;
			}
			
			return this._expRec;
		} // end function
		
		public function set expRec(param1:int):void
		{
			this._expRec = param1;
			return;
		} // end function
		
		public function get vipLevel() : int
		 {
		   return _vipLevel;
		}// end function
		
		public function set vipLevel(param1:int) : void
		{
		  _vipLevel= param1;
		  return;
		}// end function
		public function get nick() : String
        {
            return this._nick;
        }// end function

        public function set nick(param1:String) : void
        {
            this._nick = param1;
            return;
        }// end function

        public function get avatar() : String
        {
            return this._avatar;
        }// end function

        public function set avatar(param1:String) : void
        {
            this._avatar = param1;
            return;
        }// end function

        public function get gold() : int
        {
            return this._gold;
        }// end function

        public function set gold(param1:int) : void
        {
            this._gold = param1;
            return;
        }// end function
		public function get expGain() : int
        {
            return this._expGain;
        }// end function

        public function set expGain(param1:int) : void
        {
            this._expGain = param1;
            return;
        }// end function
		
		public function get snsName() : String
        {
            return this._snsName;
        }// end function

        public function set snsName(param1:String) : void
        {
            this._snsName = param1;
            return;
        }// end function
		public function get userId() : int
        {
            return this._userId;
        }// end function

        public function set userId(param1:int) : void
        {
            this._userId = param1;
            return;
        }// end function
		public function get honor() : int
		 {
		   return _honor;
		}// end function
		
		public function set honor(param1:int) : void
		{
		  _honor= param1;
		  return;
		}// end function
		
		public function get crystal() : int
		 {
		   return _crystal;
		}// end function
		
		public function set crystal(param1:int) : void
		{
		  _crystal= param1;
		  return;
		}// end function
		public function get level() : int
        {
            return this._level;
        }// end function

        public function set level(param1:int) : void
        {
            this._level = param1;
            return;
        }// end function
	}

}