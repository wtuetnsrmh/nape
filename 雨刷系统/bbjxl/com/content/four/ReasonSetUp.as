package bbjxl.com.content.four{
	/**
	作者：被逼叫小乱
	原因分析提交
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
	public class ReasonSetUp extends SymptomsSetUp {
		
		//===================================================================================================================//
		
		//===================================================================================================================//
		public function ReasonSetUp(_value:JTable, _modelValue:DefaultTableModel) {
			super(_value,_modelValue);
		}//End Fun
		//计算总得分
		override protected function CountTotalScore():void {
			
			for (var i:String in _scoreArr) {
				_totalScore += _scoreArr[i];
				}
			
			if (_totalScore > 15) {
				_totalScore = 15;
				}
			//_gvar._totalScoreArr.push(_totalScore);
			}
		//-----------------------------------------------重载 替换Reasonsid ReasonsPart属性---------------------------------------------------------------------//
		override protected function init():void {
			_symptomsTableXml = Gvar.getInstance()._reasonTable;
			trace("init")
			//增加分数跟正确答案两列
			addScoreAndRigthAw();

			model.addColumn("分数", _scoreArr);
			model.addColumn("正确答案", _rightAns);
			
			// 隐藏"操作"列
			hideColumn(_table,2);
			_model.setAllCellEditable(false);
			setNullTo();
			CountTotalScore();
			}
		
		//根据症状ID找到相应的故障部件名－症状描述
		override protected function returnRightName(_symptomsid:uint):String {
			var _reutnrStr:String="";
			var _symptomsLibXML:XML = new XML();
			_symptomsLibXML = _gvar._reasonLib;
			var symptomsNameStr:String =  "-"+_symptomsLibXML.ReasonsPart.described.(@Reasonsid == _symptomsid).child(0);
			//trace("symptomsNameStr=" + _symptomsLibXML.SymptomsPart.described);
			var _SymptomsPartXML:XMLList = _symptomsLibXML.ReasonsPart;
			for (var i:String in _SymptomsPartXML) {
				for (var j:String in _SymptomsPartXML[i].described) {
					if (_SymptomsPartXML[i].described[j].@Reasonsid == _symptomsid) {
						_reutnrStr = _SymptomsPartXML[i].@partname + symptomsNameStr;
						return _reutnrStr;
						}
					}
				}
			
			
			return _reutnrStr;
			
			}
		//--------------------------------------------------------------------------------------------------------------------//
		 //根据选择的部件跟症状描述找出症状ID
		override protected function findSymptomId(_partName:String, _sympotmsName:String):uint {
			trace("_partName="+_partName)
			trace("_sympotmsName="+_sympotmsName)
			var returnId:uint = 10000;
			var _symptomsLibXML:XML = new XML();
			_symptomsLibXML = _gvar._reasonLib;
			var _SymptomsPartXML:XMLList = _symptomsLibXML.ReasonsPart.(@partname == _partName)[0].described;
			
			for (var i:String in _SymptomsPartXML) {
				if (_SymptomsPartXML[i].child(0) == _sympotmsName) {
					returnId = uint(_SymptomsPartXML[i].@Reasonsid);
					return returnId;
					}
				}
			return returnId;
			}
		//===================================================================================================================//
	}
}