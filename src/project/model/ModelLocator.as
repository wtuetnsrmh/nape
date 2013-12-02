package project.model
{
	/**
	* 描述：MainScene数据模型
	* 
	* 
	*/
	import project.config.ErrorZhCn;
	import project.config.LocalConfig;
	import starling.events.EventDispatcher;
	//import project.core.SMZTSoundManager;
	import project.model.data.DataModel;
	import project.events.SMZTDataChangeEvent;
    //import flash.events.*;
    //import flash.external.*;

    public class ModelLocator extends DataModel
    {
        private var _dynamicURL:String = "";//动态地址
        private var _username:String = "ross";
        private var _subDomain:String;
        private var _staticURL:String;
        private var _dynamicURLArr:Array;//动态地址数组
        private var _uId:int = 0;//用户自己的ID
        private var _currentUId:int = 0;//当前访问的用户ID（其他朋友的房间） 这里没有去到朋友房间的功能待扩展
        private var _isMute:Boolean = false;//是否静音
        private var _snsType:String="KaiXin";
        private var _tokenStr:String;
        private var _verify:Object;
        private static var modelLocator:ModelLocator;
        public static const IDC:int = 0;
        public static const SNS_51:String = "51";//SNS类型
        public static const SNS_RR:String = "RenRen";
        public static const SNS_KX:String = "KaiXin";
        public static const SNS_QQ:String = "QQ";
        public static const SNS_QZONE:String = "QZONE";
        public static const SNS_QD:String = "";
        public static const SNS_SINA:String = "Sina";
        public static const SNS_360:String = "360";
        public static const SNS_FACEBOOK:String = "Facebook";
        public static const SNS_REAL_WORD_JP:String = "";
        public static const SNS_GUMMY:String = "";
        public static const SNS_MIXI:String = "";
        public static const SNS_HE_KR:String = "";
        public static const SNS_MINIK:String = "";

        public function ModelLocator(param1:EventDispatcher = null)
        {
            this._dynamicURLArr = [];
            if (modelLocator != null)
            {
                throw new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE);
            }
            return;
        }// end function

        public function isQQRelated() : Boolean
        {
            return ModelLocator.getInstance().snsType == ModelLocator.SNS_QQ || ModelLocator.getInstance().snsType == ModelLocator.SNS_QZONE;
        }// end function

        public function get subDomain() : String
        {
            return this._subDomain;
        }// end function

        public function set subDomain(param1:String) : void
        {
            this._subDomain = param1;
            return;
        }// end function

        

        public function get dynamicURL() : String
        {
            return this._dynamicURL;
        }// end function

        public function set dynamicURL(param1:String) : void
        {
            /*if (param1.indexOf("st.snsdevelop.com") >= 0)
            {
                param1 = param1.replace("st.snsdevelop.com", "alpha.snsdevelop.com");
            }*/
            this._dynamicURL = param1;
            return;
        }// end function

        public function get username() : String
        {
            return this._username;
        }// end function

        public function set username(param1:String) : void
        {
            this._username = param1;
            return;
        }// end function

        public function get uId() : int
        {
            return this._uId;
        }// end function

        public function set uId(param1:int) : void
        {
            this._uId = param1;
            dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
            return;
        }// end function

        public function get currentUId() : int
        {
            return this._currentUId;
        }// end function

        public function set currentUId(param1:int) : void
        {
            this._currentUId = param1;
            dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
            return;
        }// end function

        public function get staticURL() : String
        {
            return this._staticURL;
        }// end function

        public function set staticURL(param1:String) : void
        {
            this._staticURL = param1;
            return;
        }// end function

        public function get isMute() : Boolean
        {
            return this._isMute;
        }// end function

        public function set isMute(param1:Boolean) : void
        {
            this._isMute = param1;
            //SMZTSoundManager.mute(this._isMute);
            return;
        }// end function

        public function get snsType() : String
        {
            return this._snsType;
        }// end function

        public function set snsType(param1:String) : void
        {
            this._snsType = param1;
            return;
        }// end function

       

        public function get dynamicURLArr() : Array
        {
            return this._dynamicURLArr;
        }// end function

        public function set dynamicURLArr(param1:Array) : void
        {
            this._dynamicURLArr = param1;
            this.dynamicURL = this._dynamicURLArr[0];
            return;
        }// end function

        public function addToDynaList(param1:String) : void
        {
            this._dynamicURLArr.push(param1);
            return;
        }// end function

        public function get verify()
        {
            return this._verify;
        }// end function

        public function set verify(param1) : void
        {
            this._verify = param1;
            return;
        }// end function

        public static function getInstance() : ModelLocator
        {
            if (modelLocator == null)
            {
                modelLocator = new ModelLocator;
            }
            return modelLocator;
        }// end function

    }
}
