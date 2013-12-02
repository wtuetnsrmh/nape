package project.model.data
{
    import project.config.*;
    import project.events.*;
    import project.model.*;

    public class FriendData extends DataModel
    {
        private var _friendArr:Array;
        private static var friendData:FriendData;

        public function FriendData()
        {
            this._friendArr = [];
            if (friendData != null)
            {
                throw new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE);
            }
            return;
        }// end function

        public function setFriendData(param1:XML) : void
        {
            this._friendArr = ServerDataTranslator.translateFriendData(param1);
            dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
            return;
        }// end function

        public function get friendArr() : Array
        {
            return this._friendArr;
        }// end function

        public function set friendArr(param1:Array) : void
        {
            this._friendArr = param1;
            return;
        }// end function

        public static function getInstance() : FriendData
        {
            if (friendData == null)
            {
                friendData = new FriendData;
            }
            return friendData;
        }// end function

    }
}
