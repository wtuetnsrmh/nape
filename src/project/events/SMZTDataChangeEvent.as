package project.events
{
    import starling.events.Event;

    public class SMZTDataChangeEvent extends Event
    {
        private var _dataType:String = "ALL";
        private var _dataObject:Object;
        private var _index:int;
        public static const ON_DATA_CHANGE:String = "onDataChange";//数据变化事件 用于初始化
        public static const ON_DATA_REFRESH:String = "ON_DATA_REFRESH";//数据刷新事件
        public static const ON_DATA_TIMER:String = "ON_DATA_TIMER";//每秒触发一次，在用户信息数据模型中用于判断如果是在竞技场时，要实时更新时间，多久后才能再增加一次挑战
        public static const ON_NEWBIE_EVENT:String = "ON_NEWBIE_EVENT";//新手导航事件

        public function SMZTDataChangeEvent(param1:String,param3:Boolean = false,  data:Object=null, param2:String = "ALL")
        {
            super(param1, param3, data);
            this._dataType = param2;
            return;
        }// end function

        public function get dataType() : String
        {
            return this._dataType;
        }// end function

        public function set dataType(param1:String) : void
        {
            this._dataType = param1;
            return;
        }// end function

        public function get index() : int
        {
            return this._index;
        }// end function

        public function set index(param1:int) : void
        {
            this._index = param1;
            return;
        }// end function

        public function get dataObject() : Object
        {
            return this._dataObject;
        }// end function

        public function set dataObject(param1:Object) : void
        {
            this._dataObject = param1;
            return;
        }// end function

    }
}
