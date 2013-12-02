package project.core
{
    import flash.events.*;
    import flash.net.*;

    public class GameGC extends EventDispatcher
    {

        public function GameGC(param1:IEventDispatcher = null)
        {
            super(param1);
            return;
        }// end function

        public static function doClearance() : void
        {
            try
            {
                new LocalConnection().connect("foo");
                new LocalConnection().connect("foo");
            }
            catch (error:Error)
            {
            }
            return;
        }// end function

    }
}
