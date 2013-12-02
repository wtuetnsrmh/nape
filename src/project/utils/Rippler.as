package project.utils
{
    import flash.display.*;
    import flash.events.*;
    import flash.filters.*;
    import flash.geom.*;
	/**
	 * 水波纹效果
	 */
    public class Rippler extends Object
    {
        private var _colourTransform:ColorTransform;
        private var _origin:Point;
        private var _source:DisplayObject;
        private var _defData:BitmapData;
        private var _expandFilter:ConvolutionFilter;
        private var _filter:DisplacementMapFilter;
        private var _drawRect:Rectangle;
        private var _scaleInv:Number;
        private var _matrix:Matrix;
        private var _buffer1:BitmapData;
        private var _buffer2:BitmapData;
        private var _fullRect:Rectangle;

        public function Rippler(param1:DisplayObject, param2:Number, param3:Number = 2)
        {
            var _loc_4:Number = NaN;
            var _loc_5:Number = NaN;
            _origin = new Point();
            _source = param1;
            _scaleInv = 1 / param3;
            _buffer1 = new BitmapData(param1.width * _scaleInv, param1.height * _scaleInv, false, 0);
            _buffer2 = new BitmapData(_buffer1.width, _buffer1.height, false, 0);
            _defData = new BitmapData(param1.width, param1.height);
            _loc_4 = _defData.width / _buffer1.width;
            _loc_5 = _defData.height / _buffer1.height;
            _fullRect = new Rectangle(0, 0, _buffer1.width, _buffer1.height);
            _drawRect = new Rectangle();
            _filter = new DisplacementMapFilter(_buffer1, _origin, BitmapDataChannel.BLUE, BitmapDataChannel.BLUE, param2, param2, "wrap");
            _source.filters = [_filter];
            _source.addEventListener(Event.ENTER_FRAME, handleEnterFrame);
            _expandFilter = new ConvolutionFilter(3, 3, [0.5, 1, 0.5, 1, 0, 1, 0.5, 1, 0.5], 3);
            _colourTransform = new ColorTransform(1, 1, 1, 1, 127, 127, 127);
            _matrix = new Matrix(_loc_4, 0, 0, _loc_5);
            return;
        }// end function

        public function destroy() : void
        {
            _source.removeEventListener(Event.ENTER_FRAME, handleEnterFrame);
            _buffer1.dispose();
            _buffer2.dispose();
            _defData.dispose();
            return;
        }// end function

        public function drawRipple(param1:int, param2:int, param3:int, param4:Number) : void
        {
            var _loc_5:Number = param3 >> 1;
            var _loc_6:Number = (param4 * 255 & 255) * param4;
            _drawRect.x = (-_loc_5 + param1) * _scaleInv;
            _drawRect.y = (-_loc_5 + param2) * _scaleInv;
            var _loc_7:Number = param3 * _scaleInv;
            _drawRect.height = param3 * _scaleInv;
            _drawRect.width = _loc_7;
            _buffer1.fillRect(_drawRect, _loc_6);
            return;
        }// end function

        public function getRippleImage() : BitmapData
        {
            return _defData;
        }// end function

        private function switchBuffers() : void
        {
            var _loc_1:BitmapData = null;
            _loc_1 = _buffer1;
            _buffer1 = _buffer2;
            _buffer2 = _loc_1;
            return;
        }// end function

        private function handleEnterFrame(event:Event) : void
        {
            var _loc_2:* = _buffer2.clone();
            _buffer2.applyFilter(_buffer1, _fullRect, _origin, _expandFilter);
            _buffer2.draw(_loc_2, null, null, BlendMode.SUBTRACT, null, false);
            _defData.draw(_buffer2, _matrix, _colourTransform, null, null, true);
            _filter.mapBitmap = _defData;
            _source.filters = [_filter];
            _loc_2.dispose();
            switchBuffers();
            return;
        }// end function

    }
}
