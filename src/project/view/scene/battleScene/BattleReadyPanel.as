package project.view.scene.battleScene
{
	import flash.filesystem.File;
	
	import khaos.view.ViewType;
	
	import project.controller.AttackController;
	import project.view.bottonBar.BottonBar;
	import project.view.common.LogicView;
	import project.view.scene.BaseScene;
	import project.view.scene.IScene;
	
	import starling.display.Image;
	import starling.display.Sprite;
	
	public class BattleReadyPanel extends LogicView implements IScene
	{
		private var _assetsUrl:File;
		
		public function BattleReadyPanel()
		{
			super(ViewType.MULTI_DIALOG);
			SceneName=BattleReadyPanel;
			
		}
		
		override protected function internalHide():void
		{
			
		}
		
		override protected function internalShow():void
		{
			addChild(new Image(ApplictionConfig.assets.getTexture("battleBg0000")));
			AttackController.getInstance().onAttack();
		}
		
		override public function initUI():void{
			trace("battleready initUI");
			
		}
		
		public function updata():void
		{
		}
		
		override public function dispose():void{
			super.dispose();
//			ApplictionConfig.assets.removeTextureAtlas("battleUI");//移动加载的素材
		}
	}
}