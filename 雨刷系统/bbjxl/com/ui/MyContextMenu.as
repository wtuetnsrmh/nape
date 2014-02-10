package bbjxl.com.ui
{
	import flash.events.*;
	import flash.net.*;
	import flash.ui.*;

	public class MyContextMenu extends Object
	{

		public function MyContextMenu()
		{
			return;
		}// end function

		public static function getMyContextNenu():ContextMenu
		{
			var selectedHandler:Function;
			selectedHandler = function (event:ContextMenuEvent) : void
			            {
			                navigateToURL(new URLRequest("http://www.bbjxl.com"), "_target");
			                return;
			            };// end function
			var contextMenu:* = new ContextMenu();
			contextMenu.hideBuiltInItems();
			var contextMenuItem:* = new ContextMenuItem("v1.0");
			contextMenuItem.addEventListener(ContextMenuEvent.MENU_ITEM_SELECT, selectedHandler);
			contextMenu.customItems = [contextMenuItem];
			return contextMenu;
		}// end function

	}
}