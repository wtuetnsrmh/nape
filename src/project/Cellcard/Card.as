package project.Cellcard 
{
	import com.greensock.easing.FastEase;
	
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.text.TextFormatAlign;
	
	import lzm.starling.texture.DynamicTextureAtlas;
	
	import manage.TexturePool;
	
	import project.base.BaseSprite;
	import project.base.ClippedSprite;
	import project.config.ApplicationConfig;
	import project.model.ModelLocator;
	import project.model.item.CardModel;
	import project.utils.CardFactary;
	import project.utils.CustomTool;
	import project.view.control.ShowCardDec;
	
	import starling.core.Starling;
	import starling.display.DisplayObjectContainer;
	import starling.display.Image;
	import starling.display.MovieClip;
	import starling.display.Sprite;
	import starling.events.Touch;
	import starling.events.TouchEvent;
	import starling.events.TouchPhase;
	import starling.text.BitmapFont;
	import starling.text.TextField;
	import starling.textures.Texture;
	import starling.utils.AssetManager;
	import starling.utils.MatrixUtil;
	
	/**
	 * ...
	 * @author bbjxl
	 */
	public class Card extends BaseSprite 
	{
		//----------------------容器---------------------------------
		
		//-----------------------UI---------------------------------
		public var _atkText:TextField;//攻击值
		public var _hpText:TextField;//生命值
		public var _spText:TextField;//等待值
		private var _nameText:TextField;//名字
		public var smallSpText:TextField;//战斗时小卡的等待时间
		public var _skill1Text:TextField;//战斗时小卡的等待时间
		public var _skill2Text:TextField;//战斗时小卡的等待时间
		
		public var state:int=1;
		public var mc_big_ready:Image;
		public var mc_ready:Image;
		public var cardId:int;
		public var RT:Boolean=false;//是否用renderTexture
		//-----------------------数据---------------------------------
		
		//-----------------------事件--------------------------------
		private var _image:Image;
		private var _state:int = 0;
		private var _texture:Texture;
		private var _cardId:uint;
		private var _cardImageUrl:String;
		private var _bg:Image;
		private var _cardModle:CardModel;
		private var _cardImage:MyImage;
		private var _cardContent:Sprite;
		private var _bgcontent:Sprite;
		private var _currentCardTye:int =1;//当前卡处于大中小卡的哪个状态 大：0，中：1，小：2 ,3:只显示技能描述
		private var _locX:Number;
		private var _locY:Number;
		private var _moved:Boolean = false;//是否已经移动过
		private var _uniquesId:String;
		private var _lianManSp:Sprite;
		private var _textSp:Sprite;//文字容器
		private var _barSp:Sprite;//卡边框容器
		private var _barImage:Image;
		private var _startIM:Image;
		private var _qutityIM:Image;
		private var source:Texture;
		private var starT:Texture;
		private var quityT:Texture;
		private var raceBar:String;
		private var dyTa:DynamicTextureAtlas;
		private var _endImage:Image;
		public function Card() 
		{
			
			_lianManSp = new Sprite();
			_cardContent = new Sprite();
			_bgcontent = new Sprite();
			_textSp = new Sprite();
			_barSp=new Sprite();
			_bgcontent.x = 10;
			
			addChild(_bgcontent);
			addChild(_cardContent);
			addChild(_lianManSp);
			addChild(_barSp);
			addChild(_textSp);
			
			init();
			this.addEventListener(TouchEvent.TOUCH,clickhandler);
		}
		
		public function get cardModle():CardModel
		{
			return _cardModle;
		}
		
		public function set cardModle(value:CardModel):void
		{
			_cardModle = value;
		}
		
		private function clickhandler(e:TouchEvent):void
		{
			// TODO Auto Generated method stub
			var a:Vector.<Touch> = e.touches;
			var touch:Touch = a[0];
			
			if (touch.phase == TouchPhase.BEGAN)
			{
				_moved = false;
				_locX = touch.globalX;
				_locY = touch.globalY;
				//				trace("card="+touch.phase);
			}else if(touch.phase == TouchPhase.MOVED){
				_moved = true;
			}else if(touch.phase == TouchPhase.ENDED){
				if (Math.abs(touch.globalX - _locX) < 4 && !_moved) {
					//ShowCardDec.getInstance().showCardDec(_cardModle.id);
					var temp:ShowCardDec = new ShowCardDec();
					temp.showCardDec(_cardModle.id);
				}
			}
		}
		/**
		 * 初始卡牌背景
		 */
		private function init():void 
		{
			_textSp.unflatten();
			_nameText = new TextField(ApplictionConfig.MIDDLE_CARD_WIDTH, 25, "", "cotfont_0",20,0xffffff);
			_textSp.addChild(_nameText);
			_atkText = new TextField(30, 30, "0", "cotfont_0",20,0xffffff);
			_hpText = new TextField(30, 30, "0", "cotfont_0",20,0xffffff);
			_spText = new TextField(30, 30, "0", "cotfont_0",20,0xffffff);
			smallSpText = new TextField(30, 30, "0", "cotfont_0",20,0xffffff);
			_skill1Text = new TextField(ApplictionConfig.MIDDLE_CARD_WIDTH, 30, "", "cotfont_0",20,0xffffff);
			_skill2Text = new TextField(ApplictionConfig.MIDDLE_CARD_WIDTH, 30, "", "cotfont_0", 20, 0xffffff);
			_skill1Text.hAlign = TextFormatAlign.RIGHT;
			_skill2Text.hAlign = TextFormatAlign.RIGHT;
			_skill1Text.y = ApplictionConfig.MIDDLE_CARD_HEIGHT-50;
			_skill2Text.y =  ApplictionConfig.MIDDLE_CARD_HEIGHT-30;
			_hpText.x = 66;
			_hpText.y = 132.6;
			_spText.x = 93.95;
			_spText.y = 132.6;
			_atkText.x = 35.3;
			_atkText.y = 132.6;
			smallSpText.y =24.85;
			smallSpText.x = 27.8;
			_textSp.addChild(_atkText);
			_textSp.addChild(_hpText);
			_textSp.addChild(_spText);
			_textSp.addChild(smallSpText);
			_textSp.addChild(_skill1Text);
			_textSp.addChild(_skill2Text);
			_textSp.touchable = false;
			_textSp.flatten();
			_textSp.visible=false;
			
			mc_ready=new Image(ApplictionConfig.assets.getTexture("卡品质0000"));
			mc_ready.visible=false;
			//			mc_ready.stop();
			//			Starling.juggler.add(mc_ready);
			mc_big_ready =new Image( ApplictionConfig.assets.getTexture("卡品质0000"));
			mc_big_ready.visible=false;
			//			mc_big_ready.stop();
			//			Starling.juggler.add(mc_big_ready);
			
			//			dyTa = new DynamicTextureAtlas(ApplictionConfig.MIDDLE_CARD_WIDTH, ApplictionConfig.MIDDLE_CARD_HEIGHT);
		}
		
		/**
		 * 更新卡模型
		 * @param	value
		 * @param	updatFlag
		 * @param	fun
		 */
		public function updataDataModel(value:CardModel, param1:Boolean = false):void {
			_cardId = value.id;
			_textSp.unflatten();
			_nameText.text = value.name;
			_cardModle = value;
			if (param1) {
				_atkText.text = String((_cardModle.ap==0)?"0":_cardModle.ap);
				_hpText.text = String((_cardModle.hp==0)?"0":_cardModle.hp);
			}else {
				_atkText.text = String((_cardModle.ap==0)?"--":_cardModle.ap);
				_hpText.text = String((_cardModle.hp==0)?"--":_cardModle.hp);
			}
			
			_spText.text = String(_cardModle.sp);
			smallSpText.text = String(_cardModle.sp);
			
			_textSp.flatten();
		}
		
		public function setCardModel(value:CardModel, updatFlag:Boolean = true, fun:Function = null):void {
			if(_cardModle && _cardModle.id!=value.id){
				ApplictionConfig.assets.clearRuntimeLoadTextureByPath(_cardModle.bigCardImage);
				_cardModle=null;
			}
			
			if(_currentCardTye==0){
				if(!_bg)
					_bg=new Image(ApplictionConfig.assets.getTexture("大卡背景图0000"));
				else{
					_bg.texture.dispose();
					_bg.texture=ApplictionConfig.assets.getTexture("大卡背景图0000");
				}
				
				_bg.scaleX=_bg.scaleY=1;
			}else if(_currentCardTye==1){
				if(!_bg)
					_bg=new Image(ApplictionConfig.assets.getTexture("大卡背景图0000"));
				else{
					_bg.texture.dispose();
					_bg.texture=ApplictionConfig.assets.getTexture("大卡背景图0000");
				}
				_bg.scaleX=_bg.scaleY=0.64;
			}else if(_currentCardTye==2){
				if(!_bg)
					_bg=new Image(ApplictionConfig.assets.getTexture("小卡背景图0000"));
				else{
					_bg.texture.dispose();
					_bg.texture=ApplictionConfig.assets.getTexture("小卡背景图0000");
				}
				_bg.scaleX=_bg.scaleY=1;
			}
			_bg.x=-10;
			if(!_bgcontent.contains(_bg))
				_bgcontent.addChild(_bg);
			_bg.visible=true;
			
			_textSp.unflatten();
			if (value.skills.length==1) {
				_skill1Text.text = value.skills[0].name+" ";
				_skill2Text.removeFromParent(true);
			}else if (value.skills.length==2) {
				_skill1Text.text = value.skills[0].name+" ";
				_skill2Text.text = value.skills[1].name+" ";
			}else {
				_skill2Text.removeFromParent(true);
				_skill1Text.removeFromParent(true);
			}
			_nameText.text = value.name;
			_textSp.flatten();
			
			_cardId = value.id;
			_cardModle = value;
			if (_cardImage == null) {
				_cardImage = new MyImage(ApplictionConfig.CARD_WIDTH, ApplictionConfig.CARD_HEIGHT);
				_cardContent.addChild(_cardImage);
			}else {
				_cardImage.visible = false;//刚开始先隐藏
			}
			_cardImage.unflatten();
			
			
			raceBar= (value.isLeader) ? "大卡外框000" + (value.race * 2 - 2) : "大卡外框000" + (value.race * 2 - 1);
			
			_barSp.unflatten();
			if (value.quality > 3)
			{
				quityT = ApplictionConfig.assets.getTexture("卡品质000" + (value.quality - 4));
				
				if (_qutityIM)
				{
					_qutityIM.dispose();
					_qutityIM.texture = quityT;
				}
				else
				{
					_qutityIM = new Image(quityT);
				}
				
				if (!_barSp.contains((_qutityIM)))
				{
					_qutityIM.y = 5;
					_barSp.addChild((_qutityIM));
				}
			}
			else
			{
				if (_qutityIM)
				{
					_qutityIM.dispose();
					_qutityIM.removeFromParent(true);
				}
			}
			
			if(starT) starT.dispose();
			starT= ApplictionConfig.assets.getTexture("星级素材000" + (value.star - 1));
			if(!_startIM){
				_startIM=new Image(starT);
				_barSp.addChild(_startIM);
			}
			
			_barSp.flatten();
			_barSp.visible=false;
			
			_cardImage.updataImage(value.bigCardImage, function():void {
				loadImage();
				_cardImage.visible = true;
				(RT)?updataUI():null;
				
				trace(_bg.x);
				trace("_cardImage.x="+_cardImage.x)
				trace("_barSp.x="+_barSp.x)
				
				if (fun != null) {
					fun.call(null);
					_cardImage.flatten();
				}
			});
			
			updataDataModel(value);
		}
		
		/**
		 *强制更新界面 
		 * 
		 */		
		private function updataUI():void{
			/*dyTa.addTextureFromDisplayobject(_cardModle.bigCardImage, this);
			this.removeChildren();
			_endImage=new Image(dyTa.getTexture(_cardModle.bigCardImage));
			addChild(_endImage);*/
		}
		
		/**
		 * 加载图片只有卡容器中没有时才去加载
		 */	
		public function loadImage(updatFlag:Boolean=true) : void
		{
			_bg.visible=false;
			
			
			if (_currentCardTye == 0)
			{
				//				if(RT)
				//				dyTa=new DynamicTextureAtlas(ApplictionConfig.CARD_WIDTH, ApplictionConfig.CARD_HEIGHT);
				showBigImage(updatFlag);
				return;
			}
				//====================中卡================================
			else if (_currentCardTye == 1)
			{
				//				if(RT)
				//				dyTa=new DynamicTextureAtlas(ApplictionConfig.MIDDLE_CARD_WIDTH, ApplictionConfig.MIDDLE_CARD_HEIGHT);
				
				showMiddleImage(updatFlag);
				return;
			}
				//=====================小卡===============================
			else if (_currentCardTye == 2)
			{
				//				if(RT)
				//				dyTa=new DynamicTextureAtlas(ApplictionConfig.SMALL_CARD_WH, ApplictionConfig.SMALL_CARD_WH);
				showSmallImage();
				return;
			}
				//=====================技能描述===============================
			else if (_currentCardTye == 3) {
				//spriteInstance.scaleX = spriteInstance.scaleY = 1;
				return;
			}
			
			
		}// end function
		
		public function showSmallImage():void 
		{
			/*_bg.texture.dispose();
			_bg.texture=ApplictionConfig.assets.getTexture("小卡背景图0000");*/
			_bg.visible=false;
			
			var temp:Texture = Texture.fromTexture(_cardImage.image.texture, new Rectangle(10, 10, ApplictionConfig.SMALL_CARD_WH,  ApplictionConfig.SMALL_CARD_WH));
			
			_cardImage.setTexture(temp);
			
			_cardImage.width = _cardImage.height = ApplictionConfig.SMALL_CARD_WH;
			temp.dispose();
			temp = null;
			_textSp.visible=false;
			/*_atkText.visible = false;
			_spText.visible = false;
			_hpText.visible = false;
			_nameText.visible = false;*/
			
			_barSp.visible=false;
			_barSp.unflatten();
			if(source) source.dispose();
			source = ApplictionConfig.assets.getTexture("小卡框0000");
			
			if(!_barImage){
				_barImage = new Image(source);
				//_barImage.width = _barImage.height = ApplictionConfig.SMALL_CARD_WH;
				_barSp.addChild(_barImage);
			}else{
				_barImage.dispose();
				_barImage.texture = source;
				//_barImage.width = _barImage.height = ApplictionConfig.SMALL_CARD_WH;
				_barImage.readjustSize();
			}
			
			_barSp.scaleX = _barSp.scaleY = 100/75;
			_bg.scaleX=_bg.scaleY=1;
			if (_startIM)
				_startIM.visible=false;
			if (_qutityIM)
				_qutityIM.visible=false;
			
			_barSp.unflatten();
			_barSp.visible=true;
		}
		
		public function showMiddleImage(updatFlag:Boolean=false):void 
		{
			/*_bg.texture.dispose();
			_bg.texture=ApplictionConfig.assets.getTexture("大卡背景图0000");*/
			_bg.visible=false;
			
			var temp:Texture = Texture.fromTexture(_cardImage.initTexture, new Rectangle(0, 0, ApplictionConfig.CARD_WIDTH, ApplictionConfig.CARD_HEIGHT));
			//var temp:Texture = Texture.fromTexture(_cardImage.image.texture, new Rectangle(10, 10, 64, 64));
			_cardImage.setTexture(temp);
			temp = null;
			_cardImage.scaleX = _cardImage.scaleY =_bg.scaleX=_bg.scaleY= 0.64;
			/*_textSp.unflatten();
			_atkText.visible = true;
			_spText.visible = true;
			_hpText.visible = true;
			_nameText.visible = true;
			_textSp.flatten();*/
			//if(_cardImage.image.transformationMatrix.a!=0.5)
			//MatrixUtil.prependScale(_cardImage.image.transformationMatrix,0.5,0.5);
			
			_barSp.unflatten();
			if(source) source.dispose();
			source= ApplictionConfig.assets.getTexture(raceBar);
			
			if(!_barImage){
				_barImage = new Image(source);
				/*_barImage.width = ApplictionConfig.CARD_WIDTH;
				_barImage.height = ApplictionConfig.CARD_HEIGHT;*/
				_barSp.addChild(_barImage);
			}else{
				_barImage.dispose();
				_barImage.texture = source;
				/*_barImage.width = ApplictionConfig.CARD_WIDTH;
				_barImage.height = ApplictionConfig.CARD_HEIGHT;*/
				_barImage.readjustSize();
			}
			_barSp.scaleX = _barSp.scaleY = 0.64;
			
			_startIM.visible=true;
			if (_qutityIM)
				_qutityIM.visible=true;
			
			_barSp.flatten();
			_textSp.visible=true;
			_barSp.visible=true;
		}
		
		public function showBigImage(updatFlag:Boolean=false):void 
		{
			/*_bg.texture.dispose();
			_bg.texture=ApplictionConfig.assets.getTexture("大卡背景图0000");*/
			_bg.visible=false;
			
			_barSp.unflatten();
			_cardImage.scaleX = _cardImage.scaleY = _bg.scaleX=_bg.scaleY=1;
			if(source) source.dispose();
			source= ApplictionConfig.assets.getTexture(raceBar);
			
			if(!_barImage){
				_barImage=new Image(source);
				_barSp.addChild(_barImage);
			}else{
				_barImage.dispose();
				_barImage.texture=source;
				_barImage.readjustSize();
			}
			_barSp.scaleX = _barSp.scaleY = 1;
			_textSp.visible=true;
			_barSp.visible=true;
		}
		
		public function getcardId():uint 
		{
			return _cardId;
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
		
		public function hideAll():void 
		{
			
		}
		
		public function checkVisible():void 
		{
			
		}
		
		public function showMask():void 
		{
			
		}
		
		public function onlyShowSmallbg():void 
		{
			//showSmallImage();
		}
		public function disposeTexture():void 
		{
			_cardImage.image.texture.dispose();
		}
		public function disposeBM():void 
		{
			
		}
		
		public function getCardModel():CardModel 
		{
			return _cardModle;
		}
		
		public function clone(number:int):Card
		{
			return CardFactary.creaCard(_cardModle.id, 1, number);
		}
		
		public function get uniquesId():String 
		{
			return _uniquesId;
		}
		
		public function set uniquesId(value:String):void 
		{
			_uniquesId = value;
		}
		
		public function get lianManSp():Sprite 
		{
			return _lianManSp;
		}
		
		public function set lianManSp(value:Sprite):void 
		{
			_lianManSp = value;
		}
		
		public function get currentCardTye():int 
		{
			return _currentCardTye;
		}
		
		public function set currentCardTye(value:int):void 
		{
			_currentCardTye = value;
			
		}
		override public function dispose():void{
			//TexturePool.getInstance().disposeTexturByURL(_cardModle.bigCardImage);
			//TexturePool.getInstance().disposeBitMapDataByURL(_cardModle.bigCardImage);
			//			removeChildren();
			//			dyTa.dispose();
			/*super.dispose();
			if(_cardModle){
			ApplictionConfig.assets.clearRuntimeLoadTextureByPath(_cardModle.bigCardImage);
			}*/
			if(_bg && _bg.texture)_bg.texture.dispose();
			super.dispose();
			removeChildren();
			removeFromParent();
			if(_cardModle){
				ApplictionConfig.assets.clearRuntimeLoadTextureByPath(_cardModle.bigCardImage);
				_cardModle=null;
			}
			_atkText.removeFromParent(true);
			_hpText.removeFromParent(true);
			_spText.removeFromParent(true);
			_nameText.removeFromParent(true);
			smallSpText.removeFromParent(true);
			_skill1Text.removeFromParent(true);
			_skill2Text.removeFromParent(true);
			
		}
		
	}
	
}