package project.model.statue
{
	import project.config.ItemConfig;
	import project.model.data.DataModel;
	import project.model.friends.BonusModel;
	import project.model.item.ItemModel;
	
	/**
	 * 宝箱模型
	 * @author bbjxl 2013
	 */
	public class AwardBoxModel extends DataModel
	{
		/*<Chest ID="1">
		   <Name>宝箱1</Name>
		   <Description>宝箱描述</Description>
		   <Point>50</Point>
		   <Bonus>
		   <Gold>100</Gold>
		   <Honor>0</Honor>
		   <Crystal>0</Crystal>
		   <Exp>0</Exp>
		   <Items />
		   <Cards />
		   </Bonus>
		 </Chest>*/
		private var _id:int;
		private var _name:String;
		private var _des:String;
		private var _point:int;
		private var _bounds:BonusModel;
		private var _index:int = 0; //索引
		
		public function AwardBoxModel()
		{
			_bounds = new BonusModel();
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
		
		public function get des():String
		{
			return _des;
		}
		
		public function set des(value:String):void
		{
			_des = value;
		}
		
		public function get point():int
		{
			return _point;
		}
		
		public function set point(value:int):void
		{
			_point = value;
		}
		
		public function get bounds():BonusModel
		{
			return _bounds;
		}
		
		public function set bounds(value:BonusModel):void
		{
			_bounds = value;
		}
		
		public function get index():int
		{
			return _index;
		}
		
		public function set index(value:int):void
		{
			_index = value;
			var temp:XML = ItemConfig.ACTIVITY_CONFIG.Chests.Chest[value];
			_name = temp.Name[0][0];
			_point = temp.Point[0][0];
			_des=temp.Description[0][0];
			id = temp.@ID;
			
			_bounds.gold = temp.Bonus.Gold[0][0];
			_bounds.honor = temp.Bonus.Honor[0][0];
			_bounds.crystal = temp.Bonus.Crystal[0][0];
			_bounds.exp = temp.Bonus.Exp[0][0];
			
			var itemXml:XML;
			var tempItem:Object = new Object();
			if (temp.Bonus.Items.children().length() > 0)
			{
				_bounds.items = new Array();
				
				for each (itemXml in temp.Bonus.Items.children())
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
			if (temp.Bonus.Cards.children().length() > 0)
			{
				_bounds.cards = new Array();
				
				for each (itemXml in temp.Bonus.Cards.children())
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
	
	}

}