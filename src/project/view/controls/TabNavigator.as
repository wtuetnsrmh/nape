package project.view.controls
{
	import project.events.SMZTDataChangeEvent;
	import project.view.common.MyButton;
	import starling.events.Event;
	
	/**
	 * 分页导航控制
	 * @author bbjxl 2012
	 */
	public class TabNavigator extends starling.events.EventDispatcher
	{
		public static const TAB_CHANGER:String = "tab_change";
		private var _totalTab:Array;
		public var index:int = 0;//当前选中的分页ID
		
		public function TabNavigator()
		{
			
		}
		
		public function setTab(... arg):void
		{
			//_totalTab = new Array();
			_totalTab = arg;
			for (var i:int = 0; i < arg.length; i++)
			{
				(arg[i] as MyButton).clickEnable = true;
				(arg[i] as MyButton).onClick = onClickHandler;
			}
			_totalTab[0].setSelected = true;
		}
		//--------------------------------------------------------
		
		//--------------------------------------------------------
		/**
		 * 指定选哪个选项
		 * @param	e
		 */
		public function selectedByIndex(prama:int = 0):void {
			if (_totalTab[prama]) {
				resetNoSelected();
				_totalTab[prama].setSelected = true;
				dispatchEventWith(TAB_CHANGER, true, _totalTab[prama]);
				}
			}
		
		
		private function onClickHandler(e:Event):void
		{
			resetNoSelected();
			(e.currentTarget as MyButton).setSelected = true;
			dispatchEventWith(TAB_CHANGER, true, e.currentTarget);
		}
		
		private function resetNoSelected():void 
		{
			for (var i:String in _totalTab) {
				_totalTab[i].setSelected = false;
				}
		}
	
	}

}