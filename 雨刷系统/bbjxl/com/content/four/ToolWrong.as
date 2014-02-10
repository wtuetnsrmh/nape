package bbjxl.com.content.four{
	/**
	作者：被逼叫小乱
	万用表使用错误扣分项表
	www.bbjxl.com/Blog
	**/
	import bbjxl.com.Gvar;
	import com.adobe.utils.ArrayUtil;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import org.aswing.JScrollPane;
	import org.aswing.JTable;
	import org.aswing.table.DefaultTableModel;
	import org.aswing.table.sorter.TableSorter;
	public class ToolWrong extends JScrollPane {
		protected var _gvar:Gvar = Gvar.getInstance();
		protected var _model:DefaultTableModel;
		protected var _table:JTable=new JTable();
		protected var _scoreArr:Array ;//分数数组
		public var _totalScore:Number=0;//总得分
		protected var rowData:Array;
		protected var _wrongV:uint;//万用表电压档测电阻错误次数
		protected var _wrongR:uint;//万用表电阻档测电压错误次数
		
		//===================================================================================================================//
		public function get model():DefaultTableModel {
			return _model;
			}
		//===================================================================================================================//
		public function ToolWrong() {
			init();
			_model.setAllCellEditable(false);
			CountTotalScore()
		}//End Fun
		//--------------------------------------------------------------------------------------------------------------------//
		private function init():void {
			creaTable();
			creaTableData();
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//生成表的数据
		private function creaTableData():void {
			var tempArr:Array = _gvar._UniversalErrorArr;
			for (var i:String in tempArr) {
				if (tempArr[i] == "万用表电压档测电阻") {
					_wrongV++;
					}else {
						_wrongR++;
						}
				}
			var worngNumArr:Array = new Array(_wrongV, _wrongR);//错误次数列数组
			
			_model.addColumn("错误次数", worngNumArr);
			
			_scoreArr = new Array(_wrongV * (-2), _wrongR * (-2));//错误分数
			_model.addColumn("扣 分", _scoreArr);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//生成表
		private function creaTable():void {
			rowData = new Array();
			rowData = [["万用表电压档测电阻"], ["万用表电阻档测电压"]];
			/*var _repairTypeArr:Array = ["万用表电压档测电阻"];
			rowData.push(_repairTypeArr);
			var _repairTypeArr1:Array = ["万用表电阻档测电压"];
			rowData.push(_repairTypeArr1);*/
			var column:Array = new Array();
			column = ["错误提示"];
			_model = (new DefaultTableModel()).initWithDataNames(rowData, column);
			var sorter:TableSorter = new TableSorter(_model);
			_table = new JTable(sorter);
			_table.setRowHeight(25);
			_table.setCellSelectionEnabled(false);
			_table.setConstraints("Center");
			_table.setAutoResizeMode(JTable.AUTO_RESIZE_SUBSEQUENT_COLUMNS);
			
			this.append(_table);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//计算总得分
		protected function CountTotalScore():void {
			for (var i:String in _scoreArr) {
				_totalScore += _scoreArr[i];
				}
			//最多扣-20分
			if (_totalScore < -20) {
				_totalScore = -20;
				}
			//_gvar._totalScoreArr.push(_totalScore);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		
		//===================================================================================================================//
	}
}