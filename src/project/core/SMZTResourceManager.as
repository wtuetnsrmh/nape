package project.core
{
	/*
	* 描述：素材资源管理类，静态图片
	* 
	*/
    import project.config.*;
    import project.utils.*;
    import flash.display.*;
    import flash.events.*;
    import flash.geom.*;
    import flash.net.*;
    import flash.system.*;
    import flash.utils.*;

    public class SMZTResourceManager extends EventDispatcher
    {
		
        private var SMZTDmg:SMZTDomainManager;
        private var assetsMap:HashMap;
        private static var resourceManager:SMZTResourceManager;

        public function SMZTResourceManager()
        {
            this.assetsMap = new HashMap();
            if (resourceManager != null)
            {
                throw new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE);
            }
            this.SMZTDmg = SMZTDomainManager.getInstance();
            return;
        }// end function

		//============================================
		//设置所有的本地XML配置文件 ，从SWF（XML）中获取
		//============================================
        private function setXMLData() : void
        {
            var _loc_1:* = Reflection.getClass("project.config.XMLDocument", SMZTDomainManager.getInstance().currentUIAppDomain);
            /*ItemConfig.OFFICER_CONFIG = _loc_1.OFFICER_CONFIG;
            ItemConfig.ITEM_CONFIG = _loc_1.ITEM_CONFIG;
            ItemConfig.WEAPON_CONFIG = _loc_1.WEAPON_CONFIG;*/
            return;
        }// end function

		//============================================
		// 获取资源实例
		//============================================
        public function getRes(param1:String, param2:ApplicationDomain = null) : DisplayObject
        {
            var _loc_3:* = Reflection.createDisplayObjectInstance(param1, param2);
            if (_loc_3 == null)
            {
                _loc_3 = Reflection.createDisplayObjectInstance("JIONG", param2);
            }
            //_loc_3.cacheAsBitmap = true;
            return _loc_3;
        }// end function

		//============================================
		//复制外部加载的素材，一些小图标  param1 地址
		//============================================
        public function getDuplicateDisplayObject(param1:*) : DisplayObject
        {
            if (this.assetsMap.containsKey(param1))
            {
                return this.duplicateDisplayObject(this.assetsMap.get(param1));
            }
            return null;
        }// end function

		/**
		* @param 1 地址
		* @param 2 回调函数
		*/
        public function loadAssets(param1:String, param2:Function = null) : DisplayObject
        {
            var loader:Loader;
            var stream:URLStream;
            var onLoadError:Function;
            var onLoad:Function;
            var onStreamComplete:Function;
            var url:String = param1;
            var completeFunc:Function = param2;
            onLoadError = function (event:IOErrorEvent) : void
            {
                trace("Connot load url:" + url);
                return;
            }// end function
            
            onLoad = function (event:Event) : void
            {
				//加载结束回调
                if (completeFunc != null)
                {
                    completeFunc.call(null, loader,url);
                }
                return;
            }// end function
            
            onStreamComplete = function (event:Event) : void
            {
                var _loc_2:ByteArray= new ByteArray();
                var _loc_3:uint = stream.bytesAvailable;
                stream.readBytes(_loc_2, 0, _loc_3);
                stream.close();
                assetsMap.put(url, _loc_2);
                loader.loadBytes(_loc_2);
                return;
            }// end function
            
            loader = new Loader();
            stream = new URLStream();
            stream.addEventListener(Event.COMPLETE, onStreamComplete);
			stream.addEventListener(IOErrorEvent.IO_ERROR, onLoadError);
            loader.contentLoaderInfo.addEventListener(Event.COMPLETE, onLoad);
            loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, onLoadError);
            if (this.assetsMap.containsKey(url))
            {
				//已加载过的素材
                loader.loadBytes(this.assetsMap.get(url));
                return loader;
            }
            try
            {
                stream.load(new URLRequest(url));
            }
            catch (e:Error)
            {
                trace("Connot load url:" + url);
            }
            return loader;
        }// end function

		/**
		* @param 1 被复制的显示对象
		* @param 2 是否显示
		*/
        public function duplicateDisplayObject(param1:DisplayObject, param2:Boolean = false) : DisplayObject
        {
            var _loc_5:Rectangle = null;
            var _loc_3:Class = Object(param1).constructor;
            var _loc_4:DisplayObject= new _loc_3();
            _loc_3.transform = param1.transform;
            _loc_4.filters = param1.filters;
            _loc_4.cacheAsBitmap = param1.cacheAsBitmap;
            _loc_4.opaqueBackground = param1.opaqueBackground;
            if (param1.scale9Grid)
            {
                _loc_5 = param1.scale9Grid;
                _loc_4.scale9Grid = _loc_5;
            }
            if (param2 && param1.parent)
            {
                param1.parent.addChild(_loc_4);
            }
            return _loc_4;
        }// end function

        public function getClass(param1:String, param2:ApplicationDomain = null) : Class
        {
            return Reflection.getClass(param1, param2);
        }// end function

        private function ioErrorHandler(event:Event) : void
        {
            dispatchEvent(new IOErrorEvent(IOErrorEvent.IO_ERROR));
            return;
        }// end function

        private function securityErrorHandler(event:Event) : void
        {
            dispatchEvent(new SecurityErrorEvent(SecurityErrorEvent.SECURITY_ERROR));
            return;
        }// end function

        public static function getInstance() : SMZTResourceManager
        {
            if (resourceManager == null)
            {
                resourceManager = new SMZTResourceManager;
            }
            return resourceManager;
        }// end function

    }
}
