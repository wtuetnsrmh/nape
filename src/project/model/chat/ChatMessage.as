package project.model.chat
{
	import project.model.data.DataModel;
	import project.model.item.IModel;
	import project.utils.CustomTool;
	import project.utils.MathTool;
	
	/**
	 * 一条信息模型
	 * @author bbjxl 2013
	 */
	public class ChatMessage extends DataModel implements IModel
	{
		/*userId	int	发送消息的玩家编号
		   userName	string	发送消息的玩家名字
		   channel	int	聊天频道，参考ChatChannel
		   msg	string	消息内容
		 */
		  
		private var _userId:int;
		private var _userName:String;
		private var _channel:int;
		private var _msg:String;
		private var _toUserId:int = 0;
		private var _isCardMsg:Boolean = false;//是否是卡牌的信息
		private var _realMsg:String;//真正要显示的信息
		
		public function ChatMessage(param:Object)
		{
			_userId = (param["userId"] == null)?0:param["userId"];
			_userName = (param["userName"] == null)?"":param["userName"];
			_channel = (param["channel"] == null)?0:param["channel"];
			_msg = (param["msg"] == null)?"":param["msg"];
			
			//如果信息中是卡牌信息则解析  id + 名称
			if (_msg.indexOf("_bbjxl_") < 0) return;
			var tempArr:Array = _msg.split("_bbjxl_");
			if (tempArr.length > 0) {
				if (int(tempArr[0]) == 0) return;
				_isCardMsg = true;
				_realMsg="<a href='event:" + HrefInfo.CARD + "_" + tempArr[0] +"'><font color='#80FF00'>【" + tempArr[1] + "】</font></a>";
				//_msg = tempArr[1];
				}
			
		}
		
		public function get userId():int 
		{
			return _userId;
		}
		
		public function set userId(value:int):void 
		{
			_userId = value;
		}
		
		public function get userName():String 
		{
			return _userName;
		}
		
		public function set userName(value:String):void 
		{
			_userName = value;
		}
		
		public function get channel():int 
		{
			return _channel;
		}
		
		public function set channel(value:int):void 
		{
			_channel = value;
		}
		
		public function get msg():String 
		{
			return _msg;
		}
		
		public function set msg(value:String):void 
		{
			_msg = value;
		}
		
		public function get toUserId():int 
		{
			return _toUserId;
		}
		
		public function set toUserId(value:int):void 
		{
			_toUserId = value;
		}
		
		public function get isCardMsg():Boolean 
		{
			return _isCardMsg;
		}
		
		public function set isCardMsg(value:Boolean):void 
		{
			_isCardMsg = value;
		}
		
		/**
		 * 检查是否是卡牌信息，如果是则返回卡牌信息，不是则返回聊天信息
		 */
		public function get realMsg():String 
		{
			if (_isCardMsg) {
				return _realMsg;
				}else {
					return msg;
					}
			return _realMsg;
		}
		
		public function set realMsg(value:String):void 
		{
			_realMsg = value;
		}
	
	}

}