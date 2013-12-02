package project.base 
{
	import flash.display.DisplayObjectContainer;
	import flash.geom.Point;
	import starling.display.DisplayObject;
	import starling.display.Sprite;
	
	/**
	 * 所有元件基类
	 * @author bbjxl 2013
	 */
	public class BaseSprite extends Sprite 
	{
		
		public function BaseSprite() 
		{
			
			 return;
		}
		
		
		
		 public function setLocation(param1:Number, param2:Number) : void
        {
            this.x = param1;
            this.y = param2;
            return;
        }// end function

        protected function moveToPoint(param1:Point) : void
        {
            this.setLocation(param1.x, param1.y);
            return;
        }// end function

        protected function setSize(param1:Number, param2:Number) : void
        {
            this.width = param1;
            this.height = param2;
            return;
        }// end function

        protected function setScale(param1:Number, param2:Number) : void
        {
            this.scaleX = param1;
            this.scaleY = param2;
            return;
        }// end function

       
		
		
	}

}