package bbjxl.com.content.four{
	/**
	作者：被逼叫小乱
	可能原因分析
	www.bbjxl.com/Blog
	**/
	import bbjxl.com.Gvar;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import org.aswing.JScrollPane;
	import org.aswing.JTable;
	import org.aswing.table.DefaultTableModel;
	import org.aswing.table.sorter.TableSorter;
	public class Reasons extends Symptoms {
		
		//===================================================================================================================//
		//宽高度
		/*private var _thisWidth:uint = _gvar._popFrameWidth;
		private var _thisHeight:uint = _gvar._popFrameHeight-30;*/
		//===================================================================================================================//
		public function Reasons() {
			super();
			setName("二、可能原因分析");
		}//End Fun
		
		//提交
		override public function setUp():JScrollPane {
			var symptomsSetup:ReasonSetUp = new ReasonSetUp(table, model);
			_totalScore = symptomsSetup._totalScore;
			return symptomsSetup;
			/*var _scoreArr:Array = new Array("100", "20", "60", "70");
			model.addColumn("分数", _scoreArr);
			model.setAllCellEditable(false);
			setNullTo();*/
			
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//建立症状描述部分
		override protected function addcompond(_setUpFlag:Boolean = false):JScrollPane {
			var tempXML:XML = new XML();
			tempXML =_gvar._reasonLib;
			
			for (var i:int = 0; i < tempXML.children().length(); i++ ) {
				var _SymptomsPart:Object = new Object();
				_SymptomsPart.partid = tempXML.child(i).@partid;//症状部件ID
				_SymptomsPart.partname = tempXML.child(i).@partname;//症状名字
				_SymptomsPart.partnumber = tempXML.child(i).@partnumber;//症状简称
				
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
				column = ["故障部件", "故障点","操作"];
				}else {
					column = ["故障部件", "故障点","得分","正确答案"];
					}
			
			model = (new DefaultTableModel()).initWithDataNames(Symdata, column);
			model.setColumnEditable(2, false);
			var sorter:TableSorter = new TableSorter(model);
			table = new JTable(sorter);
			table.setRowHeight(25);
			table.setPreferredWidth(_thisWidth-50);
			table.setCellSelectionEnabled(false);
			table.setAutoResizeMode(JTable.AUTO_RESIZE_SUBSEQUENT_COLUMNS);
			

			var scrollPane:JScrollPane = new JScrollPane(table); 
			//scrollPane.setLayout(new ScrollPaneLayout());

			//scrollPane.setMinimumHeight(200);
			scrollPane.setMinimumHeight(200);
			scrollPane.setPreferredHeight(_thisHeight-70);
			//scrollPane.setPreferredWidth(_thisWidth)
			scrollPane.pack();
			return scrollPane;
		
		}
		//--------------------------------------------------------------------------------------------------------------------//
		
		//===================================================================================================================//
	}
}