package project.core
{
	/*
	* 描述：由中间放大弹出
	* 
	*/
    import com.greensock.*;
    import com.greensock.easing.*;
    import com.greensock.plugins.*;
    import flash.display.*;

    public class AnimationManager extends Object
    {

        public function AnimationManager()
        {
            return;
        }// end function

        public static function transfromAroundCenter(param1:DisplayObject, param2:Function = null) : void
        {
            TweenLite.to(param1, 0, {transformAroundCenter:{scaleX:0.3, scaleY:0.3}});
            TweenLite.to(param1, 0.3, {transformAroundCenter:{scaleX:1, scaleY:1}, ease:Back.easeOut, onComplete:param2});
            return;
        }// end function

        TweenPlugin.activate([TransformAroundCenterPlugin, TransformAroundPointPlugin, ShortRotationPlugin]);
    }
}
