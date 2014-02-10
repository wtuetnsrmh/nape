package bbjxl.com.content.first
{
	/**
	作者：被逼叫小乱
	模拟考试
	www.bbjxl.com/Blog
	**/
	import bbjxl.com.net.MyWebservice;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	import flash.geom.Rectangle;
	import flash.utils.getDefinitionByName;
	import flash.events.Event;
	import flash.display.Stage;
	import flash.ui.ContextMenu;

	import lt.uza.ui.Scale9BitmapSprite;
	import lt.uza.ui.Scale9SimpleStateButton;
	import bbjxl.com.Gvar;
	import bbjxl.com.loading.xmlReader;
	import bbjxl.com.ui.MyContextMenu;
	import bbjxl.com.ui.FormCellClickEvent;
	import bbjxl.com.ui.CreaText;
	import flash.display.SimpleButton;
	import com.greensock.*;
	import com.greensock.easing.*;
	import bbjxl.com.ui.CountDown;
	import bbjxl.com.event.CountDownEvent;
	public class MNKS extends Sprite
	{
		public var _alertBg:BitmapData;
		private var _alertBgScale9:Scale9BitmapSprite;//背景
		private var scale9_example:Rectangle;//九宫格区域

		private var _closeBt:SimpleButton;//关闭按钮

		private var tryTopSprite:MNKS_Top;//上半部分
		
		private var _currentSelectId:uint=0;//当前是第几道题目

		//容器
		private var bgDisplay:Sprite=new Sprite();//背景容器
		private var tryDisplay:Sprite=new Sprite();//考试中容器
		private var tryEndDisplay:Sprite=new Sprite();//考试结果容器

		private var tryTopDisplay:Sprite=new Sprite();//上半部分
		private var tryBottonDisplay:Sprite=new Sprite();//下半部分
		private var tryEndShowScore:MNKS_ShowScore;//显示得分

		//数据
		private var tryXml:XML=new XML();//考试数据
		private var tryArr:Array;
		private var randomTryArr:Array;//随机题目
		private var selecteAnswerArr:Array;//你所选择的答案数组
		private var totalTiNum:uint;//总的题目数量
		private var allTiAndSelected:Array;//所有的题目数据里面包含用户选择的数据
		
		private var _examTime:uint=5;//考试时间
		private var _reTime:CountDown;//倒计时
		private var _reTimeSp:Sprite = new Sprite();//倒计时容器
		private var _examid:String = "";//考试ID
		private var _paperid:String = "";//试卷ID
		private var _partexamdetail:uint;//考试通过成绩

		//测试数据
		private var _testUrl:String="";

		//===================================================================================================================//

		//===================================================================================================================//
		public function MNKS()
		{
			//stage.scaleMode = "noScale";
			this.contextMenu = MyContextMenu.getMyContextNenu();
			init();
			creaBg();
			
			loadXml();
			

		}//End Fun
		//--------------------------------------------------------------------------------------------------------------------//
		//建立倒计时
		private function creaCountDowm():void{
			_reTime=new CountDown(_examTime);
			
			var temp:Class= getDefinitionByName("timeBg") as Class;
			var _timeBg:MovieClip=new temp();
			_timeBg.x=30;
			_timeBg.y=30;
			_reTime.x=_timeBg.x+30;
			_reTime.y=_timeBg.y+10;
			_reTimeSp.addChild(_timeBg);
			_reTimeSp.addChild(_reTime);
			bgDisplay.addChild(_reTimeSp);
			_reTime.addEventListener(CountDownEvent.COUNTDOWNEVENT,countdownOver);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//考试时间到
		private function countdownOver(e:CountDownEvent):void{
			bottonSetUpClickEvent(null);
			}
		
		//--------------------------------------------------------------------------------------------------------------------//
		public function flashStar(startKeyId:uint,switchId:uint):void{}
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//加载数据
		private function loadXml():void
		{
			
			var mnksWs:MyWebservice = new MyWebservice();
			mnksWs.myOp.PartExam({ CoursewareId:Gvar.getInstance().CoursewareId});
			mnksWs.myOp.addEventListener("complete", mnksWs.onResult);
			mnksWs.myOp.addEventListener("failed", mnksWs.onFault);
			mnksWs.addEventListener(MyWebservice.WSCOMPLETE, mnksWscomplete);
		}
		//模拟考试
		private function mnksWscomplete(e:Event):void
			{
				//trace(e.target.data);
				tryArr=new Array();
				tryXml=e.target.data;
				_examTime = uint(tryXml.partexam.@time);//考试时间
				_examid = String(tryXml.partexam.@examid);
				_paperid = String(tryXml.partexam.@paperid);
				_partexamdetail = uint((tryXml.partexam.partexamdetail));
				
				//把考试题目放到数组中
				var subjectXML:XMLList = tryXml.partexam.partsubject;
				for (var i:uint=0; i<subjectXML.length(); i++)
				{
					var temp:Object = new Object();
					temp.mySelecte = 1000;//默认题目未选中
					
					temp.socre = String(subjectXML[i].@score);//试题成绩
					trace(i)
					trace(subjectXML.length())
					temp.subjectid = String(subjectXML[i].@subjectid);//试题ID
					
					temp.toolImageS = String(subjectXML[i].partsubjectdetail.(@name == "images"));//图片地址
					
					temp.toolImageD = "";//tryXml.child(i).toolImageD.attribute("_url");//电路图片没有
					temp.answer=String(subjectXML[i].partsubjectdetail.(@name=="answer"));//正确答案
					temp.summary = String(subjectXML[i].partsubjectdetail.(@name == "summary"));//题目
					//选项数据
					var subjectoptionXML:XMLList = subjectXML[i].subjectoption;
					var subjectoptionArr:Array = new Array();//选项数组
					for (var j:uint = 0; j < subjectoptionXML.length(); j++ ) {
						var subObj:Object = new Object();
						subObj.subjectoption = String(subjectoptionXML[j].subjectoptiondetail.(@name == "subjectoption"));//试题选项名称
						subObj.subjectoptionvalue = String(subjectoptionXML[j].subjectoptiondetail.(@name == "subjectoptionvalue"));//试题选项值
						subjectoptionArr.push(subObj);
						}
					temp.subjectoptionArr=subjectoptionArr;
					
					tryArr.push(temp);
					
				}
				//随机排序题目
				randomTryArr=new Array();
				randomTryArr=tryArr.sort(taxis);
				totalTiNum=randomTryArr.length;
				
				creaTryTop(_currentSelectId);
				
				creaTryBotton();
				
				creaCountDowm();
			}

		
		//--------------------------------------------------------------------------------------------------------------------//
		//建立考试下半部分
		private function creaTryBotton():void{
			var trybottonSprite=new MNKS_Botton(totalTiNum);
			trybottonSprite.x=tryTopSprite.x;
			trybottonSprite.y=Gvar.STAGE_Y-trybottonSprite.height-30;
			tryBottonDisplay.addChild(trybottonSprite);
			trybottonSprite.addEventListener(MNKS_Botton_PageClickEvent.MNKSBOTTONPAGECLICKEVENT,bottonClickEvent);
			trybottonSprite.addEventListener(MNKS_Botton_PageClickEvent.MNKSBOTTONSETUPCLICKEVENT,bottonSetUpClickEvent);
			}
		//改变页面
		private function bottonClickEvent(e:MNKS_Botton_PageClickEvent):void{
			_currentSelectId=e.currentPageId-1;
			tryTopSprite.updat(_currentSelectId);//更新题目
			
				
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//交卷
		private function bottonSetUpClickEvent(e:MNKS_Botton_PageClickEvent):void{
			_reTime.timerStop();//停止倒计时
			_reTime.removeEventListener(CountDownEvent.COUNTDOWNEVENT,countdownOver);
			bgDisplay.removeChild(_reTimeSp);

			//获取MNKS_Top中所有的题目数据（包括用户选择的数据）
			allTiAndSelected=new Array();
			allTiAndSelected=tryTopSprite.allTiArr;
			judgAndShowScore();
			
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//判断题目并显示最终分数与答案
		private function judgAndShowScore():void{
			tryEndShowScore=new MNKS_ShowScore(allTiAndSelected);
			tryEndShowScore.x=(Gvar.STAGE_X-tryEndShowScore.width)/2;
			tryEndShowScore.y=(Gvar.STAGE_Y-tryEndShowScore.height)/2;
			tryEndDisplay.addChild(tryEndShowScore);
			
			//tryEndShowScore.addEventListener(FormCellClickEvent.FORMCELLCLICKEVENT,formCellClickEventHandler);
			
			TweenLite.from(tryEndDisplay, .5, {y:"-1000",scaleX:0,scaleY:0, ease:Back.easeOut});
			
			TweenLite.to(tryTopDisplay, .5, {x:"1000",alpha:"-1", ease:Back.easeIn});
			TweenLite.to(tryBottonDisplay, .5, {y:"500",alpha:"-1", ease:Back.easeIn});
			
			}
			
		/*private function formCellClickEventHandler(e:FormCellClickEvent):void{
			trace(e.clickPartId)
			}*/
		//--------------------------------------------------------------------------------------------------------------------//
		//建立考试上半部分
		private function creaTryTop(tiId:uint):void
		{
			//cleaall(tryTopDisplay);
			//trace(randomTryArr[tiId].toolImageD);
			//Gvar.getInstance().FIRST_MNK_TI=new Array();
			Gvar.getInstance().FIRST_MNKS_OPTIONS_WIDTH=650;
			tryTopSprite=new MNKS_Top(randomTryArr);
			//初始化所有的题目(题目放入题库中)
			for(var i:uint=0;i<totalTiNum;i++){
				tryTopSprite.updat(i);//更新题目
			}
			tryTopSprite.updat(tiId);//初始显示第一道
			tryTopSprite.x=50;
			tryTopSprite.y=100;
			tryTopDisplay.addChild(tryTopSprite);
			
			
		}
		//--------------------------------------------------------------------------------------------------------------------//
		private function init():void
		{
			addChild(bgDisplay);
			addChild(tryDisplay);
			addChild(tryEndDisplay);
			tryDisplay.addChild(tryTopDisplay);
			tryDisplay.addChild(tryBottonDisplay);
		}
		//--------------------------------------------------------------------------------------------------------------------//
		//建立背景
		private function creaBg()
		{
			var $alertBg:Class = getDefinitionByName("alertBitBg") as Class;
			_alertBg = new $alertBg();

			scale9_example = new Rectangle(13,34,27,45);
			_alertBgScale9 = new Scale9BitmapSprite(_alertBg,scale9_example);
			_alertBgScale9.width = Gvar.STAGE_X;
			_alertBgScale9.height = Gvar.STAGE_Y;

			bgDisplay.addChild(_alertBgScale9);
			
			//建立标题
			var tempTitle:CreaText=new CreaText("部件认识--模拟考试",0xffffff,16,true);
			tempTitle.x=(Gvar.STAGE_X-tempTitle.width)/2;
			tempTitle.y=5;
			bgDisplay.addChild(tempTitle);
			
			//关闭按钮
			var tempBt:Class = getDefinitionByName("closeBt") as Class;
			_closeBt=new tempBt();
			_closeBt.x = Gvar.STAGE_X - _closeBt.width - 20;
			_closeBt.y = 5;
			bgDisplay.addChild(_closeBt);
			_closeBt.addEventListener(MouseEvent.CLICK,closeClickHandler);
		}
		//--------------------------------------------------------------------------------------------------------------------//
		//随机排序数组
		private function taxis(element1:*,element2:*):int{
			var num:Number=Math.random();
			if(num<0.5){
 			  return -1;
			}else{
 			  return 1;
			}
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//关闭模拟考试
		private function closeClickHandler(e:MouseEvent):void{
			var tempEvent:MNKSClickEvent=new MNKSClickEvent("closemnksevent");
			dispatchEvent(tempEvent);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//--------------------------------------------------------------------------------------------------------------------//
		//去掉容器中的所有对象
		private function cleaall(thisContent:DisplayObjectContainer):void
		{
			try
			{
				while (true)
				{
					thisContent.removeChildAt(thisContent.numChildren-1);
				}
			}
			catch (e:Error)
			{
				//  trace("全部删除！");
			}
		}
		//--------------------------------------------------------------------------------------------------------------------//
		//===================================================================================================================//
	}
}