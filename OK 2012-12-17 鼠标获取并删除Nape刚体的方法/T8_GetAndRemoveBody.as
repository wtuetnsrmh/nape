package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import nape.phys.BodyList;
	
	import nape.constraint.PivotJoint;
	import nape.geom.Vec2;
	import nape.phys.Body;
	import nape.phys.BodyType;
	
	[SWF(frameRate="60",width=550,height=400,backgroundColor="0xCCCCCC")]
	
	public class T8_GetAndRemoveBody extends AbstractNapeTest
	{
		private var hand:PivotJoint;
		
		public function T8_GetAndRemoveBody()
		{
			super();
			createWall();
			createBodies();
			
			//添加上方的按钮
			var ui:UISetting = new UISetting(this, function (e:Event):void {
				//按钮点击事件处理函数
				napeWorld.bodies.clear();
				createWall();
				createBodies();
			});
		}

		private function createBodies():void
		{
			//创建多个刚体，按照游戏中的样式摆放
			createBox(275,335,30,30,BodyType.DYNAMIC);
			createBox(365,335,30,30,BodyType.DYNAMIC);
			createBox(320,305,120,30,BodyType.DYNAMIC);
			createBox(320,275,60,30,BodyType.DYNAMIC);
			createBox(305,245,90,30,BodyType.DYNAMIC);
			createBox(320,200,120,60,BodyType.DYNAMIC);
		}
		override protected function mouseEventHanlder(event:MouseEvent):void
		{
			if (event.type == MouseEvent.MOUSE_DOWN) {
				//获取鼠标位置向量
				var mp:Vec2=new Vec2(mouseX,mouseY);
				//获取鼠标下方的body刚体
				var bodiesList:BodyList = napeWorld.bodiesUnderPoint(mp);
				//遍历每个刚体
				bodiesList.foreach(
					function( bb:Body):void{
						if(bb.isDynamic()){
							//如果刚体是非静止的，则删除刚体
							napeWorld.bodies.remove(bb);
						}
					}
				);
			}
		}
	}
}
import com.bit101.components.PushButton;

import flash.display.DisplayObjectContainer;

class UISetting{
	public function UISetting(container:DisplayObjectContainer,handler:Function):void{
		var btn:PushButton=new PushButton(container,300,10,"ReStart",handler);
	}
}