package project.controller
{
    import project.config.*;
    import project.core.*;
    import project.model.*;
    import project.model.data.*;
    import flash.events.*;
    import flash.net.*;

    public class UserActionController extends EventDispatcher
    {
        private static var userActionController:UserActionController;

        public function UserActionController()
        {
            if (userActionController != null)
            {
                throw new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE);
            }
            return;
        }// end function

        public function createPassword(param1:String, param2:String, param3:Function = null) : void
        {
            var onCallBack:Function;
            var pwd:* = param1;
            var confirmPwd:* = param2;
            var callBackFunction:* = param3;
            onCallBack = function (param1:XML) : void
            {
                if (callBackFunction != null)
                {
                    callBackFunction.call(null, param1);
                }
                return;
            }// end function
            ;
            var postData:* = new URLVariables();
            postData.action = "newpassword";
            postData["new"] = pwd;
            postData.confirm = confirmPwd;
            DotNetServer.sendHTTPRequest(ServerParse.USER_MODIFY, postData, onCallBack);
            return;
        }// end function

        public function modifyPS(param1:String, param2:Function = null) : void
        {
            var onCallBack:Function;
            var sign:* = param1;
            var callBackFunction:* = param2;
            onCallBack = function (param1:XML) : void
            {
                if (callBackFunction != null)
                {
                    callBackFunction.call(null, param1);
                }
                return;
            }// end function
            ;
            var postData:* = new URLVariables();
            postData.personal = sign;
            DotNetServer.sendHTTPRequest(ServerParse.USER_MODIFY, postData, onCallBack);
            return;
        }// end function

        public function addAttrPoint(param1:int = 0, param2:int = 0, param3:int = 0, param4:int = 0, param5:Function = null) : void
        {
            var onCallBack:Function;
            var str:* = param1;
            var dex:* = param2;
            var speed:* = param3;
            var remainPoint:* = param4;
            var callBackFunction:* = param5;
            onCallBack = function (param1:XML) : void
            {
                SMZTController.getInstance().initPlayerInfo(ModelLocator.getInstance().uId);
                if (callBackFunction != null)
                {
                    callBackFunction.call(null, param1);
                }
                return;
            }// end function
            ;
            var postData:* = new URLVariables();
            postData.str = str;
            postData.dex = dex;
            postData.spd = speed;
            postData.pnt = remainPoint;
            DotNetServer.sendHTTPRequest(ServerParse.CONFIRM_ADD_POINT, postData, onCallBack);
            return;
        }// end function

        public function setPasswordAnswer(param1:String, param2:String, param3:String, param4:Function = null) : void
        {
            var onCallBack:Function;
            var email:* = param1;
            var question:* = param2;
            var answer:* = param3;
            var callBackFunction:* = param4;
            onCallBack = function (param1:XML) : void
            {
                if (callBackFunction != null)
                {
                    callBackFunction.call(null, param1);
                }
                return;
            }// end function
            ;
            var postData:* = new URLVariables();
            postData.action = "email";
            postData.email = email;
            postData.question = question;
            postData.answer = answer;
            DotNetServer.sendHTTPRequest(ServerParse.USER_MODIFY, postData, onCallBack);
            return;
        }// end function

        public function setFiveAttr(param1:int, param2:Function = null) : void
        {
            var onCallBack:Function;
            var element:* = param1;
            var callBackFunction:* = param2;
            onCallBack = function (param1:XML) : void
            {
                if (callBackFunction != null)
                {
                    callBackFunction.call(null, param1);
                }
                return;
            }// end function
            ;
            var postData:* = new URLVariables();
            postData.action = "element";
            postData.element = element;
            DotNetServer.sendHTTPRequest(ServerParse.USER_MODIFY, postData, onCallBack);
            return;
        }// end function

        public function setVictoryPS(param1:String, param2:Function = null) : void
        {
            var onCallBack:Function;
            var victory:* = param1;
            var callBackFunction:* = param2;
            onCallBack = function (param1:XML) : void
            {
                if (callBackFunction != null)
                {
                    callBackFunction.call(null, param1);
                }
                return;
            }// end function
            ;
            var postData:* = new URLVariables();
            postData.victory = victory;
            DotNetServer.sendHTTPRequest(ServerParse.USER_MODIFY, postData, onCallBack);
            return;
        }// end function

        public function resetPoint(param1:Function = null) : void
        {
            var onCallBack:Function;
            var callBackFunction:* = param1;
            onCallBack = function (param1:XML) : void
            {
                PlayerData.getInstance().refreshPlayerData(param1);
                if (callBackFunction != null)
                {
                    callBackFunction.call(null, param1);
                }
                return;
            }// end function
            ;
            var postData:* = new URLVariables();
            postData.action = "point";
            DotNetServer.sendHTTPRequest(ServerParse.RESET_CASE, postData, onCallBack);
            return;
        }// end function

        public function modifyPassword(param1:String, param2:String, param3:String, param4:Function = null) : void
        {
            var onCallBack:Function;
            var old:* = param1;
            var pwd:* = param2;
            var confirmPwd:* = param3;
            var callBackFunction:* = param4;
            onCallBack = function (param1:XML) : void
            {
                if (callBackFunction != null)
                {
                    callBackFunction.call(null, param1);
                }
                return;
            }// end function
            ;
            var postData:* = new URLVariables();
            postData.action = "password";
            postData.old = old;
            postData["new"] = pwd;
            postData.confirm = confirmPwd;
            DotNetServer.sendHTTPRequest(ServerParse.USER_MODIFY, postData, onCallBack);
            return;
        }// end function

        public static function getInstance() : UserActionController
        {
            if (userActionController == null)
            {
                userActionController = new UserActionController;
            }
            return userActionController;
        }// end function

    }
}
