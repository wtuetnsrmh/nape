package bbjxl.com.content.second {
	/**
	作者：被逼叫小乱
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	public class ZMyLine extends MyLine {
		/*private var headPoint:Point=new Point();//笔头的点
		private var TailPoint:Point=new Point();//笔尾的点*/
		public function ZMyLine() {
			super();
		}//End Fun
		
		override public function hitPin():void{
			//super.hitPin();
			var rota:Number=30*Math.PI/180;
			
			this.rotation=-30;
			TailPoint.x=-67;//Math.pow(Math.sin(rota),2)*Math.abs(y2-y1)*Math.tan(rota);
			
			TailPoint.y=-122;//y1-TailPoint.x*Math.tan(rota)+y2;
			
			
			}
	}
}