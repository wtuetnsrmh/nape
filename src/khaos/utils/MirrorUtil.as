package khaos.utils
{
	import flash.display.BitmapData;
	import flash.geom.Matrix;

	public class MirrorUtil
	{
		private static function getMatrix(srcData:BitmapData, rotation:int, x:Number, y:Number) : Matrix {
			if (rotation % 90 != 0)
				throw new ArgumentError(rotation + " is not a right number for rotation!");
			var rotateMatrix:Matrix = new Matrix;
			rotateMatrix.a = 1 - Math.floor((90 + rotation) / 180) % 2 * 2;
			rotateMatrix.d = 1 - Math.floor(rotation / 180) % 2 * 2;
			rotateMatrix.b = rotateMatrix.c = 0;
			rotateMatrix.tx = rotateMatrix.a > 0 ? 0 : srcData.width;
			rotateMatrix.ty = rotateMatrix.d > 0 ? 0 : srcData.height;
			rotateMatrix.tx += x;
			rotateMatrix.ty += y;
			return rotateMatrix;
		}
		
		public static function getMirror(src:BitmapData, angle:int):BitmapData{
			var bitmapData:BitmapData 
			try{
				bitmapData = new BitmapData(src.width, src.height, true, 0);
				bitmapData.draw(src, getMatrix(src, angle, 0, 0) );
			}
			catch(e:Error){
				trace(e.message);
				trace(1);
				
			}
			finally{
				return bitmapData;
			}
		}
	}
}