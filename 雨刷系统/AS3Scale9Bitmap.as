/*
 Copyright (c) 2009 Paulius Uza  <paulius@uza.lt>
 http://www.uza.lt
 All rights reserved.
  
 Permission is hereby granted, free of charge, to any person obtaining a copy 
 of this software and associated documentation files (the "Software"), to deal 
 in the Software without restriction, including without limitation the rights 
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is furnished 
 to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all 
 copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, 
 INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A 
 PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION 
 OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
 SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

@ignore
*/

package {
	
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.geom.Rectangle;
	
	import lt.uza.ui.Scale9BitmapSprite;
	import lt.uza.ui.Scale9SimpleStateButton;

	/** DIMENSIONS FOR FLEX BUILDER 3*/

	[SWF(backgroundColor="0xFFFFFF", frameRate="40", width="983", height="592")]

	public class AS3Scale9Bitmap extends Sprite
	{
		/** IMPORTS */
		
		[Embed (source="example/skin_normal.png")]
		public var $button_skin_normal:Class
		public var button_skin_normal:Bitmap = new $button_skin_normal;

		[Embed (source="example/skin_hover.png")]
		public var $button_skin_hover:Class
		public var button_skin_hover:Bitmap = new $button_skin_hover;
		
		[Embed (source="example/skin_down.png")]
		public var $button_skin_down:Class
		public var button_skin_down:Bitmap = new $button_skin_down;
		
		/**
		 * EXAMPLE ACTIONSCRIPT 3 PROJECT 
		 * FOR "ADOBE FLEX BUILDER 3"
		 */
		
		public function AS3Scale9Bitmap()
		{
			/*
			 * Set the Stage scaling mode to no-scale to see the effect correctly in a resized SWF
			 */
			 
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			
			/*
			 * Create a new rectangle defining Scale9 area of your bitmap
			 */
			 
			var scale9_example:Rectangle = new Rectangle(6,6,105,20);
			
			/*
			 * Initialize the button with all 3 states (normal, hover, down) using 3 different bitmaps;
			 */
			 
			var button_example_a:Scale9SimpleStateButton = new Scale9SimpleStateButton(
					scale9_example,
					button_skin_normal.bitmapData, 
					button_skin_hover.bitmapData, 
					button_skin_down.bitmapData
				);
				button_example_a.x  = 20;
				button_example_a.y  = 20;
				
				/*
			 	 * Scale the button using "width" and "scaleY" properties
			 	 * (in general you can use "width", "height", "scaleY", "scaleX" properties for scaling)
			 	 */
			 	
			 	button_example_a.width = 300;
			 	button_example_a.scaleY = 2;
			 	
			 	/*
			 	 * Add to stage
			 	 */
			 	 
			 	addChild(button_example_a);
			 	
			 	
			/*
			 * Initialize a scalable bitmap (non-button)
			 */
			 
			 	var bitmap_example_b:Scale9BitmapSprite = new Scale9BitmapSprite(button_skin_hover.bitmapData, scale9_example);
			 		bitmap_example_b.width = 60;
			 		bitmap_example_b.scaleY = 2;
			 		
			 /*
			  * Position the scalable bitmap and add it to the stage 
			  */
			 		bitmap_example_b.y = 20;
			 		bitmap_example_b.x = button_example_a.x + button_example_a.width + 10;
			 	addChild(bitmap_example_b);
			 	
			 /*
			  * Display the original bitmaps below for comparison
			  */
			 	
			 var original_normal:Bitmap = new $button_skin_normal;
			 var original_hover:Bitmap = new $button_skin_hover;
			 var original_down:Bitmap = new $button_skin_down;
			 
			 original_normal.x = 20;
			 original_hover.x = original_normal.x + original_normal.width + 10;
			 original_down.x = original_hover.x + original_hover.width + 10;
			 original_down.y = original_hover.y = original_normal.y = button_example_a.y + button_example_a.height + 20;
			 
			 addChild(original_normal);
			 addChild(original_hover);
			 addChild(original_down);
		}
	}
}
