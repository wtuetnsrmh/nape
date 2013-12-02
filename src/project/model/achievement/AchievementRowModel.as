package project.model.achievement
{
	import project.config.ItemConfig;
	import project.model.data.DataModel;
	import project.model.friends.BonusModel;
	
	/**
	 * 每行模型
	 * @author bbjxl 2013
	 * <Achievement ID="1" Name="100胜！" Category="0" Order="1" Point="10" Total="1">
	   <Desc>主动发起战斗，累计胜利100次</Desc>
	   <Title />
	   </Achievement>
	 */
	public class AchievementRowModel extends DataModel
	{
		/*id	int	成就编号
		   progress	int	进度
		   award	int	是否已领取奖励 1:已领　０:未领
		   time	string	获得成就的时间
		 */
		private var _id:int;
		private var _progress:int;
		private var _award:int;
		private var _time:int;
		private var _finish:Boolean=false;//是否成就已经完成
		
		private var _name:String;
		private var _category:int;
		private var _order:int;
		private var _point:int;
		private var _total:int;
		private var _desc:String;
		private var _title:String;
		private var _bounds:BonusModel;//奖励
		
		public function AchievementRowModel(temp1:XML)
		{
			_id = temp1.@ID;
			_name = temp1.@Name;
			_category = temp1.@Category;
			_order = temp1.@Order;
			_point = temp1.@Point;
			_total = temp1.@Total;
			//var temp:XMLList = ItemConfig.ACHV_CONFIG.Achievement;
			//var temp1:XMLList = temp.(@ID == value);
			
			_desc = temp1.Desc[0][0];
			_title = temp1.Title[0][0];
			
			_bounds = new BonusModel();
			_bounds.gold = temp1.Bonus.Gold[0][0];
			_bounds.honor = temp1.Bonus.Honor[0][0];
			_bounds.crystal = temp1.Bonus.Crystal[0][0];
			_bounds.exp = temp1.Bonus.Exp[0][0];
			
			var itemXml:XML;
			var tempItem:Object = new Object();
			if (temp1.Bonus.Items.children().length() > 0)
			{
				_bounds.items = new Array();
				
				for each (itemXml in temp1.Bonus.Items.children())
				{
					
					tempItem.id = itemXml.@ID;
					tempItem.number = itemXml.@Amount;
					_bounds.items.push(tempItem);
				}
			}
			else
			{
				_bounds.items = null;
			}
			//--------------------------------------------------------
			if (temp1.Bonus.Cards.children().length() > 0)
			{
				_bounds.cards = new Array();
				
				for each (itemXml in temp1.Bonus.Cards.children())
				{
					
					tempItem.id = itemXml.@ID;
					tempItem.number = itemXml.@Amount;
					_bounds.cards.push(tempItem);
				}
				tempItem = null;
				itemXml = null;
			}
			else
			{
				_bounds.cards = null;
			}
			
			tempItem = null;
			itemXml = null;
		}
		
		public function get id():int
		{
			return _id;
		}
		
		public function set id(value:int):void
		{
			_id = value;
			
		}
		
		public function get progress():int
		{
			return _progress;
		}
		
		public function set progress(value:int):void
		{
			_progress = value;
			if (value == total) {
				_finish = true;
				}else {
					_finish = false;
					}
		}
		
		public function get name():String
		{
			return _name;
		}
		
		public function set name(value:String):void
		{
			_name = value;
		}
		
		public function get category():int
		{
			return _category;
		}
		
		public function set category(value:int):void
		{
			_category = value;
		}
		
		public function get order():int
		{
			return _order;
		}
		
		public function set order(value:int):void
		{
			_order = value;
		}
		
		public function get point():int
		{
			return _point;
		}
		
		public function set point(value:int):void
		{
			_point = value;
		}
		
		public function get total():int
		{
			return _total;
		}
		
		public function set total(value:int):void
		{
			_total = value;
		}
		
		public function get desc():String
		{
			return _desc;
		}
		
		public function set desc(value:String):void
		{
			_desc = value;
		}
		
		public function get title():String
		{
			return _title;
		}
		
		public function set title(value:String):void
		{
			_title = value;
		}
		
		public function get award():int 
		{
			return _award;
		}
		
		public function set award(value:int):void 
		{
			_award = value;
		}
		
		public function get time():int 
		{
			return _time;
		}
		
		public function set time(value:int):void 
		{
			_time = value;
		}
		
		public function get finish():Boolean 
		{
			return _finish;
		}
		
		public function set finish(value:Boolean):void 
		{
			_finish = value;
		}
		
		public function get bounds():BonusModel 
		{
			return _bounds;
		}
		
		public function set bounds(value:BonusModel):void 
		{
			_bounds = value;
		}
	
	}

}