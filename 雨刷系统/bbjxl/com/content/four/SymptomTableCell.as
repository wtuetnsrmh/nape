package bbjxl.com.content.four 
{
	import bbjxl.com.Gvar;
	import flash.events.Event;
	import org.aswing.JPanel;
	import org.aswing.event.AWEvent;
	import org.aswing.JButton;
	import org.aswing.JPanel;
	import org.aswing.table.TableCell;
	import org.aswing.*;
	
	/**
	 * ...
	 * @author www.bbjxl.com  被逼叫小乱
	 * 症状描述
	 */
	public class SymptomTableCell extends JPanel implements TableCell
	{
		
		protected var btn:JComboBox;
        private var _row:int = 0;
		
		private var _gvar:Gvar = Gvar.getInstance();
		
        public function SymptomTableCell() {
            super();
            setOpaque(false);
            this.setLayout(new BorderLayout());
			
			
        }
        public function getRowId():int {
			return _row;
			}
		
        public function setCellValue(value:*):void {
            var txt:String = value.toString();
			trace("txt=" + txt)
			if(btn==null){
            btn = new JComboBox();
			btn.setBackground(new ASColor(0xffffff, 0));
			btn.setMinimumWidth(100);
			btn.setListData(_gvar._currentSymptomsArr);
			//btn.setSelectedIndex(0);
            this.append(btn);
            btn.addSelectionListener(btnActionHandler);
			}
        }
        
        private function btnActionHandler(e:AWEvent):void
        {
            trace("btn.getSelectedIndex()=" + btn.getSelectedIndex());
			var tempEvent:SymptomPartTableCellSelectedEvent = new SymptomPartTableCellSelectedEvent(SymptomPartTableCellSelectedEvent.SYMPTOMCELLSELECTED);
			tempEvent.ad_id = btn.getSelectedIndex();
			dispatchEvent(tempEvent);
			remove(btn);
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