package khaos.utils
{
	import flash.utils.ByteArray;
	import flash.utils.IDataOutput;

	public class ByteArrayUtil
	{
		/*public static function writeString(outPut:IDataOutput, value:String):void
		{
			var temp:ByteArray = new ByteArray;
			temp.writeMultiByte(value, "UTF-8");
			
			outPut.writeInt(temp.position);
			outPut.writeMultiByte(value, "UTF-8");
		}*/
		
		public static function writeString(ba:ByteArray, value:String):void
		{
			var temp:ByteArray = new ByteArray;
			temp.writeMultiByte(value, "UTF-8");
			ba.writeInt(temp.position);
			ba.writeMultiByte(value, "UTF-8");
		}
		
		public static function readString(ba:ByteArray):String
		{
			var length:int = ba.readInt();
			return ba.readMultiByte(length, "UTF-8");
		}
		
		
		public static function readLong(data:ByteArray):Number
		{
			return data.readUnsignedInt() * Math.pow(2, 32) + data.readUnsignedInt();
		}
		
		public static function writeLong(data:ByteArray, number:Number):void
		{
			data.writeUnsignedInt(Math.floor(number / Math.pow(2, 32)));
			data.writeUnsignedInt(number % Math.pow(2, 32));
		}
	}
}