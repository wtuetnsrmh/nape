package project.model.attack 
{
	import project.model.data.DataModel;
	import project.model.item.IModel;
	/**
	 * 战斗场景中的用户信息
	 * @author bbjxl 2012
	 */
	public class AttackPlayerModel extends DataModel implements IModel 
	{
		//----------------------容器---------------------------------
		
		//-----------------------UI---------------------------------
		
		//-----------------------数据---------------------------------
		
		/*id	int	玩家唯一编号
		snsid	string	玩家社交平台账号
		name	string	玩家姓名
		lv	int	玩家等级
		head	string	玩家头像链接地址
		vip	int	玩家会员等级
		faith	int	玩家的信仰值
		card	pair[string,int]	玩家的卡牌列表，键表示该卡牌在战斗记录中的唯一编号，值表示卡牌本身的编号。*/
		
		private var _id:int;
		private var _snsid:String = "";
		private var _name:String = "";
		private var _head:String = "";
		private var _lv:int =0;
		private var _vip:int =0;
		private var _faith:int = 0;//玩家的信仰值
		private var _cards:Vector.<AttackCardModel>;//玩家的卡牌列表，键表示该卡牌在战斗记录中的唯一编号，值表示卡牌本身的编号。

		//-----------------------事件--------------------------------
		public function AttackPlayerModel() 
		{
			
		}
		//--------------------------------------------------------
		public function setData(parma:Object):void {
			_lv = (parma["lv"] == null)?0:parma["lv"];
			_id = (parma["id"] == null)?0:parma["id"];
			_vip = (parma["vip"] == null)?0:parma["vip"];
			_faith = (parma["faith"] == null)?0:parma["faith"];
			_snsid = (parma["snsid"] == null)?"":parma["snsid"];
			_name = (parma["name"] == null)?"":parma["name"];
			_head = (parma["head"] == null)?"":parma["head"];
			
			var tempCards:Object = (parma["cards"] == null)?null:parma["cards"];
			if (tempCards == null) { return; }
			_cards = new Vector.<AttackCardModel>();
			for (var i:String in tempCards) {
				var tempCard:AttackCardModel = new AttackCardModel();
				tempCard.uniqueId = i;
				tempCard.cardId = tempCards[i];
				_cards.push(tempCard);
				}
			}
		
		//--------------------------------------------------------
		public function get cards() : Vector.<AttackCardModel>
		 {
		   return _cards;
		}// end function
		
		public function set cards(param1:Vector.<AttackCardModel>) : void
		{
		  _cards= param1;
		  return;
		}// end function
		public function get faith() : int
		 {
		   return _faith;
		}// end function
		
		public function set faith(param1:int) : void
		{
		  _faith= param1;
		  return;
		}// end function
		public function get vip() : int
		 {
		   return _vip;
		}// end function
		
		public function set vip(param1:int) : void
		{
		  _vip= param1;
		  return;
		}// end function
		public function get lv() : int
		 {
		   return _lv;
		}// end function
		
		public function set lv(param1:int) : void
		{
		  _lv= param1;
		  return;
		}// end function
		public function get head() : String
		 {
		   return _head;
		}// end function
		
		public function set head(param1:String) : void
		{
		  _head= param1;
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
		public function get snsid() : String
		 {
		   return _snsid;
		}// end function
		
		public function set snsid(param1:String) : void
		{
		  _snsid= param1;
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