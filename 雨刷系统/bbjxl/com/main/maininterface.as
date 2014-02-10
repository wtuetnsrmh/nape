package {
	/**
	作者：被逼叫小乱
	主界面（功能选择）
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	public class maininterface extends Sprite {
		public static var IDENTIFICATIONCLICK:String = "identificationclick";
		public static var ANALYSISCLICK:String = "analysisclick";
		public static var DETECTCLICK:String = "detectclick";
		public static var DIAGNOSISCLICK:String = "diagnosisclick";
		private var _Identification:MovieClip;
		private var _analysis:MovieClip;
		private var _Detect:MovieClip;
		private var _Diagnosis:MovieClip;
		public function maininterface() {
			_Identification=this.getChildByName("Identification");
			_analysis=this.getChildByName("analysis");
			_Detect=this.getChildByName("Detect");
			_Diagnosis=this.getChildByName("Diagnosis");
			_Identification.addEventListener(MouseEvent.CLICK,Identificationhandler);
			_analysis.addEventListener(MouseEvent.CLICK,analysishandler);
			_Detect.addEventListener(MouseEvent.CLICK,Detecthandler);
			_Diagnosis.addEventListener(MouseEvent.CLICK,Diagnosishandler);
		}//End Fun
		private function Identificationhandler(e:MouseEvent):void{
			dispatchEvent(new Event("identificationclick"));//广播
			}
		private function analysishandler(e:MouseEvent):void{
			dispatchEvent(new Event("analysisclick"));//广播
			}
		private function Detecthandler(e:MouseEvent):void{
			dispatchEvent(new Event("detectclick"));//广播
			}
		private function Diagnosishandler(e:MouseEvent):void{
			dispatchEvent(new Event("diagnosisclick"));//广播
			}
	}
}