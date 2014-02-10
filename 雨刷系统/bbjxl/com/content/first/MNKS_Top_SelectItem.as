package bbjxl.com.content.first{
	/**
	作者：被逼叫小乱
	选择题目
	www.bbjxl.com/Blog
	**/
	import com.greensock.easing.Elastic;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.utils.getDefinitionByName;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	import bbjxl.com.Gvar;

	public class MNKS_Top_SelectItem extends Sprite {
		
		private var _tiText:TextField=new TextField();//题目
		
		private var _tiWidth:uint=200;//题目文字宽度

		private var _thisScore:uint;//当前题目的分数
		
		private var _currentTiId:uint;//当前题目的序列号
		private var _subjectid:String;//试题ID
		private var _answer:String;//正确答案
		private var _summary:String;//题目 标题
		
		private var _thisRightAnswerIndex:uint;//此题正确答案的索引0：a,1:b...
		
		private var _thisTiObj:Object=new Object();//该道题目的数据
		private var _thisTiArr:Array;//所有的选项数组
		private var _allOptions:Array;//所有的选项,用于所有的选项都为未选中
		
		private var _mySelectIndex:uint=1000;//我的所选的选项(只有当之前选过时才会有值)1000表示没有选择过
		
		//===================================================================================================================//
		public function get currentTiId():uint{
			return _currentTiId;
			}
		public function set currentTiId(_value:uint):void{
			_currentTiId=_value;
			}
		public function get thisScore():uint{
			return _thisScore;
			}
		public function set thisScore(_value:uint):void{
			_thisScore=_value;
			}
		public function get subjectid():String{
			return _subjectid;
			}
		public function set subjectid(_value:String):void{
			_subjectid=_value;
			}
		public function get answer():String{
			return _answer;
			}
		public function set answer(_value:String):void{
			_answer=_value;
			}
		public function get summary():String{
			return _summary;
			}
		public function set summary(_value:String):void{
			_summary=_value;
			}
		//===================================================================================================================//
		public function MNKS_Top_SelectItem(_titleObj:Object) {
			_mySelectIndex=_titleObj.mySelecte;
			//trace("_mySelectIndex="+_mySelectIndex)
			//_currentTiId=_titleObj.tiId;
			_thisTiObj=_titleObj;
			_thisTiArr=new Array();
			_thisTiArr=_thisTiObj.subjectoptionArr;//
			_summary=_thisTiObj.summary;//标题
			_answer=_thisTiObj.answer;//答案
			_subjectid=_thisTiObj.subjectid;//试题ID
			
			//trace("rightAns="+rightAns)
			
			creaText();
			creaOptions();
		}//End Fun
		//--------------------------------------------------------------------------------------------------------------------//
		
		//--------------------------------------------------------------------------------------------------------------------//
		//建立选项
		private function creaOptions():void{
			_allOptions=new Array();
			//建立选项
			for(var j:uint=0;j<_thisTiArr.length;j++){
				var _option:MNKS_Top_SelectOption=new MNKS_Top_SelectOption(_thisTiArr[j],j);
				//如果此前做过选择就把该选项设为选中
				if(_mySelectIndex!=1000){
					if(j==_mySelectIndex){
						_option.selecteMe();
					}
				}
				_option.x=_tiText.x;
				_option.buttonMode=true;
				_option.addEventListener(MouseEvent.CLICK,optionClickHandler);
				//trace(_option.height)
				var tempHeight:uint;
				if(j>0){ 
				tempHeight=_allOptions[j-1].thisHeigth;
				_option.y=_allOptions[j-1].y+tempHeight+Gvar.FIRST_MNKS_OTRIONS_GAP;
				}else{
					
					_option.y=_tiText.y+_tiText.textHeight+20+Gvar.FIRST_MNKS_OTRIONS_GAP*j;
					}
				
				addChild(_option);
				
				_allOptions.push(_option);
				}
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//全部的选项都为未选中
		private function allReset():void{
			for(var i:uint=0;i<_allOptions.length;i++){
				_allOptions[i].noSelecteMe();
				}
			}
		
		//选项选中
		private function optionClickHandler(e:MouseEvent):void{
			allReset();
			var temp:MNKS_Top_SelectOption=(e.currentTarget as MNKS_Top_SelectOption);
			temp.selecteMe();
			//判断对错
			var rightOrFalse:Boolean=false;
			if(String(temp.subjectoption).toLocaleLowerCase()==_answer.toLocaleLowerCase()){
				rightOrFalse=true;
				}
			//发送判断结果事件//返回：正确与否，我的选择，分数，这道题的序号,正确的选择索引
			var MNKS_ClickEvent:MNKSClickEvent=new MNKSClickEvent();
			MNKS_ClickEvent.rightOrFalse=rightOrFalse;
			MNKS_ClickEvent.mySelecte = temp.currentNum;
			MNKS_ClickEvent.toPlatformSubjectoption = temp.subjectoption;
			//MNKS_ClickEvent.tiNum = _currentTiId;
			
			/*MNKS_ClickEvent.rightIndex=_thisRightAnswerIndex;
			MNKS_ClickEvent.rightOrFalse=rightOrFalse;
			MNKS_ClickEvent.mySelecte=temp.currentNum;
			MNKS_ClickEvent.score=_thisScore;
			MNKS_ClickEvent.tiNum=_currentTiId-1;//题目索引，从0开始*/
			dispatchEvent(MNKS_ClickEvent);
			
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//建立题目
		private function creaText():void{
			_tiText.autoSize = TextFieldAutoSize.LEFT;
			var format:TextFormat = new TextFormat();
            format.color = 0x000000;
            format.size = 15;
			format.bold=true;
			format.leading=5;
			format.align="left";
			_tiText.wordWrap=true;
			//_tiText.multiline=true;
			_tiText.mouseEnabled=false;
			_tiText.selectable=false;
			//name_txt.background=true;
			_tiText.width=_tiWidth;
			
            _tiText.defaultTextFormat = format;
			//trace("currentTiNum="+_currentTiId)
			//_tiText.htmlText=(_currentTiId+1)+"."+_summary;
			_tiText.htmlText=_summary;
			_tiText.x=0;
			addChild(_tiText);
			}
			
		//随机排序数组
		private function taxis(element1:*,element2:*):int{
			var num:Number=Math.random();
			if(num<0.5){
 			  return -1;
			}else{
 			  return 1;
			}
			}
		//===================================================================================================================//
	}
}