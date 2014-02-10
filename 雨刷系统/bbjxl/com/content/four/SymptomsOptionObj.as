package bbjxl.com.content.four 
{
	/**
	 * ...
	 * @author bbjxl
	 * 症状描述选项对象
	 */
	public class SymptomsOptionObj
	{
		private var _id:int;
		private var _lable:String;
		public function SymptomsOptionObj(_value1:int,_value2:String) 
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
			return this._lable;
		}

	}

}