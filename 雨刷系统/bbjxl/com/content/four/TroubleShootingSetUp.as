package bbjxl.com.content.four{
	/**
	作者：被逼叫小乱
	故障排除与验证提交
	www.bbjxl.com/Blog
	**/
	import bbjxl.com.Gvar;
	import com.adobe.utils.ArrayUtil;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import org.aswing.ASFont;
	import org.aswing.JScrollPane;
	import org.aswing.JTable;
	import org.aswing.table.DefaultTableModel;
	import org.aswing.table.DefaultTextCell;
	import org.aswing.table.sorter.TableSorter;
	import org.aswing.table.TableCellFactory;
	public class TroubleShootingSetUp extends JScrollPane {
		protected var _gvar:Gvar = Gvar.getInstance();
		protected var _model:DefaultTableModel;
		protected var _table:JTable=new JTable();
		protected var _scoreArr:Array = new Array();//分数数组
		public var _totalScore:Number=0;//总得分
		protected var _repairType:String;//修复方式
		protected var rowData:Array;//行的数据
		//===================================================================================================================//
		public function get model():DefaultTableModel {
			return _model;
			}
		//===================================================================================================================//
		public function TroubleShootingSetUp(_value:String) {
			super();
			_repairType = _value;
			trace("_repairType="+_repairType)
			init();
			_model.setAllCellEditable(false);
			CountTotalScore()
		}//End Fun
		//--------------------------------------------------------------------------------------------------------------------//
		//计算总得分
		protected function CountTotalScore():void {
			for (var i:String in _scoreArr) {
				_totalScore += _scoreArr[i];
				}
			
			if (_totalScore > 25) {
				_totalScore = 25;
				}
			//_gvar._totalScoreArr.push(_totalScore);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		private function init():void {
			creaTable();
			creaRowData();
			_model.setData(rowData);
			
			_table.setAlignmentX(1);
			_table.setAlignmentY(1);
			
			/*var te:DefaultTextCell = new DefaultTextCell();
			te.setHorizontalAlignment(1);
			//te.setTableCellStatus(
			_table.getColumnAt(0).getCellFactory()*/
			/*_table.setFont(new ASFont("Tahoma", 12));
			_table.setForeground(new ASColor(0x000000, 1));//字的颜色*/
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//生成数据
		private function creaRowData():void {
			var rightReapairType:String = (_gvar.returnRVData(1).part.fault.(@faultid == _gvar._currentFaultId)).@repair;//正确的修复方式
			if(_repairType!=null){
				if (_repairType == rightReapairType) {
					_model.addColumn("得分", addColumnData(3));
					_scoreArr.push(3);//加三分
					}else {
						_model.addColumn("得分", addColumnData(0));//错了不给分
						}
			}else {
				_model.addColumn("得分", addColumnData(0));
				}
			
			_model.addColumn("正确答案", addColumnData(rightReapairType));//增加正确答案列
			
			_model.addColumn("故障排除确认判断", addColumnData("图中排除点击"));
			
			if (_gvar._repairFaultFlag) {
				//已在图中修复
				_model.addColumn("得分", addColumnData(20));
				_scoreArr.push(20);//加20分
				}else {
					_model.addColumn("得分", addColumnData(0));
					}
					
			_model.addColumn("正确答案", addColumnData(_gvar._currentFaultPartName_FaultId));//正确答案
			
			_model.addColumn("起动确认判断",addColumnData("打点火开关ST挡"));
			
			if (_gvar._repairedAndStart) {
				_model.addColumn("得分", addColumnData(2));
				_scoreArr.push(2);//加2分
				}else {
					_model.addColumn("得分", addColumnData(0));
					_model.addColumn("提 示", addColumnData("未排除故障"));
					}
			}
			
		//返回数据
		private function addColumnData(_value:*):Array {
			var temp:Array = new Array();
			temp.push(_value);
			return temp;
			
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//生成表
		private function creaTable():void {
			rowData = new Array();
			var _repairTypeArr:Array = new Array();
			if (_repairType != null) {
				_repairTypeArr.push(_repairType);
				}else {
					_repairTypeArr.push("未选择");
					}
			rowData.push(_repairTypeArr);
			
			var column:Array = new Array();
			column = ["故障排除方式选择"];//
			_model = (new DefaultTableModel()).initWithDataNames(rowData, column);
			var sorter:TableSorter = new TableSorter(_model);
			_table = new JTable(sorter);
			_table.setRowHeight(25);
			_table.setCellSelectionEnabled(false);
			_table.setAutoResizeMode(JTable.AUTO_RESIZE_SUBSEQUENT_COLUMNS);
			
			this.append(_table);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		
		//===================================================================================================================//
	}
}