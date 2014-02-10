package bbjxl.com.content.four{
	/**
	作者：被逼叫小乱
	检查过程分析提交
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
	public class ProcessAndAnalysisSetUp extends JScrollPane {
		protected var _gvar:Gvar = Gvar.getInstance();
		protected var _model:DefaultTableModel;
		protected var _table:JTable = new JTable();
		protected var _scoreArr:Array = new Array();//分数数组
		protected var _rightAns:Array = new Array();//正确答案数组
		protected var _currentFaultXmlList:XMLList;//当前故障点的电压电阻数据
		protected var _keyScoreV:Number = 10;//电压关键点
		protected var _keyScoreR:Number = 5;//电阻关键点
		public var _totalScore:Number=0;//总得分
		protected var _judgedRow:Array = new Array();//放判断过的全选的行数据
		//===================================================================================================================//
		public function get model():DefaultTableModel {
			return _model;
			}
		//===================================================================================================================//
		public function ProcessAndAnalysisSetUp(_value:JTable,_modelValue:DefaultTableModel) {
			super();
			_table = _value;
			_model = new DefaultTableModel();
			_model =_modelValue;
			init();
			this.append(_table);
			_table.setRowSelectionAllowed(false);//行不可选
			//this.pack();
		}//End Fun
		
		
		//--------------------------------------------------------------------------------------------------------------------//
		protected function init():void {
			trace("init")
			//增加分数跟正确答案两列
			addScoreAndRigthAw();

			_model.addColumn("分数", _scoreArr);
			//_model.addColumn("正确答案", _rightAns);

			// 隐藏"操作"列
			hideColumn(_table,6);
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
			
			if (_totalScore > 25) {
				_totalScore = 25;
				}
				
			//_gvar._totalScoreArr.push(_totalScore);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//增加分数
		protected function addScoreAndRigthAw():void {
			//找出当前故障点的电压电阻表XMLLISTE
			var _faultId:uint = _gvar._currentFaultId;
			
			_currentFaultXmlList= _gvar.returnRVData(1).part.fault.(@faultid == _faultId);
			//trace("_currentFaultXmlList=" + _currentFaultXmlList);
			
			for (var i:int = 0; i < _model.getRowCount(); i++ ) {
				if (!judgeRowReadyed(i)) {
					//有未选项扣一分
					_scoreArr.push( -1);
					_rightAns.push("");//正确答案为空
					}else {
						//全选了
						//是否已经有一行选中了相同的答案
						if (judgeRowAlike(i)) {
							_scoreArr.push(0);
							_rightAns.push("");//正确答案为空
							}else {
								findScore(i);
								}
						}
				}
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//判断是否已经有一行一样的
		protected function judgeRowAlike(_rowId:uint):Boolean {
			var returnB:Boolean = false;
			var tempObj:Object = new Object();
				tempObj.partName = _model.getValueAt(_rowId, 0);
				tempObj.line = _model.getValueAt(_rowId, 1);
				tempObj.point1 = _model.getValueAt(_rowId, 2);
				tempObj.point2 = _model.getValueAt(_rowId, 3);
				tempObj.value = _model.getValueAt(_rowId, 4);
				tempObj.normal = _model.getValueAt(_rowId, 5);
			if (_judgedRow.length > 0) {
				//有数据时
				for (var i:String in _judgedRow) {
					if (_judgedRow[i].partName == tempObj.partName && _judgedRow[i].line == tempObj.line && (_judgedRow[i].point1 == tempObj.point1 && _judgedRow[i].point2 == tempObj.point2) || (_judgedRow[i].point1 == tempObj.point2 && _judgedRow[i].point2 == tempObj.point1)
					&& _judgedRow[i].value == tempObj.value && _judgedRow[i].normal == tempObj.normal) {
						returnB = true;
						return returnB;
						}
					}
				
				}
			_judgedRow.push(tempObj);
			return returnB;
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//找到各已选的行的分数
		protected function findScore(_rowId:uint):Boolean {
			var tempFlag:Boolean = false;
			
			var tempOtherPart:XMLList = _currentFaultXmlList.otherPart.(@partname == _model.getValueAt(_rowId, 0));
			//在线///////////////////////////
			if (_model.getValueAt(_rowId, 1) == "在线") {
				var tempV_point:XML = tempOtherPart.v.point.(@pointid == fincPointId(_model.getValueAt(_rowId, 2)))[0];
				trace("tempV_point=" + tempV_point);
				if (tempV_point != null) {
					//判断正常/不正常
					if (Number(_model.getValueAt(_rowId, 4)) >= Number(tempV_point.@normal)) {
						//正常
						_rightAns.push("正常");
						if (_model.getValueAt(_rowId, 5) == "正常") {
							//选对加分------------------------------
							if (tempV_point.@key == 1) {
								//关键点
								_scoreArr.push(_keyScoreV);
								return tempFlag;
								}else {
									//非关键点-对，不加分
									_scoreArr.push(0);
									return tempFlag;
									}
							}else {
								//选错减分
								_scoreArr.push( -1);
								return tempFlag;
								}
							//------------------------------
						}else {
							//不正常-----------------------------
							_rightAns.push("不正常");
							if (_model.getValueAt(_rowId, 5) == "不正常") {
								//选对加分------------------------------
								if (tempV_point.@key == 1) {
									//关键点
									_scoreArr.push(_keyScoreV);
									return tempFlag;
									}else {
										//非关键点-对，不加分
										_scoreArr.push(0);
										return tempFlag;
										}
								}else {
									//选错减分
									_scoreArr.push( -1);
									return tempFlag;
									}
									
							//---------------------------
							}
					}else {
						trace("出错11")
						_rightAns.push("");
						_scoreArr.push(0);
						}
				}else {
					//离线////////////////////////////////////
					var tempPoint1:uint = fincPointId(_model.getValueAt(_rowId, 2));
					var tempPoint2:uint = fincPointId(_model.getValueAt(_rowId, 3));
					var tempR_point:XML = tempOtherPart.R.point.((@point1id ==tempPoint1 && @point2id ==tempPoint2) || (@point1id ==tempPoint2 && @point2id ==tempPoint1))[0];
					trace("tempR_point=" + tempR_point);
					if (tempR_point != null) {
						//判断正常/不正常
						if (_model.getValueAt(_rowId, 4) == tempR_point.@normal) {
							//正常
							_rightAns.push("正常");
							if (_model.getValueAt(_rowId, 5) == "正常") {
								//选对加分
								if (tempR_point.@key == 1) {
									//关键点
									_scoreArr.push(_keyScoreR);
									return tempFlag;
									}else {
										//非关键点
										_scoreArr.push(0);
										return tempFlag;
										}
								}else {
									//选错减分
									_scoreArr.push( -1);
									return tempFlag;
									}
							//-------------------------------
							}else {
								//不正常
								_rightAns.push("不正常");
								if (_model.getValueAt(_rowId, 5) == "不正常") {
									//选对加分
									if (tempR_point.@key == 1) {
										//关键点
										_scoreArr.push(_keyScoreR);
										return tempFlag;
										}else {
											//非关键点
											_scoreArr.push(0);
											return tempFlag;
											}
									}else {
										//选错减分
										_scoreArr.push( -1);
										return tempFlag;
										}
								}
						}else {
							trace("出错R")
							_rightAns.push("");
							_scoreArr.push(0);
							}
					}
			
			return tempFlag;
			}
			
		//根据点的名称找到相应的点ID
		protected function fincPointId(_poindName:String):uint {
			var returnId:uint;
			returnId = _currentFaultXmlList.otherPart.v.point.(@pointName == _poindName).@pointid;
			return returnId;
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//判断该行是否已经都选了
		protected function judgeRowReadyed(_rowId:uint):Boolean {
			var returnB:Boolean = false;
			if ((_model.getValueAt(_rowId, 0) == "请选择") || (_model.getValueAt(_rowId, 2) == "请选择") || (_model.getValueAt(_rowId, 4) == "") || (_model.getValueAt(_rowId, 5) == "请选择")) {
					returnB = false;
					return returnB;
					}else {
						if (((_model.getValueAt(_rowId, 1) == "离线") && (_model.getValueAt(_rowId, 3) == "请选择")) || ((_model.getValueAt(_rowId, 1) == "离线") && (_model.getValueAt(_rowId, 2) == _model.getValueAt(_rowId, 3)))) {
							returnB = false;
							return returnB;
							}
						returnB = true;
						return returnB;
						}
			return returnB;
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