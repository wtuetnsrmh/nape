package project.model.data.chat
{
	/*
	* 描述：所有聊天数据
	* 
	*/
    import __AS3__.vec.*;
    import project.model.data.*;
    import flash.events.*;

    public class ChatData extends DataModel
    {
        private var _worldMessageVector:Vector.<ChatMessage>;//公聊
        private var _guildMessageVector:Vector.<ChatMessage>;//行会
        private var _privateMessageVector:Vector.<ChatMessage>;//私聊
        private var _friendList:Array;
        private var _blackList:Array;
        private static var cd:ChatData;

        public function ChatData(param1:IEventDispatcher = null)
        {
            this._friendList = [];
            this._blackList = [];
            if (cd)
            {
                throw new Error("Error");
            }
            this._worldMessageVector = new Vector.<ChatMessage>;
            this._guildMessageVector = new Vector.<ChatMessage>;
            this._privateMessageVector = new Vector.<ChatMessage>;
            return;
        }// end function

        public function onMessage(param1:XML) : void
        {
            var _loc_2:XML = null;
            var _loc_3:ChatMessage = null;
            var _loc_4:String = null;
            for each (_loc_2 in param1.Result.Msgs.Msg)
            {
                
                _loc_3 = new ChatMessage();
                _loc_3.fromUId = _loc_2.@FromId;
                _loc_3.fromNick = _loc_2.@FromName;
                _loc_3.toUId = _loc_2.@ToId;
                _loc_3.toNick = _loc_2.@ToName;
                _loc_3.roomId = _loc_2.@Channel;
                _loc_3.body = _loc_2.@Content;
                _loc_3.body = _loc_3.body.replace(/>"">/g, "&gt;");
                _loc_3.body = _loc_3.body.replace(/<""</g, "&lt;");
                for each (_loc_4 in this.blackList)
                {
                    
                    if (_loc_4 == _loc_3.fromUId)
                    {
                        return;
                    }
                }
                switch(_loc_3.roomId)
                {
                    case 0:
                    {
                        _loc_3.color = "#FFFFFF";
                        this._worldMessageVector.push(_loc_3);
                        break;
                    }
                    case 1:
                    {
                        _loc_3.color = "#00FF00";
                        this._worldMessageVector.push(_loc_3);
                        this._guildMessageVector.push(_loc_3);
                        break;
                    }
                    case 99:
                    {
                        _loc_3.color = "#FF65CB";
                        this._worldMessageVector.push(_loc_3);
                        this._guildMessageVector.push(_loc_3);
                        this._privateMessageVector.push(_loc_3);
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
            }
            return;
        }// end function

        public function get worldMessageVector() : Vector.<ChatMessage>
        {
            return this._worldMessageVector;
        }// end function

        public function set worldMessageVector(param1:Vector.<ChatMessage>) : void
        {
            this._worldMessageVector = param1;
            return;
        }// end function

        public function get guildMessageVector() : Vector.<ChatMessage>
        {
            return this._guildMessageVector;
        }// end function

        public function set guildMessageVector(param1:Vector.<ChatMessage>) : void
        {
            this._guildMessageVector = param1;
            return;
        }// end function

        public function get privateMessageVector() : Vector.<ChatMessage>
        {
            return this._privateMessageVector;
        }// end function

        public function set privateMessageVector(param1:Vector.<ChatMessage>) : void
        {
            this._privateMessageVector = param1;
            return;
        }// end function

        public function get friendList() : Array
        {
            return this._friendList;
        }// end function

        public function set friendList(param1:Array) : void
        {
            this._friendList = param1;
            return;
        }// end function

        public function get blackList() : Array
        {
            return this._blackList;
        }// end function

        public function set blackList(param1:Array) : void
        {
            this._blackList = param1;
            return;
        }// end function

        public static function getInstance() : ChatData
        {
            if (!cd)
            {
                cd = new ChatData;
            }
            return cd;
        }// end function

    }
}
