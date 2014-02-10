package bbjxl.com.content.first{
	/**
	作者：被逼叫小乱
	
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.display.DisplayObjectContainer;
	import com.adobe.utils.ArrayUtil;
	import bbjxl.com.Gvar;
	import com.greensock.*;
	import com.greensock.easing.*;
	public class MNKS_Top extends Sprite {
		private var _imageItem:MNKS_Top_ImageItem;//图片
		private var _tiId:uint;//题目ID
		private var _tryArr:Array=new Array();//试题数据
		
		private var _nameTitleArr:Array;//名称标题
		private var _nameContent:Array;//名称题目
		private var _effectTitleArr:Array;//作用标题
		private var _effectContent:Array;//作用题目
		
		private var rmoveMeArr:Array;//去掉自己的数组
		
		private var _allTiArr:Array=new Array();//存入所有题目的数组
		
		private var _tiNum:uint=Gvar.FIRST_MNKS_OTRINSNUM;//选项数
		
		private var _Gvar:Gvar;
		
		//测试数据
		private var _testUrl:String="";
		//===================================================================================================================//
		public function get allTiArr():Array{
			return _allTiArr;
			}
		public function set allTiArr(_value:Array):void{
			_allTiArr=_value;
			}
			
		public function get tiId():uint{
			return _tiId;
			}
		public function set tiId(_value:uint):void{
			_tiId=_value;
			}
		//===================================================================================================================//
		public function MNKS_Top(tryArr:Array) {
			_Gvar=Gvar.getInstance();
			_Gvar.FIRST_MNK_TI=new Array();
			_tryArr = tryArr;
			_allTiArr = tryArr;
			_Gvar.FIRST_MNK_TI = _tryArr;
			
		}//End Fun
		
		//更新题目
		public function updat(_value:uint):void{
			cleaall(this);//先清除之前的题目
			
			_tiId=_value;
			creaImage(_tryArr[_tiId].toolImageS);//建立图片
			creaInputEd(_Gvar.FIRST_MNK_TI[_tiId]);
			
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//去掉自己
		private function removeMeData():void{
			rmoveMeArr=new Array();
			rmoveMeArr=ArrayUtil.copyArray(_tryArr);//数组深复制
			ArrayUtil.removeValueFromArray(rmoveMeArr,_tryArr[tiId])//从数组中去掉指定值
			
			/*ouputArr(_tryArr);
			trace("-----------------------------")
			ouputArr(rmoveMeArr);*/
			}
		
		//建立图片
		private function creaImage(surl:String):void{
			_imageItem=new MNKS_Top_ImageItem(surl);
			addChild(_imageItem);
			}
		//--------------------------------------------------------------------------------------------------------------------//
		//建立题目
		private function creaInputEd(_value:Object):void{
			var _nameSelecter:MNKS_Top_SelectItem=new MNKS_Top_SelectItem(_value);//题目数据,我之前选的选项
			_nameSelecter.x=_imageItem.x+Gvar.FIRST_MNKS_IMAGE_WIDTH+30;
			_nameSelecter.thisScore=_tryArr[_tiId].socre;
			//_nameSelecter.tiId=_tiId;
			_nameSelecter.subjectid=_tryArr[_tiId].subjectid;//试题ID
			addChild(_nameSelecter);
			_nameSelecter.addEventListener(MNKSClickEvent.MNKSCLICKEVENT,MNKS_Click_handler);
			TweenLite.from(_nameSelecter, .2, {x:"1000"});
		
			}
		//--------------------------------------------------------------------------------------------------------------------//
		
		//选项点击事件
		private function MNKS_Click_handler(e:MNKSClickEvent):void{
			_tryArr[_tiId].mySelecte=e.mySelecte;
			_tryArr[_tiId].toPlatformSubjectoption=e.toPlatformSubjectoption;
			_tryArr[_tiId].rightOrFalse = e.rightOrFalse;
			_tryArr[_tiId].tiNum = _tiId;
			
			_allTiArr = _tryArr;
			trace("toPlatformSubjectoption="+e.toPlatformSubjectoption)
			trace("_tryArr[_tiId].subjectid="+_tryArr[_tiId].subjectid)
		}
		//--------------------------------------------------------------------------------------------------------------------//
		
		//--------------------------------------------------------------------------------------------------------------------//
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
		private function ouputArr(_value:Array):void{
			for(var i:uint=0;i<_value.length;i++){
				trace(_value[i].partName)
				
				}
			}
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
		//===================================================================================================================//
	}
}