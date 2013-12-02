package
{
	import flash.utils.getTimer;
	
	import project.Cellcard.Card;
	
	import manage.TextureEmabePool;
	import manage.TexturePool;
	
	import project.model.item.CardModel;
	import project.utils.CustomTool;
	
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.textures.Texture;
	
	/**
	 * ...
	 * @author bbjxl
	 */
	public class Page extends Sprite
	{
		private var _row:int;
		private var _cell:int;
		private var _images:Vector.<Card>;
		private var _totalCardNum:int;
		private var _loadTextureOverNum:int;
		
		public function Page(r:int = 3, c:int = 3)
		{
			_row = r;
			_cell = c;
			var initX:Number=ApplictionConfig.STAGE_WIDTH-ApplictionConfig.CARD_WIDTH*c+c*2 >>1;
			var initY:Number=ApplictionConfig.STAGE_HEIGHT-ApplictionConfig.CARD_HEIGHT*r+r*2 >>1;
			_images = new Vector.<Card>();
			for (var i:int = 0; i < r; i++)
			{
				for (var j:int = 0; j < c; j++)
				{
					var temp:Card = new Card();// (ApplictionConfig.CARD_WIDTH >> 1, ApplictionConfig.CARD_HEIGHT >> 1);
					temp.x = initX+j * (ApplictionConfig.CARD_WIDTH) + j * 2;
					temp.y = initY+i * (ApplictionConfig.CARD_HEIGHT) + i * 2;
					addChild(temp);
					_images.push(temp);
					temp = null;
				}
			}
		
		}
		
		public static function turn000Num(value:int, maxLen:int = 4):String
		{
			
			var len:int = String(value).length;
			var b:String = String(value);
			if (len < maxLen)
			{
				for (var i:uint = 0; i < (maxLen - len); i++)
				{
					b = "0" + b;
				}
			}
			return b;
		}
		private var tempNum:int;
		public function setPage(value:int = 0):void
		{
			this.unflatten();
			_totalCardNum = value * _row * _cell;
			_loadTextureOverNum = 0;
			var cardModel:CardModel;
			tempNum = getTimer();
			for (var i:String in _images)
			{
				//_images[i].setTexture(TextureEmabePool.getInstance().loadAssets("class" + Page.turn000Num(initNo+int(i)+1)));
				//var url:String = "assets/B/" + Page.turn000Num(_totalCardNum + int(i) + 1) + ".jpg";
				cardModel = new CardModel(_totalCardNum + int(i) + 1);
				/*if ((_totalCardNum + int(i) + 1) % 2 == 0)_images[i]._currentCardTye = 1;
				else _images[i]._currentCardTye = 0;*/
				_images[i].currentCardTye = 0;
				_images[i].setCardModel(cardModel,true,flattenTime);
				//_images[i].updataImage(url, flattenTime);
			}
		
		}
		
		private function flattenTime():void
		{
			_loadTextureOverNum++;
			if (_loadTextureOverNum >= _totalCardNum)
			{
				this.flatten();
//				trace("用时：" + (getTimer() - tempNum));
			}
		
		}
	}

}