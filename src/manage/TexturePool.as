package manage 
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.net.URLStream;
	import flash.system.ApplicationDomain;
	import flash.system.Security;
	import flash.utils.ByteArray;
	
	import fileBack.OpenFile;
	
	import project.config.ApplicationConfig;
	import project.utils.HashMap;
	
	import starling.core.Starling;
	import starling.display.Image;
	import starling.textures.Texture;

	/**
	 * 纹理对象池
	 * @author bbjxl
	 */
	public class TexturePool extends EventDispatcher 
	{
		private var assetsMap:HashMap;//纹理
		private var byteArrayMap:HashMap;//素材字节
        private static var resourceManager:TexturePool;
		public function TexturePool() 
		{
			
            if (resourceManager != null)
            {
                throw new Error("单例模式！");
            }
			this.assetsMap = new HashMap();
			this.byteArrayMap = new HashMap();
            //this.SMZTDmg = SMZTDomainManager.getInstance();
            return;
		}
		

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
		* @param now是否立即返回纹理（用于先加载bitmapdata再上传纹理）
		*/
		private var myFile:File;
		private var returnImage:Image;
		private	var tempTexture:Texture;
        public function loadAssets(param1:String, param2:Function = null,scale:Number=1,now:Boolean=true):void
        {
			//trace("param1="+param1)
			
			var url:String;
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
				
//				trace("assetsMap.length="+assetsMap.size())
				var tempBD:BitmapData=(loader.content as Bitmap).bitmapData;
				tempTexture = Texture.fromBitmapData(tempBD,false,false,ApplictionConfig.SCALE);
				tempBD.dispose();
				//returnImage = new Image(tempTexture);
				
				 assetsMap.put(url, tempTexture);
				
				//已上传到GPU的纹理则清除内存中的ByteArray
				if (byteArrayMap.containsKey(url)) {
					trace(byteArrayMap.getValue(url) is ByteArray);
					(byteArrayMap.getValue(url) as ByteArray).clear();
					byteArrayMap.remove(url);
					}
				
				/*if(!starling.core.Starling.handleLostContext)
				{
					(loader.content as Bitmap).bitmapData.dispose();
					return;
				}*/
				(loader.content as Bitmap).bitmapData.dispose();
				
			 	loader.unloadAndStop();
				loader=null;
				//加载结束回调
                if (completeFunc != null)
                {
                    completeFunc.call(null, tempTexture, url);
					url = "";
                }
				
				
                return;
            }// end function
            
            /*onStreamComplete = function (event:Event) : void
            {
                var _loc_2:ByteArray= new ByteArray();
                var _loc_3:uint = stream.bytesAvailable;
                stream.readBytes(_loc_2, 0, _loc_3);
                stream.close();
                byteArrayMap.put(url, _loc_2);
				if(now){
                loader.loadBytes(_loc_2);
				}
                return;
            }// end function*/
            
            loader = new Loader();
            /*stream = new URLStream();
            stream.addEventListener(Event.COMPLETE, onStreamComplete);
			stream.addEventListener(IOErrorEvent.IO_ERROR, onLoadError);*/
            loader.contentLoaderInfo.addEventListener(Event.COMPLETE, onLoad);
            loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, onLoadError);
            if (now && this.assetsMap.containsKey(url) && this.assetsMap.get(url)!=null)
            {
				
				//已上传过纹理的素材
                //loader.loadBytes(this.assetsMap.get(url));
				tempTexture =(this.assetsMap.get(url) as Texture);
				 if (completeFunc != null)
                {
                    completeFunc.call(null, tempTexture, url);
					//url = "";
                }
                return ;
            }
			if (now && this.byteArrayMap.containsKey(url))
            {
				//已加载过的素材
                loader.loadBytes(this.byteArrayMap.get(url));
				
                return ;
            }
            try
            {
                //stream.load(new URLRequest(url));
				//各系统的相对路径(优点在于个平台均适用)
				myFile= File.applicationDirectory;
				myFile = myFile.resolvePath(url);//新建一个文件对象
				//var myFile:File=File.documentsDirectory.resolvePath(url);
				var _loc_2:ByteArray = OpenFile.open(myFile);
				byteArrayMap.put(url, _loc_2);
				if (now) {
					if (url.indexOf(".atf") != -1) {
						//atf
						tempTexture = Texture.fromAtfData(_loc_2,1,false);
						//returnImage = new Image(tempTexture);
						_loc_2.clear();
						 assetsMap.put(url, tempTexture);
						//加载结束回调
						if (completeFunc != null)
						{
							completeFunc.call(null, tempTexture, url);
							url = "";
						}
						}else {
							 loader.loadBytes(_loc_2);
							}
				}
				
				_loc_2 = null;
            }
            catch (e:Error)
            {
                trace("Connot load url:" + url);
            }
            return ;
        }// end function
		public function open(file1:File):ByteArray{
				if(!file1 || !file1.exists){
						return null;
				}
				var stream:FileStream = new FileStream();
				stream.open(file1, FileMode.READ );
				var fileDate:ByteArray = new ByteArray();
				stream.readBytes( fileDate, 0, stream.bytesAvailable );
				stream.close();
				return fileDate;
		}
		/**
		* @param 1 被复制的显示对象
		* @param 2 是否显示
		*/
        public function duplicateDisplayObject(param1:Texture, param2:Boolean = false) : Image
        {
            var _loc_4:Image = new Image(param1);
            return _loc_4;
        }// end function

		/**
		 * 从释放已经上传的纹理
		 * @param	event
		 */
			public function disposeTexturByURL(url:String):void {
				if (assetsMap.containsKey(url)) {
					(assetsMap.get(url) as Texture).dispose();
					assetsMap.remove(url);
					}
				}
		/**
		 * 从释放已经加载的素材
		 * @param	event
		 */
			public function disposeBitMapDataByURL(url:String):void {
				if (byteArrayMap.containsKey(url)) {
					(byteArrayMap.get(url) as ByteArray).clear();
					byteArrayMap.remove(url);
					}
				}

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