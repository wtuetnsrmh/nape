package manage 
{
	import flash.display.Bitmap;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.net.URLStream;
	import flash.system.ApplicationDomain;
	import flash.system.Security;
	import flash.utils.ByteArray;
	import project.utils.HashMap;
	import starling.display.Image;
	import starling.textures.Texture;
	/**
	 * 纹理对象池
	 * @author bbjxl
	 */
	public class TexturePool extends EventDispatcher 
	{
		private var assetsMap:HashMap;
        private static var resourceManager:TexturePool;
		public function TexturePool() 
		{
			 this.assetsMap = new HashMap();
            if (resourceManager != null)
            {
                throw new Error("单例模式！");
            }
            //this.SMZTDmg = SMZTDomainManager.getInstance();
            return;
		}
		//============================================
		//设置所有的本地XML配置文件 ，从SWF（XML）中获取
		//============================================
       /* private function setXMLData() : void
        {
            var _loc_1:* = Reflection.getClass("project.config.XMLDocument", SMZTDomainManager.getInstance().currentUIAppDomain);
            return;
        }// end function*/

		//============================================
		// 获取资源实例
		//============================================
        /*public function getRes(param1:String, param2:ApplicationDomain = null) : DisplayObject
        {
            var _loc_3:* = Reflection.createDisplayObjectInstance(param1, param2);
            if (_loc_3 == null)
            {
                _loc_3 = Reflection.createDisplayObjectInstance("JIONG", param2);
            }
            //_loc_3.cacheAsBitmap = true;
            return _loc_3;
        }// end function*/

		//============================================
		//复制外部加载的素材，一些小图标  param1 地址
		//============================================
        public function getDuplicateDisplayObject(param1:String) :Image
        {
            if (this.assetsMap.containsKey(param1))
            {
                return duplicateDisplayObject(this.assetsMap.get(param1));
            }
            return null;
        }// end function

		/**
		* @param 1 地址
		* @param 2 回调函数
		*/
		private var url:String;
		private var returnImage:Image;
		private	var tempTexture:Texture;
        public function loadAssets(param1:String, param2:Function = null,scale:Number=2):void
        {
			if (url == param1) return;
			
            var loader:Loader;
            var stream:URLStream;
            var onLoadError:Function;
            var onLoad:Function;
            var onStreamComplete:Function;
            url = param1;
            var completeFunc:Function = param2;
            onLoadError = function (event:IOErrorEvent) : void
            {
                trace("Connot load url:" + url);
                return;
            }// end function
            
            onLoad = function (event:Event) : void
            {
				trace("assetsMap="+assetsMap.size())
				tempTexture = Texture.fromBitmap((loader.content as Bitmap),false,false,scale);
				returnImage = new Image(tempTexture);
				
				 assetsMap.put(url, tempTexture);
				 tempTexture = null;
				//加载结束回调
                if (completeFunc != null)
                {
                    completeFunc.call(null, returnImage, url);
					url = "";
                }
                return;
            }// end function
            
            onStreamComplete = function (event:Event) : void
            {
                var _loc_2:ByteArray= new ByteArray();
                var _loc_3:uint = stream.bytesAvailable;
                stream.readBytes(_loc_2, 0, _loc_3);
                stream.close();
                //assetsMap.put(url, _loc_2);
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
                //loader.loadBytes(this.assetsMap.get(url));
				returnImage = new Image(this.assetsMap.get(url) as Texture);
				 if (completeFunc != null)
                {
                    completeFunc.call(null, returnImage, url);
					url = "";
                }
                return ;
            }
            try
            {
                stream.load(new URLRequest(url));
            }
            catch (e:Error)
            {
                trace("Connot load url:" + url);
            }
            return ;
        }// end function

		/**
		* @param 1 被复制的显示对象
		* @param 2 是否显示
		*/
        public function duplicateDisplayObject(param1:Texture, param2:Boolean = false) : Image
        {
            var _loc_4:Image = new Image(param1);
            return _loc_4;
        }// end function

       /* public function getClass(param1:String, param2:ApplicationDomain = null) : Class
        {
            //return Reflection.getClass(param1, param2);
        }// end function*/

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

        public static function getInstance() : TexturePool
        {
            if (resourceManager == null)
            {
                resourceManager = new TexturePool();
            }
            return resourceManager;
        }// end function
	}

}