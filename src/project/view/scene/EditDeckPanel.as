package project.view.scene
{
	import flash.filesystem.File;
	import flash.text.TextFormatAlign;
	
	import feathers.controls.List;
	import feathers.controls.Scroller;
	import feathers.controls.renderers.DefaultListItemRenderer;
	import feathers.controls.renderers.IListItemRenderer;
	import feathers.controls.text.BitmapFontTextRenderer;
	import feathers.core.ITextRenderer;
	import feathers.data.ListCollection;
	import feathers.display.Scale9Image;
	import feathers.layout.HorizontalLayout;
	import feathers.text.BitmapFontTextFormat;
	
	import khaos.view.ViewType;
	
	import lzm.starling.gestures.DoubleTapAndTapGestures;
	import lzm.starling.gestures.DoubleTapGestures;
	import lzm.starling.gestures.DragGestures;
	import lzm.starling.gestures.TapGestures;
	
	import project.Cellcard.Card;
	import project.model.item.CardModel;
	import project.utils.CardFactary;
	import project.view.bottonBar.BottonBar;
	import project.view.common.LogicView;
	import project.view.common.MyButton;
	import project.view.control.ShowCardDec;
	import project.view.controls.TabNavigator;
	import project.view.layout.BaseGridContainer;
	import project.view.scene.ListItemRenderer.MyDefaultListItemRenderer;
	
	import starling.display.Button;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.filters.ColorMatrixFilter;
	import starling.text.TextField;
	import starling.textures.Texture;
	
	/**
	 * ...
	 * @author bbjxl 2013
	 */
	public class EditDeckPanel extends LogicView implements IScene
	{
		//----------------------容器---------------------------------
		private var layer:BaseGridContainer;
		//-----------------------UI---------------------------------
		private var list:List;
		private var _dragCard:Card
		private var _backBt:Button;
		private var tabs:TabNavigator;
		private var _saveBt:MyButton; //保存按钮
		private var _soldrsBt:MyButton; //佣兵按钮
		private var _talismanBt:MyButton; //装备按钮
		private var _mitacBt:MyButton; //神通按钮
		//private var _cardContainer:Sprite;
		private var pageNum:TextField= new TextField(ApplictionConfig.MIDDLE_CARD_WIDTH, 30, "", "cotfont_0", 20, 0xffffff);
		//-----------------------数据---------------------------------
//		private static var _instance:EditDeckPanel;
		public static const SceneName:String = "";
		private var _assetsUrl:File;
		private var _cards:Array;
		//-----------------------事件--------------------------------
		private var _dragGestures:DragGestures;
		private var _doubleClick:DoubleTapGestures; //双击
		private var _clickGes:TapGestures; //单击
		private var _doubleAndTap:DoubleTapAndTapGestures; //单击或双击
		
		public function EditDeckPanel()
		{
			super(ViewType.MULTI_DIALOG);
			
			SceneName=EditDeckPanel;
			
		}
		
		/**
		 *只建立公共材质里有的UI界面 -初始化时调用，早于show()
		 * 
		 */		
		override public function initUI():void
		{
			creaUI();
			trace("editDeckPanel creaUI");
		}
		
		override protected function internalHide():void
		{
			//删除UI层以外的对象
//			if(this.visible){
				
				if (list)
				{
					list.removeFromParent(true);
					list.dispose();
					list = null;
				}
				
//			}
		}
		private var cardList:Vector.<Card>;
		override protected function internalShow():void
		{
			
			updata();
			return;
			//增加ui层以外的单独材质的（主要是卡）对象
			cardList=new Vector.<Card>;
			for(var i:int=0;i<10;i++){
				var temp:Card=CardFactary.creaCard(Math.ceil(Math.random()*100)+1);
				cardList.push(temp);
				addChild(temp);

//				trace(CardFactary.getInstance().cardPool.usageCount)
//				trace(CardFactary.getInstance().cardPool.wasteCount)
				/*var temp:Card=CardFactary.getInstance().cardPool.object;
				temp.setCardModel(new CardModel(Math.ceil(Math.random()*100)+1));
				temp.x=i*20;
				/*var temp:Card=CardFactary.getInstance().cardPool.object;
				if(temp.cardModle)trace("temp.num="+temp.cardModle.number);
				temp.currentCardTye=2;
				temp.setCardModel(new CardModel(Math.ceil(Math.random()*100)+1));*/

				cardList.push(temp);
				addChild(temp);
				temp.x=i*50;
			}
			updata();
		}
		
		private function creaUI():void
		{
			var uiSp:Sprite=new Sprite();
			addChild(uiSp);
			_dragCard = new Card();
			_dragCard.currentCardTye = 2;
			
			var bg:Scale9Image=ApplictionConfig.createS9Image(ApplictionConfig.STAGE_WIDTH,ApplictionConfig.STAGE_HEIGHT,1);
			
			var barbg:Scale9Image=ApplictionConfig.createS9Image(874.9,369.95,2);
			barbg.x=47;barbg.y=40;
			
//			addChild(new Image(ApplictionConfig.assets.getTexture("editDeckBg0000"))); //背景
			_backBt = new Button(ApplictionConfig.assets.getTexture("returnBt0000")); //返回按钮
			
			_backBt.x = ApplictionConfig.STAGE_WIDTH - _backBt.width - 10;
			_backBt.y = ApplictionConfig.STAGE_HEIGHT - _backBt.height;
			_backBt.addEventListener(Event.TRIGGERED, backClick);
			
			_soldrsBt = new MyButton("tabBarDefault0000", "");
			_talismanBt = new MyButton("tabBarDefault0000", "");
			_mitacBt = new MyButton("tabBarDefault0000", "");
			_saveBt = new MyButton("saveBt0000");
			
			_saveBt.x = 817.95;
			_saveBt.y = 350.35;
			_saveBt.clickEnable = false;
			_soldrsBt.x = 47.5;
			_soldrsBt.y = _talismanBt.y = _mitacBt.y = 311.9;
			_talismanBt.x = _soldrsBt.x + 137 + 20;
			_mitacBt.x = _talismanBt.x + 137 + 20;
			tabs = new TabNavigator();
			tabs.setTab(_soldrsBt, _talismanBt, _mitacBt);
			uiSp.addChild(bg);
			uiSp.addChild(barbg);
			uiSp.addChild(_backBt);
			uiSp.addChild(_soldrsBt);
			uiSp.addChild(_talismanBt);
			uiSp.addChild(_mitacBt);
			
			uiSp.addChild(_saveBt);
			//this.addChild( tabs );
			tabs.addEventListener(TabNavigator.TAB_CHANGER, tabs_changeHandler);
			uiSp.flatten();
			
			
			/*_cards = new Array();
			
			var tempCreaDeckItem:CreaDeckItem;
			layer = new BaseGridContainer(2, 5, 15, ApplictionConfig.SMALL_CARD_WH, ApplictionConfig.SMALL_CARD_WH);
			addChild(layer);
			layer.setLocation(95, 70)
			for (var i:int = 0; i < 10; i++)
			{
				if (i < 3)
				{
					tempCreaDeckItem = new CreaDeckItem();
					tempCreaDeckItem.cardClass = 0;
					tempCreaDeckItem.index = i;
				}
				else if (i < 5)
				{
					tempCreaDeckItem = new CreaDeckItem();
					tempCreaDeckItem.cardClass = 1;
					tempCreaDeckItem.index = i - 3;
				}
				else if (i < 8)
				{
					tempCreaDeckItem = new CreaDeckItem();
					tempCreaDeckItem.cardClass = 0;
					tempCreaDeckItem.index = i - 2;
				}
				else
				{
					tempCreaDeckItem = new CreaDeckItem();
					tempCreaDeckItem.cardClass = 2;
					tempCreaDeckItem.index = i - 8;
				}
				tempCreaDeckItem.canDrag = true;
				tempCreaDeckItem.flatten();
//				layer.appendChild(tempCreaDeckItem);
				
				_cards.push(tempCreaDeckItem);
				tempCreaDeckItem = null;
			}
			layer.flatten();*/
		}
		
		private function tabs_changeHandler(e:Event):void
		{
			
			switch (e.data)
			{
				case _soldrsBt: 
					
					break;
				case _talismanBt: 
					
					break;
				case _mitacBt: 
					
					break;
			}
		}
		
		private function backClick(e:Event):void
		{
			trace(BottonBar._sceneList.length)
			if(BottonBar._sceneList.length>0){
			(Root.vmgr.getView(BottonBar) as BottonBar).showScene(BottonBar._sceneList.pop());
			
			}
		}
		
		protected function layout():void
		{
			
			
			const layout:HorizontalLayout = HorizontalLayout(this.list.layout);
			layout.paddingTop =  layout.paddingBottom =0;//
				layout.paddingRight =layout.paddingLeft =0;
//			layout.gap =ApplictionConfig.MIDDLE_CARD_WIDTH+10;//shorterSide * 0.04;
			
//			this.list.itemRendererProperties.gap = 100;//shorterSide * 0.01;
			list.height = ApplictionConfig.MIDDLE_CARD_HEIGHT;
			list.width = 688.8;// (ApplictionConfig.MIDDLE_CARD_WIDTH) * 5 + 5 * 20;
			list.pageWidth = 688;//list.width;//(ApplictionConfig.MIDDLE_CARD_WIDTH) * 6 +6 * 10; //每页的宽度
			this.list.validate();
			
			pageNum.x=list.x+list.width>>1;
			pageNum.y=list.y+list.height;
		}
		
		public function updata():void
		{
			if (list)
				list.removeFromParent(true);
			list = new List();
			
			
			var temp:Object;
			var tempArr:Array = new Array();
			//tempArr.push( { thumbnail:ApplictionConfig.assets.getTexture("中毒BUF0000") } );
			for (var i:int = 1; i < 100; i++)
			{
				temp = new Object();
				temp.cardModel = new CardModel(i, 1);
//				temp.label=String(i);
				temp.thumbnail = (temp.cardModel as CardModel).bigCardImage; //"assets/B/" + CustomTool.turn000Num(i) + ".jpg";
				tempArr.push(temp);
			}
			
//			list.dataProvider = new ListCollection(tempArr);
			
			const listLayout:HorizontalLayout = new HorizontalLayout();
			//			layout.useVirtualLayout = false;//为true时将渲染整个区域
			listLayout.verticalAlign = HorizontalLayout.VERTICAL_ALIGN_JUSTIFY;
			listLayout.gap = 20;
			//			listLayout.paddingLeft = 0;
			listLayout.horizontalAlign = HorizontalLayout.VERTICAL_ALIGN_MIDDLE;
			listLayout.manageVisibility = true;
			
			this.list = new List();
			list.dataProvider = new ListCollection(tempArr);
			this.list.layout = listLayout;
			this.list.snapToPages = true;
//			this.list.scrollBarDisplayMode = List.SCROLL_BAR_DISPLAY_MODE_NONE;
			this.list.horizontalScrollPolicy = List.SCROLL_POLICY_ON;
			this.list.verticalScrollPolicy=List.SCROLL_POLICY_OFF;
			this.list.itemRendererFactory = listItemRender;
			
			list.minimumDragDistance = .001;
//			list.snapScrollPositionsToPixels = true;
//			list.elasticity=1
			
			this.list.addEventListener(Event.SCROLL, list_scrollHandler);
			this.addChild(this.list);
			list.y = 436.35;
			list.x = 95.95;
			this.layout();
			
			
			addChild(pageNum);
			
			
			return;
			/*var layout:HorizontalLayout = new HorizontalLayout();
			layout.verticalAlign = HorizontalLayout.VERTICAL_ALIGN_JUSTIFY;
			layout.gap = 10;
			layout.horizontalAlign = HorizontalLayout.HORIZONTAL_ALIGN_LEFT;
			layout.manageVisibility = true;*/
			
		
			/*const listLayout:TiledRowsLayout = new TiledRowsLayout();
			listLayout.paging = TiledRowsLayout.PAGING_HORIZONTAL;
			listLayout.useSquareTiles = false;
			listLayout.tileHorizontalAlign = TiledRowsLayout.TILE_HORIZONTAL_ALIGN_CENTER;
			listLayout.horizontalAlign = TiledRowsLayout.HORIZONTAL_ALIGN_CENTER;
			listLayout.verticalAlign = HorizontalLayout.VERTICAL_ALIGN_JUSTIFY;
			
			listLayout.manageVisibility = true;
			
			this.list.layout = listLayout;
			this.list.snapToPages = true;
			list.itemRendererProperties.gap =10;*/
//			this.list.scrollBarDisplayMode = List.SCROLL_BAR_DISPLAY_MODE_NONE;
			
			
			//			list.scrollToPageIndex(0, 0,10);
			list.scrollerProperties.horizontalScrollPolicy = Scroller.SCROLL_POLICY_AUTO;
			list.scrollerProperties.verticalScrollPolicy = Scroller.SCROLL_POLICY_OFF;
			list.minimumDragDistance = .1;
			list.minimumPageThrowVelocity = 1;
			list.snapScrollPositionsToPixels = true;
			list.snapToPages = true;//快速到达指定页，控制是否每次只显示一页（像战歌一样）
			
//			list.scrollerProperties.pageThrowDuration =.7; //移动一页所需的时间以秒为单位
			
			this.list.horizontalScrollPolicy = List.SCROLL_POLICY_ON;
			list.layout = layout;
			list.y = 396.35;
			list.x = 45.95;
			list.itemRendererFactory = listItemRender;//
//			list.addEventListener(Event.CHANGE, list_changeHandler);
//			list.isSelectable=true;
			list.width = (ApplictionConfig.MIDDLE_CARD_WIDTH) * 6 + 6 * 10; // Starling.current.stage.stageWidth;
			list.height = ApplictionConfig.MIDDLE_CARD_HEIGHT;
			list.pageWidth = (ApplictionConfig.MIDDLE_CARD_WIDTH) * 6 +6 * 10; //每页的宽度
			
			this.addChild(list);
			this.list.validate();
		}
		
		private function list_scrollHandler(e:Event):void{
			pageNum.text=(this.list.horizontalPageIndex+1)+" / "+list.horizontalPageCount;
		}
		
		private function listItemRender():IListItemRenderer
		{
			
			var renderer:MyDefaultListItemRenderer = new MyDefaultListItemRenderer();
			renderer.width = ApplictionConfig.MIDDLE_CARD_WIDTH;
			renderer.iconPosition = "manual";
			renderer.iconSourceField = "thumbnail";
			renderer.itemHasLabel=false;
			renderer.labelFactory = function():ITextRenderer
			{
				var temp:BitmapFontTextRenderer = new BitmapFontTextRenderer(); // TextFieldTextRenderer = new TextFieldTextRenderer();
				temp.textFormat = new BitmapFontTextFormat(TextField.getBitmapFont("cotfont_0"), 20, 0xffffff, TextFormatAlign.CENTER);
				temp.width = ApplictionConfig.MIDDLE_CARD_WIDTH;
				return temp;
			}
			/*renderer.labelFactory = function():TextField
			{
			var temp:TextField=new TextField(ApplictionConfig.MIDDLE_CARD_WIDTH, 30, "", "cotfont_0", 20, 0xffffff);
			
			return temp;
			}*/
			
			renderer.accessoryPosition = "manual";
			
			renderer.accessoryLabelFactory = function():TextField
			{
				var temp:TextField=new TextField(ApplictionConfig.MIDDLE_CARD_WIDTH, 30, "", "cotfont_0", 20, 0xffffff);
				return temp;
			}
			renderer.skillLaberFactory = function():TextField
			{
				var temp:TextField=new TextField(ApplictionConfig.MIDDLE_CARD_WIDTH, 50, "", "cotfont_0", 20, 0xffffff,false);
				temp.hAlign="right";
				return temp;
			}
			renderer.professonlLaberFactory = function():TextField
			{
				var temp:TextField=new TextField(ApplictionConfig.MIDDLE_CARD_WIDTH, 30, "", "cotfont_0", 20, 0xffffff);
				return temp;
			}
			
			renderer.accessorySourceFunction = function(param:Object):Texture
			{
				return ApplictionConfig.assets.getTexture("大卡背景图0000");
			}
			
			renderer.isQuickHitAreaEnabled = true;
			renderer.useStateDelayTimer = true;
			//renderer.autoFlatten = true;
			
			/*_dragGestures = new DragGestures(renderer, function(flag:Boolean = false):void
			{
			//(flag)?layer.flatten():layer.unflatten();
			list.horizontalScrollPolicy = (flag) ? List.SCROLL_POLICY_ON : List.SCROLL_POLICY_OFF; //移动时禁止LIST跟随鼠标移动
			//					trace("list.horizontalScrollPolicy="+list.horizontalScrollPolicy)
			list.invalidate();
			})
			_dragGestures._moveingCard = _dragCard;
			_dragGestures.hitArr = _cards;*/
			return renderer;
		};
		protected function tileListItemRendererFactory():IListItemRenderer
		{
			const renderer:DefaultListItemRenderer = new DefaultListItemRenderer();
			renderer.labelField = "label";
			renderer.iconSourceField = "thumbnail";
			renderer.iconPosition = feathers.controls.Button.ICON_POSITION_TOP;
			renderer.defaultLabelProperties.textFormat = new BitmapFontTextFormat(TextField.getBitmapFont("cotfont_0"), 20, 0xffffff, TextFormatAlign.CENTER);
			return renderer;
		}
		
		private function list_changeHandler(e:Event):void
		{
			var filter:ColorMatrixFilter = new ColorMatrixFilter();
			filter.invert();
			filter.adjustSaturation(-0.5);
			filter.adjustHue(1.0);
			
			var currentlist:List = List(e.currentTarget);
			var temp:ShowCardDec = new ShowCardDec();
			temp.showCardDec((currentlist.selectedItem.cardModel as CardModel).id);
			//ShowCardDec.getInstance().showCardDec((currentlist.selectedItem.cardModel as CardModel).id);
		
		}
		
		override public function dispose():void
		{
			//layer.unflatten();
			
//			layer.dispose();
			super.dispose();
			_dragCard.dispose();
			if (list)
			{
				list.dispose();
				list = null;
			}
			
			//ApplictionConfig.assets.removeTextureAtlas("editDeckUI");
		}
	}

}

