package project.model.newBie 
{
	import project.model.data.DataModel;
	
	/**
	 * 新手结点模型
	 * @author bbjxl 2013
	 */
	public class NewBieModel extends DataModel 
	{
		private var _index:int;//在所有步队列中的索引
		private var _modelId:int;//所属模块ＩＤ
		private var _levelId:int;//所属子阶段
		private var _step:int;//帧数
		private var _stepId:int;//步数ＩＤ(唯一且累加，与服务端的记录一至)
		private var _levelClassName:String;//引用的库中ＵＩ类名
		
		public function NewBieModel() 
		{
			
		}
		
		public function get index():int 
		{
			return _index;
		}
		
		public function set index(value:int):void 
		{
			_index = value;
		}
		
		public function get modelId():int 
		{
			return _modelId;
		}
		
		public function set modelId(value:int):void 
		{
			_modelId = value;
		}
		
		public function get levelId():int 
		{
			return _levelId;
		}
		
		public function set levelId(value:int):void 
		{
			_levelId = value;
		}
		
		public function get step():int 
		{
			return _step;
		}
		
		public function set step(value:int):void 
		{
			_step = value;
		}
		
		public function get stepId():int 
		{
			return _stepId;
		}
		
		public function set stepId(value:int):void 
		{
			_stepId = value;
		}
		
		public function get levelClassName():String 
		{
			return _levelClassName;
		}
		
		public function set levelClassName(value:String):void 
		{
			_levelClassName = value;
		}
		
	}

}