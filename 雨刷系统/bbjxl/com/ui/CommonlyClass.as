package bbjxl.com.ui
{
	//常用类
	import flash.events.*;
	import flash.net.*;
	import flash.ui.*;
	import flash.display.DisplayObjectContainer;
	import flash.display.DisplayObject;

	public class CommonlyClass extends Object
	{

		public function CommonlyClass()
		{
			return;
		}// end function

		//输出数组
		public static function ouputArr(_value:Array):void{
			for(var i:uint=0;i<_value.length;i++){
				trace(_value[i].name)
				
				}
			}
		//--------------------------------------------------------------------------------------------------------------------//
		public static function DateTodate(date:Date):String
		{
			return date.getFullYear()+"-"+ (date.getMonth()+1) + "-" + date.getDate()+" "+date.getHours()+":"+date.getMinutes()+":"+date.getSeconds();
		}
		//--------------------------------------------------------------------------------------------------------------------//
		//===================================================================================================================//
		
		
		//去掉容器中的所有对象
		public static function cleaall(thisContent:DisplayObjectContainer):void
		{
			try
			{
				while (true)
				{
					thisContent.removeChildAt(thisContent.numChildren-1);
				}
			}
			catch (e:Error)
			{
				//  trace("全部删除！");
			}
		}
		//--------------------------------------------------------------------------------------------------------------------//
		public static function clearContainer(sp:DisplayObjectContainer):void{
    	  for(var i:int=sp.numChildren-1;i>=0;i--){
            sp.removeChildAt(0);
     	  }
		}
		//--------------------------------------------------------------------------------------------------------------------//
		//随机排序数组
		public static function taxis(element1:*,element2:*):int{
			var num:Number=Math.random();
			if(num<0.5){
 			  return -1;
			}else{
 			  return 1;
			}
			}

	}
}
