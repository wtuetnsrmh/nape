package project.model.skyCity
{
    import __AS3__.vec.*;
	import project.config.ErrorZhCn;
	import project.events.SMZTDataChangeEvent;
	import project.model.data.DataModel;

    public class SkyCityData extends DataModel
    {
        /*private var _equipedOfficer:Vector.<OfficerItem>;
        private var _officerArray:Vector.<OfficerItem>;
        private var _wuArray:Vector.<OfficerItem>;
        private var _weiArray:Vector.<OfficerItem>;
        private var _shuArray:Vector.<OfficerItem>;
        private var _taArray:Vector.<OfficerItem>;*/
       
        private static var skyCityData:SkyCityData;

        public function SkyCityData()
        {
            if (skyCityData != null)
            {
                throw new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE);
            }
            /*this._officerArray = new Vector.<OfficerItem>;
            this._wuArray = new Vector.<OfficerItem>;
            this._weiArray = new Vector.<OfficerItem>;
            this._shuArray = new Vector.<OfficerItem>;
            this._taArray = new Vector.<OfficerItem>;
            this._equipedOfficer = new Vector.<OfficerItem>;*/
            return;
        }// end function

       
		/**
		 * 刷新天空之城数据
		 * @param	param1
		 */
        public function refreshSkyCityData(param1:Object) : void
        {
            
            dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_REFRESH));
            return;
        }// end function

		/**
		 * 
		 * 设置数据
		 * @param	param1
		 */
        public function setSkyCityData(param1:Object) : void
        {
            
            dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
            return;
        }// end function

       

        /*public function get officerArray() : Vector.<OfficerItem>
        {
            return this._officerArray;
        }// end function

        public function get wuArray() : Vector.<OfficerItem>
        {
            return this._wuArray;
        }// end function

        public function get weiArray() : Vector.<OfficerItem>
        {
            return this._weiArray;
        }// end function

        public function get shuArray() : Vector.<OfficerItem>
        {
            return this._shuArray;
        }// end function

        public function get taArray() : Vector.<OfficerItem>
        {
            return this._taArray;
        }// end function*/

        

        public static function getInstance() : SkyCityData
        {
            if (skyCityData == null)
            {
                skyCityData = new SkyCityData();
            }
            return skyCityData;
        }// end function

    }
}
