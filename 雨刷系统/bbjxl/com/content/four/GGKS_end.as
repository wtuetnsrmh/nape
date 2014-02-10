package bbjxl.com.content.four{
	/**
	作者：被逼叫小乱
	//过关考试最后显示的结果
	www.bbjxl.com/Blog
	**/
	import bbjxl.com.ui.CreaText;
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
	import flash.external.ExternalInterface;
	import org.aswing.table.DefaultTableModel;
	import org.aswing.table.sorter.TableSorter;
	public class GGKS_end extends Sprite {
		private var _myContains:Sprite = new Sprite();
		private var myFrame:JFrame;
		public var tabelPanel:JScrollPane;//放表的SP
		private var model:DefaultTableModel; 
		public var _data:Number = 0;//最后的总分
		//===================================================================================================================//
		
		//===================================================================================================================//
		public function GGKS_end(_value:Number) {
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
			//分数
			var _scoreLabel:JLabel
			var temp:String = "";
			
			if ((_data is Number) && String(Number(_data)) != "...") {
				temp="您的得分：" + String(Number(_data).toFixed(1));
			 _scoreLabel = new JLabel(temp);
			}else {
				_scoreLabel= new JLabel("您的得分：0");
				}
			_scoreLabel.setFont(new ASFont("Tahoma", 48, false, false, false, false));
			_scoreLabel.setForeground(new ASColor(0x990000, 1));

			//var _scoreLabel:CreaText = new CreaText("您的得分：" + String(Number(_data).toFixed(1)), 0x990000, 48, true);
			
			var layout0:SoftBoxLayout = new SoftBoxLayout();
			layout0.setAxis(AsWingConstants.VERTICAL);
			layout0.setAlign(AsWingConstants.CENTER);
			var totalTable:JPanel = new JPanel(layout0);
			//totalTable.append(topTable);
			//totalTable.append(table);
			//totalTable.append(_scoreLabel);
			totalTable.append(_scoreLabel);
			totalTable.pack();
			
			tabelPanel = new JScrollPane(totalTable); 
			//tabelPanel.setPreferredHeight(500);
			//if(totalTable.getHeight()<500)
			tabelPanel.pack();
			
			var border0:EmptyBorder = new EmptyBorder();
			tabelPanel.setBorder(border0);
			
			
			}
		//--------------------------------------------------------------------------------------------------------------------//
		
		//===================================================================================================================//
	}
}