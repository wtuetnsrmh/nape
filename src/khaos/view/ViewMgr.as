package khaos.view
{
	import flash.filesystem.File;
	import flash.utils.Dictionary;
	import flash.utils.getQualifiedClassName;
	import flash.utils.getTimer;
	
	import khaos.interfaces.ILoading;
	import khaos.interfaces.IamView;
	import khaos.profile.NetWorkMonitor;
	
	import morn.core.handlers.Handler;
	import morn.core.managers.ResLoader;
	
	import starling.display.DisplayObject;
	import starling.display.Sprite;

	public class ViewMgr
	{
		public static var _init:Boolean = false;
		private static var _instance:ViewMgr = null;
		private var _viewDictionary:Dictionary = new Dictionary();
		private var _currentViewDictionary:Dictionary = new Dictionary();
		private var _containerDictionary:Dictionary = new Dictionary();
		
		private var _showCallBack:Function;
		private var _showCallBackParam:Array;
		
		public function ViewMgr(parent:Sprite, appWidth:int, appHeight:int)
		{
			if(_init == false){
				throw new Error("this is single desiner, call initViewMgr first");
			}
			_init = false;
			
			initContainer(parent, appWidth, appHeight);
		}
		
		public static function initViewMgr(parent:Sprite, appWidth:int, appHeight:int):void
		{
			if(_instance == null){
				_init = true;
				_instance = new ViewMgr(parent, appWidth, appHeight);
			}
		}
		
		public static function getInstance():ViewMgr
		{
			if (_instance == null)
				throw new UninitializedError("ViewMgr not initialized, call initViewMgr first");
			return _instance;
		}
		
		public function getView(claz:Class):IamView
		{
			if (_viewDictionary[claz] == null)
				_viewDictionary[claz] = new claz() as IamView;
			return _viewDictionary[claz];
		}
		
		public function hasCreated(claz: Class): Boolean {
			return _viewDictionary[claz] != null;
		}
		
		public function showView(claz:Class, viewParam:* = null, loadSwfs:Array =null, callBack:Function=null, callBackParam:Array=null ):void
		{
			_showCallBack = callBack;
			_showCallBackParam = callBackParam;
			
			var _assetsUrl:File;
			
			
			var unloadSwfs:Array=new Array();
			for each(var swfUrl:String in loadSwfs)
			{
				if(ApplictionConfig.assets.getTextureAtlas(swfUrl+"UI" ) == null)
				{
					_assetsUrl = ApplictionConfig.appDir.resolvePath(swfUrl);
					ApplictionConfig.assets.enqueue(_assetsUrl);
					unloadSwfs.push(_assetsUrl);
					trace("之前没有"+swfUrl+getTimer());
				}
			}
			
			if(unloadSwfs.length == 0){
				showAView(claz, viewParam);
			}
			else{
				showLoading(true);
				_loadingError = false;
				ApplictionConfig.assets.loadQueue(function onProgress(ratio:Number):void
				{
					if(_defaultLoading)
						_defaultLoading.setProgress(ratio);
					
					if (ratio == 1)
					{
						loadComplete(claz, viewParam);
					}
				});
				
			}
			unloadSwfs=null;
		}
		
		private function loadComplete(claz:Class, viewParam:*):void
		{
			if(_loadingError == false){
				showLoading(false);
				showAView(claz, viewParam);
				
				if(_showCallBack != null){
					_showCallBack(_showCallBackParam);
				}
			}
		}
		
		private var _loadingError:Boolean = false;
		private function errorLoadingHandler(url:String):void
		{
			showLoading(false);
			
			addNetMonitor("当加载到: " + url + "失败");
			_loadingError = true;
		}
		
		
		
		private function showAView(claz:Class, viewParam:*):void
		{
			var ref:IamView = getView(claz);
			
			if(_exclusiveView[claz] != null)
			{
				var exList:Array = _exclusiveView[claz];
				for each(var temp:Class in exList)
				{
					var exRef:IamView = getView(temp);
					if(exRef)
						exRef.hide();
				}
				exList=null;
			}
			
			
			var type:int = ref.viewType;
			switch (type)
			{
				case ViewType.BACKGROUND:
					//hideAllView(ViewType.SINGLE_DIALOG);
					hideAllView(ViewType.MULTI_DIALOG);
					//	hideAllView(ViewType.TOP);
					break;
				case ViewType.MULTI_DIALOG: 
					hideAllView(ViewType.MULTI_DIALOG);
					break;
				case ViewType.SINGLE_DIALOG:
					break;
				/*case ViewType.TOP:
				hideAllView(ViewType.SINGLE_DIALOG);
				break;*/
				/*case ViewType.SINGLE_DIALOG:
				hideAllView(ViewType.SINGLE_DIALOG);
				break;*/
			}
			
			
			if( _currentViewDictionary[type] == null){
				_currentViewDictionary[type] = new Dictionary;
			}
			_currentViewDictionary[type][ref] = ref;
			
			ref.showParam = viewParam;
			
			ref.show();			
		}
		/**
		 *获取当前层的当前面板 
		 * @param type
		 * 
		 */		
		public function getCurrentView(claz:Class):IamView{
			var ref:IamView = getView(claz);
			var type:int = ref.viewType;
			if( _currentViewDictionary[type] != null ){
				if(_currentViewDictionary[type][ref] != null){
					return _currentViewDictionary[type][ref];
				}
			}
			return null;
		}
		
		public function hideView(claz:Class):void
		{
			if (_viewDictionary[claz] == null)
				return;
			
			var ref:IamView = getView(claz);
			ref.hide();
			
			var type:int = ref.viewType;
			if( _currentViewDictionary[type] != null ){
				if(_currentViewDictionary[type][ref] != null){
					delete _currentViewDictionary[type][ref];
				}
			}
		}
		
		public function removeView(claz:Class):void
		{
			if (_viewDictionary[claz] == null)
				return;
			
			var ref:IamView = getView(claz);
			ref.hide();
			
			var type:int = ref.viewType;
			if( (ref as DisplayObject).parent ) {
				(ref as DisplayObject).parent.removeChild( ref as DisplayObject );

				ref = null;
			}
			
			if( _currentViewDictionary[type] != null ){
				if(_currentViewDictionary[type][ref] != null){
					delete _currentViewDictionary[type][ref];
				}
			}
		
			delete _viewDictionary[claz];
		}
		
		public function getContainer(viewType_:int):Sprite
		{
			return _containerDictionary[viewType_] as Sprite;
		}
		
		public function hideAllView(viewType:int):void
		{
			for (var p:Object in _viewDictionary)
			{
				if (_viewDictionary[p].viewType == viewType)
				{
					hideView(p as Class);
				}
			}
		}
		
		/************************布局需要的几个容器*******************/
		private var backGroundCanvas:Sprite = new Sprite;
		private var alwaysCanvas:Sprite = new Sprite;
		private var dialogCanvas:Sprite = new Sprite; //支持多个UI窗口同时存在
		private var topCanvas:Sprite = new Sprite;
		private var chatCanvas:Sprite = new Sprite;
		private var bulletinCanvas:Sprite = new Sprite;//最顶层用于显示一些系统信息等
		
		private var _parent:Sprite;
		
		private function initContainer(parent:Sprite, appWidth:int, appHeight:int):void
		{
			this._parent = parent;
			
			backGroundCanvas.touchable = true;
			alwaysCanvas.touchable = true;
			dialogCanvas.touchable = true;
			chatCanvas.touchable = true;
			bulletinCanvas.touchable = false;
			topCanvas.touchable = true;
			
			backGroundCanvas.width = appWidth;
			alwaysCanvas.width = appWidth;
			dialogCanvas.width = appWidth;
			topCanvas.width = appWidth;
			chatCanvas.width = appWidth;
			bulletinCanvas.width = appWidth;
			backGroundCanvas.height = appHeight;
			alwaysCanvas.height = appHeight;
			dialogCanvas.height = appHeight;
			topCanvas.height = appHeight;
			chatCanvas.height = appHeight;
			bulletinCanvas.height = appHeight;
			
			backGroundCanvas.name = "backGroundCanvas";
			alwaysCanvas.name = "alwaysCanvas";
			dialogCanvas.name = "dialogCanvas";
			topCanvas.name = "topCanvas";
			chatCanvas.name = "chatCanvas";
			bulletinCanvas.name = "bulletinCanvas";
			
			_containerDictionary[ViewType.BACKGROUND] = backGroundCanvas;
			_containerDictionary[ViewType.ALWAYS] = alwaysCanvas;
			_containerDictionary[ViewType.SINGLE_DIALOG] = dialogCanvas;
			_containerDictionary[ViewType.MULTI_DIALOG] = dialogCanvas;
			_containerDictionary[ViewType.TOP] = topCanvas;
			_containerDictionary[ViewType.CHAT] = chatCanvas;
			_containerDictionary[ViewType.BULLETIN] = bulletinCanvas;
			
			parent.addChild(backGroundCanvas);
			parent.addChild(alwaysCanvas);
			parent.addChild(dialogCanvas);
			parent.addChild(chatCanvas);
			parent.addChild(topCanvas);
			parent.addChild(bulletinCanvas);
			
		}
		
		public function appSizeChange(appWidth:Number, appHeight:Number):void
		{
			backGroundCanvas.width = appWidth;
			alwaysCanvas.width = appWidth;
			dialogCanvas.width = appWidth;
			topCanvas.width = appWidth;
			chatCanvas.width = appWidth;
			bulletinCanvas.width = appWidth;
			backGroundCanvas.height = appHeight;
			alwaysCanvas.height = appHeight;
			dialogCanvas.height = appHeight;
			topCanvas.height = appHeight;
			chatCanvas.height = appHeight;
			bulletinCanvas.height = appHeight;
		}
		
		private var _netMonitor:NetWorkMonitor = new NetWorkMonitor;
		
		public function showNetMonitor():void
		{
			if(!bulletinCanvas.contains(_netMonitor)){
				bulletinCanvas.addChild(_netMonitor);
				_netMonitor.visible = true;
			}
			else{
				_netMonitor.visible =! _netMonitor.visible;
			}
			
				_netMonitor.x = _profile.x + 200;
		}
		
		public function addNetMonitor(msg:String):void
		{
			_netMonitor.addTextMonitor(msg);
		}
		
		//设置互斥的View
		private var _exclusiveView:Dictionary = new Dictionary;
		public function setExclusiveView(vw1:Class, vw2:Class):void
		{
			if(_exclusiveView[vw1] == null)
				_exclusiveView[vw1] = new Array;
			if(_exclusiveView[vw2] == null)
				_exclusiveView[vw2] = new Array;
			
			(_exclusiveView[vw1] as Array).push(vw2);
			
			(_exclusiveView[vw2] as Array).push(vw1);
		}
		
		public var _defaultLoading:ILoading;
		public function setLoading(loading:ILoading):void
		{
			if(loading){
				_defaultLoading = loading;
				bulletinCanvas.addChild( _defaultLoading as Sprite );
				(_defaultLoading as Sprite).visible = false;
			}
		}
		private function showLoading(b:Boolean=true):void
		{
			if(_defaultLoading){
				(_defaultLoading as Sprite).visible = b;
			}
		}
		
		public function hasViewVisiable():Boolean{
			for (var p:Object in _viewDictionary)
			{
				if((_viewDictionary[p] as IamView).viewType == ViewType.MULTI_DIALOG && (_viewDictionary[p] as IamView).isVisible() == true)
					return true;
			}
			return false;
		}
		
		
	}
}