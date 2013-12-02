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
		private var _bgImage:Image;
		public function BattleReadyPanel()
		{
			super(ViewType.MULTI_DIALOG);
			SceneName=BattleReadyPanel;
			
		}
		override protected function cardTexturUI():void
		{
			if(!_bgImage){
			_bgImage =addChild(new Image(ApplictionConfig.assets.getTexture("battleBg0000")));
			addChild(_bgImage);
			}
		}
		override protected function disposeTexturUI():void
		{
			if(_bgImage){
			_bgImage.dispose();
			_bgImage.removeFromParent(true);
			_bgImage = null;
			}
		}
		override protected function internalHide():void
		{
			if (this.visible) {
				disposeTexturUI();
			ApplictionConfig.assets.removeTextureAtlas("battleLibUI");//移动加载的素材
			}
		}
		
		override protected function internalShow():void
		{
			cardTexturUI();
			AttackController.getInstance().onAttack();
			
		}
		
		override public function initUI():void{
			trace("battleready initUI");
			cardTexturUI()
			
		}
		
		public function updata():void
		{
		}
		
		override public function dispose():void{
			super.dispose();
			//ApplictionConfig.assets.removeTextureAtlas("battleLib");//移动加载的素材
		}
	}
}