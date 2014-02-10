package bbjxl.com.content.four{
	/**
	作者：被逼叫小乱
	//模拟考试最后显示的结果
	www.bbjxl.com/Blog
	**/
	
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import org.aswing.ASColor;
	import org.aswing.ASFont;
	import org.aswing.AsWingManager;
	import org.aswing.border.EmptyBorder;
	import org.aswing.FlowLayout;
	import org.aswing.JButton;
	import org.aswing.JFrame;
	import org.aswing.AsWingConstants;
	import org.aswing.JLabel;
	import org.aswing.JOptionPane;
	import org.aswing.event.AWEvent;
	import org.aswing.JPanel;
	import org.aswing.JScrollPane;
	import bbjxl.com.Gvar;
	import org.aswing.JTable;
	import org.aswing.SoftBoxLayout;
	import org.aswing.table.DefaultTableModel;
	import org.aswing.table.sorter.TableSorter;
	public class MNKS_end extends Sprite {
		private var _myContains:Sprite = new Sprite();
		private var myFrame:JFrame;
		public var tabelPanel:JScrollPane;//放表的SP
		private var model:DefaultTableModel; 
		public var _data:Array = new Array();//数据
		//===================================================================================================================//
		
		//===================================================================================================================//
		public function MNKS_end(_value:Array) {
			_data = _value;
			
			addChild(_myContains);
			AsWingManager.initAsStandard(_myContains);
			//myFrame = new JFrame(_myContains, "考试结果");
			//myFrame.getContentPane().setLayout(new SoftBoxLayout(1));
			addTabel();
			/*myFrame.getContentPane().append(tabelPanel);
			
			//myFrame.setClosable(false);
			//myFrame.setResizable(false);
			//myFrame.setMaximizedBounds(new IntRectangle(0, 0, 300, 800));

			myFrame.setSizeWH(600, 500);
			myFrame.x = (Gvar.STAGE_X- myFrame.width)/2;
			myFrame.y =  (Gvar.STAGE_Y- myFrame.height)/2;
			myFrame.setToolTipText("考试结果");
			myFrame.show();
			
			myFrame.pack();*/
		}//End Fun
		//增加表
		private function addTabel():void {
			//_data = [["1","1", "2", "11", "22"], ["2","1", "2", "11", "22"], ["3","1", "2", "11", "22"]];
			//建立上面的题目跟我的选择
			var topcolumn:Array = ["题  目", "您的选择"];
			var topData:Array = [];
			var topModel:DefaultTableModel = (new DefaultTableModel()).initWithDataNames(topData, topcolumn);
			var topTable:JTable = new JTable(topModel);
			topTable.setRowHeight(40);
			topTable.setPreferredWidth(650);
			topTable.setCellSelectionEnabled(false);
			
			var column:Array = ["序 号","故障部件", "故障部位","您选择的故障部件", "您选择的故障部位","得 分"];
		
			model = (new DefaultTableModel()).initWithDataNames(_data, column);
			/*model.setColumnClass(1, "Number");
			model.setColumnClass(2, "Boolean");*/
			
			var sorter:TableSorter = new TableSorter(model);
			var table:JTable = new JTable(sorter);
			table.getColumnAt(0).setPreferredWidth(30); 
			table.getColumnAt(1).setPreferredWidth(170); 
			table.getColumnAt(3).setPreferredWidth(170); 
			table.getColumnAt(5).setPreferredWidth(30); 
			table.setRowHeight(22);
			table.setPreferredWidth(650);
			//table.y = topTable.getRowHeight();
			table.setCellSelectionEnabled(false);
			
			//分数
			var _totalScore:uint = 0;
			for (var i:String in _data) {
				_totalScore+=uint(_data[i][5]);
				}
			var _scoreLabel:JLabel = new JLabel("您的总分：" + _totalScore);
			_scoreLabel.setFont(new ASFont("Tahoma", 30, false, false, false, false));
			_scoreLabel.setForeground(new ASColor(0x990000, 1));
			
			var layout0:SoftBoxLayout = new SoftBoxLayout();
			layout0.setAxis(AsWingConstants.VERTICAL);
			layout0.setAlign(AsWingConstants.TOP);
			var totalTable:JPanel = new JPanel(layout0);
			//totalTable.append(topTable);
			totalTable.append(table);
			totalTable.append(_scoreLabel);
			totalTable.pack();
			
			tabelPanel = new JScrollPane(totalTable); 
			//tabelPanel.setPreferredHeight(500);
			if(totalTable.getHeight()<500)
			tabelPanel.pack();
			else
			tabelPanel.setPreferredHeight(500);
			var border0:EmptyBorder = new EmptyBorder();
			tabelPanel.setBorder(border0);
			
			
			}
		//--------------------------------------------------------------------------------------------------------------------//
		
		//===================================================================================================================//
	}
}