package bbjxl.com.ui 
{
	import flash.display.MovieClip;
	import flash.display.Shape;
	import flash.events.Event;
	import bbjxl.com.Gvar;
	/**
	 * ...
	 * @author bbjxl
		www.bbjxl.com
	 */
	public class MyLoading extends MovieClip 
	{
		
		public function MyLoading() 
		{
			if (stage) init();
			else
			this.addEventListener(Event.ADDED_TO_STAGE, addedToStage);
		}
		private function addedToStage(e:Event):void {
			this.removeEventListener(Event.ADDED_TO_STAGE, addedToStage);
			init();
			}
			
		//------------------------------------------------------
		private function init():void {
			var temp:MovieClip = this.getChildAt(0) as MovieClip;
			if (temp) {
				temp.x = Gvar.STAGE_X - temp.width >> 1;
				temp.y = Gvar.STAGE_Y - temp.height >> 1;
				}
			
			var _mask:Shape = new Shape();
			_mask.graphics.lineStyle(1, 0x000000, 0);
			_mask.graphics.beginFill(0x000000, .5);
			_mask.graphics.drawRect(0, 0, 1003, 752);
			_mask.graphics.endFill();
			addChildAt(_mask,0);
			
			}
			
		//------------------------------------------------------
		public function dispose():void {
			while (this.numChildren > 0) {
				removeChildAt(0);
				}
			if (parent) {
				this.parent.removeChild(this);
				}
			}
		//------------------------------------------------------
		public function show():void {
			if (this.parent) {
				this.parent.addChild(this);
				}
			}
		
	}

}