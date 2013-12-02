package project.utils
{
    import flash.utils.*;

    public class HashMap extends Object
    {
        private var obj:Object;
	private var len:Number;
	
	
	public function HashMap()
	{
		obj = new Object();
		len = 0;
	}
	
	/**
	 * 将指定的值与此映射中的指定键相关联.
	 * @param key 与指定值相关联的键.
	 * @param value 与指定键相关联的值.
	 */
	public function put(key:String,value:Object):void
	{
		var temp = obj[key];
		if(temp == undefined)
		if(temp == undefined)
		{
			obj[key] = value;
			len++;
		}
	}
	
	/**
	 * 返回此映射中映射到指定键的值.
	 * @param key 与指定值相关联的键.
	 * @return 此映射中映射到指定值的键，如果此映射不包含该键的映射关系，则返回 null.
	 */
	public function get(key:String)
	{
		return obj[key];
	}
	
	public function clone() : HashMap
        {
           
            var _loc_1:* = new HashMap();
            for (var _loc_2:String in this.obj)
            {
                
                _loc_1.put(_loc_2, this.obj[_loc_2]);
            }
            return _loc_1;
        }// end function
		
		
	public function getValue(param1:String)
        {
            return this.get(param1);
        }// end function
	/**
	 * 从此映射中移除所有映射关系
	 */
	public function clear():void
	{
		for(var temp:String in obj)
		{
			delete obj[temp];
			obj[temp] = undefined;
		}
		len = 0;
	}
	
	/**
	 * 如果存在此键的映射关系，则将其从映射中移除
	 * @param key 从映射中移除其映射关系的键
	 * @return 以前与指定键相关联的值，如果没有该键的映射关系，则返回 null
	 */
	public function remove(key:String)
	{
		var temp = obj[key];
		if(temp != undefined)
		{
			delete obj[key];
			obj[key] = undefined;
			len--;
		}
		return temp;
	}
	
	/**
	 * 返回此映射中的键-值映射关系数.
	 * @return 此映射中的键-值映射关系的个数.
	 */
	public function size():Number
	{
		return len;
	}
	
	/**
	 * 如果此映射未包含键-值映射关系，则返回 true.
	 * @return 如果此映射未包含键-值映射关系，则返回 true.
	 */
	public function isEmpty():Boolean
	{
		if(len != 0)
		{
			return true;
		}
		return false;
	}
	
	/**
	 * 如果此映射包含指定键的映射关系，则返回 true.
	 * @param key  测试在此映射中是否存在的键.
	 * @return 如果此映射包含指定键的映射关系，则返回 true.
	 */
	public function containsKey(key:String):Boolean
	{
		var temp = obj[key];
		if(temp != undefined)
		{
			return true;
		}
		return false;
	}
	
	/**
	 * 如果该映射将一个或多个键映射到指定值，则返回 true.
	 * @param key 测试在该映射中是否存在的值
	 * @return 如果该映射将一个或多个键映射到指定值，则返回 true.
	 */
	public function containsValue(value:Object):Boolean
	{
		for(var temp:String in obj)
		{
			if(obj[temp] == value)
			{
				return true;
			}
		}
		return false;
	}
	
	/**
	 * 返回此映射中包含的所有值.
	 * @param key 从映射中移除其映射关系的键
	 * @return 以前与指定键相关联的值，如果没有该键的映射关系，则返回 null
	 */
	public function values():Array
	{
		if(len != 0)
		{
			var ary:Array = new Array;
			for(var temp:String in obj)
			{
				ary.push(obj[temp]);
			}
			return ary;
		}
		return undefined;
	}
	public function eachValue(param1:Function=null) : void
        {
            var _loc_2:*;
            for each (_loc_2 in this.obj)
            {
                
                param1(_loc_2);
            }
            return;
        }// end function
	/**
	 * 返回此映射中包含的所有key值.
	 * @return 包含所有key的数组
	 */
	public function keys():Array
	{
		if(len != 0)
		{
			var ary:Array = new Array;
			for(var temp:String in obj)
			{
				ary.push(temp);
			}
			return ary;
		}
		return undefined;
	}
	
	 public function eachKey(param1:Function=null) : void
        {
            var _loc_2:* = undefined;
            for each(_loc_2 in this.obj)
            {
                
                param1(_loc_2);
            }
            return;
        }// end function
		
	/**
	 * 返回此映射中包含的所有key值.
	 * @return 包含所有key的数组
	 */
	public function getKeyAndValues():Object
	{
		return obj;
	}
	
	public function toString() : String
        {
            var _loc_1:Array = this.keys();
            var _loc_2:Array = this.values();
            var _loc_3:String = "HashMap Content:\n";
            var _loc_4:int = 0;
            while (_loc_4 < _loc_1.length)
            {
                
                _loc_3 = _loc_3 + (_loc_1[_loc_4] + " -> " + _loc_2[_loc_4] + "\n");
                _loc_4++;
            }
            return _loc_3;
        }// end function

    }
}
