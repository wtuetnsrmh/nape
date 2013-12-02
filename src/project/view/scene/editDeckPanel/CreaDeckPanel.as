package project.view.scene.editDeckPanel 
{
	import feathers.controls.List;
	import feathers.controls.Scroller;
	import feathers.layout.HorizontalLayout;
	import feathers.layout.TiledRowsLayout;
	
	import khaos.view.ViewType;
	
	import lzm.starling.display.ScrollContainer;
	
	import project.Cellcard.Card;
	import project.utils.CardFactary;
	import project.view.common.LogicView;
	import project.view.scene.BaseScene;
	import project.view.scene.EditDeckPanel;
	import project.view.scene.IScene;
	
	/**
	 * ...
	 * @author bbjxl 2013
	 */
	public class CreaDeckPanel extends LogicView implements IScene
	{
		//----------------------容器---------------------------------
		private var _scrollCont:ScrollContainer;
		//-----------------------UI---------------------------------
		
		//-----------------------数据---------------------------------
		
		//-----------------------事件--------------------------------
		public function CreaDeckPanel() 
		{
			super(ViewType.MULTI_DIALOG);
			
			SceneName=EditDeckPanel;
			/*_assetsUrl=ApplictionConfig.appDir.resolvePath("editDeck");
			
			ApplictionConfig.assets.enqueue(_assetsUrl);
			ApplictionConfig.assets.loadQueue(function onProgress(ratio:Number):void
			{
				//progressBar.ratio = ratio;
				
				if (ratio == 1)
				{
					init();
				}
			});*/
//			init();
		}
		override public function initUI():void
		{
			creaUI();
			trace("editDeckPanel creaUI");
		}
		override protected function internalHide():void
		{
			
		}
		private var cardList:Vector.<Card>;
		override protected function internalShow():void
		{
			
		}
		public function updata():void
		{
			
			}
		private function creaUI():void
		{
			_scrollCont = new ScrollContainer();
			_scrollCont.width = (ApplictionConfig.MIDDLE_CARD_WIDTH+20)*5+23;
			_scrollCont.height = (ApplictionConfig.MIDDLE_CARD_HEIGHT+10)*2;
			//_scrollCont.verticalScrollPolicy=Scroller.SCROLL_POLICY_OFF;
			 var layout:TiledRowsLayout = new TiledRowsLayout();
			 layout.gap = 10;
			 //layout.horizontalGap = 0;
			 //layout.verticalGap = 0;
			 layout.paging = TiledRowsLayout.PAGING_NONE;
			
			 //layout.typicalItemWidth = ApplictionConfig.MIDDLE_CARD_WIDTH;
			 //layout.typicalItemHeight = ApplictionConfig.MIDDLE_CARD_HEIGHT;
			 layout.padding = 10;
			 /*layout.paddingLeft = 0;
			 layout.paddingRight = 0;
			 layout.paddingTop = 0;
			 layout.paddingBottom = 0;*/
			 layout.horizontalAlign = TiledRowsLayout.HORIZONTAL_ALIGN_LEFT;
			 layout.verticalAlign = TiledRowsLayout.VERTICAL_ALIGN_TOP;
			layout.tileHorizontalAlign=TiledRowsLayout.HORIZONTAL_ALIGN_LEFT;
			layout.tileVerticalAlign = TiledRowsLayout.VERTICAL_ALIGN_TOP;
			layout.manageVisibility = true;
			 for (var i:int = 0; i < 160; i++ ) {
				 _scrollCont.addScrollContainerItem(new DeckItem(i));
				 }
			
			 
			addChild(_scrollCont);
			_scrollCont.layout = layout;
//			_scrollCont.verticalScrollPolicy=List.SCROLL_POLICY_OFF;
			//_scrollCont.updateShowItems();
			//_scrollCont.readjustLayout();
			
		}
		
		override public function dispose():void
		{
			ApplictionConfig.assets.removeTextureAtlas("editDeckUI");
		}
	}

}