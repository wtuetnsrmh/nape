package project.core
{
	/*
	* 描述：全局域
	* 
	*/
    import project.config.ErrorZhCn;
    import flash.events.*;
    import flash.system.*;

    public class SMZTDomainManager extends EventDispatcher
    {
        private var _currentUIAppDomain:ApplicationDomain;//当前UI域
        private static var applicationDomainManager:SMZTDomainManager;

        public function SMZTDomainManager()
        {
            if (applicationDomainManager != null)
            {
                throw new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE);
            }
            this._currentUIAppDomain = ApplicationDomain.currentDomain;
            return;
        }// end function

        public function get currentUIAppDomain() : ApplicationDomain
        {
            return this._currentUIAppDomain;
        }// end function

        public function set currentUIAppDomain(param1:ApplicationDomain) : void
        {
            this._currentUIAppDomain = param1;
            return;
        }// end function

        public static function getInstance() : SMZTDomainManager
        {
            if (applicationDomainManager == null)
            {
                applicationDomainManager = new SMZTDomainManager;
            }
            return applicationDomainManager;
        }// end function

    }
}
