package project.view.scene.soldierLib
{
	/**
	 *佣兵团 
	 */	
	import feathers.textures.Scale9Textures;
	
	import khaos.view.ViewType;
	
	import project.Cellcard.Card;
	import project.utils.CardFactary;
	import project.view.common.LogicView;
	import project.view.scene.IScene;
	
	public class SoldierLibScene extends LogicView implements IScene
	{
		public function SoldierLibScene()
		{
			super(ViewType.MULTI_DIALOG);
		}
		
		public function updata():void
		{
			
		}
		
		/**
		 *只建立公共材质里有的UI界面 -初始化时调用，早于show()
		 * 
		 */		
		override public function initUI():void
		{
			creaUI();
		}
		
		override protected function internalHide():void
		{
			//删除UI层以外的对象
			
		}
		override protected function internalShow():void
		{
			
		}
	}
}
import project.view.scene.soldierLib;

