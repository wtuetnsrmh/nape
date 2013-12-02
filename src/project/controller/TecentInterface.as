package project.controller
{
    import project.core.*;
    import flash.events.*;
    import flash.external.*;
    import flash.net.*;

    public class TecentInterface extends EventDispatcher
    {
        public var currentOfferId:int = 0;
        private static var ti:TecentInterface;

        public function TecentInterface(param1:IEventDispatcher = null)
        {
            super(param1);
            if (ti)
            {
                throw new Error("Error");
            }
            return;
        }// end function

        public function purchaseByQPoint(param1:int, param2:int) : void
        {
            this.currentOfferId = param1;
            var _loc_3:* = new URLVariables();
            _loc_3.id = param1;
            _loc_3.amount = param2;
            DotNetServer.sendHTTPRequest("buygoods.ashx", _loc_3, this.onBuy);
            return;
        }// end function

        private function onBuy(param1:XML) : void
        {
            ExternalInterface.call("exchange", String(param1.Param), String(this.currentOfferId));
            return;
        }// end function

        public static function getInstance() : TecentInterface
        {
            if (!ti)
            {
                ti = new TecentInterface;
            }
            return ti;
        }// end function

    }
}
