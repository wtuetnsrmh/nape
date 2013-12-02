package khaos.utils
{
	import flash.utils.Dictionary;

	public class CollectionUtil
	{
		public function CollectionUtil()
		{
		}

		public static function clearDict(dict:Dictionary):void
		{
			if (dict == null)
			{
				return ;
			}
			for  (var item:Object in dict)
			{
				dict[item] = undefined;
				delete dict[item];
			}
		}

		public static function clearArray(array:Array):void
		{
			if (array == null)
			{
				return ;
			}
			array.splice(0, array.length);
		}
		
		public static function isDictEmpty(dict: Dictionary): Boolean {
			if(dict == null) return true;
			for  (var item:Object in dict)
			{
				return false;
			}
			return true;
		}
		
		public static function shuffle(list:Array):void
		{
			var n:int = list.length;
			for(var i:int=0; i<n; i++)
			{
				var index:int = int(Math.random()*1000) % (n - i) + i;
				if (index != i){
					var temp:Object = list[i];
					list[i] = list[index];
					list[index] = temp;
				}

			}
		}
	}
}