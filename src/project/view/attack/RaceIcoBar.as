package project.view.attack 
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.filters.GlowFilter;
	/**
	 * 种族图标槽
	 * @author bbjxl 2012
	 */
	public class RaceIcoBar extends Sprite 
	{
		private var _ico:MovieClip;
		private var _bg:MovieClip;
		private var _deckId:int = -1;//卡组ID
		public function RaceIcoBar() 
		{
			_ico = this["ico"] as MovieClip;
			_ico.visible = false;
			_bg = this["bg"] as MovieClip;
		}
		public function selected(arg:Boolean=true):void {
			if (arg) {
				_bg.filters=[new GlowFilter(0xFFFF99, 1, 3, 3)];
				}else {
					_bg.filters = null;
					}
			}
		/**
		 * 设置图标
		 * @param	arg
		 */
		public function setIco(arg:int = 1):void {
			_ico.visible = true;
			_ico.gotoAndStop(arg);
			}
		public function setBg(arg:int = 1):void {
			_bg.gotoAndStop(arg);
			}
		public function showPVP():void {
			_ico.visible = false;
			_bg.visible = true;
			_bg.gotoAndStop(1);
			}
		public function onlyShowBarBg():void {
			_ico.visible = false;
			_bg.visible = true;
			_bg.gotoAndStop(2);
			}
		public function get deckId() : int
		 {
		   return _deckId;
		}// end function
		
		public function set deckId(param1:int) : void
		{
			if (param1 == -1) {
				//还原
				onlyShowBarBg();
				}
		  _deckId= param1;
		  return;
		}// end function
	}

}