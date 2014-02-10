package bbjxl.com.display{
	/**
	作者：被逼叫小乱
	www.bbjxl.com/Blog
	连接线
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.display.Shape;
	import flash.geom.Point;
	import flash.events.*;
	public class PowerLine extends Sprite {
		public var headPoint:Point=new Point();//笔头的点
		public var TailPoint:Point=new Point();//笔尾的点
		private var headSp:Sprite=new Sprite();//笔头
		private var TailSp:Sprite=new Sprite();//笔尾
		private var Hchild:Shape = new Shape();
		private var Tchild:Shape = new Shape();
		private var pointRadius:uint=1;//点的半径
		private var bs:MovieClip=new MovieClip();//钳子
		private var bitail_mc:Sprite=new Sprite();//钳子热区
		
		public function get _bs():MovieClip {
			return bs;
		}
		public function set _bs(setValue:MovieClip):void {
			bs = setValue;
		}
		
		public function get _headSp():Sprite {
			return headSp;
		}
		public function set _headSp(setValue:Sprite):void {
			headSp = setValue;
		}
		public function get _TailPoint():Point {
			return TailPoint;
		}
		public function set _TailPoint(setValue:Point):void {
			TailPoint = setValue;
		}
		public function get _headPoint():Point {
			return headPoint;
		}
		public function set _headPoint(setValue:Point):void {
			headPoint = setValue;
		}
		public function PowerLine() {
			//addChild(_DocumentSheng);
			//creaShap();
		}//End Fun
		
		//笔头接触到针脚
		public function hitPin():void{
			var rota:Number=30*Math.PI/180;
			
			this.rotation=30;
			bs.gotoAndStop(2);
			TailPoint.x=-8;//Math.pow(Math.sin(rota),2)*Math.abs(y2-y1)*Math.tan(rota);
			
			TailPoint.y=17;//y1-TailPoint.x*Math.tan(rota)+y2;
			}
		//笔头没接触到
		public function resetDocument():void{
			this.rotation=0;
			TailPoint.x=0;
			TailPoint.y=13;
			bs.gotoAndStop(1);
			}
		public function creaShap():void{
			//建立图形
			//bs=(this.getChildByName("bi_mc") as MovieClip);
			addChild(bs);
			Hchild.graphics.lineStyle(1,0x00ffff,0);
			Hchild.graphics.beginFill(0xff0000,0);
			Hchild.graphics.drawCircle(0,0,pointRadius);
			Hchild.graphics.endFill();
			headSp.addChild(Hchild);
			Tchild.graphics.lineStyle(1,0x00ffff,0);
			Tchild.graphics.beginFill(0xff0000,0);
			Tchild.graphics.drawCircle(0,0,pointRadius);
			Tchild.graphics.endFill();
			TailSp.addChild(Tchild);
			headSp.x=0;
			headSp.y=0;
			TailSp.x=0;
			TailSp.y=13;
			headPoint=new Point(headSp.x,headSp.y);
			TailPoint=new Point(TailSp.x,TailSp.y);
			addChild(headSp);
			addChild(TailSp);
			}
	}
}