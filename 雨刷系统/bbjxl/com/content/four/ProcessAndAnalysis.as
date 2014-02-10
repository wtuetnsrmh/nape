package bbjxl.com.content.four 
{
	import bbjxl.com.content.second.Pin;
	import bbjxl.com.event.PopFramInitEvent;
	import org.aswing.JPanel;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import org.aswing.event.SelectionEvent;
	
	import bbjxl.com.ui.MyJCheckBox;
	import flash.events.Event;
	import org.aswing.event.CellEditorListener;
	import org.aswing.geom.IntDimension;
	import org.aswing.geom.IntRectangle;
	import org.aswing.border.LineBorder;
	import org.aswing.ext.Form;
	import org.aswing.ext.FormRow;

	import org.aswing.AsWingManager;
	import org.aswing.FlowLayout;
	import org.aswing.JButton;
	import org.aswing.JFrame;
	import org.aswing.JOptionPane;
	import org.aswing.event.AWEvent;
	import org.aswing.*;
	import org.aswing.border.*;
	import org.aswing.table.*;
	import org.aswing.table.sorter.*;
	import bbjxl.com.Gvar;
	import org.aswing.UIManager;
	import com.adobe.utils.ArrayUtil;
	/**
	 * ...
	 * @author bbjxl
	 * 三、检查过程与分析（25分）
	 */
	public class ProcessAndAnalysis extends JPanel
	{
		protected var panel11:JScrollPane;
		protected var table:JTable;//表
		protected var model:DefaultTableModel;
		protected var Symdata:Array;//表数据
		protected var _gvar:Gvar = Gvar.getInstance();
		protected var _currentSelectedRowId:int;//当前选中的行
		protected var symptomsArr:Array = new Array();//每一列的数据
		protected var _currentFaultXml:XML = new XML();//当前故障部件本应的XML,即一个部件对应的行数据
		protected var AddRowBt:JButton;//增加一行按钮
		//protected var popup:JPopup;//提示窗口
		protected var fr:JFrame;//提示窗口
		public var _totalScore:Number=0;
		
		protected var _onlineOrOffline:OnlineOrOfflineChannel = Gvar.getInstance()._onlineOrOffline;
		//===================================================================================================================//
		//宽高度
		private var _thisWidth:uint=600;
		private var _thisHeight:uint=270;
		//===================================================================================================================//
		public function ProcessAndAnalysis() 
		{
			super(new SoftBoxLayout(1));
			setName("三、检查过程与分析");
			
			AddRowBt = new JButton("增加一行");//增加一行按钮 
			AddRowBt.addActionListener(AddRowHandler);
			append(AddRowBt);
			
			_currentFaultXml = _gvar._currentFaultXml;
			panel11 = addcompond();//检查过程与分析表
			append(panel11);
			addRow();
			table.setRowSelectionAllowed(true);
		}
		
		//===================================================================================================================//
		public function __onWinMaxDoSomething(eType:String):void {
			if (eType== "frameMaximized") {
				//最大化
				panel11.setPreferredHeight(stage.stageHeight - 100);
				}else if (eType == "frameRestored") {
					//恢复
					panel11.setPreferredHeight(_thisHeight- 70);
					}
					
			panel11.pack();
			}
			
		//提交
		public function setUp():JScrollPane {
			var processAndAnalysisSetup:ProcessAndAnalysisSetUp = new ProcessAndAnalysisSetUp(table, model);
			_totalScore = processAndAnalysisSetup._totalScore;
			return processAndAnalysisSetup;
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//增加一行
		protected function AddRowHandler(e:AWEvent):void {
			addRow();
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//增加一行
		protected function addRow():void {
			var temp:Array = new Array("请选择", "在线","请选择","","","请选择","删除");
			Symdata.push(temp);
			model.setData(Symdata);
			//设置部件下拉选项
			var combEditor:DefaultComboBoxCellEditor = new DefaultComboBoxCellEditor();
			//所有可选部件名称
			combEditor.getComboBox().setListData(getTotalPartName());
			table.getColumnAt(0).setCellEditor(combEditor);
			
			combEditor.getComboBox().addSelectionListener(symPartSelectedHandler);
			combEditor.getComboBox().addActionListener(currentPartSelectRow);
			//初始不可选点2列
			selebabeColum(table, 3);
			
			//删除按钮
			table.getColumn("操作").setCellFactory(new GeneralTableCellFactory(BtnTableCell));
			table.addEventListener(BtnTableCell.DELETEROWEVENT, deleteRowHandler,true);
			function deleteRowHandler(e:Event):void {
				model.removeRow(table.getSelectedRow());
				}
				
			//显示所有的点
			_onlineOrOffline.online();//发出在线事件
			}
		//--------------------------------------------------------------------------------------------------------------------//
		protected function currentPartSelectRow(e:AWEvent):void {
			_currentSelectedRowId = table.getSelectedRow();
			trace("_currentSelectedRowId=" + _currentSelectedRowId);
		}
		//--------------------------------------------------------------------------------------------------------------------//
		//选择部件选项后
		protected function symPartSelectedHandler(e:AWEvent):void {
			var selectedId:int = (e.target as JComboBox).getSelectedIndex();
			
			if (selectedId >= 0) {
				//设置检查方式下拉选项
				var combEditorCheckType:DefaultComboBoxCellEditor = new DefaultComboBoxCellEditor();
				combEditorCheckType.getComboBox().setListData(["在线","离线"]);
				table.getColumn("检查方式选择").setCellEditor(combEditorCheckType);
				combEditorCheckType.getComboBox().addSelectionListener(combEditorCheckTypeSelectedHandler);
				
				//设置测量结果判断
				var combEditorDjudge:DefaultComboBoxCellEditor = new DefaultComboBoxCellEditor();
				combEditorDjudge.getComboBox().setListData(["正常","不正常"]);
				table.getColumn("测量结果判断").setCellEditor(combEditorDjudge);
				
				//trace("_currentRowId="+_currentRowId)
				//设置点下拉选项
				var combEditor:DefaultComboBoxCellEditor = new DefaultComboBoxCellEditor();
				combEditor.getComboBox().setListData(symptomsArr[selectedId].Arr);
				table.getColumnAt(2).setCellEditor(combEditor);//点1
				//table.getColumnAt(3).setCellEditor(combEditor);//点2
				model.setValueAt("在线", table.getSelectedRow(), 1);//检查方式重置为在线
				
				combEditor.getComboBox().addActionListener(currentSelectRow);
				combEditor.getComboBox().addSelectionListener(symSelectedHandler);
				
				selebabeColum(table, 3);//不可选点2 列
				
				//选项大于0时重设症状描述为“请选择”
				model.setValueAt("请选择", table.getSelectedRow(), 2);//点1重设
				model.setValueAt("", table.getSelectedRow(), 3);//点2设空
				model.setValueAt("", table.getSelectedRow(), 4);//测量值设空
				
				//显示所有的点
				_onlineOrOffline.online();//发出在线事件
			}
			
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
		//指定列不能选择
		public function selebabeColum(_table:JTable, _column:int):void {
			//_table.getColumnAt(_column).setCellEditor(new DefaultTextFieldCellEditor());
			
			
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//判断当前行的检查方式
		public function returnCheckType():String {
			var tempRetStr:String="在线";
			if(table.getSelectedRow()>=0)
			tempRetStr = model.getValueAt(table.getSelectedRow(), 1);
			return tempRetStr;
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//检查方式选择后
		protected function combEditorCheckTypeSelectedHandler(e:AWEvent):void {
			
			if ((e.target as JComboBox).getSelectedIndex() == 0) {
				//在线
				selebabeColum(table, 3);
				model.setValueAt("请选择", table.getSelectedRow(), 2);//点1点重设
				model.setValueAt("", table.getSelectedRow(), 3);//点2设为空
				model.setValueAt("", table.getSelectedRow(), 4);//测量值设空
				_onlineOrOffline.online();//发出在线事件
			}else {
				//离线，显示点2列
				model.setValueAt("请选择", table.getSelectedRow(), 2);//点1点重设
				model.setValueAt("请选择", table.getSelectedRow(), 3);//点2重设
				model.setValueAt("", table.getSelectedRow(), 4);//测量值设空
				table.getColumnAt(3).setCellEditor(table.getColumnAt(2).getCellEditor() as TableCellEditor);
				var tempPartShort:String = findCurrentRowPartShort();
				if (tempPartShort != "") {
					_onlineOrOffline.partShort = tempPartShort;
					_onlineOrOffline.offline();//发出离线事件
				}
				}
		}
		//--------------------------------------------------------------------------------------------------------------------//
		//找出当前行部件的简称
		protected function findCurrentRowPartShort():String {
			var tempCurrentRowPartName:String = model.getValueAt(table.getSelectedRow(), 0);
			var returnStr:String = "";
			for (var i:String in symptomsArr) {
				if (symptomsArr[i].partname == tempCurrentRowPartName) {
					returnStr = symptomsArr[i].short;
					return returnStr;
					}
				
				}
			return returnStr;
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//点1下拉框点击后重新设置点下拉选项
		protected function currentSelectRow(e:AWEvent):void {
			_currentSelectedRowId = table.getSelectedRow();
			trace("_currentSelectedRowId=" + _currentSelectedRowId);
			var tempIndex:int =(getTotalPartName() as Array).indexOf(table.getModel().getValueAt(_currentSelectedRowId, 0));
			if (tempIndex < 0) {
				//没找到
				trace("没找到")
				}else {
					(e.target as JComboBox).setListData(symptomsArr[tempIndex].Arr);
					}
			}
		//------------------------------------------------------------------------------------------------------------------------//
		//选择点1.2后
		protected function symSelectedHandler(e:AWEvent):void {
			trace("(e.target as JComboBox).getSelectedIndex()=" + (e.target as JComboBox).getSelectedIndex())
			if (!((e.target as JComboBox).getSelectedIndex() < 0)) {
				trace("点ID——点描述"+(e.target as JComboBox).getSelectedItem().id + (e.target as JComboBox).getSelectedItem().lable);
				var selectedId:int = (e.target as JComboBox).getSelectedIndex();
				trace("点ID" + selectedId);
				trace("table.getSelectedColumn()="+table.getSelectedColumn())
				if (table.getSelectedColumn() == 3) {
					//选的是点2时要判断此行是否是离线，如是不是就设为空值
					trace("returnCheckType()="+returnCheckType())
					if (returnCheckType() == "在线") {
						model.setValueAt("", table.getSelectedRow(), 3);//点2重设
						trace("离线")
						}
					}
				}
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//获取所有的部件名称
		protected function getTotalPartName():Array {
			var reutnrArr:Array = new Array();
			for (var i:String in symptomsArr) {
				reutnrArr.push(symptomsArr[i].partname);
				}
				//reutnrArr.push("请选择");
				return reutnrArr;
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//建立数据，表部分
		protected function addcompond(_setUpFlag:Boolean = false):JScrollPane {
			var tempXML:XMLList = new XMLList();
			tempXML = _currentFaultXml.child(0);
			//-2:去掉声音跟动画的子集
			for (var i:int = 0; i < tempXML.children().length()-2; i++ ) {
				var _SymptomsPart:Object = new Object();
				_SymptomsPart.partid = tempXML.child(i).@partid;//故障ID
				_SymptomsPart.partname = tempXML.child(i).@partname;//故障部件名字
				_SymptomsPart.partnumber = tempXML.child(i).@partnumber;//故障部件编号
				_SymptomsPart.short = tempXML.child(i).@short;//故障部件简称
				
				var tempArr:Array = new Array();
				for (var j:int = 0; j < tempXML.child(i).v.children().length(); j++ ) {
					var tempObj:ProcessAndAnalysis_V_OptionObj = new ProcessAndAnalysis_V_OptionObj(tempXML.child(i).v.child(j).@pointid,tempXML.child(i).v.child(j).@pointName);
					tempArr.push(tempObj);
					}
				_SymptomsPart.Arr = tempArr;//所有的可选对象数据
				symptomsArr.push(_SymptomsPart);
				}
			
				
			Symdata = new Array();
			var column:Array = new Array();
			if (!_setUpFlag) {
				//没提交时不显示分数跟正确答案
				column = ["故障部件", "检查方式选择","测量点1","测量点2","测量数值","测量结果判断","操作"];
				}else {
					column = ["故障部件", "检查方式选择","测量点1","测量点2","测量数值","测量结果判断","得分"];
					}
			
			model = (new DefaultTableModel()).initWithDataNames(Symdata, column);
			//model.setColumnEditable(2, false);
			var sorter:TableSorter = new TableSorter(model);
			table = new JTable(sorter);
			table.setRowHeight(25);
			table.setPreferredWidth(_thisWidth-50);
			table.setCellSelectionEnabled(false);
			table.setAutoResizeMode(JTable.AUTO_RESIZE_SUBSEQUENT_COLUMNS);
			//table.setBorder(new EmptyBorder(new LineBorder(null, ASColor.RED, 2), new Insets(5, 5, 5, 5)));
			table.setSelectionMode(0);
			
			var scrollPane:JScrollPane = new JScrollPane(table); 
			scrollPane.setMinimumHeight(200);
			scrollPane.setPreferredHeight(_thisHeight-70);
			scrollPane.pack();
			return scrollPane;
		
		}
		//--------------------------------------------------------------------------------------------------------------------//
		//根据万用表当前的两点IP跟值，增加相应的表单元格中
		public function setTalbeCellValue(_point1:uint, _point2:uint, _universalValue:String):void {
			trace("set" + _universalValue)
			trace("_point10="+_point1)
			if (table.getSelectedRow() >=0) {
				//table.setSelectionBackground(new ASColor(0xff0000, .5));
				
				//当前有选中行
				if (returnCheckType() == "在线") {
					if(model.getValueAt(table.getSelectedRow(), 2)!="请选择"){
					//判断万用表是否有一点跟当前行的点1相同,如果是就在表中测量值单元格填入万用表值
						if (djustPointId(_point1,2)|| djustPointId(_point2,2)) {
							model.setValueAt(_universalValue, table.getSelectedRow(), 4);
							trace("_point1="+_point1)
							}
						}
					
					}else {
						if(model.getValueAt(table.getSelectedRow(), 2)!="请选择" && model.getValueAt(table.getSelectedRow(), 3)!="请选择"){
						if ((djustPointId(_point1,2) && djustPointId(_point2,3))|| (djustPointId(_point1,3) && djustPointId(_point2,2))) {
							model.setValueAt(_universalValue,table.getSelectedRow(), 4);
							}
						}
						}
				}else {
					//提示请先选择一行
					var tempPane:JPanel = new JPanel(new CenterLayout());
					var buttonDisplay:JPanel = new JPanel(new BoxLayout(2,50));
					buttonDisplay.append(new JLabel("请先选择一行后再使用万用表!"));
					tempPane.append(buttonDisplay);
					
					fr= new JFrame(this.stage, "提 示", true);
					fr.setContentPane(tempPane);
					fr.setClosable(true);
					fr.setResizable(false);
					fr.setDragable(false);
					fr.setComBoundsXYWH((stage.width-200) / 2, (stage.height-100) / 2, 200, 100);
					fr.show();
					}
			}
		
		//--------------------------------------------------------------------------------------------------------------------//
		//根据点ID判断是否跟指定列的点ID相同
		protected function djustPointId(_pointId:uint, _columnId:uint):Boolean {
			var returnFlag:Boolean = false;
			var tempIndex:int =(getTotalPartName() as Array).indexOf(table.getModel().getValueAt(table.getSelectedRow(), 0));
				if (tempIndex < 0) {
					//没找到
					trace("没找到")
					}else {
						var tempArr:Array = symptomsArr[tempIndex].Arr;
						for (var i:String in tempArr) {
							if (tempArr[i].lable == model.getValueAt(table.getSelectedRow(), _columnId)) {
								//找到点名称相对应的点ID
								trace(tempArr[i].id);
								if (tempArr[i].id == _pointId) {
									//两点相同
									returnFlag = true;
									return returnFlag;
								}
								}
							}
						}	
						
			return returnFlag;
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//提交
		protected function setUpHandler():void {
			var _scoreArr:Array = new Array("100", "20", "60", "70");
			model.addColumn("分数", _scoreArr);
			model.setAllCellEditable(false);
			setNullTo();
			trace(model)
			}
		
		//所有的NULL转为空
		protected function setNullTo():void {
			for (var i:int = 0; i < model.getColumnCount(); i++ ) {
				for (var j:int = 0; j < model.getRowCount(); j++ ) {
					if (model.getValueAt(i, j) == null) {
						model.setValueAt("空", i, j);
						}
					}
				}
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//返回是否已经选择了数据，用于判断是否可以进入下一步
		public function returnIready():Boolean {
			var flag:Boolean = false;
			if (model && model.getRowCount() > 0) {
				flag = true;
				return flag;
				}
			return flag;
			}
		//--------------------------------------------------------------------------------------------------------------------//
	}

}