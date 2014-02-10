package bbjxl.com.content.second{
	/**
	作者：被逼叫小乱
	//连线
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.display.DisplayObjectContainer;
	import flash.utils.getDefinitionByName;
	import com.adobe.utils.ArrayUtil;
	import bbjxl.com.Gvar;
	import com.greensock.*;
	import com.greensock.easing.*;
	import bbjxl.com.ui.FormCell;
	import bbjxl.com.ui.SM_FormC;
	import bbjxl.com.ui.FormCellClickEvent;
	import bbjxl.com.ui.CommonlyClass;
	import lt.uza.ui.Scale9BitmapSprite;
	import lt.uza.ui.Scale9SimpleStateButton;
	import bbjxl.com.ui.CreaText;
	import flash.geom.Rectangle;
	import flash.geom.Point;
	import flash.events.Event;
	import flash.display.Bitmap;
	import flash.display.BitmapData;

	public class MNKS_ShowScore extends Sprite {
		private var _alertBgScale9:Scale9BitmapSprite;//背景
		private var scale9_example:Rectangle;//九宫格区域
		private var popSpBg:BitmapData;;//弹出框架背景
		
		private var _tryArr:Array=new Array();//试题数据
		private var _headTitle:Sprite=new Sprite();//标题容器
		private var _centerPart:Sprite=new Sprite();//中间部分容器
		
		private var _allSp:Sprite=new Sprite();//全部的容器
		
		private var _bgSp:Sprite=new Sprite();//背景容器
		private var _allMyScore:Number;//总得分
		private var _allSubScore:Number=0;//所有要减去的分数
		private var _errorScore:Number=0;//错一题扣几分
		
		
		private var _Gvar:Gvar;
		
		//测试数据
		private var _testUrl:String="../";
		//===================================================================================================================//
		
		//===================================================================================================================//
		public function MNKS_ShowScore(tryArr:Array,_score:Number,contectLineOverWorkFlag:Boolean) {
			addChild(_bgSp);
			addChild(_allSp);
			_allSp.addChild(_headTitle);
			_allSp.addChild(_centerPart);
			
			_Gvar=Gvar.getInstance();
			_tryArr=tryArr;
			_allMyScore = _score;
			if (contectLineOverWorkFlag) {
				//如果连接完成后未操作系统正常运行-15分
				trace("contectLineOverWorkFlag="+contectLineOverWorkFlag)
				_allMyScore-= _Gvar.comparedNoOpration;
				trace("_allMyScore="+_allMyScore)
				}
			
			_errorScore = Number(_Gvar.S_MNKS_ERROERSCORE);
			trace("_errorScore="+_errorScore)
			
			creaFormHead();
			
			
			creaFormBody(contectLineOverWorkFlag);
			
			creaAllScore();
			
			creaBg();
			
			setLocale();
			
			
			
		}//End Fun
		
		//重新定位各元件位置
		private function setLocale():void{
			_headTitle.x=(_alertBgScale9.width-_headTitle.width)/2;
			_headTitle.y=(_alertBgScale9.height-_headTitle.height)/2;
			_centerPart.x=_headTitle.x;
			_centerPart.y=_headTitle.y;
			}
		
		//建立背景框
		private function creaBg():void{
			var $alertBg:Class = getDefinitionByName("alertBitBg") as Class;
			popSpBg = new $alertBg();

			scale9_example = new Rectangle(13,34,27,45);
			_alertBgScale9 = new Scale9BitmapSprite(popSpBg,scale9_example);
			_alertBgScale9.width = _headTitle.width+50;
			_alertBgScale9.height = _headTitle.height+200;
			
			_bgSp.addChild(_alertBgScale9);
			
			//建立标题
			var thisTitle:CreaText=new CreaText("模拟考试结果",0xffffff,15,true,"left");
			thisTitle.x=_alertBgScale9.x+(_alertBgScale9.width-thisTitle.width)/2;
			thisTitle.y=_alertBgScale9.y+9;
			_bgSp.addChild(thisTitle);
			
			
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//建立表头
		private function creaFormHead():void{
			//序号
			var hId:FormCell=new FormCell("序号",100,42,0xCFF0F9,0x000000,15,true);
			_headTitle.addChild(hId);
			//您所选的答案
			var hselected:FormCell=new FormCell("您曾连错线的起止点ID",300,42,0xCFF0F9,0x000000,15,true);
			hselected.x=hId.x+hId.width-1;
			_headTitle.addChild(hselected);
			/*
			//得分
			var hscore:FormCell=new FormCell("得分",100,42,0xCFF0F9,0x000000,15,true);
			hscore.x=hselected.x+hselected.width-1;
			_headTitle.addChild(hscore);*/
			
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//增加中间部分
		private function creaFormBody(_flag:Boolean):void {
			if (_tryArr.length > 0) {
					for(var i:uint=0;i<_tryArr.length;i++){
					var tempNewC:SM_FormC=new SM_FormC(_tryArr[i],i,"");
					tempNewC.y=_headTitle.y+_headTitle.height+tempNewC.height*i-i;
					
					_centerPart.addChild(tempNewC);
					_allSubScore += _errorScore;
					
					if (_flag && i==_tryArr.length-1) {
						//如果连接完成后未操作系统正常运行则增加一行显示出来
						var tempNewC1:SM_FormC=new SM_FormC(_tryArr[i+1],i,"连接完成后未操作系统正常运行");
						tempNewC1.y=_headTitle.y+_headTitle.height+tempNewC1.height*(i+1)-(i+1);
						
						_centerPart.addChild(tempNewC1);
						
						}
					}
				}else {
					//无连错但连接完成后未正常运行检验
					if (_flag) {
						//如果连接完成后未操作系统正常运行则增加一行显示出来
						var tempNewC2:SM_FormC=new SM_FormC(_tryArr[0],0,"连接完成后未操作系统正常运行");
						tempNewC2.y=_headTitle.y+_headTitle.height+tempNewC2.height*(0);
						
						_centerPart.addChild(tempNewC2);
						
						}
					}
			if (!_Gvar.S_MNKS_BARRAY) {
				//蓄电池未接
				_allSubScore += Number(_Gvar.barrayNoContactScore);
				var tempI:int = _tryArr.length;
				var tempNewC3:SM_FormC=new SM_FormC(_tryArr[0],tempI,"蓄电池未接");
				tempNewC3.y=_headTitle.y+_headTitle.height+tempNewC3.height*(tempI)-(tempI);
						
				_centerPart.addChild(tempNewC3);
				}
				
			}
		
		//--------------------------------------------------------------------------------------------------------------------//
		
		
		
		
		//增加总得分
		private function creaAllScore():void {
			trace("_allMyScore="+_allMyScore)
			trace("_allSubScore="+_allSubScore)
			if((_allMyScore-_allSubScore)>0){
			_allMyScore=_allMyScore-_allSubScore;
			}else{
				_allMyScore=0;
				}
			var allScore:FormCell=new FormCell("总分："+String(_allMyScore),_headTitle.width-1,60,0xCFF0F9,0xff0000,20,true,false,0,"right");
			allScore.y=_centerPart.y+_centerPart.height+42;
			_headTitle.addChild(allScore);
			}
		//===================================================================================================================//
	}
}