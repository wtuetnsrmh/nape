package
{
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.text.TextField;
	
	public class TestImage extends Sprite
	{
		public function TestImage()
		{
			var im:Image=new Image(ApplictionConfig.assets.getTexture("powered_by_starling"));
			addChild(im);
			var a:TextField=new TextField(100,100,"1","Desyrel");
			addChild(a);
		}
	}
}