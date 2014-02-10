package bbjxl.com.content.four{
	/**
	作者：被逼叫小乱
	一、症状描述
	www.bbjxl.com/Blog
	**/
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

	public class Symptoms extends JPanel{
		protected var panel11:JScrollPane;
		protected var sympAddRow:JButton;//症状表增加一行按钮
		protected var removeAndAddBt:JPanel = new JPanel();
		protected var symptomsArr:Array = new Array();//症状描述的数据
		protected var table:JTable;//表
		protected var model:DefaultTableModel;
		protected var Symdata:Array;//症状表数据
		protected var _totalSymPartArr:Array = new Array();//所有症状部件下拉控件数组
		protected var _totalSymptomstArr:Array = new Array();//所有症状描述下拉控件数组
		protected var _gvar:Gvar = Gvar.getInstance();
		protected var _currentSelectedRowId:int;//当前选中的行
		public var _totalScore:Number=0;
		//===================================================================================================================//
		//宽高度
		protected var _thisWidth:uint=600;
		protected var _thisHeight:uint=270;
		//===================================================================================================================//
		public function Symptoms() {
			super(new SoftBoxLayout(1));
			setName("一、症状描述");
			
			sympAddRow = new JButton("增加一行");//增加一行按钮 
			//sympAddRow.setConstraints("North");
			sympAddRow.addActionListener(sympAddRowHandler);

			panel11 = addcompond();//症状表
			append(sympAddRow);
			append(panel11);
			
			addRow();
		
		}//End Fun
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
		//症状表增加一行
		protected function sympAddRowHandler(e:AWEvent):void {
			addRow();
			
			}
		//--------------------------------------------------------------------------------------------------------------------//
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
		//--------------------------------------------------------------------------------------------------------------------//
		//提交
		public function setUp():JScrollPane {
			var symptomsSetup:SymptomsSetUp = new SymptomsSetUp(table, model);
			_totalScore = symptomsSetup._totalScore;
			return symptomsSetup;
			/*var _scoreArr:Array = new Array("100", "20", "60", "70");
			model.addColumn("分数", _scoreArr);
			model.setAllCellEditable(false);
			setNullTo();*/
			
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
		//增加一行
		protected function addRow():void {
			var temp:Array = new Array("请选择", "请先选择部件","删除");
			Symdata.push(temp);
			model.setData(Symdata);
			//设置部件下拉选项
			var combEditor:DefaultComboBoxCellEditor = new DefaultComboBoxCellEditor();
			//所有可选部件名称
			combEditor.getComboBox().setListData(getTotalPartName());
			table.getColumnAt(0).setCellEditor(combEditor);
			
			combEditor.getComboBox().addSelectionListener(symPartSelectedHandler);
			combEditor.getComboBox().addActionListener(currentPartSelectRow);
			
			//_totalSymPartArr.push(combEditor.getComboBox());
			
			//table.addEventListener(SymptomPartTableCellSelectedEvent.SYMPTOMPARTCELLSELECTED, symPartSelectedHandler,true);
			
			//删除按钮
			table.getColumn("操作").setCellFactory(new GeneralTableCellFactory(BtnTableCell));
			table.addEventListener(BtnTableCell.DELETEROWEVENT, deleteRowHandler,true);
			function deleteRowHandler(e:Event):void {
				trace(table.getSelectedRow());
				model.removeRow(table.getSelectedRow());
				}
			}
		//--------------------------------------------------------------------------------------------------------------------//
		protected function currentPartSelectRow(e:AWEvent):void {
			trace(typeof(e.target))
			
			_currentSelectedRowId = table.getSelectedRow();
			trace("_currentSelectedRowId=" + _currentSelectedRowId);
		}

		//--------------------------------------------------------------------------------------------------------------------//
		//选择部件选项后
		protected function symPartSelectedHandler(e:AWEvent):void {
			var selectedId:int = (e.target as JComboBox).getSelectedIndex();
			
			//选项大于0时重设症状描述为“请选择”
			//var _currentRowId:int = _totalSymPartArr.indexOf((e.target as JComboBox));//当前选的行
			model.setValueAt("请选择", table.getSelectedRow(), 1);
			
			if (selectedId >= 0) {
				//trace("_currentRowId="+_currentRowId)
				//设置症状描述下拉选项
				var combEditor:DefaultComboBoxCellEditor = new DefaultComboBoxCellEditor();
				combEditor.getComboBox().setListData(symptomsArr[selectedId].Arr);
				table.getColumnAt(1).setCellEditor(combEditor);
				combEditor.getComboBox().addActionListener(currentSelectRow);
				combEditor.getComboBox().addSelectionListener(symSelectedHandler);
				//_totalSymptomstArr[_currentRowId]=(combEditor.getComboBox());
				
			}
			
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//症状描述下拉框点击后重新设置症状描述下拉选项
		protected function currentSelectRow(e:AWEvent):void {
			trace(typeof(e.target))
			
			_currentSelectedRowId = table.getSelectedRow();
			trace("_currentSelectedRowId=" + _currentSelectedRowId);
			var tempIndex:int =(getTotalPartName() as Array).indexOf(table.getModel().getValueAt(_currentSelectedRowId, 0));// (_totalSymPartArr[_currentSelectedRowId] as JComboBox).getSelectedIndex();
			if (tempIndex < 0) {
				//没找到
				trace("没找到")
				}else {
					(e.target as JComboBox).setListData(symptomsArr[tempIndex].Arr);
					}
			}
		//------------------------------------------------------------------------------------------------------------------------//
		//选择症状描述后
		protected function symSelectedHandler(e:AWEvent):void {
			trace("(e.target as JComboBox).getSelectedIndex()=" + (e.target as JComboBox).getSelectedIndex())
			if (!(e.target as JComboBox).getSelectedIndex() < 0) {
				trace("症状ID——症状名称"+(e.target as JComboBox).getSelectedItem().id + (e.target as JComboBox).getSelectedItem().lable);
				var selectedId:int = (e.target as JComboBox).getSelectedIndex();
				trace("选项ID"+selectedId);
				}
			}
		//------------------------------------------------------------------------------------------------------------------------//
		//根据ID获取部件相应的症状描述
		protected function getPartSym(_id):Array {
			var reutnArr:Array = new Array();
			var tempArr:Array = new Array();
			tempArr = symptomsArr[_id].Arr;
			for (var i:String in tempArr) {
				reutnArr.push(tempArr.lable);
				}
			tempArr = null;
			return reutnArr;
			}
		//------------------------------------------------------------------------------------------------------------------------//
		/** 隐藏列  */  
		public function hideColumn($table:JTable, $column:int):void{   
			
		 $table.getTableHeader().getColumnModel().getColumn($column).setMaxWidth(0);      
		 $table.getTableHeader().getColumnModel().getColumn($column).setMinWidth(0);      
		 $table.getColumnAt(0).setMaxWidth(0);   
		 $table.getColumnAt(0).setMinWidth(0);   
			
		}  

		//------------------------------------------------------------------------------------------------------------------------//
		//获取所有的部件名称
		protected function getTotalPartName():Array {
			var reutnrArr:Array = new Array();
			for (var i:String in symptomsArr) {
				reutnrArr.push(symptomsArr[i].partname);
				}
				//reutnrArr.push("请选择");
				return reutnrArr;
			}
		//------------------------------------------------------------------------------------------------------------------------//
		//建立症状描述部分
		protected function addcompond(_setUpFlag:Boolean = false):JScrollPane {
			var tempXML:XML = new XML();
			tempXML = _gvar._symptomsLib;
			
			for (var i:int = 0; i < tempXML.children().length(); i++ ) {
				var _SymptomsPart:Object = new Object();
				_SymptomsPart.partid = tempXML.child(i).@partid;//症状部件ID
				_SymptomsPart.partname = tempXML.child(i).@partname;//症状名字
				_SymptomsPart.partnumber = tempXML.child(i).@partnumber;//症状简称
				
				var tempArr:Array = new Array();
				for (var j:int = 0; j < tempXML.child(i).children().length(); j++ ) {
					var tempObj:SymptomsOptionObj = new SymptomsOptionObj(tempXML.child(i).child(j).@Symptomsid,tempXML.child(i).child(j).child(0));
					tempArr.push(tempObj);
					}
				_SymptomsPart.Arr = tempArr;//所有的可选对象数据
				symptomsArr.push(_SymptomsPart);
				}
				
			Symdata = new Array();
			var column:Array = new Array();
			if (!_setUpFlag) {
				//没提交时不显示分数跟正确答案
				column = ["症状部件", "症状描述","操作"];
				}else {
					column = ["症状部件", "症状描述","得分","正确答案"];
					}
			
			model = (new DefaultTableModel()).initWithDataNames(Symdata, column);
			model.setColumnEditable(2, false);
			var sorter:TableSorter = new TableSorter(model);
			table = new JTable(sorter);
			table.setRowHeight(25);
			table.setPreferredWidth(_thisWidth-50);
			table.setCellSelectionEnabled(false);
			table.setAutoResizeMode(JTable.AUTO_RESIZE_SUBSEQUENT_COLUMNS);
			table.setSelectionMode(0);

			var scrollPane:JScrollPane = new JScrollPane(table); 
			//scrollPane.setLayout(new ScrollPaneLayout());

			//scrollPane.setMinimumHeight(200);
			scrollPane.setMinimumHeight(200);
			scrollPane.setPreferredHeight(_thisHeight-70);
			//scrollPane.setPreferredWidth(_thisWidth)
			scrollPane.pack();
			return scrollPane;
		
		}
		//------------------------------------------------------------------------------------------------------------------------//
		
		//===================================================================================================================//
	}
}