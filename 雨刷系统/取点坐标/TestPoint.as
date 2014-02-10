package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	public class TestPoint extends MovieClip {
		
		public var _print:String="";
		public function TestPoint() {
			// constructor code
			for(var i:int=0;i<this.numChildren-1;i++){
				if(this.getChildAt(i) is Point){
					(this.getChildAt(i) as Point).addEventListener(MouseEvent.CLICK,clickHandler);
					}
				}
		}
		private function clickHandler(e:MouseEvent):void{
			_print+="{x:"+e.target.x+",y:"+e.target.y+"},";
			trace(_print);
			var temp:Array=_print.split("}");
			trace(temp.length)
			}
	}
	
}
