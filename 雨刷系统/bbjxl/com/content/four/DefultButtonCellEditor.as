package bbjxl.com.content.four{
	/**
	作者：被逼叫小乱
	
	www.bbjxl.com/Blog
	**/
	import org.aswing.AbstractCellEditor;
	import org.aswing.Component;
	import org.aswing.FocusManager;
	import org.aswing.JButton;
	import org.aswing.JComboBox;
	import org.aswing.event.AWEvent;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	public class DefultButtonCellEditor extends AbstractCellEditor{
		protected var jbutton:JButton;
		//===================================================================================================================//
		
		//===================================================================================================================//
		public function DefultButtonCellEditor() {
			super();
			setClickCountToStart(1);
		}//End Fun
		//--------------------------------------------------------------------------------------------------------------------//
		public function getButton():JButton{
		if(jbutton == null){
			jbutton = new JButton("删除");
		}
		return jbutton;
		}
		
		override public function getEditorComponent():Component{
			return getButton();
		}
		
		override public function getCellEditorValue():* {
			return getButton().getName();
			
		}
		
		/**
		 * Sets the value of this cell. 
		 * @param value the new value of this cell
		 */
		override protected function setCellEditorValue(value:*):void{
			//getButton().setSelectedItem(value);
		}
		
		public function toString():String{
			return "DefaultButtonCellEditor[]";
		}
		//===================================================================================================================//
	}
}