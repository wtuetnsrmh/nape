package project.view.attack 
{
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import project.config.ApplicationConfig;
	import project.model.attack.ActionModel;
	import project.model.attack.AttackModel;
	import project.model.data.PlayerData;
	import project.view.artplug.MovieClipButton;
	import project.view.base.BaseTitleWindow;
	import project.config.ErrorZhCn;
	import com.greensock.*;
    import com.greensock.easing.*;
    import com.greensock.plugins.*;
	/**
	 * 战斗结束界面
	 * @author bbjxl 2012
	 */
	public class AttackOverPanel extends BaseTitleWindow 
	{
		//----------------------容器---------------------------------
		
		//-----------------------UI---------------------------------
		private var _resultMc:MovieClip;//胜负界面
		private var _descText:TextField;//结果描述
		private var _continueBt:MovieClipButton;//继续按钮
		private var _replayBt:MovieClipButton;//重新播放
		
		//-----------------------数据---------------------------------
		private var _attackPanel:AttackPanel;
		public static var CONTINUE:String = "continue";
		public static var REPLAY:String = "replay";
		//-----------------------事件--------------------------------
		
		private static var _instance:AttackOverPanel = null;
		public function AttackOverPanel() 
		{
			if (_instance != null) {
				throw(new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE));
				}
			setSpriteInstance("AttackOverPanel");
			configerUIInstance();
		}
		//--------------------------------------------------------
		override public function show(param1:Boolean = false) : void
        {
            if (isOpened)
            {
            }
            else if (rootContainer)
            {
                if (param1)
                {
                    drawModalRect();
                }
                rootContainer.addChild(this);
                this.x = (ApplicationConfig.STAGE_WIDTH - 283.15) / 2;
                this.y = (ApplicationConfig.STAGE_HEIGHT - this.height) / 2 - 40;
                if (showEffect)
                {
                    this.alpha = 0.5;
                    TweenLite.to(this, 0.3, {alpha:1, y:this.y + 40});
                }
                this.isOpened = true;
                this.isPopUP = true;
                this.addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
            }
            this.playShowSound();
            return;
        }// end function
		/**
		 * 更新UI
		 * 战斗结果：若为1则表示攻方获胜，为0则表示守方获胜
		 */
		public function updataUI():void {
			switch(_attackPanel.result) {
				case 1:
					if (AttackModel.getInstance().attacker.id == PlayerData.getInstance().userId) {
						//如果玩家是攻方--玩家胜
						_resultMc.gotoAndStop(1);
						resultType(1);
						}else {
							_resultMc.gotoAndStop(2);
							resultType(0);
							}
					break;
				case 0:
					if (AttackModel.getInstance().attacker.id == PlayerData.getInstance().userId) {
						//如果玩家是攻方--玩家负
						_resultMc.gotoAndStop(2);
						resultType(0);
						}else {
							_resultMc.gotoAndStop(1);
							resultType(1);
							}
					break;
				default:
					break;
				}
			
			}
		/**
		 * 
		 * @param	arg 1:我方胜，0：我方负
		 */
		private function resultType(arg:int=0):void {
			//胜负类型：若为1则表示全军覆没，为0则表示士气全失。
			switch(_attackPanel.resultType) {
				case 1:
					if (arg==1) {
						_descText.text = "对方全军覆没，我方获胜！";
						}else {
							_descText.text = "我方全军覆没，对方获胜！";
							}
					break;
				case 0:
					if (arg == 1) {
						_descText.text = "对方士气全失，我方获胜！";
						}else {
							_descText.text = "我方士气全失，对方获胜！";
							}
					break;
				default:
					break;
				}
				}
		private function configerUIInstance():void {
			_resultMc = getChild("resultMc") as MovieClip;
			_descText = getChild("descText") as TextField;
			_descText.visible = false;
			_replayBt = getChild("replayBt") as MovieClipButton;
			_continueBt = getChild("continueBt") as MovieClipButton;
			_replayBt.onClick = replayClick;
			_continueBt.onClick = continueBtClick;
			_attackPanel = AttackPanel.getInstance();
			}
			
		//--------------------------------------------------------
		private function replayClick(e:MouseEvent):void {
			getHandler(REPLAY)();
			/*_attackPanel.onRestart(null);
			hide();*/
			}
		private function continueBtClick(e:MouseEvent):void {
			getHandler(CONTINUE)();
			/*hide();
			_attackPanel.hide();
			_attackPanel.onRestart(null);*/
			}
		//--------------------------------------------------------
		public static function getInstance() : AttackOverPanel
		{
			if (_instance == null)
			{
			  _instance = new AttackOverPanel;
			}
			return _instance; 
		}// end function
	}

}