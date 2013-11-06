package 
{
	import flash.display.Graphics;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	
	import nape.constraint.PivotJoint;
	import nape.geom.Vec2;
	import nape.phys.Body;
	import nape.phys.BodyType;
	import nape.phys.Material;
	import nape.shape.Circle;
	import nape.shape.Polygon;
	import nape.space.Space;
	import nape.util.BitmapDebug;
	
	[SWF( width="550", height="400", frameRate="60")]
	public class AbstractNapeTest extends Sprite
	{		
		
		protected var napeWorld:Space;
		protected var debug:BitmapDebug;
		
		protected var isCtrlDown:Boolean;
		protected var isShiftDown:Boolean;
		
		protected var mouseJoint:PivotJoint;
		
		public function AbstractNapeTest()
		{
			//1.创建Nape空间，重力，调试视图
			createNapeWorld();
			//2.添加事件
			setUpEvents();
			//添加FPS监视器
			addChild(new Stats());
		}
		//创房Nape世界
		protected function createNapeWorld():void
		{
			//定义Nape世界的重力
			var gravity:Vec2 = new Vec2( 0, 600 );
			napeWorld =new Space( gravity );
			
			//添加Nape调试试图
			debug= new BitmapDebug(550, 400, 0xD6D6D6);
			addChild(debug.display);
		}
		//添加事件侦听
		protected function setUpEvents():void
		{
			//侦听帧更新事件
			stage.addEventListener(Event.ENTER_FRAME, loop);
			//add listener to MouseEvent,like mouseDown or MouseUp
			stage.addEventListener(MouseEvent.MOUSE_DOWN, mouseEventHanlder);
			stage.addEventListener(MouseEvent.MOUSE_UP, mouseEventHanlder);
			//侦听键盘事件
			stage.addEventListener(KeyboardEvent.KEY_DOWN, keyBoardEventHanlder);
			stage.addEventListener(KeyboardEvent.KEY_UP, keyBoardEventHanlder);
		}
		
		protected function keyBoardEventHanlder(event:KeyboardEvent):void
		{
			//键盘事件处理函数
			//在键盘按下时，记录Ctrl和Shift键的状态
			isCtrlDown=event.ctrlKey;
			isShiftDown=event.shiftKey;
		}
		protected function mouseEventHanlder(event:MouseEvent):void
		{
			//鼠标事件处理函数
		}
		protected function loop(event:Event):void
		{
			//更新Nape世界
			napeWorld.step(1/60);
			debug.clear();
			debug.draw(napeWorld);
			debug.flush();
		}
		//创建矩形刚体，之前我们都已经讲过
		protected function createBox(posX:Number, posY:Number, w:Number, h:Number, type:BodyType):void{
			var box:Body = new Body(type, new Vec2(posX, posY));
			var boxShape:Polygon=new Polygon(Polygon.box(w,h), Material.glass());
			box.shapes.push(boxShape);
			box.space= napeWorld;
		}
		//创建指定边数的规则多边形刚体
		protected function createRegular(posX:Number, posY:Number, r:Number, rotation:Number, edgeCount:int, type:BodyType):void{
			var regular:Body = new Body(type, new Vec2(posX, posY));
			//通过Polygon预定义的regular方法绘制规则的边数位edgeCount的多边形刚体
			var regularShape:Polygon=new Polygon(Polygon.regular(r*2,r*2,edgeCount), Material.glass());
			regularShape.rotate(rotation);
			regular.shapes.push(regularShape);
			regular.space= napeWorld;
		}
		//创建圆形刚体
		protected function createCircle(posX:Number, posY:Number, radius:int, type:BodyType):void
		{
			var circle:Body=new Body(type, new Vec2(posX, posY));
			var shape:Circle=new Circle(radius,null,Material.glass());
			circle.shapes.push(shape);
			circle.space=napeWorld;
		}
		//绘制包围的静态刚体
		protected function createWall():void{
			createBox(stage.stageWidth/2, 0, stage.stageWidth, 10, BodyType.STATIC);
			createBox(stage.stageWidth/2, stage.stageHeight, stage.stageWidth, 10, BodyType.STATIC);
			createBox(0, stage.stageHeight/2, 10, stage.stageHeight, BodyType.STATIC);
			createBox(stage.stageWidth, stage.stageHeight/2, 10,stage.stageWidth, BodyType.STATIC);
		}
		
	}
}