package  
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import org.aswing.event.FrameEvent;
	import org.aswing.event.InteractiveEvent;
	import org.aswing.event.ResizedEvent;
	import org.aswing.event.SelectionEvent;
	import org.aswing.util.Timer;
	
	import bbjxl.com.ui.MyJCheckBox;
	import flash.events.Event;
	import org.aswing.event.CellEditorListener;
	import org.aswing.geom.IntDimension;
	import org.aswing.geom.IntRectangle;

	import flash.display.MovieClip;

	import flash.display.Sprite;
	import flash.events.MouseEvent;
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
	//import bbjxl.com.Gvar;
	import org.aswing.*;
	import org.aswing.UIManager;
	import com.adobe.utils.ArrayUtil;
	import org.aswing.*;
	import bbjxl.com.content.four.*;
	
	/**
	 * ...
	 * @author bbjxl
	 */
	public class JtableTest extends Sprite
	{
		private var table:JTable;//表
		private var model:DefaultTableModel;
		private var myFrame:JFrame;
		private var Symdata:Array;//症状表数据
		private var sympAddRow:JButton;
		//private var _gvar:Gvar = Gvar.getInstance();
		private var _totalSymPartArr:Array = new Array();//所有症状部件下拉控件数组
		private var _totalSymptomstArr:Array = new Array();//所有症状描述下拉控件数组
		private var scrollPane:JScrollPane;
		private var _currentSelectedRowId:int;//当前选中的行
		private var tableAndAddBtSp:JPanel;
		private var _setUpBt:JButton;//提交按钮
		public function JtableTest() 
		{
			 AsWingManager.initAsStandard(this);
			 AsWingManager.setRoot(this);
			 myFrame = new JFrame(this, "故障诊断测试数据记录表");
			myFrame.getContentPane().setLayout(new BoxLayout());
			tableAndAddBtSp = new JPanel(new SoftBoxLayout(1));
			sympAddRow = new JButton("增加一行");//增加一行按钮 
			_setUpBt = new JButton("提交");
			tableAndAddBtSp.append(addcompond());
			tableAndAddBtSp.append(sympAddRow);
			tableAndAddBtSp.append(_setUpBt);
			_setUpBt.addActionListener(setUpHandler);
			sympAddRow.addActionListener(sympAddRowHandler);
			myFrame.getContentPane().append(tableAndAddBtSp);
			 myFrame.setSizeWH(500, 300);
			//myFrame.x = myFrame.y =  Gvar.STAGE_X- myFrame.width-50;
			myFrame.setToolTipText("故障诊断测试数据记录表");
			myFrame.show();
			
			addRow();
			myFrame.addEventListener(FrameEvent.FRAME_MAXIMIZED,__onWinMaxDoSomething);
			myFrame.addEventListener(FrameEvent.FRAME_RESTORED , __onWinMaxDoSomething);
			myFrame.addEventListener(FrameEvent.FRAME_ICONIFIED , __onWinMaxDoSomething);
			myFrame.setState(JFrame.MAXIMIZED);//最大化
			//table.setRowSelectionInterval(0, 1);
			table.setEditingRow(0);
			table.setForeground(new ASColor(0xff0000));
			table.setRowSelectionAllowed(true);
			table.setRowSelectionInterval(0, 0);//选择第一行
			trace(table.getSelectionForeground())
			trace(table.getSelectedRow())
			
		}
		//提交
		private function setUpHandler(e:AWEvent):void {
			var _scoreArr:Array = new Array("100", "20", "60", "70");
			model.addColumn("分数", _scoreArr);
			model.setAllCellEditable(false);
			setNullTo();
			trace(model)
			}
		
		//所有的NULL转为空
		private function setNullTo():void {
			for (var i:int = 0; i < model.getColumnCount(); i++ ) {
				for (var j:int = 0; j < model.getRowCount(); j++ ) {
					if (model.getValueAt(i, j) == null) {
						model.setValueAt("空", i, j);
						}
					}
				}
			}
		
			
		private function __onWinMaxDoSomething(e:AWEvent):void {
			trace(e.type)
			if (e.type == "frameMaximized") {
				//最大化
				scrollPane.setPreferredHeight(stage.stageHeight - 100);
				}else if (e.type == "frameRestored") {
					//恢复
					scrollPane.setPreferredHeight(300 - 100);
					var temp:Timer = new Timer(10, false);
					temp.start();
					temp.addActionListener(startSetResetSize);
					function startSetResetSize(e:AWEvent):void {
						temp.stop();
						myFrame.setX((stage.stageWidth - myFrame.getWidth()) / 2);
						myFrame.setY(250)
						}
					
					}
					trace(myFrame.height)
			scrollPane.pack();
			
			tableAndAddBtSp.pack();
			}
		//症状表增加一行
		private function sympAddRowHandler(e:AWEvent):void {
			addRow();
			/*scrollPane.pack();
			tableAndAddBtSp.pack();*/
			}
		//增加一行
		private function addRow():void {
			var temp:Array = new Array("请选择", "请先选择部件","删除");
			Symdata.push(temp);
			model.setData(Symdata);
			//设置部件下拉选项
			var combEditor:DefaultComboBoxCellEditor = new DefaultComboBoxCellEditor();
			//所有可选部件名称
			combEditor.getComboBox().setListData(getTotalPartName());
			table.getColumn("症状部件").setCellEditor(combEditor);
			
			combEditor.getComboBox().addSelectionListener(symPartSelectedHandler);
			combEditor.getComboBox().addActionListener(currentPartSelectRow);
			
			_totalSymPartArr.push(combEditor.getComboBox());
			
			/*_gvar._currentSymptomsPartArr = getTotalPartName();
			table.getColumn("症状部件").setCellFactory(new GeneralTableCellFactory(SymptomPartTableCell));*/
		
			
			//table.addEventListener(SymptomPartTableCellSelectedEvent.SYMPTOMPARTCELLSELECTED, symPartSelectedHandler,true);
			
			//删除按钮
			table.getColumn("操作").setCellFactory(new GeneralTableCellFactory(BtnTableCell));
			table.addEventListener(BtnTableCell.DELETEROWEVENT, deleteRowHandler,true);
			function deleteRowHandler(e:Event):void {
				trace(table.getSelectedRow());
				model.removeRow(table.getSelectedRow());
				}
			//增加一行后之前所有的行不可编辑只能删除
			//model.setAllCellEditable(false);
			/*if (model.getRowCount() > 1) {
				
				(table.getCellEditorOfRowColumn(1, 0) as DefaultComboBoxCellEditor).removeMe();
				}*/
			
			//table.addEventListener(SelectionEvent.ROW_SELECTION_CHANGED,__rowSelectHandler);
			

			//table.getColumn("操作").getCellEditor().startCellEditing();
			
		/*	hideColumn(table, 3);
			hideColumn(table, 4);*/
			}
		
		//下拉框点击事件
		private function currentSelectRow(e:AWEvent):void {
			trace(typeof(e.target))
			
			_currentSelectedRowId = table.getSelectedRow();
			trace("_currentSelectedRowId=" + _currentSelectedRowId);
			var tempIndex:int =(getTotalPartName() as Array).indexOf(table.getModel().getValueAt(_currentSelectedRowId, 0));// (_totalSymPartArr[_currentSelectedRowId] as JComboBox).getSelectedIndex();
			if (tempIndex < 0) {
				//没找到
				trace("没找到")
				//(e.target as JComboBox).setEditable(false);
				//(e.target as JComboBox).setListData([""]);
				}else {
					(e.target as JComboBox).setListData(getTotalPartName2(tempIndex));
					}
			}
		private function currentPartSelectRow(e:AWEvent):void {
			trace(typeof(e.target))
			
			_currentSelectedRowId = table.getSelectedRow();
			trace("_currentSelectedRowId=" + _currentSelectedRowId);
		}
		
		//获取所有的部件名称
		private function getTotalPartName():Array {
			var reutnrArr:Array = new Array();
			for (var i:uint = 0; i < 6; i++ ) {
				reutnrArr.push("选项"+i);
				}
			
				//reutnrArr.push("请选择");
				return reutnrArr;
			}	
		private function getTotalPartName2(_value:int):Array {
			var reutnrArr:Array = new Array();
			for (var i:uint = 0; i < 6; i++ ) {
				reutnrArr.push(_value+"选项"+i);
				}
			
				//reutnrArr.push("请选择");
				return reutnrArr;
			}		
		//选择部件选项后
		private function symPartSelectedHandler(e:AWEvent):void {
			trace("ok")
			
			var selectedId:int = (e.target as JComboBox).getSelectedIndex();
		
			//选项大于0时重设症状描述为“请选择”
			var _currentRowId:int = _totalSymPartArr.indexOf((e.target as JComboBox));//当前选的行
			model.setValueAt("请选择", table.getSelectedRow(), 1);
				
			if (selectedId >= 0) {
				trace("_currentRowId="+_currentRowId)
				//设置症状描述下拉选项
				/*_gvar._currentSymptomsArr = getTotalPartName2(selectedId);
				table.getColumn("症状描述").setCellFactory(new GeneralTableCellFactory(SymptomTableCell));*/
				var combEditor:DefaultComboBoxCellEditor = new DefaultComboBoxCellEditor();
				combEditor.getComboBox().setListData(getTotalPartName2(selectedId));
				table.getColumn("症状描述").setCellEditor(combEditor);
				combEditor.getComboBox().addActionListener(currentSelectRow);
				//combEditor.getComboBox().addSelectionListener(symSelectedHandler);
				_totalSymptomstArr[_currentRowId]=(combEditor.getComboBox());
			}
			
			}
			
		private function addcompond(_setUpFlag:Boolean = false):JScrollPane {
		
		/*var tempXML:XML = new XML();
		tempXML = _gvar._symptomsLib;
		//trace("tempXML="+tempXML)
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
			}*/
			
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
		table.setPreferredWidth(500-50);
		table.setCellSelectionEnabled(false);
		table.setAutoResizeMode(JTable.AUTO_RESIZE_SUBSEQUENT_COLUMNS);
		

		scrollPane = new JScrollPane(table); 
		//scrollPane.setLayout(new ScrollPaneLayout());

		scrollPane.setMinimumHeight(200);
		scrollPane.setPreferredHeight(300-100);
		//scrollPane.setMinimumHeight(this.height - 100);
		//scrollPane.setPreferredWidth(_thisWidth)
		//scrollPane.pack();
		return scrollPane;
		
		}
	}

}