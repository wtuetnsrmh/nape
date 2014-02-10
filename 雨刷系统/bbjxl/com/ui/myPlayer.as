/*
flv视频播放器
═══════════════════════════════════════════════════════════════════════════ */
package bbjxl.com.ui {
	import bbjxl.com.Gvar;
	import bbjxl.com.loading.Imageload;
	import bbjxl.com.ui.CommonlyClass;
	import bbjxl.com.display.Player;
	import flash.display.LoaderInfo;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.display.StageAlign;
    import flash.display.StageScaleMode;
    import flash.display.Loader;
	import flash.events.Event;
	import flash.events.ContextMenuEvent;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	import flash.net.URLLoader;
	import flash.net.URLLoaderDataFormat;
	import flash.net.URLRequest;
	import flash.net.navigateToURL;

	import flash.ui.ContextMenu;
	import flash.ui.ContextMenuItem;

	import com.greensock.*;
	import com.greensock.easing.*;
	public class myPlayer extends MovieClip {
		private var _poseMc:Sprite = new Sprite();
		private var _contain:Sprite = new Sprite();//内容容器
		
		public var _player:Player = new Player();
		public var video:String;//=  "1.flv";//this.loaderInfo.parameters.video;
		private var thumbnail = null;// this.loaderInfo.parameters.thumbnail;
		private var skinfile = "skins/myFlvPlayerSkin.swf";// this.loaderInfo.parameters.skin;
		private var autoplay = false;
		private var fullscreen =false;
		private var skin;
		private var sl = new Loader();
		private var _swf:Loader;
		private var _swfLoader:Loader = new Loader();;
		private var swfLd:URLLoader;
		private var _image:Imageload;//加载图片
		public function myPlayer() {
			if (stage) {
				addChild(_contain);
				trace("have stage")
			} else {
			addEventListener(Event.ADDED_TO_STAGE,addstage);
			}
			
			
			
			//stage.scaleMode = StageScaleMode.NO_SCALE;
			//stage.align = StageAlign.TOP_LEFT;
			
			
			/*// CUSTOMIZE RIGHT CLICK CONTEXT MENU
			var menu:ContextMenu = new ContextMenu();
			menu.hideBuiltInItems();
			var signature = new ContextMenuItem("f4Player");
			function openLink(e:ContextMenuEvent):void{
				
			}
			signature.addEventListener(ContextMenuEvent.MENU_ITEM_SELECT, openLink);
			menu.customItems.push(signature);
			contextMenu = menu;*/
		}		
		private function addstage(e:Event):void {
			removeEventListener(Event.ADDED_TO_STAGE, addstage);
			addChild(_contain);
			trace("have stage2")
			}
		//---------------------------------------视频播放器皮肤加载完后播放视频-----------------------------------------------------------------------------//
		private function skinEvent(e:Event):void {
			
				skin = e.currentTarget.content;
				_contain.addChild(skin);
				skin.initialization(
						Gvar.STAGE_X,
						Gvar.STAGE_Y,
						_player,
						video? video : "Untitled.flv",
						thumbnail ? thumbnail : null, 
						autoplay,  // autoplay
						fullscreen // fullscreen button
						);
						
				dispatchEvent(new Event("FLVPLAYERSKINLOADOVER"));
				skin.addEventListener("CLOSEAUTOMODE", closeAutoMode, true, 0, true);
				function closeAutoMode(e:MouseEvent):void {
					dispatchEvent(new Event("CLOSEAUTOMODE"));
					}
			}
		//-----------------------菜单点击事件--------------------------------------------------------------------------------------------//
		/*private function treeClickEventHandler(e:TreeClickEvent):void {

			switch(e.clickObj.type) {
				case "video":
				if (skin) skin.stopVideo();
				if (_swfLoader)_swfLoader.unloadAndStop();
				
				video = e.clickObj.url;
				if (!skin) {
					firstLoadSkin();
				}
				if(skin && _contain.contains(skin)) {
					skin.replay(video);
					}
				if (skin && !_contain.contains(skin)) {
					_contain.addChild(skin);
					skin.replay(video);
					}
				break;
				case "image":
				if (skin) skin.stopVideo();
				if (_swfLoader)_swfLoader.unloadAndStop();
				
				loadImage(e.clickObj.url);
				break;
				case "swf":
				if (skin) skin.stopVideo();
				
				loadSwf(e.clickObj.url);
				break;
				}
			
			}*/
		
		//------------------------------加载图片--------------------------------------------------------------------------------------//	
		/*private function loadImage(_imageUrl:String):void {
			CommonlyClass.cleaall(_contain);
			_image = new Imageload(_imageUrl);
			_image.addEventListener("loadimageover", loadImageOverHandler);
			function loadImageOverHandler(e:Event):void {
				if (_image._thisWidth > _poseMc.width || _image._thisHeight > _poseMc.height) {
				if (_image.width > _image.height) {
					//宽比高长
					_image.width = _poseMc.width;
					_image.scaleY = _image.scaleX;
					}else {
						_image.height = _poseMc.height;
						_image.scaleX = _image.scaleY;
						}
				}
				trace("_image.width+"+_image.width)
				_image.x = _poseMc.x+(_poseMc.width-_image.width)/2;
				_image.y = _poseMc.y+(_poseMc.height-_image.height)/2;
				_contain.addChild(_image);
				}
			
			}*/
			
		//---------------------------------------------------
		public function videoplay():void {
			skin.videoplay();
			}	
		//---------------------------------------------------	
		
		//-------------------------------加载SWF动画-------------------------------------------------------------------------------------//		
		private function loadSwf(_swfUrl):void {
			CommonlyClass.cleaall(_contain);
			
			//----------------------//
			if (_swfLoader)_swfLoader.unloadAndStop();
			_swfLoader.contentLoaderInfo.addEventListener(Event.COMPLETE, loaderCompleteHandler);
			_swfLoader.load(new URLRequest(_swfUrl));
			
			function loaderCompleteHandler(e:Event):void 
            {
               e.currentTarget.removeEventListener(Event.COMPLETE, loaderCompleteHandler);
			   _contain.addChild(_swfLoader);
			   _swfLoader.x = _poseMc.x+(_poseMc.width-_swfLoader.contentLoaderInfo.width)/2;
				_swfLoader.y = _poseMc.y+ (_poseMc.height - _swfLoader.contentLoaderInfo.height) / 2;
			   _swfLoader.mask = _poseMc;
			}
			}
			
		//----------------------加载视频播放器皮肤，第一次加载----------------------------------------------------------------------------------------------//		
		public function firstLoadSkin(_flvUrl:String):void {
			video =_flvUrl;
			trace(video)
			sl.contentLoaderInfo.addEventListener(Event.COMPLETE, skinEvent);
			sl.load(new URLRequest(skinfile ? skinfile : 'skins/myFlvPlayerSkin.swf'));
			// Resize Event
			var _point:Point = this.globalToLocal(new Point(0, 0));
			var resizeEvent:Function = function(e:Event):void {
				
				skin.pose(Gvar.STAGE_X,Gvar.STAGE_Y,_point.x,_point.y);
			}
			stage.addEventListener(Event.RESIZE, resizeEvent);
			stage.addEventListener(Event.FULLSCREEN, resizeEvent);
			}
			
			
		//-------------------------------------------------------------------------------------------------------------------//		
		
	}
}