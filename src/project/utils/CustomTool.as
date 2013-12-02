package project.utils
{
	/*
	 * 描述：自定义工具
	 * 生成随机数，用于保存FLASH获取的都是最新数据
	 */
	import flash.events.TimerEvent;
	import flash.geom.Matrix;
	import flash.geom.Point;
	import flash.utils.ByteArray;
	import flash.utils.Timer;
	
	import project.Cellcard.Card;
	
	import starling.core.Starling;
	import starling.display.DisplayObject;
	import starling.display.DisplayObjectContainer;
	import starling.display.MovieClip;
	import starling.filters.ColorMatrixFilter;
	
	public class CustomTool extends Object
	{
		
		public function CustomTool()
		{
			return;
		} // end function
		
		/**
		 * 深拷贝
		 * @param	source
		 * @return
		 */
		public static function clone(source:Object):Object
		{
			var r:ByteArray = new ByteArray();
			r.writeObject(source);
			r.position = 0;
			return (r.readObject());
		}
		
		/*获取字符串的字节数
		 * @ param1 字符串
		 * 中文字符两个字节
		 */
		public static function getStringLength(param1:String):uint
		{
			var _loc_2:ByteArray = new ByteArray();
			_loc_2.writeMultiByte(param1, "gb2312");
			return _loc_2.length;
		} // end function
		
		/*检查EMAIL格式
		 * @ param1 EMAIL
		 *
		 */
		public static function checkMail(param1:String):Boolean
		{
			var _loc_2:RegExp = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([\.]\w+)*""\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([\.]\w+)*/;
			return _loc_2.test(param1);
		} // end function
		
		/*生成随机数
		 *
		 */
		/*public static function getRadomToken():String
		{
			var _loc_1:String = MD5.hash(new Date().time.toString() + ModelLocator.getInstance().currentUId);
			var _loc_2:String = _loc_1.substr((_loc_1.length - 1), 1); //最后一位
			var _loc_3:int = parseInt(_loc_2, 16); //转成16进制
			_loc_1 = _loc_1.substring(0, (_loc_3 - 1)) + _loc_2 + _loc_1.substring(_loc_3);
			return _loc_1;
		} // end function*/
		
		/**
		 * //灰色滤镜
		 * @param	param1 要灰色的显示对象
		 * @param	param2 是否响应鼠标
		 * @param	param3 去掉滤镜
		 */
		public static function greyDisplayObject(param1:DisplayObjectContainer, param2:Boolean = false, param3:Boolean = true):void
		{
			/*var _loc_4:ColorMatrixFilter = new ColorMatrixFilter([0.3, 0.59, 0.11, 0, 0, 0.3, 0.59, 0.11, 0, 0, 0.3, 0.59, 0.11, 0, 0, 0, 0, 0, 1, 0]);
			if (param3)
			{
				param1.filters = [_loc_4];
				if (param2)
				{
					param1.touchable = false;
					if (param1.numChildren>0)
					{
						param1.mouseChildren = false;
					}
				}
			}
			else
			{
				param1.filters = [];
				if (param2)
				{
					param1.touchable = true;
					if (param1.numChildren>0)
					{
						param1.mouseChildren = true;
					}
				}
			}*/
			return;
		} // end function
		
		/**
		 * 先后执行两个方法
		 * @param	param1
		 * @param	param2
		 * @param	param3 间隔时间
		 */
		public static function sequenceQueue(param1:Function, param2:Function, param3:Number = 100):void
		{
			var t:Timer;
			var condition:Function = param1;
			var callback:Function = param2;
			var delay:Number = param3;
			if (condition())
			{
				callback();
			}
			else
			{
				t = new Timer(delay);
				t.addEventListener(TimerEvent.TIMER, function(event:TimerEvent)
					{
						if (condition())
						{
							t.removeEventListener(TimerEvent.TIMER, arguments.callee);
							Timer(event.target).stop();
							callback();
						}
						return;
					} // end function
					);
				t.start();
			}
			return;
		} // end function
		
		/**
		 * 把数字转成四位数0001,0002
		 * @param	param1
		 * @param	param2
		 */
		public static function turn000Num(value:int, maxLen:int = 4):String
		{
			
			var len:int = String(value).length;
			var b:String = String(value);
			if (len < maxLen)
			{
				for (var i:uint = 0; i < (maxLen - len); i++)
				{
					b = "0" + b;
				}
			}
			return b;
		}
		
		/**
		 * 去空格
		 * @param	param1
		 * @param	param2
		 */
		public static function trimStr(str:String):String
		{
			var _str:String = str;
			while (_str.substr(0, 1) == " ")
			{
				_str = _str.substr(1);
			}
			while (_str.substr(-1, 1) == " ")
			{
				_str = _str.substr(0, _str.length - 1);
			}
			return _str;
		}
		
		/**
		 * 延迟执行
		 * @param	param1 延迟时间（毫秒）
		 * @param	param2 回调方法
		 */
		public static function delayRun(param1:Number, param2:Function):void
		{
			Main.mStarling.juggler.delayCall(param2, param1);
			/*var timer:Timer;
			var delay:Number = param1;
			var func:Function = param2;
			timer = new Timer(delay * 1000, 1);
			timer.addEventListener(TimerEvent.TIMER, func);
			timer.addEventListener(TimerEvent.TIMER_COMPLETE, function():void
				{
					timer.removeEventListener(TimerEvent.TIMER, func);
					timer.removeEventListener(TimerEvent.TIMER_COMPLETE, arguments.callee);
					timer = null;
					return;
				} // end function
				);
			timer.start();*/
			return;
		} // end function
		
		/**
		 * 称除指定容器中的对象
		 */
		public static function MyRemoveChild(param:DisplayObjectContainer, param2:DisplayObject):void
		{
			if (param.contains(param2))
			{
				if(param2 is MovieClip){
					param2.stop();
					Starling.juggler.remove(param2);
				}
				
				param2.removeFromParent(true);
			}
			else
			{
				trace("－－－－－－－－－提供的 DisplayObject 不是调用者的子级－－－－－－－－－－－－－－")
			}
		}
	
		/**
		 * 从vector中移除指定的卡
		 * @param	arr
		 * @param	value
		 */
		public static function removeValueFromVector(arr:Vector.<Card>, value:Card):void
		{
			var len:uint = arr.length-1;
			
			for(var i:int = len; i > -1; i--)
			{
				if(arr[i]=== value)
				{
					arr.splice(i, 1);
				}
			}					
		}
		
	}
}
