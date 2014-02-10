package bbjxl.com.content.four 
{
	import org.aswing.table.TableCell;
	/**
	 * ...
	 * @author www.bbjxl.com  被逼叫小乱
	 */
	import org.aswing.*;
	public class OperateCell extends JPanel implements TableCell
	{
		
	private var _btnPanel:JPanel;   
    private var _editBtn:JButton;   
       
    protected var _value:*;   
    private var _table:JTable;   
       
    private var _selectRow:int;   
       
       
    public function OperateCell()   
    {   
        initUI();   
    }   
       
    private function initUI():void{   
           
        _btnPanel = new JPanel(new FlowLayout(2,5,1));   
           
        _editBtn = new JButton("删除");   
           
        _btnPanel.appendAll(_editBtn);   
           
        this.setLayout(new BorderLayout());   
           
        this.append(_btnPanel, BorderLayout.CENTER);   
           
    }    
       
       
       
       
    public function setCellValue($value:*):void{   
           
    }   
       
       
    public function getCellValue():*{   
        return _value;   
    }   
       
       
       
    public function setTableCellStatus(table:JTable, isSelected:Boolean, row:int, column:int):void{   
           
           
    }   
       
       
    public function getCellComponent() : Component {   
        return this;   
    }   
       
		
	}

}