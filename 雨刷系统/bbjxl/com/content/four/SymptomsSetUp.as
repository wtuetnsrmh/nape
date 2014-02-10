package bbjxl.com.content.four{
	/**
	作者：被逼叫小乱
	症状描述提交
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
	public class SymptomsSetUp extends JScrollPane {
		protected var _gvar:Gvar = Gvar.getInstance();
		protected var _model:DefaultTableModel;
		protected var _table:JTable=new JTable();
		protected var _symptomsTableXml:XML = _gvar._symptomsTable;
		protected var _scoreArr:Array = new Array();//分数数组
		protected var _rightAns:Array = new Array();//正确答案数组
		public var _totalScore:Number=0;//总得分
		protected var _currentFaultSymptomsTableArr:Array = new Array();//当前故障点相对应的症状表
		//===================================================================================================================//
		public function get model():DefaultTableModel {
			return _model;
			}
		//===================================================================================================================//
		public function SymptomsSetUp(_value:JTable,_modelValue:DefaultTableModel) {
			super();
			_table = _value;
			_model = new DefaultTableModel();
			_model =_modelValue;
			init();
			this.append(_table);
			//this.pack();
		}//End Fun
		//--------------------------------------------------------------------------------------------------------------------//
		protected function init():void {
			
			//增加分数跟正确答案两列
			addScoreAndRigthAw();

			model.addColumn("分数", _scoreArr);
			model.addColumn("正确答案", _rightAns);
			
			// 隐藏"操作"列
			hideColumn(_table,2);
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
			
			if (_totalScore > 10) {
				_totalScore = 10;
				}
			trace(_totalScore)
			//_gvar._totalScoreArr.push(_totalScore);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//增加分数跟正确答案两列
		protected function addScoreAndRigthAw():void {
			//找出当前故障点包括的症状选择
			var _faultId:uint = _gvar._currentFaultId;
			var _currentSymptoms:XMLList = _symptomsTableXml.part.fault.(@faultid == _faultId)[0].symptoms;
			trace("_currentSymptoms=" + _currentSymptoms);
			
			for (var i:String in _currentSymptoms) {
				var tempObj:Object = new Object();
				tempObj.score = _currentSymptoms[i].@score;
				tempObj.id = _currentSymptoms[i].@symptomsid;
				tempObj.right = returnRightName(_currentSymptoms[i].@symptomsid);
				_currentFaultSymptomsTableArr.push(tempObj);
				}
			
			//加分数
			var tempPushEdId:Array = new Array();//已经选的症状ID数组，避免重复加分
			for (var j:int = 0; j < _model.getRowCount(); j++ ) {
				if (_model.getValueAt(j, 0) == "请选择" || _model.getValueAt(j, 1) == "请选择" || _model.getValueAt(j, 1) == "请先选择部件") {
					//未做出选择直接为-1分
					_scoreArr.push(-1);
					trace("未做出选择")
					}else {
						var tempSymptomId:uint = findSymptomId(_model.getValueAt(j, 0), _model.getValueAt(j, 1));
						if (tempSymptomId != 10000) {
							//找到症状ID,判断是否已经有这个ID，如果有就为0分，如果没有则判断是否是正确的选择，正确：加上相应的分数，错误：扣一分
							if (!ArrayUtil.arrayContainsValue(tempPushEdId, tempSymptomId)) {
								_scoreArr.push(findScore(tempSymptomId));
								tempPushEdId.push(tempSymptomId);
								}else {
									//已存在
									trace("已存在")
									_scoreArr.push(0);
									}
								trace(_scoreArr)
							}else {
								trace("出错！");
								_scoreArr.push(-1);
								}
						}
				}
			//加正确答案
			for (var n:String in _currentFaultSymptomsTableArr) {
				_rightAns.push(_currentFaultSymptomsTableArr[n].right);
				}

			}
			
		//根据症状ID找到相应的分数
		protected function findScore(_symptomId:uint):Number {
			var returnScore:Number = -1;
			for (var i:String in _currentFaultSymptomsTableArr ) {
				if (_currentFaultSymptomsTableArr[i].id == _symptomId) {
					returnScore = _currentFaultSymptomsTableArr[i].score;
					return returnScore;
					}
				}
			return returnScore;
			}
			
		//根据选择的部件跟症状描述找出症状ID
		protected function findSymptomId(_partName:String, _sympotmsName:String):uint {
			
			var returnId:uint = 10000;
			var _symptomsLibXML:XML = new XML();
			_symptomsLibXML = _gvar._symptomsLib;
			var _SymptomsPartXML:XMLList = _symptomsLibXML.SymptomsPart.(@partname == _partName)[0].described;
			
			for (var i:String in _SymptomsPartXML) {
				if (_SymptomsPartXML[i].child(0) == _sympotmsName) {
					returnId = uint(_SymptomsPartXML[i].@Symptomsid);
					return returnId;
					}
				}
			return returnId;
			}
		
		//根据症状ID找到相应的故障部件名－症状描述
		protected function returnRightName(_symptomsid:uint):String {
			var _reutnrStr:String="";
			var _symptomsLibXML:XML = new XML();
			_symptomsLibXML = _gvar._symptomsLib;
			var symptomsNameStr:String =  "-"+_symptomsLibXML.SymptomsPart.described.(@Symptomsid == _symptomsid).child(0);
			//trace("symptomsNameStr=" + _symptomsLibXML.SymptomsPart.described);
			var _SymptomsPartXML:XMLList = _symptomsLibXML.SymptomsPart;
			for (var i:String in _SymptomsPartXML) {
				for (var j:String in _SymptomsPartXML[i].described) {
					if (_SymptomsPartXML[i].described[j].@Symptomsid == _symptomsid) {
						_reutnrStr = _SymptomsPartXML[i].@partname + symptomsNameStr;
						return _reutnrStr;
						}
					}
				}
			
			
			return _reutnrStr;
			
			}
		//--------------------------------------------------------------------------------------------------------------------//
		
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