package project.model.defence
{
	/**
	 * 防御数据模型
	 * @author bbjxl 2012
	 */
	import project.config.ErrorZhCn;
	import project.events.SMZTDataChangeEvent;
	import project.model.data.DataModel;
	import project.model.data.DeckModel;
	import project.model.data.PlayerData;
	import project.model.item.CardModel;
	import project.model.item.IModel;
	
	public class DefenceModel extends DataModel implements IModel
	{
		//----------------------容器---------------------------------
		
		//-----------------------UI---------------------------------
		
		//-----------------------数据---------------------------------
		private var _v1:Array;
		private var _v2:Array;
		private var _v3:Array;
		private var _v4:Array; //存的是DeckModel
		
		private static var _defenecModel:DefenceModel = null;
		
		//-----------------------事件--------------------------------
		
		public function DefenceModel()
		{
			if (_defenecModel != null)
			{
				throw new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE);
			}
		}
		
		public function setDefenceData(param:Object):void
		{
			v1 = (param["v1"] == null) ? [] : param["v1"];
			v2 = (param["v2"] == null) ? [] : param["v2"];
			v3 = (param["v3"] == null) ? [] : param["v3"];
			v4 = (param["v4"] == null) ? [] : param["v4"];
			
			dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
		}
		
		/**
		 * 根据模式返回相应的卡组ID数组
		 * @param	deckid
		 * @return
		 */
		public function returnDeckIdArrByModel(prama:int):Array
		{
			var tempV:Array;
			var returnArr:Array = new Array();
			switch (prama)
			{
				case 1: 
					tempV = v1;
					break;
				case 2: 
					tempV = v2;
					break;
				case 3: 
					tempV = v3;
					break;
				case 4: 
					tempV = v4;
					break;
			}
			for (var i:String in tempV)
			{
				returnArr.push(tempV[i].id);
			}
			if (returnArr.length == 0)
				return null;
			return returnArr;
		}
		
		/**
		 *
		 * @return
		 */
		public function findDeckModelByDeckId(deckid:int):DeckModel
		{
			var i:String;
			for (i in _v1)
			{
				if (_v1[i].id == deckid)
				{
					return _v1[i];
				}
			}
			for (i in _v2)
			{
				if (_v2[i].id == deckid)
				{
					return _v2[i];
				}
			}
			for (i in _v3)
			{
				if (_v3[i].id == deckid)
				{
					return _v3[i];
				}
			}
			for (i in _v4)
			{
				if (_v4[i].id == deckid)
				{
					return _v4[i];
				}
			}
			return null;
		}
		
		/**
		 * 返回第一个卡组
		 * @return
		 */
		public function findFirstDeckFromDefences():DeckModel
		{
			
			var i:String;
			for (i in _v1)
			{
				if (_v1[i].cards != null)
				{
					return _v1[i];
				}
			}
			for (i in _v2)
			{
				if (_v2[i].cards != null)
				{
					return _v2[i];
				}
			}
			for (i in _v3)
			{
				if (_v3[i].cards != null)
				{
					return _v3[i];
				}
			}
			for (i in _v4)
			{
				if (_v4[i].cards != null)
				{
					return _v4[i];
				}
			}
			return null;
		}
		
		//--------------------------------------------------------
		public function get v1():Array
		{
			return _v1;
		} // end function
		
		public function set v1(param1:Array):void
		{
			_v1 = null;
			_v1 = new Array();
			for (var i:String in param1)
			{
				var temp:DeckModel = PlayerData.getInstance().returnDeckModelByDeckId(param1[i]);
				if (temp.cards == null)
				{
					_v1 = [];
					return;
				}
				else
				{
					_v1.push(temp);
				}
			}
			
			return;
		} // end function
		
		public function get v2():Array
		{
			return _v2;
		} // end function
		
		public function set v2(param1:Array):void
		{
			_v2 = null;
			_v2 = new Array();
			for (var i:String in param1)
			{
				var temp:DeckModel = PlayerData.getInstance().returnDeckModelByDeckId(param1[i]);
				if (temp.cards == null)
				{
					_v2 = [];
					return;
				}
				else
				{
					_v2.push(temp);
				}
			}
			return;
		} // end function
		
		public function get v3():Array
		{
			return _v3;
		} // end function
		
		public function set v3(param1:Array):void
		{
			_v3 = null;
			_v3 = new Array();
			for (var i:String in param1)
			{
				
				var temp:DeckModel = PlayerData.getInstance().returnDeckModelByDeckId(param1[i]);
				if (temp.cards == null)
				{
					_v3 = [];
					return;
				}
				else
				{
					_v3.push(temp);
				}
			}
			return;
		} // end function
		
		public function get v4():Array
		{
			return _v4;
		} // end function
		
		public function set v4(param1:Array):void
		{
			_v4 = null;
			_v4 = new Array();
			for (var i:String in param1)
			{
				var temp:DeckModel = PlayerData.getInstance().returnDeckModelByDeckId(param1[i]);
				if (temp.cards == null)
				{
					_v4 = [];
					return;
				}
				else
				{
					_v4.push(temp);
				}
				
			}
			return;
		} // end function
		
		//--------------------------------------------------------
		public static function getInstance():DefenceModel
		{
			if (_defenecModel == null)
			{
				_defenecModel = new DefenceModel;
			}
			return _defenecModel;
		} // end function
	}

}