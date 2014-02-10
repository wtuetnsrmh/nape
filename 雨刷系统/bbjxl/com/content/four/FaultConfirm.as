package bbjxl.com.content.four 
{
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
	 * 五、故障点确定
	 */
	public class FaultConfirm extends JPanel
	{
		protected var panel11:JScrollPane;
		protected var table:JTable;//表
		protected var model:DefaultTableModel;
		protected var Symdata:Array;//表数据
		protected var _gvar:Gvar = Gvar.getInstance();
		protected var _currentSelectedRowId:int;//当前选中的行
		protected var symptomsArr:Array = new Array();//原因的数据
		public var _totalScore:Number=0;
		//===================================================================================================================//
		//宽高度
		private var _thisWidth:uint=600;
		private var _thisHeight:uint=270;
		//===================================================================================================================//
		public function FaultConfirm() 
		{
			super(new BoxLayout());
			setName("四、故障点确定");
			panel11 = addcompond();//检查过程与分析表
			append(panel11);
			addRow();
		}
		//===================================================================================================================//
		public function __onWinMaxDoSomething(eType:String):void {
			if (eType== "frameMaximized") {
				//最大化
				panel11.setPreferredHeight(stage.stageHeight - 50);
				}else if (eType == "frameRestored") {
					//恢复
					panel11.setPreferredHeight(_thisHeight- 50);
					}
					
			panel11.pack();
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//提交
		public function setUp():JScrollPane {
			var faultConfirmSetUp:FaultConfirmSetUp = new FaultConfirmSetUp(table, model);
			_totalScore = faultConfirmSetUp._totalScore;
			return faultConfirmSetUp;
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//增加一行
		protected function addRow():void {
			var temp:Array = new Array("请选择", "请先选择");
			Symdata.push(temp);
			model.setData(Symdata);
			//设置部件下拉选项
			var combEditor:DefaultComboBoxCellEditor = new DefaultComboBoxCellEditor();
			//所有可选部件名称
			combEditor.getComboBox().setListData(getTotalPartName());
			table.getColumnAt(0).setCellEditor(combEditor);
			
			combEditor.getComboBox().addSelectionListener(symPartSelectedHandler);
			combEditor.getComboBox().addActionListener(currentPartSelectRow);
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
			model.setValueAt("请选择", table.getSelectedRow(), 1);
			
			if (selectedId >= 0) {
				//trace("_currentRowId="+_currentRowId)
				//设置症状描述下拉选项
				var combEditor:DefaultComboBoxCellEditor = new DefaultComboBoxCellEditor();
				combEditor.getComboBox().setListData(symptomsArr[selectedId].Arr);
				table.getColumnAt(1).setCellEditor(combEditor);
				combEditor.getComboBox().addActionListener(currentSelectRow);
				combEditor.getComboBox().addSelectionListener(symSelectedHandler);
				
			}
			
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//症状描述下拉框点击后重新设置症状描述下拉选项
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
		//选择症状描述后
		protected function symSelectedHandler(e:AWEvent):void {
			trace("(e.target as JComboBox).getSelectedIndex()=" + (e.target as JComboBox).getSelectedIndex())
			if (!(e.target as JComboBox).getSelectedIndex() < 0) {
				trace("症状ID——症状名称"+(e.target as JComboBox).getSelectedItem().id + (e.target as JComboBox).getSelectedItem().lable);
				var selectedId:int = (e.target as JComboBox).getSelectedIndex();
				trace("选项ID"+selectedId);
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
			var tempXML:XML = new XML();
			tempXML =_gvar._reasonLib;
			
			for (var i:int = 0; i < tempXML.children().length(); i++ ) {
				var _SymptomsPart:Object = new Object();
				_SymptomsPart.partid = tempXML.child(i).@partid;//故障ID
				_SymptomsPart.partname = tempXML.child(i).@partname;//故障部件名字
				_SymptomsPart.partnumber = tempXML.child(i).@partnumber;//故障部件简称
				
				var tempArr:Array = new Array();
				for (var j:int = 0; j < tempXML.child(i).children().length(); j++ ) {
					var tempObj:SymptomsOptionObj = new SymptomsOptionObj(tempXML.child(i).child(j).@Reasonsid,tempXML.child(i).child(j).child(0));
					tempArr.push(tempObj);
					}
				_SymptomsPart.Arr = tempArr;//所有的可选对象数据
				symptomsArr.push(_SymptomsPart);
				}
				
			Symdata = new Array();
			var column:Array = new Array();
			if (!_setUpFlag) {
				//没提交时不显示分数跟正确答案
				column = ["故障部件", "故障点"];
				}else {
					column = ["故障部件", "故障点","得分"];
					}
			
			model = (new DefaultTableModel()).initWithDataNames(Symdata, column);
			
			var sorter:TableSorter = new TableSorter(model);
			table = new JTable(sorter);
			table.setRowHeight(25);
			table.setPreferredWidth(_thisWidth-50);
			table.setCellSelectionEnabled(false);
			table.setAutoResizeMode(JTable.AUTO_RESIZE_SUBSEQUENT_COLUMNS);

			var scrollPane:JScrollPane = new JScrollPane(table); 
			scrollPane.setMinimumHeight(200);
			scrollPane.setPreferredHeight(_thisHeight-50);
			scrollPane.pack();
			return scrollPane;
		
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
	}

}