package bbjxl.com.display{
	/**
	作者：被逼叫小乱
	//所有部件的父类
	www.bbjxl.com/Blog
	**/
	import bbjxl.com.content.three.MNKS_Part;
	import bbjxl.com.Gvar;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	public class StartSystem extends Sprite {
		protected var _ysjdq:MovieClip=new MovieClip();//雨刮继电器
		protected var _ysdj:MovieClip=new MovieClip();//雨刷电机
		protected var _psdj:MovieClip=new MovieClip();//喷水电机
		protected var _yskg:MovieClip=new MovieClip();//雨刮开关
		protected var _ign:MovieClip=new MovieClip();//点火开关
		//===================================================================================================================//
		
		//===================================================================================================================//
		public function StartSystem() {
			_ign = this.getChildByName("ign") as MovieClip;
			if(_ign is Part || _ign is MNKS_Part)
			_ign._partName = Gvar.DHKG;//
			
			_ysjdq = this.getChildByName("雨刮继电器") as MovieClip;
			if(_ysjdq is Part || _ysjdq is MNKS_Part)
			_ysjdq._partName = Gvar.YSJDQ;//

			_ysdj = this.getChildByName("雨刷电机") as MovieClip;
			if(_ysdj is Part|| _ysdj is MNKS_Part)
			_ysdj._partName = Gvar.YSDJ;//

			_psdj = this.getChildByName("喷水电机") as MovieClip;
			if(_psdj is Part|| _psdj is MNKS_Part)
			_psdj._partName = Gvar.PSDJ;// 

			_yskg = this.getChildByName("雨刮开关") as MovieClip;
			if(_yskg is Part|| _yskg is MNKS_Part)
			_yskg._partName = Gvar.YSKG;// 

			
		}//End Fun
		
		
		
		//点火开关，档位开关状态变化时调用
		public function flashStar(startKeyId:uint,switchId:uint):void{
			//trace(startKeyId,switchId)
			if(_ign.currentFrame!=startKeyId ||_yskg.currentState!=switchId){
				_ign.gotoAndStop(startKeyId);
				_yskg["bru_sw"].gotoAndStop(switchId);
				
				
			}
			}
		//--------------------------------------------------------------------------------------------------------------------//
		
		//===================================================================================================================//
	}
}