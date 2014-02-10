package bbjxl.com.display{
	/**
	作者：被逼叫小乱
	www.bbjxl.com/Blog
	万能表的测试笔
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.display.Shape;
	import flash.geom.Point;
	import flash.events.*;
	public class Document extends Sprite {
		public static var TAILHIT:String = "tailhit";//笔尾碰到
		//private var _DocumentSheng:DocumentSheng=new DocumentSheng();
		public var headPoint:Point= new Point();//笔头的点
		public var TailPoint:Point= new Point();//笔尾的点
		private var headSp:Sprite=new Sprite();//笔头
		private var TailSp:Sprite=new Sprite();//笔尾
		private var Hchild:Shape = new Shape();
		private var Tchild:Shape = new Shape();
		private var pointRadius:uint=3;//点的半径
		private var bs:MovieClip=new MovieClip();//笔身
		
		public function get _TailSp():Sprite {
			return TailSp;
		}
		public function set _TailSp(setValue:Sprite):void {
			TailSp = setValue;
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
		public function Document() {
			//addChild(_DocumentSheng);
			this.buttonMode=true;
			creaShap();
		}//End Fun
		//笔头接触到针脚
		public function hitPin():void{
			var rota:Number=30*Math.PI/180;
			var y2:Number=(-bs.height);
			//trace(y2)
			var x2:Number=0;
			var y1:Number=0;
			var x1:Number=0;
			this.rotation=30;
			TailPoint.x=67;//Math.pow(Math.sin(rota),2)*Math.abs(y2-y1)*Math.tan(rota);
			
			TailPoint.y=-122;//y1-TailPoint.x*Math.tan(rota)+y2;
			}
		//笔头没接触到
		public function resetDocument():void{
			this.rotation=0;
			TailPoint.x=0;
			TailPoint.y=-(this.getChildByName("bi_mc") as MovieClip).height;
			}
		private function creaShap():void{
			//建立图形
			bs=(this.getChildByName("bi_mc") as MovieClip);
			
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
			TailSp.y=-bs.height;
			headPoint=new Point(headSp.x,headSp.y);
			TailPoint=new Point(TailSp.x,TailSp.y);
			addChild(headSp);
			addChild(TailSp);
			}
	}
}