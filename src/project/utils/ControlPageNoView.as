package project.utils 
{
	import flash.display.DisplayObject;
	import flash.events.EventDispatcher;
	import flash.events.MouseEvent;
	import project.events.SMZTDataChangeEvent;
	/**
	 * 分页控制类（无ＶＩＥＷ层）
	 * @author bbjxl 2013
	 */
	public class ControlPageNoView extends EventDispatcher
	{
		private var _currentPage:int = 0;//当前页
		private var _maxPage:int = 0;//总页数
		private var _nextBt:DisplayObject;
		private var _prevBt:DisplayObject;
		private var _data:Array;//所有的数据
		private var _showNum:int = 4;//最多显示几个
		private var _currentShowArr:Array;//当前要显示的数据
		
		public function ControlPageNoView(next:DisplayObject,prev:DisplayObject) 
		{
			_nextBt = next;
			_prevBt = prev;
			_data = new Array();
			
		}
		public function initData(value:Array, showNum:int = 4):void {
			_data = new Array();
			if (value == null) {
				var tempEvent:SMZTDataChangeEvent = new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE);
				tempEvent.dataObject = null;
				dispatchEvent(tempEvent);
				//_prevBt.removeEventListener(MouseEvent.CLICK, prevClickHandler);
				//_nextBt.removeEventListener(MouseEvent.CLICK, nextClickHandler);
				return;
				} 
			_data = value;
			_showNum = showNum;
			_maxPage = Math.ceil(_data.length / showNum);
			currentPage = 0;
			_prevBt.addEventListener(MouseEvent.CLICK, prevClickHandler);
			_nextBt.addEventListener(MouseEvent.CLICK, nextClickHandler);
			}
			
		private function prevClickHandler(e:MouseEvent):void 
		{
			if (_currentPage >0) {
				currentPage--;
				}else {
					currentPage = 0;
					}
		}
			
		private function nextClickHandler(e:MouseEvent):void 
		{
			if ((_currentPage)<_maxPage-1) {
				currentPage++;
				}else {
					currentPage = _maxPage-1;
					}
		}
		
		public function get currentPage():int 
		{
			return _currentPage;
		}
		
		public function set currentPage(value:int):void 
		{
			_currentPage = value;
			_currentShowArr = null;
			_currentShowArr = new Array();
			if(_currentPage<_maxPage){
			var _len:int = ((_showNum * (_currentPage+1)) > _data.length)?_data.length:_showNum * (_currentPage+1);
			_currentShowArr = _data.slice(_currentPage * _showNum, _len);
			var tempEvent:SMZTDataChangeEvent = new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE);
			tempEvent.dataObject = _currentShowArr;
			dispatchEvent(tempEvent);
			}
		}
		
		public function get showNum():int 
		{
			return _showNum;
		}
		
		public function set showNum(value:int):void 
		{
			_showNum = value;
		}
		
		public function get currentShowArr():Array 
		{
			return _currentShowArr;
		}
		
		public function set currentShowArr(value:Array):void 
		{
			_currentShowArr = value;
		}
		
	}

}