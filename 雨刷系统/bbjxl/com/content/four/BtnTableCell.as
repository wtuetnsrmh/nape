package bbjxl.com.content.four 
{
	import flash.events.Event;
	import org.aswing.event.AWEvent;
	import org.aswing.JButton;
	import org.aswing.JPanel;
	import org.aswing.table.TableCell;
	import org.aswing.*;
	
	/**
	 * ...
	 * @author www.bbjxl.com  被逼叫小乱
	 */
	public class BtnTableCell extends JPanel implements TableCell
    {
		public static const DELETEROWEVENT:String = "deleterowevent";
        protected var btn:JButton;
        private var _row:int = 0;
        public function BtnTableCell() {
            super();
            setOpaque(false);
            this.setLayout(new CenterLayout());
        }
        
        public function setCellValue(value:*):void {
            var txt:String = value.toString();
            
            btn = new JButton(txt);
            btn.buttonMode = true;
            this.append(btn);
            btn.addActionListener(btnActionHandler);
        }
        
        private function btnActionHandler(e:AWEvent):void
        {
            if (btn.getText() == "删除") {
                //CartManager(Singleton.getInstance(CartManager)).removeRow(_row);
				trace("删除k")
				dispatchEvent(new Event(DELETEROWEVENT));
            }
            else {
                trace("重新定制" + _row);
            }
        }
        
        public function getCellValue():* {
            return btn;
        }

        public function setTableCellStatus(table : JTable, isSelected : Boolean, row : int, column : int) : void {
            _row = row;
        }
        
        public function getCellComponent():Component {
            return this;
        }
    }

}