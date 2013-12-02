package
{
	import flash.geom.Rectangle;
	import flash.utils.getTimer;
	
	import manage.TexturePool;
	
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.textures.Texture;
	
	/**
	 * ...
	 * @author bbjxl
	 */
	public class MyImage extends starling.display.Sprite
	{
		private var _image:Image = null;
		public var _width:Number = 0;
		public var _heigth:Number = 0;
		private var _initTexture:Texture;//大图纹理
		
		public function MyImage(w:Number = 0, h:Number = 0)
		{
			_width = w;
			_heigth = h;
		}
		
		public function setTexture(arg:Texture):void
		{
			if (_image == null)
			{
				_image = new Image(arg);
				/*_image.width = _width;
				_image.height = _heigth;*/
				addChild(_image);
				//trace("null")
			}
			else
			{
				trace("myimagedispose")
				_image.dispose();
				
				_image.texture = arg;
				_image.readjustSize();
				
			}
		}
		public function updataImage(url:String, callback:Function = null):void {
			ApplictionConfig.assets.loadTexture(url, function(param:Texture):void {
				_initTexture = Texture.fromTexture(param, new Rectangle(0, 0, ApplictionConfig.CARD_WIDTH-2, ApplictionConfig.CARD_HEIGHT));
				setTexture(_initTexture);
				if (callback != null) {
					callback.call(null);
				}
			},true);
			/*TexturePool.getInstance().loadAssets(url, function(param:Texture, u:String):void {
					_initTexture = param;
					setTexture(param);
					if (callback != null) {
						callback.call(null);
						}
					});*/
			}
		public function get image():Image
		{
			return _image;
		}
		
		public function set image(value:Image):void
		{
			_image = value;
		}
		
		public function get initTexture():Texture 
		{
			return _initTexture;
		}
		
		public function set initTexture(value:Texture):void 
		{
			_initTexture = value;
		}
	
	}

}