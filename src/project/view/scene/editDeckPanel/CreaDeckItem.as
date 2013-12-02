package project.view.scene.editDeckPanel 
{
	import project.Cellcard.Card;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.filters.ColorMatrixFilter;
	
	/**
	 * 编辑卡组中的响应拖动各槽
	 * @author bbjxl
	 * 2013/9/16 22:29
	 */
	public class CreaDeckItem extends Sprite 
	{
		
		
		//----------------------容器---------------------------------
				
		//-----------------------UI---------------------------------
		private var _card:Card;//小卡
		private var _colorfilter:ColorMatrixFilter;
		private var _bg:Image;//背景
		//-----------------------数据---------------------------------
		private var _selected:Boolean = false;
		private var _canDrag:Boolean = true;//是否响应拖动
		private var _cardClass:int = 0;//卡的类别（装备1，神通2，兵0）
		private var _index:int = 0;//序号
		//-----------------------事件--------------------------------
		public function CreaDeckItem() 
		{
			_bg = new Image(ApplictionConfig.assets.getTexture("背景0000"));
			addChild(_bg);
			_card = new Card();
			_card.currentCardTye = 2;
			addChild(_card);
			_colorfilter = new ColorMatrixFilter();
			
			this.filter = _colorfilter;
		}
		/**
		 * 判断卡与要嵌入的框是否类型符合
		 * @param	cardclass1
		 * @param	cardclass2
		 * @return
		 */
		public function judgestCardCalss(cardclass1:int, cardclass2:int):Boolean {
			if (cardclass1 == devideClass(cardclass2)) {
				return true;
				}else {
					return false;
					}
				return false;
			
			}
		private function devideClass(arg:int):int {
			var temp:int=-1;
			if (arg==12) {
			temp = 1;
			}else  if (arg == 13) {
				temp = 2;
				}else {
					temp =0;
					}
			return temp;
			}
			
		public function get selected():Boolean 
		{
			return _selected;
		}
		
		public function set selected(param1:Boolean):void 
		{
			_selected = param1;
		  if (param1) {
			  _colorfilter.adjustBrightness(1);
			  }else {
				  if (canDrag) {
					  //如果是可以嵌入的框
					  _colorfilter.reset();
					  }else {
						  //如果本身是不可嵌入的，就不改变（灰色）
						  return;
						  }
				 
				  }
		}
		public function get canDrag() : Boolean
		 {
		   return _canDrag;
		}// end function
		
		public function set canDrag(param1:Boolean) : void
		{
		  _canDrag = param1;
		  if (param1) {
			   _colorfilter.reset();
			  if (_cardClass == 0) {
				  _bg.texture=ApplictionConfig.assets.getTexture("背景0000")
				  }else {
					   _bg.texture=ApplictionConfig.assets.getTexture("背景000"+(cardClass+1))
					   //_bg.gotoAndStop(cardClass+2);
					  }
			  }else {
				   _bg.texture=ApplictionConfig.assets.getTexture("背景0000")
				  }
		  return;
		}// end function
		public function get card():Card 
		{
			return _card;
		}
		
		public function set card(value:Card):void 
		{
			_card = value;
		}
	
		public function get index() : int
		 {
		   return _index;
		}// end function
		
		public function set index(param1:int) : void
		{
		  _index= param1;
		  return;
		}// end function
		public function get cardClass() : int
		 {
		   return _cardClass;
		}// end function
		
		public function set cardClass(param1:int) : void
		{
		  _cardClass= param1;
		  return;
		}// end function
		
	}

}