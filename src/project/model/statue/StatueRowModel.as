package project.model.statue
{
	import project.model.data.DataModel;
	
	/**
	 * 每行模型
	 * 标识符	类型	可为空	说明
	   ID	属性	否	活跃任务的编号
	   Title	属性	否	任务标题
	   Max	属性	否	每日完成次数上限
	   Point	属性	否	每次完成获得的积分
	   type 0:没有前往按钮，大于０时为相应前往的标志ＩＤ
	
	 * @author bbjxl 2013
	 */
	public class StatueRowModel extends DataModel
	{
		private var _id:int;
		private var _title:String;
		private var _max:int;
		private var _point:int;
		private var _type:int=0;
		private var _finish:Boolean = false;//是否已经完成此活跃
		
		private var _progress:int = 0;//完成进度
		private var _activity:int = 0;//获得的活跃度
		
		public function StatueRowModel(value:XML):void
		{
			//<Objective ID="1" Title="每日登录（首次登录+20分）" Max="1" Point="5" />
			
			_id = int(value.@ID);
			_title = value.@Title;
			_max = int(value.@Max);
			_point = int(value.@Point);
			_type = int(value.@Action);
		}
		
		public function get id():int 
		{
			return _id;
		}
		
		public function set id(value:int):void 
		{
			_id = value;
		}
		
		public function get title():String 
		{
			return _title;
		}
		
		public function set title(value:String):void 
		{
			_title = value;
		}
		
		public function get max():int 
		{
			return _max;
		}
		
		public function set max(value:int):void 
		{
			_max = value;
		}
		
		public function get point():int 
		{
			return _point;
		}
		
		public function set point(value:int):void 
		{
			_point = value;
		}
		
		public function get finish():Boolean 
		{
			return _finish;
		}
		
		public function set finish(value:Boolean):void 
		{
			_finish = value;
		}
		
		public function get progress():int 
		{
			return _progress;
		}
		
		public function set progress(value:int):void 
		{
			if(!value){return}
			_progress = value;
			_activity = _progress * _point;
			//如果当前项活跃度已经完成则不可用前往
			if (_progress < _max) {
				_finish = false;
				}else {
					_finish = true;
					}
		}
		
		public function get type():int 
		{
			return _type;
		}
		
		public function set type(value:int):void 
		{
			_type = value;
		}
		
		public function get activity():int 
		{
			return _activity;
		}
		
		public function set activity(value:int):void 
		{
			_activity = value;
		}
	
	}

}