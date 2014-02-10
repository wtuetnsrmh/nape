package bbjxl.com.content.four {
	/*诊断表*/
	import bbjxl.com.content.first.MNKSClickEvent;
	import bbjxl.com.ui.MyJCheckBox;
	import flash.events.Event;
	import org.aswing.event.CellEditorListener;
	import org.aswing.event.FrameEvent;
	import org.aswing.geom.IntDimension;
	import org.aswing.geom.IntRectangle;
	import org.aswing.util.Timer;

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
	import bbjxl.com.Gvar;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.external.ExternalInterface;

	import org.aswing.*;
	import org.aswing.UIManager;
	import com.adobe.utils.ArrayUtil;


public class PopFrame extends Sprite {
	public static const CLOSEFRAM:String = "closeFrame";//关闭窗口时触发事件
	public static const SETUPEVENT:String = "setUpeEvent";//提交事件
	
	private var chexBoxSel:Array = new Array();//原因分析选项
	private var _currentAddPanel:JPanel = new JPanel();//当前要增加的行
	private var table:JTable;//表
	private var model:DefaultTableModel;
	private var Symdata:Array;//症状表数据
	private var Reasondata:Array = [];//原因表数据
	private var data:Array = [];
	
    private var myFrame:JFrame;
    private var myButton:JToggleButton;
	private var myButton2:JToggleButton;
	private var myButton3:JToggleButton;
	//private var myContains:MovieClip = new MovieClip();
	
	private var panel1:JPanel;
	private var panel2:JPanel;
	private var panel3:JPanel;
	private var panel4:JPanel;
	
	private var panel11:JScrollPane;
	private var panel21:JScrollPane;
	private var panel31:Component;
	private var panel41:Component;
	
	private var panel31Panel:Component;
	
	private var jbuttons:JPanel;//症状表两个按钮容器
	private var jbuttonsReason:JPanel;//原因表两个按钮容器
	private var sympAddRow:JButton;//症状表增加一行按钮
	private var reasonAddRow:JButton;//原因表增加一行按钮
	
	public var tabpane:JTabbedPane;
	private var _Symptoms:Symptoms = new Symptoms();//一:症状描述
	private var _Reasons:Reasons = new Reasons();//二、可能原因分析
	public var _ProcessAndAnalysis:ProcessAndAnalysis = new ProcessAndAnalysis();//三、过程
	private var _FaultConfirm:FaultConfirm = new FaultConfirm();//四、故障确认
	private var _Troubleshooting:Troubleshooting = new Troubleshooting();//五、故障排除与验证
	//-----------------------------------------------------------------数据---------------------------------------------------------------------------//
	public var _totalTabelModeArr:Array;//四个表的数据模型
	
	private var symptomsArr:Array = new Array();//症状描述的数据
	private var reasonArr:Array = new Array();//原因分析的数据
	
	private var _totalSymPartArr:Array = new Array();//所有症状部件下拉控件数组
	private var _totalSymptomstArr:Array = new Array();//所有症状描述下拉控件数组
	private var _gvar:Gvar = Gvar.getInstance();
	
	private var _tabpanleCurrentSelectedIndex:int = 0;//当前TABPANLE选的场景ID
	private var _tabpanleCurrentSelectedCom:*;//当前TABPANLE选的场景
	private var _currentStageState:String = "frameRestored";//当前窗口状态，放大恢复
	
	private var _toolWorngScore:Number=0;//万用表使用错误扣分
	//布局
	private var myButtons:JPanel;
	
	//宽度
	private var _thisWidth:uint=600;
	private var _thisHeight:uint=300;

    public function PopFrame(myContains:Sprite) {
		super();
		
		
        AsWingManager.initAsStandard(myContains);
		AsWingManager.setRoot(this);
		AsWingManager.getStage().align =StageAlign.TOP;
		AsWingManager.getStage().scaleMode = StageScaleMode.SHOW_ALL;
		
		tabpane = new JTabbedPane();
		tabpane.append(_Symptoms);
		tabpane.append(_Reasons);
		tabpane.append(_ProcessAndAnalysis);
		tabpane.append(_FaultConfirm);
		tabpane.append(_Troubleshooting);
		_Troubleshooting.addEventListener("setUpClickEvent", setUpClickEventHandler);
		tabpane.addStateListener(tabPaneStateChangeHandler);
		_tabpanleCurrentSelectedCom = _Symptoms;
		
		myFrame = new JFrame(myContains, "故障诊断测试数据记录表");
        myFrame.getContentPane().setLayout(new SoftBoxLayout(1));
        myFrame.getContentPane().append(tabpane);
		myFrame.setClosable(false);
		//myFrame.setResizable(false);
		//myFrame.setMaximizedBounds(new IntRectangle(0, 0, 800, 300));
        myFrame.setSizeWH(_thisWidth,_thisHeight );
		myFrame.x = myFrame.y =  Gvar.STAGE_X- myFrame.width-50;
		myFrame.setToolTipText("故障诊断测试数据记录表");
        myFrame.show();
		myFrame.addEventListener(FrameEvent.FRAME_MAXIMIZED,__onWinMaxDoSomething);
		myFrame.addEventListener(FrameEvent.FRAME_RESTORED , __onWinMaxDoSomething);
		myFrame.addEventListener(FrameEvent.FRAME_ICONIFIED , __onWinMaxDoSomething);
		
		
	
    }
	//--------------------------------------------------------------------------------------------------------------------//
	//提交接口，供考试时间到时调用
	public function setUpExam():void {
		setUpClickEventHandler(null);
		}
	
	//提交
	protected function setUpClickEventHandler(e:Event):void {
		//最大化时
		AsWingManager.getStage().align =StageAlign.TOP_LEFT;
		AsWingManager.getStage().scaleMode = StageScaleMode.NO_SCALE;
		myFrame.setToolTipText("考试成绩详情");
		//移除放大缩小侦听
		myFrame.removeEventListener(FrameEvent.FRAME_MAXIMIZED,__onWinMaxDoSomething);
		myFrame.removeEventListener(FrameEvent.FRAME_RESTORED , __onWinMaxDoSomething);
		myFrame.removeEventListener(FrameEvent.FRAME_ICONIFIED , __onWinMaxDoSomething);
		

		myFrame.addEventListener(FrameEvent.FRAME_CLOSING, onClose);
		_totalTabelModeArr = new Array();
		
		var titleArr:Array=new Array("一、症状描述","二、可能原因分析","三、检查过程与分析","四、故障点确定","五、故障排除与验证","工具使用扣分项")
		_totalTabelModeArr.push(_Symptoms.setUp());//症状描述提交
		_totalTabelModeArr.push(_Reasons.setUp());//症状描述提交
		_totalTabelModeArr.push(_ProcessAndAnalysis.setUp());//症状描述提交
		_totalTabelModeArr.push(_FaultConfirm.setUp());//症状描述提交
		_totalTabelModeArr.push(_Troubleshooting.setUp());//故障排除与验证提交
		_totalTabelModeArr.push(toolWrong());//万用表使用错误扣分
		
		myFrame.getContentPane().removeAll();
		
		var endJsp:JScrollPane = new JScrollPane();
		var endP:JPanel = new JPanel(new SoftBoxLayout(1,0,AsWingConstants.TOP));
		endP.setPreferredWidth(AsWingManager.getStage().stageWidth - 20);
		//endJsp.setPreferredHeight(AsWingManager.getStage().stageHeight - 40);
		
		
		var _endScore:Number = 0;//最终得分
		for (var i:String in _totalTabelModeArr) {
			var _title:JLabel = new JLabel(titleArr[i]);
			_title.setFont(new ASFont("Tahoma", 15, true));
			_title.setForeground(new ASColor(0xff0000, 1));
			_title.setHorizontalAlignment(AsWingConstants.LEFT);
		
			endP.append(_title);
			endP.append(_totalTabelModeArr[i]);
			trace(_totalTabelModeArr[i]._totalScore)
			}
		//显示总分
		_endScore = _Symptoms._totalScore + _Reasons._totalScore + _ProcessAndAnalysis._totalScore + _FaultConfirm._totalScore + _Troubleshooting._totalScore + _toolWorngScore;
		_endScore = (_endScore < 0)? 0:_endScore;
		_gvar._endExamScore = _endScore;
		var _scoreLable:JLabel = new JLabel("总 分："+String(_endScore));
			_scoreLable.setFont(new ASFont("Tahoma", 18, true));
			_scoreLable.setForeground(new ASColor(0xff0000, 1));
			_scoreLable.setAlignmentX(1);
			_scoreLable.setHorizontalAlignment(AsWingConstants.RIGHT);
			endP.append(_scoreLable);
			endP.setAlignmentY(1);
		
		//endP.setConstraints("North");
		endJsp.append(endP);
		//endJsp.setConstraints("North");
		trace("endP.getHeight()="+endP.getPreferredHeight())
		trace("endJsp.getHeight()="+endJsp.getPreferredHeight())
		/*if (endP.getPreferredHeight() > AsWingManager.getStage().stageHeight) {
			myFrame.getContentPane().setLayout(new BoxLayout(1));
			}else {
				myFrame.getContentPane().setLayout(new SoftBoxLayout(1,0,AsWingConstants.TOP));
				}*/
		myFrame.getContentPane().setLayout(new BoxLayout(1));
		
		myFrame.getContentPane().append(endJsp);
		myFrame.setState(JFrame.MAXIMIZED);//最大化
		//myFrame.setComBoundsXYWH(0,0,stage.stageWidth,stage.stageHeight)
		//ExternalInterface.call("alert",stage.stageHeight+"/"+stage.stageWidth);
		//ExternalInterface.call("alert",AsWingManager.getStage().stageHeight+"/"+AsWingManager.getStage().stageWidth);
		//myFrame.setHeight(stage.stageHeight)
		//myFrame.setWidth(stage.stageWidth)
		myFrame.setClosable(true);//显示关闭按钮
		myFrame.setResizable(false);//不能改变尺寸
		
		//发出提交事件用于在考试时用
		dispatchEvent(new Event(SETUPEVENT));
		}
		
	//关闭按钮点击事件
	protected function onClose(e:AWEvent):void {
		/*var tempEvent:MNKSClickEvent=new MNKSClickEvent("closemnksevent");
			dispatchEvent(tempEvent);*/
		AsWingManager.getStage().align =StageAlign.TOP;
		AsWingManager.getStage().scaleMode = StageScaleMode.SHOW_ALL;
		dispatchEvent(new Event(CLOSEFRAM));
		}
	//--------------------------------------------------------------------------------------------------------------------//
	//工具使用扣分项
	public function toolWrong():JScrollPane {
			var _toolwrong:ToolWrong = new ToolWrong();
			_toolWorngScore=_toolwrong._totalScore;
			return _toolwrong;
			}
	//--------------------------------------------------------------------------------------------------------------------//
	//显示隐藏记录表
	public function closeFrame():void {
		if (myFrame.isShowing()) {
			myFrame.tryToClose();
			}else {
				myFrame.show();
				}
		}
	//--------------------------------------------------------------------------------------------------------------------//
	//场景切换侦听
	private function tabPaneStateChangeHandler(e:AWEvent):void {
		
		//切换前先判断是否当前场景已经有数据
		trace(tabpane.getSelectedIndex());
		if (_tabpanleCurrentSelectedCom.returnIready()) {
			_tabpanleCurrentSelectedIndex = tabpane.getSelectedIndex();
			_tabpanleCurrentSelectedCom = tabpane.getSelectedComponent();
			_tabpanleCurrentSelectedCom.__onWinMaxDoSomething(_currentStageState);
			}else {
				tabpane.setSelectedIndex(_tabpanleCurrentSelectedIndex);
				}
		}
	//--------------------------------------------------------------------------------------------------------------------//
	//放大缩小侦听
	private function __onWinMaxDoSomething(e:AWEvent):void {
		trace(e.type)
		_Symptoms.__onWinMaxDoSomething(e.type);
		_Reasons.__onWinMaxDoSomething(e.type);
		_ProcessAndAnalysis.__onWinMaxDoSomething(e.type);
		_FaultConfirm.__onWinMaxDoSomething(e.type);
		_currentStageState = e.type;
		tabPaneStateChangeHandler(null);
		if (e.type == "frameIconified") {
			//最小化重设坐标
			myFrame.setX(Gvar.STAGE_X-200);
			myFrame.setY(Gvar.STAGE_Y - 200);
			_currentStageState = "frameIconified";
			}else if (e.type == "frameRestored") {
				//恢复
				AsWingManager.getStage().align =StageAlign.TOP;
				AsWingManager.getStage().scaleMode = StageScaleMode.SHOW_ALL;
				_currentStageState = "frameRestored";
				var temp:Timer = new Timer(10, false);
					temp.start();
					temp.addActionListener(startSetResetSizeXY);
					function startSetResetSizeXY(e:AWEvent):void {
						temp.stop();
						myFrame.setX((Gvar.STAGE_X - myFrame.getWidth()) / 2);
						myFrame.setY((Gvar.STAGE_Y - myFrame.getHeight()) / 2);
						}
				}else if (e.type == "frameMaximized") {
					AsWingManager.getStage().align =StageAlign.TOP_LEFT;
					AsWingManager.getStage().scaleMode = StageScaleMode.NO_SCALE;
					}
		
		
		trace(_currentStageState)
		}
	//--------------------------------------------------------------------------------------------------------------------//
	//--------------------------------------------------------------------------------------------------------------------//

	public function Idispose():void {
		myFrame.dispose();
		}
	
    private function __buttonClicked(e:AWEvent):void {
       // JOptionPane.showMessageDialog("提示", "Hello, World!");
	   trace((e.currentTarget as JToggleButton).name)
	   switch((e.currentTarget as JToggleButton).name) {
		   case "jtb1":
		   if (e.currentTarget.isSelected()) {
			panel1.append(panel11);
			jbuttons.append(sympAddRow);
			panel1.pack();
			myFrame.pack();
		   }else
			{
				panel1.remove(panel11);
				jbuttons.remove(sympAddRow);
				panel1.pack();
				myFrame.pack();
			}
		   break;
		   case "jtb2":
		   if (e.currentTarget.isSelected()) {
			panel2.append(panel21);
			jbuttonsReason.append(reasonAddRow);
			myFrame.pack();
		   }else{
				panel2.remove(panel21);
				jbuttonsReason.remove(reasonAddRow);
				myFrame.pack();
		   }
		   break;
		   case "jtb3":
		   if (e.currentTarget.isSelected()) {
			panel3.append(panel31);
			myFrame.pack();
		   }else{
			panel3.remove(panel31);
			myFrame.pack();
		   }
		   break;
		   default:
		   break;
		   }
	   
    }
	
	//故障部件确认部分
	private function creaSetup():JScrollPane {
		var returnJpane:JScrollPane;
		var tempjPane:JPanel = new JPanel(new FlowLayout());
		//横线
		tempjPane.append(new JSeparator(JSeparator.VERTICAL))
		tempjPane.append(new JButton("故障部位确认"))
		
		returnJpane = new JScrollPane(tempjPane);
		returnJpane.pack();
		return returnJpane
		}
	//建立症状描述部分
	private function addcompond(_setUpFlag:Boolean = false):JScrollPane {
		
		var tempXML:XML = new XML();
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
			}
			
		Symdata = new Array();
		var column:Array = new Array();
		if (!_setUpFlag) {
			//没提交时不显示分数跟正确答案
			column = ["症状部件", "症状描述"];
			}else {
				column = ["症状部件", "症状描述","得分","正确答案"];
				}
		
		model = (new DefaultTableModel()).initWithDataNames(Symdata, column);

		var sorter:TableSorter = new TableSorter(model);
		table = new JTable(sorter);
		table.setRowHeight(22);
		table.setPreferredWidth(_thisWidth);
		table.setCellSelectionEnabled(false);
		table.setAutoResizeMode(JTable.AUTO_RESIZE_ALL_COLUMNS);

		var scrollPane:JScrollPane = new JScrollPane(table); 
		scrollPane.setPreferredHeight(200);
		return scrollPane;
		
		}
		//------------------------------------------------------------------------------------------------------------------------//
		//增加一行
		private function addRow():void {
			var temp:Array = new Array("请选择", "请先选择部件");
			Symdata.push(temp);
			model.setData(Symdata);
			//设置部件下拉选项
			var combEditor:DefaultComboBoxCellEditor = new DefaultComboBoxCellEditor();
			//所有可选部件名称
			combEditor.getComboBox().setListData(getTotalPartName());
			table.getColumn("症状部件").setCellEditor(combEditor);
			combEditor.getComboBox().addSelectionListener(symPartSelectedHandler);
			_totalSymPartArr.push(combEditor.getComboBox());
			}
		//------------------------------------------------------------------------------------------------------------------------//
		//选择部件选项后
		private function symPartSelectedHandler(e:AWEvent):void {
			var selectedId:int = (e.target as JComboBox).getSelectedIndex();
			//trace(selectedId);
			//选项大于0时重设症状描述为“请选择”
			var _currentRowId:int = _totalSymPartArr.indexOf((e.target as JComboBox));//当前选的行
			if (selectedId >= 0) {
				trace("_currentRowId="+_currentRowId)
				/*if (!_currentRowId < 0) {
					Symdata[_currentRowId][1] = "请选择";
					model.setData(Symdata);
					}*/
				//设置症状描述下拉选项
				if(_totalSymptomstArr[_currentRowId]==null){
				var combEditor:DefaultComboBoxCellEditor = new DefaultComboBoxCellEditor();
				trace("symptomsArr[selectedId].Arr="+symptomsArr[selectedId].Arr)
				combEditor.getComboBox().setListData(symptomsArr[selectedId].Arr);
				table.getColumn("症状描述").setCellEditor(combEditor);
				combEditor.getComboBox().addSelectionListener(symSelectedHandler);
				_totalSymptomstArr.push(combEditor.getComboBox());
				}else {
					//已经有了下拉框则设为未选择状态
					(_totalSymptomstArr[_currentRowId] as JComboBox).setSelectedItem("请选择");
					(_totalSymptomstArr[_currentRowId] as JComboBox).setSelectedIndex(-1);
					}
			}
			}
		//------------------------------------------------------------------------------------------------------------------------//
		//选择症状描述后
		private function symSelectedHandler(e:AWEvent):void {
			trace("(e.target as JComboBox).getSelectedItem()=" + (e.target as JComboBox).getSelectedIndex())
			if (!(e.target as JComboBox).getSelectedIndex() < 0) {
				trace("症状ID——症状名称"+(e.target as JComboBox).getSelectedItem().id + (e.target as JComboBox).getSelectedItem().lable);
				var selectedId:int = (e.target as JComboBox).getSelectedIndex();
				trace("选项ID"+selectedId);
				}
			}
		//------------------------------------------------------------------------------------------------------------------------//
		//根据ID获取部件相应的症状描述
		private function getPartSym(_id):Array {
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
		//获取所有的部件名称
		private function getTotalPartName():Array {
			var reutnrArr:Array = new Array();
			for (var i:String in symptomsArr) {
				reutnrArr.push(symptomsArr[i].partname);
				}
				return reutnrArr;
			}
		
		//建立原因分析部分
		private function addcompond2():JScrollPane {
		var returnJpane:JScrollPane;
		var tempjPane:JPanel = new JPanel(new FlowWrapLayout(200));
		
		//var tempArr:Array = new Array("马达不转","马达空转","马达只有咔咔声","马达只有咔咔声","马达只有咔咔声","马达只有咔咔声","马达只有咔咔声","马达只有咔咔声","马达只有咔咔声");
		for (var i:uint = 0; i < reasonArr.length; i++ ) {
			var chex:MyJCheckBox = new MyJCheckBox(reasonArr[i]);
			chex._id = i;
			//trace(chex.getPreferredWidth())
			chex.addActionListener(checkBoxClick);
			tempjPane.append(chex);
			}
		//tempjPane.setBorder(new LineBorder());
		tempjPane.pack();
		
		returnJpane = new JScrollPane(tempjPane);
		(tempjPane.getPreferredHeight() < 200)?returnJpane.setPreferredHeight(tempjPane.getPreferredHeight()):returnJpane.setPreferredHeight(200);
		
		returnJpane.setPreferredWidth(_thisWidth-20);
		
		return returnJpane;
		
		}
		//建立检查步骤
		private function checkBoxClick(e:AWEvent):void {
			trace((e.target)._id);
			var tempId:uint = (e.target)._id;
			var tempArr:Array = new Array(((e.target) as JCheckBox).getDisplayText(),"正常/不正常");
			if ((e.target as MyJCheckBox).isSelected()) {
				if(!ArrayUtil.arrayContainsValue(chexBoxSel,tempId)){
					chexBoxSel.push(tempId);
					
					data.push(tempArr);
					model.setData(data);
				}
			}else {
				//去掉选项
					if(ArrayUtil.arrayContainsValue(chexBoxSel,tempId))
					ArrayUtil.removeValueFromArray(chexBoxSel, tempId);
					for (var i:String in data) {
						if (data[i][0] == ((e.target) as JCheckBox).getDisplayText()) {
							model.removeRow(uint(i));
							break;
							}
						}
					model.setData(data);
					}
				
					//设置下拉选项
					var combEditor:DefaultComboBoxCellEditor = new DefaultComboBoxCellEditor();
					combEditor.getComboBox().setListData(["正常/不正常","正常", "不正常"]);
					table.getColumn("结果评判").setCellEditor(combEditor);
					trace(data)
					//combEditor.addCellEditorListener(traceData);
					}
		
					
		
			
		/*private function addcompond3():JScrollPane {
		var returnJpane:JScrollPane;
		//panel31Panel=new JPanel(new SoftBoxLayout(1,4,2));
		
		returnJpane = new JScrollPane(panel31Panel);
		returnJpane.setPreferredWidth(_thisWidth-20);
		returnJpane.setPreferredHeight(200);
		
		return returnJpane;
		
		}*/
	
		private function createTable():Component{
		
		
	/*	for(var i:Number=0; i<100; i++){
			data.push(["other"+i, i]);
		}*/
		var column:Array = ["检查部件部位", "结果评判"];
		
		model = (new DefaultTableModel()).initWithDataNames(data, column);
		/*model.setColumnClass(1, "Number");
		model.setColumnClass(2, "Boolean");*/
		
		var sorter:TableSorter = new TableSorter(model);
		table = new JTable(sorter);
		table.setRowHeight(22);
		table.setPreferredWidth(300);
		table.setCellSelectionEnabled(false);
		
		
		/*sorter.setTableHeader(table.getTableHeader());
		sorter.setColumnSortable(4, false);
		sorter.setSortingStatus(3, TableSorter.ASCENDING);*/
		
		
		
		//table.getColumn("检查部件部位").setCellFactory(new GeneralTableCellFactory(PoorTextCell));
		/*table.setDefaultCellFactory("Object", new GeneralTableCellFactory(PoorTextCell));
		table.setBorder(new EmptyBorder(new LineBorder(null, ASColor.RED, 2), new Insets(5, 5, 5, 5)));*/
		//table.setRowSelectionInterval(10, 13);
		table.setAutoResizeMode(JTable.AUTO_RESIZE_ALL_COLUMNS);
		var scrollPane:JScrollPane = new JScrollPane(table); 
		//scrollPane.setPreferredHeight(200);
		return scrollPane;
	}
}



}
