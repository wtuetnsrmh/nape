package bbjxl.com.content.four 
{
	import flash.events.Event;
	import org.aswing.ASFont;
	import org.aswing.BoxLayout;
	import org.aswing.CenterLayout;
	import org.aswing.EmptyLayout;
	import org.aswing.event.AWEvent;
	import org.aswing.geom.IntPoint;
	import org.aswing.JButton;
	import org.aswing.JComboBox;
	import org.aswing.JLabel;
	import org.aswing.JPanel;
	import org.aswing.SoftBoxLayout;
	import org.aswing.AsWingConstants;
	import bbjxl.com.Gvar;
	import com.adobe.utils.ArrayUtil;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import org.aswing.JScrollPane;
	import org.aswing.JTable;
	import org.aswing.BorderLayout;
	import org.aswing.table.DefaultTableModel;
	/**
	 * ...
	 * @author bbjxl
	 *五、故障排除与验证（25分）
	 */
	public class Troubleshooting extends JPanel
	{
		private var firstComBox:JComboBox;
		public var _totalScore:Number=0;
		public function Troubleshooting() 
		{
			super(new SoftBoxLayout(1));
			setName("五、故障排除与验证");
			var firstParent:JPanel = new JPanel(new BoxLayout());
			var first:JPanel = new JPanel(new EmptyLayout());
			/*var firstLabe:JLabel = new JLabel("一、故障排除方式选择:");
			firstLabe.setFont(new ASFont("宋体",13,true));*/
			var tempComboxJp:JPanel = new JPanel();
			firstComBox = new JComboBox(["修复", "更换"]);
			firstComBox.setPreferredWidth(100);
			tempComboxJp.append(firstComBox);
			tempComboxJp.pack();
			
			first.setPreferredHeight(194.6);
			//firstComBox.setLocation(new IntPoint(312.1, 14));
			tempComboxJp.setLocationXY(338.9,2);
			first.addChild(new LastSceneUi());
			//first.append(firstLabe);
			first.append(tempComboxJp);
			
			firstParent.append(first,BorderLayout.CENTER);
			firstParent.pack();
			
			var second:JPanel = new JPanel(new SoftBoxLayout(0));
			/*var secondLabel:JLabel = new JLabel("二、故障排除确认判断:");
			secondLabel.setFont(new ASFont("宋体",13,true));
			var secondLabel2:JLabel = new JLabel("图中排除点击");
			second.append(secondLabel);
			second.append(secondLabel2);*/
			
			var three:JPanel = new JPanel(new SoftBoxLayout(0));
			/*var threeLabel:JLabel = new JLabel("三、起动确认判断");
			threeLabel.setFont(new ASFont("宋体",13,true));
			var threeLabel2:JLabel = new JLabel("打点火开关ST挡");
			three.append(threeLabel);
			three.append(threeLabel2);*/
			
			var four:JPanel = new JPanel(new SoftBoxLayout(0, 0,AsWingConstants.RIGHT));
			var setUpBt:JButton = new JButton("提交");
			setUpBt.setPreferredWidth(100);
			setUpBt.addActionListener(setUpHandler);
			four.append(setUpBt);
			
			append(firstParent);
			/*append(second);
			append(three);*/
			append(four);
		}
		//--------------------------------------------------------------------------------------------------------------------//
		//提交:生成表
		public function setUp():JScrollPane {
			var troubleShooting:TroubleShootingSetUp = new TroubleShootingSetUp(firstComBox.getSelectedItem());
			_totalScore = troubleShooting._totalScore;
			return troubleShooting;
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//提交按钮
		private function setUpHandler(e:AWEvent):void {
			dispatchEvent(new Event("setUpClickEvent"));
			}
		
		//返回是否已经选择了数据，用于判断是否可以进入下一步
		public function returnIready():Boolean {
			return true;
			}
		
		public function __onWinMaxDoSomething(eType:String):void {
			
			}
	}

}