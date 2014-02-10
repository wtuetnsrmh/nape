package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	public class Point extends MovieClip {
		
		public var _print:String="";
		public function Point() {
			// constructor code
			//this.addEventListener(MouseEvent.CLICK,clickHandler);
		}
		private function clickHandler(e:MouseEvent):void{
			_print="{x:"+this.x+",y:"+this.y+"}";
			trace(_print)
			}
	}
	
}
