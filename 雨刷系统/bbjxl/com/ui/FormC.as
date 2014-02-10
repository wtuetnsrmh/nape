package bbjxl.com.ui
{
	/**
	作者：被逼叫小乱
	表格中的单元格
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.display.Shape;
	import flash.geom.Point;
	import flash.text.TextField;
	import flash.utils.getDefinitionByName;
	import flash.text.TextFieldAutoSize;
	import flash.display.SimpleButton;
	import flash.text.TextFormat;
	

	public class FormC extends Sprite
	{
		private var _tiArr:Object=new Object();
		private var _myScore:Number;
		
		
		//===================================================================================================================//
		public function get myScore():Number
		{
			return _myScore;
		}
		public function set myScore(_value:Number):void
		{
			_myScore = _value;
		}
		
		//eventFlag是否影响点击事件
		public function FormC(_value:Object,_no:uint)
		{
			_tiArr=_value;
			init(_no);
		}// end function
		
		private function init(_no:uint):void{
			//序号
			var hId:FormCell=new FormCell(String(_no+1),69,42,0xffffff,0x000000,15);
			addChild(hId);
			//您所选的答案
			var tempMySelsecte:String;
			//trace(_tiArr.mySelecte)
			if(_tiArr.mySelecte!=1000){
				tempMySelsecte=returnYourSelect(_tiArr.mySelecte);
				}else{
					tempMySelsecte="您还未做选择!";
					}
			var hselected:FormCell=new FormCell(tempMySelsecte,120,42,0xffffff,0x000000,15);
			hselected.x=hId.x+hId.width-1;
			addChild(hselected);
			//正确答案
			var hanswer:FormCell=new FormCell(returnAnswer(),75,42,0xffffff,0x000000,15);
			hanswer.x=hselected.x+hselected.width-1;
			addChild(hanswer);
			//得分
			var tempScore:Number;
			if(_tiArr.rightOrFalse==true){
				//trace("========"+_tiArr.score)
				tempScore=Number(_tiArr.socre);
				}else{
					tempScore=0;
					}
			var hscore:FormCell=new FormCell(String(tempScore),69,42,0xffffff,0x000000,15);
			_myScore=tempScore;
			hscore.x=hanswer.x+hanswer.width-1;
			addChild(hscore);
			//查看原题
			var hti:FormCell=new FormCell("进入该题目",100,42,0xffffff,0x0000ff,15,true,true,_tiArr.tiNum);
			hti.x=hscore.x+hscore.width-1;
			hti.buttonMode=true;
			//hti.mouseChildren=false;
			addChild(hti);
			}
		
		//返回正确答复
		private function returnAnswer():String {
			var returnStr:String = "";
			var tempArr:Array = new Array();
			tempArr = _tiArr.subjectoptionArr;
			for (var i:uint = 0; i < tempArr.length; i++ ) {
				//转为小写再判断
				if (String(tempArr[i].subjectoption).toLocaleLowerCase() == _tiArr.answer.toLocaleLowerCase()) {
					return returnYourSelect(i);
					}
				}
			trace("没找到正确答案，检查后台输入是否有正确答案")
			return returnStr;
			}
			
		//根据序号返回你选的选项
		private function returnYourSelect(sId:uint):String{
			var returnSelecte:String;
			switch(sId){
					case 0:
					returnSelecte="A";
					break;
					case 1:
					returnSelecte="B";
					break;
					case 2:
					returnSelecte="C";
					break;
					case 3:
					returnSelecte="D";
					break;
					case 4:
					returnSelecte="E";
					break;
					case 5:
					returnSelecte="F";
					break;
					case 6:
					returnSelecte="G";
					break;
					case 7:
					returnSelecte="H";
					break;
					case 8:
					returnSelecte="I";
					break;
					
					}
				return returnSelecte;
			}


	}
}