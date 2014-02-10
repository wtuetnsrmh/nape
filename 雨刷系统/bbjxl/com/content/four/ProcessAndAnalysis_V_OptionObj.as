package bbjxl.com.content.four 
{
	/**
	 * ...
	 * @author bbjxl
	 * 过程与分析中电压两个点的选项
	 */
	public class ProcessAndAnalysis_V_OptionObj
	{
		private var _id:int;//点IP
		private var _lable:String;//点的描述
		public function ProcessAndAnalysis_V_OptionObj(_value1:int,_value2:String) 
		{
			_id = _value1;
			_lable = _value2;
		}
		public function set id($name:int):void{
            this._id = $name;
             }
                
		public function get id():int{
			return this._id;
		}
		public function set lable($name:String):void{
			 this._lable = $name;
			}
                
		public function get lable():String{
			return this._lable;
		}
		//注意这里
		public function toString():String{
			return String(this._lable);
		}

	}

}