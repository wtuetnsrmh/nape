package project.model.data.chat
{
	/*
	* 描述：一条聊天信息模型
	* 
	*/
    import flash.events.*;

    public class ChatMessage extends EventDispatcher
    {
        private var _body:String;
        private var _mId:String;
        private var _fromUId:String;
        private var _toUId:String;
        private var _fromNick:String;
        private var _toNick:String;
        private var _time:String;
        private var _roomId:int;//公聊，私聊，行业
        private var _type:int;
        private var _color:String = "#FFFFFF";
        public static const MESSAGE_TYPE_WORLD:int = 1;
        public static const MESSAGE_TYPE_GUILD:int = 2;
        public static const MESSAGE_TYPE_PRIVATE:int = 0;

        public function ChatMessage(param1:IEventDispatcher = null)
        {
            super(param1);
            return;
        }// end function

        public function get body() : String
        {
            return this._body;
        }// end function

        public function set body(param1:String) : void
        {
            this._body = param1;
            return;
        }// end function

        public function get mId() : String
        {
            return this._mId;
        }// end function

        public function set mId(param1:String) : void
        {
            this._mId = param1;
            return;
        }// end function

        public function get fromUId() : String
        {
            return this._fromUId;
        }// end function

        public function set fromUId(param1:String) : void
        {
            this._fromUId = param1;
            return;
        }// end function

        public function get toUId() : String
        {
            return this._toUId;
        }// end function

        public function set toUId(param1:String) : void
        {
            this._toUId = param1;
            return;
        }// end function

        public function get fromNick() : String
        {
            return this._fromNick;
        }// end function

        public function set fromNick(param1:String) : void
        {
            this._fromNick = param1;
            return;
        }// end function

        public function get toNick() : String
        {
            return this._toNick;
        }// end function

        public function set toNick(param1:String) : void
        {
            this._toNick = param1;
            return;
        }// end function

        public function get time() : String
        {
            return this._time;
        }// end function

        public function set time(param1:String) : void
        {
            this._time = param1;
            return;
        }// end function

        public function get roomId() : int
        {
            return this._roomId;
        }// end function

        public function set roomId(param1:int) : void
        {
            this._roomId = param1;
            return;
        }// end function

        public function get type() : int
        {
            return this._type;
        }// end function

        public function set type(param1:int) : void
        {
            this._type = param1;
            return;
        }// end function

        public function get color() : String
        {
            return this._color;
        }// end function

        public function set color(param1:String) : void
        {
            this._color = param1;
            return;
        }// end function

    }
}
