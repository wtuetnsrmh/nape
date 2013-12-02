package project.model.cultivation
{
	import project.config.ErrorZhCn;
	import project.events.SMZTDataChangeEvent;
	import project.model.data.DataModel;
	import project.model.data.PlayerData;
	import project.model.item.CardModel;
	import project.view.module.cell.Card;
	
	/**
	 * 修炼馆模型
	 * @author bbjxl 2013
	 */
	public class CultivationModel extends DataModel
	{
		//----------------------容器---------------------------------
		
		//-----------------------UI---------------------------------
		
		//-----------------------数据---------------------------------
		private var _slods:Vector.<CardModel>; //兵包括英雄
		private var _mit:Vector.<CardModel>; //卷轴
		private var _tal:Vector.<CardModel>; //装备
		//-----------------------事件--------------------------------
		
		private static var _cultivation:CultivationModel;
		
		public function CultivationModel()
		{
			if (_cultivation != null)
			{
				throw Error(new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE));
			}
		}
		
		/**
		 * 更新可进阶卡
		 * @return
		 */
		public function updata():void
		{
			_slods = null;
			_mit = null;
			_tal = null;
			_slods = new Vector.<CardModel>();
			_mit = new Vector.<CardModel>();
			_tal = new Vector.<CardModel>();
			var temp:Vector.<CardModel> = PlayerData.getInstance().canUseCards;
			for (var i:String in temp)
			{
				if (temp[i].starCard != -1 && temp[i].number > 0)
				{
					//可以升阶且数量大于０
					if (temp[i]._Class == 12 && temp[i].starCard!=0)
					{
						//装备卡
						_tal.push(temp[i]);
						
					}
					else if (temp[i]._Class == 13 && temp[i].starCard!=0)
					{
						//卷轴
						_mit.push(temp[i]);
						
					}
					else if(temp[i].starCard!=0)
					{
						//兵
						_slods.push(temp[i]);
					}
				}
			}
			temp = null;
			dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
		}
		
		/**
		 * 根据ID从所有可用的兵卡数组中找出所要的卡数据模型
		 */
		public function findCardFormTotalCanUseSoldierById(parma:int):CardModel {
			for (var i:String in _slods) {
				if (_slods[i].id == parma) {
					return _slods[i];
					}
				}
				return null;
			}
		/**
		 * 根据ID从所有可用的神通卡数组中找出所要的卡数据模型
		 */
		public function findCardFormTotalCanUseMitacById(parma:int):CardModel {
			for (var i:String in mit) {
				if (mit[i].id == parma) {
					return mit[i];
					}
				}
				return null;
			}
		/**
		 * 根据ID从所有可用的法宝卡数组中找出所要的卡数据模型
		 */
		public function findCardFormTotalCanUseTalismaById(parma:int):CardModel {
			for (var i:String in tal) {
				if (tal[i].id == parma) {
					return tal[i];
					}
				}
				return null;
			}
		
		public static function getInstance():CultivationModel
		{
			if (_cultivation == null)
			{
				_cultivation = new CultivationModel;
			}
			return _cultivation;
		} // end function
		
		public function get slods():Vector.<CardModel> 
		{
			return _slods;
		}
		
		public function set slods(value:Vector.<CardModel>):void 
		{
			_slods = value;
		}
		
		public function get mit():Vector.<CardModel> 
		{
			return _mit;
		}
		
		public function set mit(value:Vector.<CardModel>):void 
		{
			_mit = value;
		}
		
		public function get tal():Vector.<CardModel> 
		{
			return _tal;
		}
		
		public function set tal(value:Vector.<CardModel>):void 
		{
			_tal = value;
		}
	
	}

}