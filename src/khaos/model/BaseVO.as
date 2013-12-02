package khaos.model
{
	
	

	public class BaseVO
	{
		/**
		 * 拷贝sourceObj的值到targetObj对象中
		 */
		/*public function copyValue(sourceObj:Object):void
		{
			var clzInfo:Object = ObjectUtil.getClassInfo(sourceObj);
			var props:Array = clzInfo["properties"];  
			for each(var q:QName in props)
			{
				if(this.hasOwnProperty(q.localName))
					this[q.localName] = sourceObj[q.localName];
			}
			
		}*/
		
		public function copyValue(sourceObj:Object):void
		{
			for (var p:String in sourceObj)
			{
				if (this.hasOwnProperty(p))
					this[p] = sourceObj[p];
			}
		}
	}
}