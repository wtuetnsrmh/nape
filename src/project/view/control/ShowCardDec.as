package project.view.control
{
	/**
	   点击显示卡牌详情
	 */
	import flash.printing.PrintJob;
	
	import khaos.view.ViewType;
	
	import project.Cellcard.Card;
	import project.base.BaseTitleWindow;
	import project.config.ApplicationConfig;
	import project.config.ErrorZhCn;
	import project.model.item.CardModel;
	
	import starling.core.Starling;
	import starling.display.Button;
	import starling.events.Event;
	import starling.utils.AssetManager;
	
	public class ShowCardDec extends BaseTitleWindow
	{
		//----------------------容器---------------------------------
				
		//-----------------------UI---------------------------------
		private var _card:Card;
		private var _closeBt:Button;//关闭按钮
		private var _imgae:MyImage;
		//-----------------------数据---------------------------------
		
		//-----------------------事件--------------------------------
		//private static var _showCardDec:ShowCardDec;
		
		public function ShowCardDec()
		{
			/*if (_showCardDec != null)
			{
				throw Error(new Error(project.config.ErrorZhCn.SINGLETON_ERROR_MESSAGE));
			}*/
			this.rootContainer = Root.vmgr.getContainer(ViewType.TOP);
			
			_closeBt = new Button(ApplictionConfig.assets.getTexture(ApplictionConfig.add0000("buttonBg")),"返回");
			addChild(_closeBt);
			_closeBt.x = ApplictionConfig.CARD_WIDTH;
			_closeBt.addEventListener(Event.TRIGGERED, clickHandler);
			
			showEffect = true;
		}
		/**
		 * 返回
		 * @param	e
		 */
		private function clickHandler(e:Event):void 
		{
			this.removeFromParent(true);
			hide();
			
		}
		
		/**
		 * 显示指定的卡牌详情
		 * @return
		 */
		public function showCardDec(cardid:int):void {
			/*var temp:CardModel=new CardModel(cardid);
			_imgae = new MyImage(ApplictionConfig.CARD_WIDTH, ApplictionConfig.CARD_HEIGHT);
			addChild(_imgae);
			_imgae.x = 200;
			_imgae.updataImage(temp.bigCardImage, function():void {
				show(true);
				
			});*/
			if(_card)_card.dispose();
			_card = new Card();
			_card.touchable = false;
			_card.currentCardTye = 0;
			_card.RT=true;
			addChild(_card);
			var temp:CardModel=new CardModel(cardid);
			_card.setCardModel(temp);
			show(true);
			}
		
		/*public static function getInstance():ShowCardDec
		{
			if (_showCardDec == null)
			{
				_showCardDec = new ShowCardDec();
			}
			return _showCardDec;
		} // end function*/
	
	}
}