package khaos.utils
{
	import flash.utils.ByteArray;
	
	import khaos.utils.IToByteArray;

	//支持将int，Number，Array 和 继承 IToByteArray的对象序列化， 注意,如果传入100.0这样的数会写为int类型，100.1的会输出成double类型
	public class DataWriteHandler
	{
		private var byteArray:ByteArray;
		
		public function DataWriteHandler()
		{
			byteArray = new ByteArray();
		}
		
		public function getByteArray():ByteArray{
			return byteArray;
		}
		
		public function writeData(... args):DataWriteHandler{
			for(var i:int=0;i<args.length;i++){
				var obj:Object = args[i];
				if(obj is int){
					byteArray.writeInt(int(obj));
				}
				else if(obj is Number){
					byteArray.writeDouble(Number(obj));
				}
				else if(obj is String){
					ByteArrayUtil.writeString(byteArray,String(obj));
				}
				else if(obj is Array){
					var array:Array = obj as Array;
					byteArray.writeInt(array.length);
					for(var j:int=0;j<array.length;j++){
						writeData(array[j]);
					}
				}
				else if(obj is IToByteArray){
					var to:IToByteArray = IToByteArray(obj);
					var re:ByteArray = to.toByteArray();
					byteArray.writeBytes(re,0,re.length);
				}
				else if(obj is ByteArray){
					var ba:ByteArray = obj as ByteArray;
					byteArray.writeBytes(ba,0,ba.length);
				}
				else{
					trace("Unsupport Byte Array Type");
				}
			}
			return this;
		}
	}
}