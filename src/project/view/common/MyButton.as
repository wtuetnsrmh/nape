package project.view.common
{
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.filters.ColorMatrixFilter;
	import starling.textures.Texture;
	
	/**
	 * 自定义按钮
	 * @author bbjxl 2013
	 */
	public class MyButton extends Sprite
	{
		private var _clickEnable:Boolean = false; //是否可点击
		private var _bt:Button;
		private var _onClick:Function;
		private var _index:int;
		private var _setSelected:Boolean = false;
		private var _textureName:String;
		public function MyButton(textureName:String = "buttonBg0000", text:String = "", downSkin:Texture = null)
		{
			_textureName=textureName;
			_bt = new Button(ApplictionConfig.assets.getTexture(textureName), text, downSkin);
			_bt.fontName = "宋体";
			_bt.fontSize = 30;
			//_image = new Image(ApplictionConfig.assets.getTexture(textureName));
			addChild(_bt);
			this.addEventListener(Event.TRIGGERED, clickHandler);
		}
		
		public function get clickEnable():Boolean
		{
			return _clickEnable;
		}
		
		public function set clickEnable(value:Boolean):void
		{
			
			_clickEnable = value;
			
			
			if (value)
			{
				this.touchable = true;
				if (!this.hasEventListener(Event.TRIGGERED))
					this.addEventListener(Event.TRIGGERED, clickHandler);
			}
			else
			{
				var temp:Texture=ApplictionConfig.assets.getTexture(_textureName+"_enable");
				if(temp){
					_bt.upState.dispose();
					_bt.upState=temp;
				}
				this.touchable = false;
				this.removeEventListener(Event.TRIGGERED, clickHandler);
			}
		}
		
		private function clickHandler(event:Event):void
		{
			if (this._onClick != null)
			{
				this._onClick.call(null, event);
			}
		}
		
		public function get onClick():Function
		{
			return _onClick;
		}
		
		public function set onClick(value:Function):void
		{
			_onClick = value;
		}
		
		public function get index():int
		{
			return _index;
		}
		
		public function set index(value:int):void
		{
			_index = value;
		}
		
		public function get setSelected():Boolean
		{
			return _setSelected;
		}
		
		public function set setSelected(arg:Boolean):void
		{
			_setSelected = arg;
			//没激活的话不执行
			if (!_clickEnable)
			{
				return;
			}
			
			if (arg)
			{
				//trace("clcik")
				_bt.fontColor = 0xffccff;
				this.touchable = false;
				if (this.hasEventListener(Event.TRIGGERED))
					this.removeEventListener(Event.TRIGGERED, clickHandler);
			}
			else
			{
				_bt.fontColor = 0;
				this.touchable = true;
				if (!this.hasEventListener(Event.TRIGGERED))
					this.addEventListener(Event.TRIGGERED, clickHandler);
				
			}
		}
		
		override public function dispose():void{
			super.dispose();
			_bt.removeFromParent(true);
		}
	
	}

}