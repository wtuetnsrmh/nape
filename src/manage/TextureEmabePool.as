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
	import flash.utils.getDefinitionByName;
	/**
	 * 纹理对象池
	 * @author bbjxl
	 */
	public class TextureEmabePool extends EventDispatcher 
	{
		private var assetsMap:HashMap;
        private static var resourceManager:TextureEmabePool;
		public function TextureEmabePool() 
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


		/**
		* @param 1 地址
		* @param 2 回调函数
		*/
		private var url:String;
		private var returnImage:Image;
		private	var tempTexture:Texture;
        public function loadAssets(param1:String, param2:Function = null,scale:Number=2):Texture
        {
			 if (this.assetsMap.containsKey(param1))
            {
				
				tempTexture = this.assetsMap.get(url) as Texture
				 if (param2 != null)
                {
                    param2.call(null, tempTexture, param1);
					
                }
                return tempTexture;
            }else {
				var temp:Class = getDefinitionByName(param1) as Class;
				tempTexture = Texture.fromBitmapData(new temp(), false, false, scale);
				//returnImage = new Image(tempTexture);
				assetsMap.put(url, tempTexture);
				}
            return tempTexture;
          
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

        public static function getInstance() : TextureEmabePool
        {
            if (resourceManager == null)
            {
                resourceManager = new TextureEmabePool();
            }
            return resourceManager;
        }// end function
	}

}