package project.view.scene.editDeckPanel 
{
	import lzm.starling.display.ScrollContainerItem;
	import lzm.starling.texture.DynamicTextureAtlas;
	import starling.display.Sprite;
	
	import project.Cellcard.Card;
	import project.model.item.CardModel;
	import project.utils.CardFactary;
	
	import starling.display.Image;
	import starling.display.Quad;
	
	/**
	 * 编辑卡组界面一中的卡组槽
	 * @author bbjxl 2013
	 */
	public class DeckItem extends Sprite 
	{
		private var tq:Quad;
		private var _image:Image;
		private var a:Card;
		public function DeckItem(id:int=0 ) 
		{
			super();
			
			
			/*var a:Image=new Image(ApplictionConfig.assets.getTexture("大卡外框0001"));
			addChild(a);*/
			/*var dyTa:DynamicTextureAtlas = new DynamicTextureAtlas(ApplictionConfig.MIDDLE_CARD_WIDTH, ApplictionConfig.MIDDLE_CARD_HEIGHT);
			
			var a:Card = new Card();
			var temp:CardModel=new CardModel(id+1);
			
			a.setCardModel(temp,true,function():void{
			a.flatten();
			dyTa.addTextureFromDisplayobject(temp.bigCardImage, a);
			_image = new Image(dyTa.getTexture(temp.bigCardImage));
			addChild(_image);
			a.removeFromParent(true);
			ApplictionConfig.assets.clearRuntimeLoadTexture();
			})
			
			addChild(a);*/
			
		}
		
		
	}

}