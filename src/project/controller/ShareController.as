package project.controller
{
    import project.config.*;
    import project.core.*;
    import project.model.*;
    import flash.events.*;
    import flash.external.*;
    import flash.net.*;
    import mx.utils.*;

    public class ShareController extends EventDispatcher
    {
        public static const SHARE_BUDOKAI:int = 1;
        public static const SHARE_ARENA:int = 2;
        public static const SHARE_PVE:int = 3;
        public static const SHARE_TEAM:int = 4;
        public static const SHARE_WEAPON:int = 5;
        public static const SHARE_UPGRADE:int = 6;
        public static const SHARE_ACHIEVE:int = 7;
        public static const SHARE_LEVEL:int = 8;
        public static const SHARE_BATTLE:int = 9;

        public function ShareController(param1:IEventDispatcher = null)
        {
            super(param1);
            return;
        }// end function

        public static function triggerNormalShare(param1 = null) : void
        {
            var _loc_2:* = String(param1);
            if (StringUtil.trim(_loc_2) == "")
            {
                return;
            }
            switch(ModelLocator.getInstance().snsType)
            {
                case ModelLocator.SNS_QZONE:
                {
                    doQZoneShare(_loc_2);
                    break;
                }
                case ModelLocator.SNS_QQ:
                {
                    doQQShare(_loc_2);
                    break;
                }
                case ModelLocator.SNS_RR:
                {
                    doRRShare(_loc_2);
                    break;
                }
                case ModelLocator.SNS_KX:
                {
                    doKXShare(_loc_2);
                    break;
                }
                case ModelLocator.SNS_51:
                {
                    do51Share(_loc_2);
                    break;
                }
                case ModelLocator.SNS_QD:
                {
                    doQDShare(_loc_2);
                    break;
                }
                case ModelLocator.SNS_SINA:
                {
                    doSNShare(_loc_2);
                    break;
                }
                case ModelLocator.SNS_GUMMY:
                {
                    doGMShare(_loc_2);
                    break;
                }
                case ModelLocator.SNS_FACEBOOK:
                {
                    doFBShare(_loc_2);
                    break;
                }
                case ModelLocator.SNS_MIXI:
                {
                    doMixiShare(_loc_2);
                    break;
                }
                case ModelLocator.SNS_HE_KR:
                {
                    doMixiShare(_loc_2);
                    break;
                }
                case ModelLocator.SNS_MINIK:
                {
                    doMinikShare(_loc_2);
                    break;
                }
                default:
                {
                    break;
                    break;
                }
            }
            return;
        }// end function

        private static function doMinikShare(param1:String) : void
        {
            var uri:String;
            var onCallBack:Function;
            var aId:* = param1;
            onCallBack = function (param1:XML) : void
            {
                var _loc_2:String = null;
                if (param1.hasOwnProperty("FeedData"))
                {
                    _loc_2 = String(param1.FeedData);
                    ExternalInterface.call("clientfeed", _loc_2);
                }
                SMZTSystemManager.getInstance().refreshHeartBeat();
                return;
            }// end function
            ;
            var dd:* = "?" + ModelLocator.getInstance().tokenStr + "&";
            uri = ServerParse.SHARE_MINIK + dd;
            var postData:* = new URLVariables();
            postData.id = aId;
            DotNetServer.sendHTTPRequest(uri, postData, onCallBack);
            return;
        }// end function

        private static function doMixiShare(param1:String) : void
        {
            var uri:String;
            var onCallBack:Function;
            var aId:* = param1;
            onCallBack = function (param1:XML) : void
            {
                var _loc_2:String = null;
                if (param1.hasOwnProperty("FeedData"))
                {
                    _loc_2 = String(param1.FeedData);
                    ExternalInterface.call("clientfeed", _loc_2);
                }
                SMZTSystemManager.getInstance().refreshHeartBeat();
                return;
            }// end function
            ;
            var dd:* = "?" + ModelLocator.getInstance().tokenStr + "&";
            uri = ServerParse.SHARE_MIXI + dd;
            var postData:* = new URLVariables();
            postData.id = aId;
            DotNetServer.sendHTTPRequest(uri, postData, onCallBack);
            return;
        }// end function

        private static function doDefaultShare(param1:String) : void
        {
            var uri:String;
            var onCallBack:Function;
            var aId:* = param1;
            onCallBack = function (param1:XML) : void
            {
                var _loc_2:String = null;
                if (param1.hasOwnProperty("FeedData"))
                {
                    _loc_2 = String(param1.FeedData);
                    ExternalInterface.call("clientfeed", _loc_2);
                }
                SMZTSystemManager.getInstance().refreshHeartBeat();
                return;
            }// end function
            ;
            uri;
            var postData:* = new URLVariables();
            postData.id = aId;
            DotNetServer.sendHTTPRequest(uri, postData, onCallBack);
            return;
        }// end function

        private static function doFBShare(param1:String) : void
        {
            var uri:String;
            var onCallBack:Function;
            var aId:* = param1;
            onCallBack = function (param1:XML) : void
            {
                var _loc_2:String = null;
                if (param1.hasOwnProperty("FeedData"))
                {
                    _loc_2 = String(param1.FeedData);
                    ExternalInterface.call("clientfeed", _loc_2);
                }
                SMZTSystemManager.getInstance().refreshHeartBeat();
                return;
            }// end function
            ;
            var dd:* = "?" + ModelLocator.getInstance().tokenStr + "&";
            uri = ServerParse.SHARE_FACEBOOK + dd;
            var postData:* = new URLVariables();
            postData.id = aId;
            DotNetServer.sendHTTPRequest(uri, postData, onCallBack);
            return;
        }// end function

        private static function doGMShare(param1:String) : void
        {
            var uri:String;
            var onCallBack:Function;
            var aId:* = param1;
            onCallBack = function (param1:XML) : void
            {
                var _loc_2:String = null;
                if (param1.hasOwnProperty("FeedData"))
                {
                    _loc_2 = String(param1.FeedData);
                    ExternalInterface.call("clientfeed", _loc_2);
                }
                SMZTSystemManager.getInstance().refreshHeartBeat();
                return;
            }// end function
            ;
            var dd:* = "?" + ModelLocator.getInstance().tokenStr + "&";
            uri = ServerParse.SHARE_GUMMY + dd;
            var postData:* = new URLVariables();
            postData.id = aId;
            DotNetServer.sendHTTPRequest(uri, postData, onCallBack);
            return;
        }// end function

        private static function do51Share(param1:String) : void
        {
            return;
        }// end function

        private static function doSNShare(param1:String) : void
        {
            var uri:String;
            var onCallBack:Function;
            var aId:* = param1;
            onCallBack = function (param1:XML) : void
            {
                var _loc_2:String = null;
                if (param1.hasOwnProperty("FeedData"))
                {
                    _loc_2 = String(param1.FeedData);
                    ExternalInterface.call("clientfeed", _loc_2);
                }
                SMZTSystemManager.getInstance().refreshHeartBeat();
                return;
            }// end function
            ;
            var dd:* = "?" + ModelLocator.getInstance().tokenStr + "&";
            uri = ServerParse.SHARE_SINA + dd;
            var postData:* = new URLVariables();
            postData.id = aId;
            DotNetServer.sendHTTPRequest(uri, postData, onCallBack);
            return;
        }// end function

        private static function doQDShare(param1:String) : void
        {
            var uri:String;
            var onCallBack:Function;
            var aId:* = param1;
            onCallBack = function (param1:XML) : void
            {
                var _loc_2:String = null;
                if (param1.hasOwnProperty("FeedData"))
                {
                    _loc_2 = String(param1.FeedData);
                    ExternalInterface.call("clientfeed", _loc_2);
                }
                SMZTSystemManager.getInstance().refreshHeartBeat();
                return;
            }// end function
            ;
            var dd:* = "?" + ModelLocator.getInstance().tokenStr + "&";
            uri = ServerParse.SHARE_QD + dd;
            var postData:* = new URLVariables();
            postData.id = aId;
            DotNetServer.sendHTTPRequest(uri, postData, onCallBack);
            return;
        }// end function

        private static function doKXShare(param1:String) : void
        {
            var uri:String;
            var onCallBack:Function;
            var aId:* = param1;
            onCallBack = function (param1:XML) : void
            {
                var _loc_2:String = null;
                if (param1.hasOwnProperty("FeedData"))
                {
                    _loc_2 = String(param1.FeedData);
                    ExternalInterface.call("clientfeed", _loc_2);
                }
                SMZTSystemManager.getInstance().refreshHeartBeat();
                return;
            }// end function
            ;
            var dd:* = "?" + ModelLocator.getInstance().tokenStr + "&";
            uri = ServerParse.SHARE_SNS_KX + dd;
            var postData:* = new URLVariables();
            postData.id = aId;
            DotNetServer.sendHTTPRequest(uri, postData, onCallBack);
            return;
        }// end function

        private static function doQZoneShare(param1:String) : void
        {
            var uri:String;
            var onCallBack:Function;
            var aId:* = param1;
            onCallBack = function (param1:XML) : void
            {
                var _loc_2:String = null;
                if (param1.hasOwnProperty("FeedData"))
                {
                    _loc_2 = String(param1.FeedData);
                    ExternalInterface.call("clientfeed", _loc_2);
                }
                SMZTSystemManager.getInstance().refreshHeartBeat();
                return;
            }// end function
            ;
            var dd:* = "?" + ModelLocator.getInstance().tokenStr + "&";
            uri = ServerParse.SHARE_SNS_QQ + dd;
            var postData:* = new URLVariables();
            postData.id = aId;
            DotNetServer.sendHTTPRequest(uri, postData, onCallBack);
            return;
        }// end function

        private static function doQQShare(param1:String) : void
        {
            var uri:String;
            var onCallBack:Function;
            var aId:* = param1;
            onCallBack = function (param1:XML) : void
            {
                var _loc_2:String = null;
                if (param1.hasOwnProperty("FeedData"))
                {
                    _loc_2 = String(param1.FeedData);
                    ExternalInterface.call("clientfeed", _loc_2);
                }
                SMZTSystemManager.getInstance().refreshHeartBeat();
                return;
            }// end function
            ;
            var dd:* = "?" + ModelLocator.getInstance().tokenStr + "&";
            uri = ServerParse.SHARE_SNS_QQ_PENGYOU + dd;
            var postData:* = new URLVariables();
            postData.id = aId;
            DotNetServer.sendHTTPRequest(uri, postData, onCallBack);
            return;
        }// end function

        private static function doRRShare(param1:String) : void
        {
            var uri:String;
            var onCallBack:Function;
            var aId:* = param1;
            onCallBack = function (param1:XML) : void
            {
                var _loc_2:String = null;
                if (param1.hasOwnProperty("FeedData"))
                {
                    _loc_2 = String(param1.FeedData);
                    ExternalInterface.call("clientfeed", _loc_2);
                }
                SMZTSystemManager.getInstance().refreshHeartBeat();
                return;
            }// end function
            ;
            var dd:* = "?" + ModelLocator.getInstance().tokenStr + "&";
            uri = ServerParse.SHARE_SNS_RR + dd;
            var postData:* = new URLVariables();
            postData.id = aId;
            DotNetServer.sendHTTPRequest(uri, postData, onCallBack);
            return;
        }// end function

    }
}
