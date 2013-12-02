package project.model.training
{
	/**
	 * 战争学院数 槽 模型
	 * @author bbjxl 2013
	 */
	import project.events.SMZTDataChangeEvent;
	import project.model.data.User;
	import project.model.item.IModel;
	
	import project.model.data.DataModel;
	
	public class TrainingSlotModel extends DataModel implements IModel
	{
		//----------------------容器---------------------------------
		
		//-----------------------UI---------------------------------
		
		//-----------------------数据---------------------------------
		private var _user:User;
		private var _heroes:Array;//卡组中的英雄卡
		
		//-----------------------事件--------------------------------
		
		public function TrainingSlotModel()
		{
			
		}
		public function setData(param:Object):void {
			if (_user) {
				_user = null;
				}
			_user = new User(param["user"]);
			_heroes = param["heroes"];
			}
		public function get user():User 
		{
			return _user;
		}
		
		public function set user(value:User):void 
		{
			_user = value;
		}
		
		public function get heroes():Array 
		{
			return _heroes;
		}
		
		public function set heroes(value:Array):void 
		{
			_heroes = value;
		}
		
		
		
		//--------------------------------------------------------
	}

}