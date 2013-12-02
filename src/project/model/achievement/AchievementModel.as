package project.model.achievement
{
	import project.config.ErrorZhCn;
	import project.config.ItemConfig;
	import project.events.SMZTDataChangeEvent;
	import project.model.data.DataModel;
	import project.view.module.achievement.AchievementRow;
	
	/**
	 * 成就模型
	 * @author bbjxl 2013
	 */
	public class AchievementModel extends DataModel
	{
		public static const TOTAL:int = 0; //总览
		public static const BATTLES:int = 1; //战斗荣誉
		public static const ITEMS:int = 2; //物品荣誉
		public static const AREANS:int = 3; //竞技荣誉
		public static const FRIENDS:int = 4; //好友荣誉
		public static const EVENTS:int = 5; //活动荣誉
		public static const OTHERS:int = 6; //其他
		
		private var _totalPoint:int; //总成就点数
		private var _rows:Vector.<AchievementRowModel>; //总览
		private var _battles:Vector.<AchievementRowModel>; //战斗荣誉
		private var _items:Vector.<AchievementRowModel>; //物品荣誉
		private var _areans:Vector.<AchievementRowModel>; //竞技荣誉
		private var _friends:Vector.<AchievementRowModel>; //好友荣誉
		private var _events:Vector.<AchievementRowModel>; //活动荣誉
		private var _others:Vector.<AchievementRowModel>; //其他
		
		private var _totalStr:String;
		private var _batlleStr:String;
		private var _itemStr:String;
		private var _areanStr:String;
		private var _friendStr:String;
		private var _eventStr:String;
		private var _otherStr:String;
		
		private static var _instance:AchievementModel;
		
		public function AchievementModel()
		{
			if (_instance != null)
			{
				throw Error(new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE));
			}
			initDataModel();
		}
		
		private function initDataModel():void
		{
			
			_rows = new Vector.<AchievementRowModel>();
			var _xml:XMLList = ItemConfig.ACHV_CONFIG.children();
			for (var i:String in _xml)
			{
				_rows.push(new AchievementRowModel(_xml[i]));
			}
		}
		
		public function setRowAwardById(value:int):void {
			for (var i:String in _rows) {
				if (_rows[i].id == value) {
					_rows[i].award = 1;
					return;
					}
				}
			}
		
		public function setData(param:Object):void
		{
			_totalPoint = 0;
			_battles = new Vector.<AchievementRowModel>();
			_items = new Vector.<AchievementRowModel>();
			_areans = new Vector.<AchievementRowModel>();
			_friends = new Vector.<AchievementRowModel>();
			_events = new Vector.<AchievementRowModel>();
			_others = new Vector.<AchievementRowModel>();
			
			var tempArr:Array;
			if (param["achvs"] != null)
			{
				tempArr = param["achvs"] as Array;
			}
			else
			{
				return;
			}
			
			for (var i:String in _rows)
			{
				updataRow(_rows[i], tempArr);
				
				if (_rows[i].finish)
				{
					_totalPoint += _rows[i].point;
				}
				
				switch (_rows[i].category)
				{
					case BATTLES: 
						_battles.push(_rows[i]);
						break;
					case ITEMS: 
						_items.push(_rows[i]);
						break;
					case AREANS: 
						_areans.push(_rows[i]);
						break;
					case FRIENDS: 
						_friends.push(_rows[i]);
						break;
					case EVENTS: 
						_events.push(_rows[i]);
						break;
					case OTHERS: 
						_others.push(_rows[i]);
						break;
				}
				
			}
			
			tempArr = null;
			
			_totalStr = returnAchPointAndTotal(TOTAL);
			_batlleStr = returnAchPointAndTotal(BATTLES);
			_itemStr = returnAchPointAndTotal(ITEMS);
			_areanStr = returnAchPointAndTotal(AREANS);
			_friendStr = returnAchPointAndTotal(FRIENDS);
			_eventStr = returnAchPointAndTotal(EVENTS);
			_otherStr = returnAchPointAndTotal(OTHERS);
			
			dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
		}
		
		/**
		 * 如果从服务端返回的数据中更新配置文件中的数据模型
		 */
		private function updataRow(rm:AchievementRowModel, arr:Array):void
		{
			for (var i:String in arr)
			{
				if (arr[i].id == rm.id)
				{
					rm.progress = arr[i].progress;
					rm.time = (arr[i].time == "undefined") ? 0 : arr[i].time;
					rm.award = (arr[i].award == "undefined") ? 0 : arr[i].award;
					return;
				}
			}
		
		}
		
		/**
		 * 根据分类返回相应的成就点数
		 * @return
		 */
		private function returnAchPointAndTotal(value:int):String
		{
			switch (value)
			{
				case TOTAL: 
					return returnStr(_rows);
					break;
				case BATTLES: 
					return returnStr(_battles);
					break;
				case ITEMS: 
					return returnStr(_items);
					break;
				case AREANS: 
					return returnStr(_areans);
					break;
				case FRIENDS: 
					return returnStr(_friends);
					break;
				case EVENTS: 
					return returnStr(_events);
					break;
				case OTHERS: 
					return returnStr(_others);
					break;
			}
			return null;
		}
		
		private function returnStr(value:Vector.<AchievementRowModel>):String
		{
			var _fp:int = 0;
			var _tp:int = 0;
			for (var i:String in value)
			{
				if (value[i].finish)
				{
					_fp += value[i].point;
				}
				_tp += value[i].point;
			}
			return _fp + "/" + _tp;
		}
		
		public static function getInstance():AchievementModel
		{
			if (_instance == null)
			{
				_instance = new AchievementModel;
			}
			return _instance;
		} // end function
		
		public function get totalPoint():int
		{
			return _totalPoint;
		}
		
		public function set totalPoint(value:int):void
		{
			_totalPoint = value;
		}
		
		public function get battles():Vector.<AchievementRowModel>
		{
			return _battles;
		}
		
		public function set battles(value:Vector.<AchievementRowModel>):void
		{
			_battles = value;
		}
		
		public function get rows():Vector.<AchievementRowModel>
		{
			return _rows;
		}
		
		public function set rows(value:Vector.<AchievementRowModel>):void
		{
			_rows = value;
		}
		
		public function get items():Vector.<AchievementRowModel>
		{
			return _items;
		}
		
		public function set items(value:Vector.<AchievementRowModel>):void
		{
			_items = value;
		}
		
		public function get areans():Vector.<AchievementRowModel>
		{
			return _areans;
		}
		
		public function set areans(value:Vector.<AchievementRowModel>):void
		{
			_areans = value;
		}
		
		public function get friends():Vector.<AchievementRowModel>
		{
			return _friends;
		}
		
		public function set friends(value:Vector.<AchievementRowModel>):void
		{
			_friends = value;
		}
		
		public function get events():Vector.<AchievementRowModel>
		{
			return _events;
		}
		
		public function set events(value:Vector.<AchievementRowModel>):void
		{
			_events = value;
		}
		
		public function get others():Vector.<AchievementRowModel>
		{
			return _others;
		}
		
		public function set others(value:Vector.<AchievementRowModel>):void
		{
			_others = value;
		}
		
		public function get totalStr():String
		{
			return _totalStr;
		}
		
		public function set totalStr(value:String):void
		{
			_totalStr = value;
		}
		
		public function get batlleStr():String
		{
			return _batlleStr;
		}
		
		public function set batlleStr(value:String):void
		{
			_batlleStr = value;
		}
		
		public function get itemStr():String
		{
			return _itemStr;
		}
		
		public function set itemStr(value:String):void
		{
			_itemStr = value;
		}
		
		public function get areanStr():String
		{
			return _areanStr;
		}
		
		public function set areanStr(value:String):void
		{
			_areanStr = value;
		}
		
		public function get friendStr():String
		{
			return _friendStr;
		}
		
		public function set friendStr(value:String):void
		{
			_friendStr = value;
		}
		
		public function get eventStr():String
		{
			return _eventStr;
		}
		
		public function set eventStr(value:String):void
		{
			_eventStr = value;
		}
		
		public function get otherStr():String
		{
			return _otherStr;
		}
		
		public function set otherStr(value:String):void
		{
			_otherStr = value;
		}
	
	}

}