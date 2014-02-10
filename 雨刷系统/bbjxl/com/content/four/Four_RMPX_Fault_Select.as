package bbjxl.com.content.four{
	/**
	作者：被逼叫小乱
	故障菜单
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import bbjxl.com.content.three.RMPX_Fault_Select;
	import bbjxl.com.content.three.RMPX_Fault_SelectOption;
	import bbjxl.com.content.three.FaultOptionClickEvent;
	import lt.uza.ui.Scale9BitmapSprite;
	import lt.uza.ui.Scale9SimpleStateButton;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.DisplayObjectContainer;
	import flash.geom.Rectangle;
	import flash.utils.getDefinitionByName;
	import flash.events.Event;
	import flash.display.SimpleButton;
	import bbjxl.com.ui.CreaText;

	public class Four_RMPX_Fault_Select extends Sprite {
		protected var _faultXml:XML=new XML();//故障数据XML
		protected var _optionSp:Sprite=new Sprite();//放选项的容器
		protected var _currentSelecteOptionIndex:uint=1000;//当前选的选项
		public var _currentOptionContent:String="正常";//当前选项的文字
		protected var _closeBt:SimpleButton;//关闭按钮
		
		public var _totalOptionArr:Array = new Array();
		protected var _titleName:String;//标题名称
		
		public var _alertBg:BitmapData;
		protected var _alertBgScale9:Scale9BitmapSprite;//背景
		protected var scale9_example:Rectangle;//九宫格区域
		protected var _okBt:SimpleButton;//确认按钮
		
		protected var _bg:Sprite=new Sprite();//背景容器；
		
		//===================================================================================================================//
		public function get currentSelecteOptionIndex():uint{
			return _currentSelecteOptionIndex;
			}
		public function set currentSelecteOptionIndex(_value:uint):void{
			_currentSelecteOptionIndex=_value;
			}
		public function get faultXml():XML{
			return _faultXml;
			}
		public function set faultXml(_value:XML):void{
			_faultXml=_value;
			}
		//===================================================================================================================//
		public function Four_RMPX_Fault_Select(_xml:XML, _titleStr:String = "故障菜单"):void {
			_titleName = _titleStr;
			addChild(_bg);
			addChild(_optionSp);
			
			_faultXml = _xml;
			//trace("_faultXml="+_faultXml)
			
			var tmepLength:uint=_faultXml.children().length();
			for(var i:uint=0;i<tmepLength;i++){
				var tempObj:Object=new Object();
				tempObj._faultContent = _faultXml.child(i).@faultname;
				
				var tempOption:RMPX_Fault_SelectOption = new RMPX_Fault_SelectOption(tempObj, i);
				tempOption.faultId=_faultXml.child(i).@faultid;
				tempOption.y=40+tempOption.thisHeigth*i+5*i;
				//初始选择第一项
				/*if(i==0){
					tempOption.selecteMe();
					}*/
				_optionSp.addChild(tempOption);
				_totalOptionArr.push(tempOption);
				tempOption.buttonMode=true;
				tempOption.addEventListener(MouseEvent.CLICK,optionClickHandler);
				}
				//确认按钮
				var $ok:Class = getDefinitionByName("okBt") as Class;
				_okBt=new $ok();
				_optionSp.addChild(_okBt);
				_okBt.x=_optionSp.width/2;
				_okBt.y=_optionSp.height;
				
				_okBt.addEventListener(MouseEvent.CLICK,okClickEvent);
				creaBg();
		}//End Fun
		
		//确认按钮点击
		public function okClickEvent(e:MouseEvent):void {
			if (_currentSelecteOptionIndex != 1000) {
				//选中选项后才触发
				_currentOptionContent = _totalOptionArr[_currentSelecteOptionIndex].tiContent;
				var optionClickEvent:FaultOptionClickEvent=new FaultOptionClickEvent();
				optionClickEvent.faultOptionIndex=_currentSelecteOptionIndex;
				optionClickEvent._faultContent=_currentOptionContent;
				optionClickEvent._faultId=_totalOptionArr[_currentSelecteOptionIndex].faultId;
				dispatchEvent(optionClickEvent);
				
				//关闭选项菜单
				closeClickHandler(null);
				}
			}
		
		//所有的选项没选中
		public function resetOption():void{
			_currentOptionContent="正常";
			for(var i:uint=0;i<_totalOptionArr.length;i++){
				_totalOptionArr[i].noSelecteMe();
				}
			}
		
		//默认选择正常
		public function initOption():void{
			_currentSelecteOptionIndex=1000;
			for(var i:uint=0;i<_totalOptionArr.length;i++){
				/*if(i==0){
					_totalOptionArr[i].selecteMe();
					}else{
						_totalOptionArr[i].noSelecteMe();
						}*/
				_totalOptionArr[i].noSelecteMe();
				}
			}
		
		//选项点击事件
		protected function optionClickHandler(e:MouseEvent):void{
			//选项改变时响应
				if(_currentSelecteOptionIndex!=((e.currentTarget)as RMPX_Fault_SelectOption).currentNum-1){
					resetOption();
					((e.currentTarget)as RMPX_Fault_SelectOption).selecteMe();
					_currentSelecteOptionIndex=((e.currentTarget)as RMPX_Fault_SelectOption).currentNum-1;
					_currentOptionContent=((e.currentTarget)as RMPX_Fault_SelectOption).tiContent;
					
				}
			}
		
		//建立背景
		protected function creaBg():void{
			
			var $alertBg:Class = getDefinitionByName("alertBitBg") as Class;
			_alertBg = new $alertBg();

			scale9_example = new Rectangle(13,34,27,45);
			_alertBgScale9 = new Scale9BitmapSprite(_alertBg,scale9_example);
			_alertBgScale9.width =_optionSp.width+10;
			_alertBgScale9.height = _optionSp.height+45;
			_bg.addChild(_alertBgScale9);
			
			_optionSp.x=(_alertBgScale9.width-_optionSp.width)/2;
			
			//关闭按钮
			var tempBt:Class = getDefinitionByName("closeBt") as Class;
			_closeBt=new tempBt();
			_closeBt.x =_alertBgScale9.width - _closeBt.width - 10;
			_closeBt.y = 5;
			_bg.addChild(_closeBt);
			_closeBt.addEventListener(MouseEvent.CLICK,closeClickHandler);
			
			//菜单标题
			var tmepText:CreaText=new CreaText(_titleName,0xffffff,15,false,"left");
			tmepText.x=(_alertBgScale9.width-tmepText.width)/2;
			tmepText.y=5;
			_bg.addChild(tmepText);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//关闭
		public function closeClickHandler(e:MouseEvent):void{
			dispatchEvent(new Event("closeFaultSelecteOption"));
			}
		//--------------------------------------------------------------------------------------------------------------------//
		
		//===================================================================================================================//
	}
}