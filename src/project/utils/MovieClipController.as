package project.utils
{
	import starling.core.Starling;
	import starling.display.MovieClip;
	import starling.events.Event;

	/*
	* 描述：MC控制类
	* 
	*/
    

    public class MovieClipController extends Object
    {

        public function MovieClipController()
        {
            return;
        }// end function

		//侦听是否播放完，完了回调方法
        public static function onMovieClipEnd(param1:MovieClip, param2:Function) : void
        {
            var onEnterFrame:Function;
            param1.loop = false;
            onEnterFrame = function (event:Event) : void
            {
				param2.call(null);
				param1.stop();
				Starling.juggler.remove(param1);
				param1.removeFromParent(true);
				param1.removeEventListener(Event.COMPLETE, onEnterFrame);
				param1 = null;
				
                return;
            }// end function
            param1.addEventListener(Event.COMPLETE, onEnterFrame);
            
            return;
        }// end function

    }
}
