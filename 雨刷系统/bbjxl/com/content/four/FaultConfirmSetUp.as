package bbjxl.com.content.four{
	/**
	作者：被逼叫小乱
	故障点确定提交
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
	public class FaultConfirmSetUp extends JScrollPane {
		protected var _gvar:Gvar = Gvar.getInstance();
		protected var _model:DefaultTableModel;
		protected var _table:JTable=new JTable();
		protected var _symptomsTableXml:XML = _gvar._symptomsTable;
		protected var _scoreArr:Array = new Array();//分数数组
		protected var _rightAns:Array = new Array();//正确答案数组
		public var _totalScore:Number=0;//总得分
		
		//===================================================================================================================//
		public function get model():DefaultTableModel {
			return _model;
			}
		//===================================================================================================================//
		public function FaultConfirmSetUp(_value:JTable,_modelValue:DefaultTableModel) {
			super();
			_table = _value;
			_model = new DefaultTableModel();
			_model =_modelValue;
			init();
			this.append(_table);
		}//End Fun
		//--------------------------------------------------------------------------------------------------------------------//
		protected function init():void {
			trace("init")
			//增加分数跟正确答案两列
			addScoreAndRigthAw();

			_model.addColumn("分数", _scoreArr);
			_model.addColumn("正确答案", _rightAns);
			
			_model.setAllCellEditable(false);
			setNullTo();
			
			CountTotalScore();
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//计算总得分
		protected function CountTotalScore():void {
			for (var i:String in _scoreArr) {
				_totalScore += _scoreArr[i];
				}
			
			if (_totalScore > 5) {
				_totalScore = 5;
				}
			//_gvar._totalScoreArr.push(_totalScore);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//增加分数跟正确答案两列
		protected function addScoreAndRigthAw():void {
			
			for (var i:int = 0; i < _model.getRowCount(); i++ ) {
				if (findFaultId(_model.getValueAt(i, 0), _model.getValueAt(i, 1))) {
					//判断正确
					_scoreArr.push(5);
					}else {
						_scoreArr.push(0);
						}
				}
				
			
			findRigthAns(_gvar._currentFaultId);
			}
			
		//根据故障点ID找到正确答案
		protected function findRigthAns(_faultId:uint):void {
			var _reasonLibXML:XML =_gvar._reasonLib;
			var _rightAnsStr:String = _reasonLibXML.ReasonsPart.described.(@Reasonsid == _faultId).parent().@partname+"-"+_reasonLibXML.ReasonsPart.described.(@Reasonsid == _faultId).child(0);
			//trace("_rightAnsStr=" + _reasonLibXML.ReasonsPart.(described.@Reasonsid == _faultId));
			//trace("_faultId=" + _reasonLibXML.ReasonsPart.(described.@Reasonsid == _faultId).@partname);
			
			_rightAns.push(_rightAnsStr);
			
			_gvar._currentFaultPartName_FaultId = _rightAnsStr;
			}
		
		//根据部件名称跟故障点名称找到故障点ID
		protected function findFaultId(_partName:String, _fualtName:String):Boolean {
			var _reutrnFlag:Boolean = false;
			
			if (_partName == "请选择" || _fualtName == "请选择" || _fualtName == "请先选择" ) {
				return _reutrnFlag;
				}
				
			
			var _faultId:uint = _gvar._currentFaultId;
			var _reasonLibXML:XML = _gvar._reasonLib;
			var _ReasonsPartXml:XMLList= _reasonLibXML.ReasonsPart.(@partname == _partName)[0].described;
			for (var i:String in _ReasonsPartXml) {
				if (_ReasonsPartXml[i].child(0) == _fualtName) {
					if (_faultId == _ReasonsPartXml[i].@Reasonsid) {
						//故障点判断正确
						_reutrnFlag = true;
						return _reutrnFlag;
						}
					}
				}
				
			return _reutrnFlag;
			}
		//--------------------------------------------------------------------------------------------------------------------//
		/** 隐藏列  */  
		public function hideColumn($table:JTable, $column:int):void{   
			
		 $table.getTableHeader().getColumnModel().getColumn($column).setMaxWidth(0);      
		 $table.getTableHeader().getColumnModel().getColumn($column).setMinWidth(0);      
		 $table.getTableHeader().getColumnModel().getColumn($column).setPreferredWidth(0);      
		 $table.getColumnAt($column).setMaxWidth(0);   
		 $table.getColumnAt($column).setMinWidth(0);   
		 $table.getColumnAt($column).setPreferredWidth(0);   
			
		}  
		//所有的NULL转为空
		protected function setNullTo():void {
			for (var i:int = 0; i < _model.getColumnCount(); i++ ) {
				for (var j:int = 0; j < _model.getRowCount(); j++ ) {
					if (_model.getValueAt(j, i) == null) {
						_model.setValueAt(" ",j, i);
						}
					}
				}
			}
		//===================================================================================================================//
	}
}