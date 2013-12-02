package project.model.chat
{
	import com.adobe.serialization.json.JSON;
	import project.model.data.DataModel;
	import project.model.item.IModel;
	
	/**
	 * 名字，卡牌等点击时链接所带的信息
	 * @author bbjxl
	 */
	public class HrefInfo extends DataModel implements IModel
	{
		public static const PLAYER:int = 0; //玩家
		public static const CARD:int = 1; //卡牌
		
		private var _cardId:int = 0;
		private var _userId:int = 0;
		private var _userName:String = "";
		private var _type:int = 0; //当前点击的类型
		
		public function HrefInfo()
		{
			
		}
		
		/**
		 * 根据类型返回相应的对象
		 * @param	value
		 */
		/*public function returnObjByType(param:int,chatMessage:ChatMessage):Object {
			var temp:Object = new Object();
			switch(param) {
				case PLAYER:
					temp.type = HrefInfo.PLAYER;
					temp.userId=chatMessage.userId
					temp.userName=chatMessage.userName;
					break;
				case CARD:
					temp.type = HrefInfo.CARD;
					temp.cardId = chatMessage.userId;
					break;
				}
				return temp;
			}*/
		
		/**
		 * 解码JSON
		 * @param	value
		 * @return
		 */
		public function decode(value:String):void
		{
			var temp:Object = new Object();
			var tempArr:Array = value.split("_");
			if (tempArr.length == 3) {
				temp.type = tempArr[0];
				temp.userId = tempArr[1];
				temp.userName = tempArr[2];
				}else {
					temp.type = tempArr[0];
					temp.cardId = tempArr[1];
					}
			_type = (temp["type"] == null) ? 0 : temp["type"];
			_cardId = (temp["cardId"] == null) ? 0 : temp["cardId"];
			_userId = (temp["userId"] == null) ? 0 : temp["userId"];
			_userName = (temp["userName"] == null) ? "" : temp["userName"];
		}
		/**
		 * 以_分割对象
		 * @param	channel
		 */
		private function returnSplitString(temp:Object, type:int = 1):String {
			var str:String;
			switch(type) {
				case 1:
					str = temp.type + "_" + temp.userId + "_" + temp.userName;
					break;
				case 2:
					str = temp.type + "_" + temp.cardId;
					break;
				}
			return str;
			}
		/**
		 * 转成JSON
		 * @return
		 */
		public function encode(value:Object, type:int = 1):String
		{
			return returnSplitString(value,type);
		}
		
		public function get userName():String
		{
			return _userName;
		}
		
		public function set userName(value:String):void
		{
			_userName = value;
		}
		
		public function get type():int
		{
			return _type;
		}
		
		public function set type(value:int):void
		{
			_type = value;
		}
		
		public function get userId():int
		{
			return _userId;
		}
		
		public function set userId(value:int):void
		{
			_userId = value;
		}
		
		public function get cardId():int 
		{
			return _cardId;
		}
		
		public function set cardId(value:int):void 
		{
			_cardId = value;
		}
		

	
	}

}