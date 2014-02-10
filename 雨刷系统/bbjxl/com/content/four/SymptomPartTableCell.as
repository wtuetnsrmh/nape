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
	 * 症状部件下拉框
	 */
	public class SymptomPartTableCell extends JPanel implements TableCell
	{
		
		protected var btn:JComboBox;
        private var _row:int = 0;
		
		private var _gvar:Gvar = Gvar.getInstance();
		
        public function SymptomPartTableCell() {
            super();
            setOpaque(false);
            this.setLayout(new BorderLayout());
			if(btn==null){
            btn = new JComboBox();
			btn.setMinimumWidth(100);
			btn.setListData(_gvar._currentSymptomsPartArr);
			//btn.setSelectedIndex(0);
            this.append(btn);
            btn.addSelectionListener(btnActionHandler);
			}
			
        }
        public function getRowId():int {
			return _row;
			}
		
        public function setCellValue(value:*):void {
            var txt:String = value.toString();
			trace("txt=" + txt)
			
        }
        
        private function btnActionHandler(e:AWEvent):void
        {
			setCellValue(btn.getSelectedItem());
            trace("btn.getSelectedIndex()=" + btn.getSelectedIndex());
			var tempEvent:SymptomPartTableCellSelectedEvent = new SymptomPartTableCellSelectedEvent(SymptomPartTableCellSelectedEvent.SYMPTOMPARTCELLSELECTED);
			tempEvent.ad_id = btn.getSelectedIndex();
			dispatchEvent(tempEvent);
			
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