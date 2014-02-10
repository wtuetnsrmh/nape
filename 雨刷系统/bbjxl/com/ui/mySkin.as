﻿/*
flvplayer skin
═══════════════════════════════════════════════════════════════════════════ */
package bbjxl.com.ui {
	import bbjxl.com.display.Player;
	import bbjxl.com.display.PlayerInterface;
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.media.Video;
	import flash.geom.Rectangle;
	import flash.utils.setTimeout;
	import flash.utils.clearTimeout;

	public class mySkin extends MovieClip {
		var player:PlayerInterface;
		private var _player:PlayerInterface;
		var info:Object = new Object();
		var fullscreen:Boolean = true;
		var initFlag:Boolean = false;
		//var progress:Boolean=false;
		var playing:Boolean=false;
		var rectangle:Rectangle; // for seeker
		var padding:int=10;
		var barwidth:Number;

		var _video:String;

		var seeking:Boolean=false;

		public function mySkin() {
			trace("mySkin loaded!");
		}
		var cleakEmpty:int = 0;
		public function initialization(W:Number,H:Number,player:PlayerInterface,video:String,thumbnail:String,autoplay:Boolean=false,fullscreen:Boolean=true):void {
			_player = player;
			_video = video;
			fullscreen = fullscreen;
			info.width = W;
			info.height = H;
			info.progress = 2;
			
			//var togglepause:Boolean = false;
			var callback:Function = function(i:Object){
				if(i.width != info.width && i.height != info.height){
					info = i;
					pose(W,H);
				}
				info = i;
				
				nav.progressBar.width = (info.progress * barwidth);
				nav.playingBar.width = (info.playing * barwidth);
				nav.seeker.x = nav.playingBar.x + (info.playing * barwidth);
				nav.seeker.currentTime.text = formatTime(info.time);
				switch(info.status){
					case "NetStream.Play.Start" :
						//initFlag = false;
						nav.seeker.visible = true;
					break;
					case "NetStream.Buffer.Empty" :
						buffering.visible = true;
						cleakEmpty=setTimeout(_timeover,1000)
						
					break;
					case "NetStream.Buffer.Full" :
						if(cleakEmpty>0){
						clearTimeout(cleakEmpty);
						cleakEmpty = -1;
						}
						buffering.visible = false;
					break;
					case "NetStream.Play.Stop" :
						//if (!initFlag) {
						if(cleakEmpty>0){
						clearTimeout(cleakEmpty);
						cleakEmpty = -1;
						}
						buffering.visible = false;
						var clicker:Function = stopEvent;
						clicker(new MouseEvent(MouseEvent.CLICK));
						//}
					break;
				}
			};
			
			function _timeover():void {
				playing = player.Play(_video);
				overButton.visible = false;
				cleakEmpty = -1;
				}
			player.Callback(callback);
			
			var movie:Video=player.Movie(W,H);
			screen.addChildAt(movie, 1);
			
			//thumbnail [
			if(thumbnail){
				var image:MovieClip = player.Thumbnail(thumbnail,W,H);
				screen.addChildAt(image,1);
			}
			// ] thumbnail
			
			nav.pauseButton.visible = false;
			nav.seeker.visible = false;
			nav.visible = false;
			pose(W,H);

			//═ PLAY ══════════════════════════════════════════════════════════════════════
			var playEvent:Function = function(e:Event):void {
				if(playing){
					player.Pause();
					playing = false;
				} else {
					
					playing = player.Play(_video);
					
					overButton.visible = false;				}
				nav.playButton.visible = false;
				nav.pauseButton.visible = true;
			};
			overButton.addEventListener(MouseEvent.CLICK, playEvent);
			nav.playButton.addEventListener(MouseEvent.CLICK, playEvent);
			
			// AUTOPLAY
			if(autoplay) {
				var clicker:Function = playEvent;
				clicker(new MouseEvent(MouseEvent.CLICK));
			}
			
			//═ PAUSE ══════════════════════════════════════════════════════════════════════
			var pauseEvent:Function = function(e:Event):void {
				var isPause:Boolean = player.Pause();
				nav.playButton.visible = isPause;
				nav.pauseButton.visible = !isPause;
			};
			overlay.addEventListener(MouseEvent.CLICK, pauseEvent);
			nav.pauseButton.addEventListener(MouseEvent.CLICK, pauseEvent);
			//═ STOP ══════════════════════════════════════════════════════════════════════
			var stopEvent:Function = function(e:Event):void {
				player.Callback(new Function());
				player.Stop();
				playing = false;
				overButton.visible = true;
				nav.playButton.visible = true;
				nav.pauseButton.visible = false;
			};
			//═ HIDE CONTROLS ═════════════════════════════════════════════════════════════
			var controlDisplayEvent:Function = function(e:Event):void {
				nav.visible = true;//一直显示控制栏 (e.type == 'mouseOver' && playing);
			};
			overlay.addEventListener(MouseEvent.MOUSE_OVER, controlDisplayEvent);
			overlay.addEventListener(MouseEvent.MOUSE_OUT, controlDisplayEvent);
			nav.addEventListener(MouseEvent.MOUSE_OVER, controlDisplayEvent);
			//nav.addEventListener(MouseEvent.MOUSE_OUT, controlDisplayEvent);
			//═ SEEK ══════════════════════════════════════════════════════════════════════
			var playingBarEvent:Function = function(e:MouseEvent):void {
				var point:Number = e.localX * info.playing;
				var seekpoint:Number = (point / 100) * info.duration;
				player.Seek(seekpoint);
				};
				nav.playingBar.buttonMode=true;
				nav.playingBar.addEventListener(MouseEvent.CLICK, playingBarEvent);
				var progressBarEvent:Function = function(e:MouseEvent):void {
				var point:Number = e.localX * info.progress;
				trace("e.localX"+e.localX)
				var seekpoint:Number = (point / 100) * info.duration;
				player.Log(point.toString());
				player.Log(info.progress.toString());
				player.Log(barwidth.toString());
				player.Seek(seekpoint);
			};
			nav.progressBar.buttonMode=true;
			nav.progressBar.addEventListener(MouseEvent.CLICK, progressBarEvent);
			var stageMouseMoveEvent:Function = function(event:MouseEvent):void { // for seeker position
				if(info.duration > 0 && seeking) {
				var point:int = (((nav.seeker.x - nav.progressBar.x) / barwidth) * info.duration) >> 0;
				if(point <= 0 || point >= (info.duration >> 0)) nav.seeker.stopDrag();
				nav.seeker.currentTime.text = formatTime(point);
				player.Seek(point);
				player.Log('stageMouseMoveEvent: '+point);
			}
			};
			var stageMouseUpEvent:Function = function(event:MouseEvent):void { // for stop seeking
				if(seeking){
					seeking = false;
					nav.seeker.stopDrag();
					player.Pause();
					player.Log('stageMouseUpEvent');
				}
			};
			var seekerEvent:Function = function(event:MouseEvent):void {
				if(!seeking){
					seeking = true;
					nav.seeker.startDrag(false, rectangle);
					player.Pause();
				}
			};
			nav.seeker.buttonMode=true;
			nav.seeker.addEventListener(MouseEvent.MOUSE_DOWN, seekerEvent);
			this.stage.addEventListener(MouseEvent.MOUSE_MOVE, stageMouseMoveEvent);
			this.stage.addEventListener(MouseEvent.MOUSE_UP, stageMouseUpEvent);


			//═ VOLUME ══════════════════════════════════════════════════════════════════════
			var setVolume:Function = function(newVolume:Number):void{
			player.Volume(newVolume);
			nav.volumeBar.mute.gotoAndStop((newVolume > 0)?1:2);
			nav.volumeBar.volumeOne.gotoAndStop((newVolume >= 0.2)?1:2);
			nav.volumeBar.volumeTwo.gotoAndStop((newVolume >= 0.4)?1:2);
			nav.volumeBar.volumeThree.gotoAndStop((newVolume >= 0.6)?1:2);
			nav.volumeBar.volumeFour.gotoAndStop((newVolume >= 0.8)?1:2);
			nav.volumeBar.volumeFive.gotoAndStop((newVolume == 1)?1:2);
			};
			var volumeEvent:Function = function(e:MouseEvent):void {
				if(e.buttonDown || e.type == 'click')
				switch (e.currentTarget) {
					case nav.volumeBar.mute : setVolume(0);break;
					case nav.volumeBar.volumeOne :   setVolume(.2);break;
					case nav.volumeBar.volumeTwo :   setVolume(.4);break;
					case nav.volumeBar.volumeThree : setVolume(.6);break;
					case nav.volumeBar.volumeFour :  setVolume(.8);break;
					case nav.volumeBar.volumeFive :  setVolume(1);break;
				}
			};
			nav.volumeBar.mute.addEventListener(MouseEvent.CLICK, volumeEvent);
			nav.volumeBar.mute.addEventListener(MouseEvent.ROLL_OVER, volumeEvent);
			nav.volumeBar.volumeOne.addEventListener(MouseEvent.CLICK, volumeEvent);
			nav.volumeBar.volumeOne.addEventListener(MouseEvent.ROLL_OVER, volumeEvent);
			nav.volumeBar.volumeTwo.addEventListener(MouseEvent.CLICK, volumeEvent);
			nav.volumeBar.volumeTwo.addEventListener(MouseEvent.ROLL_OVER, volumeEvent);
			nav.volumeBar.volumeThree.addEventListener(MouseEvent.CLICK, volumeEvent);
			nav.volumeBar.volumeThree.addEventListener(MouseEvent.ROLL_OVER, volumeEvent);
			nav.volumeBar.volumeFour.addEventListener(MouseEvent.CLICK, volumeEvent);
			nav.volumeBar.volumeFour.addEventListener(MouseEvent.ROLL_OVER, volumeEvent);
			nav.volumeBar.volumeFive.addEventListener(MouseEvent.CLICK, volumeEvent);
			nav.volumeBar.volumeFive.addEventListener(MouseEvent.ROLL_OVER, volumeEvent);
			//═ FULLSCREEN ══════════════════════════════════════════════════════════════════════
			var fullscreenEvent:Function = function(e:Event):void {
				player.Fullscreen(stage);
			};
			nav.fullscreen.addEventListener(MouseEvent.CLICK, fullscreenEvent);

		}
		//═ POSE ══════════════════════════════════════════════════════════════════════
		public function pose(W:Number, H:Number, x:Number =28.65,y:Number=67 ):void {
			trace('Pose '+info.width+'x'+info.height);
			background.x = screen.x = overlay.x = x;
			background.y = screen.y = overlay.y = y;
			background.width = overlay.width = W;
			background.height = overlay.height = H;
			//background.alpha = 0;
			overlay.alpha = 0;
			//screen.alpha = 0;
			var proportion:Number = W / H;
			var videoproportion:Number = info.width / info.height;
			if(videoproportion >= proportion){ //<= (H / W)
				screen.width = W;
				screen.height = W / videoproportion;
			} else {
				screen.width = H * videoproportion;
				screen.height = H;
			}
			screen.x = (W - screen.width)*.5+x;
			screen.y = (H - screen.height)*.5+y;
			overButton.x = (W - overButton.width)*.5+x;
			overButton.y = (H - overButton.height)*.5+y;
			buffering.x = (W - buffering.width)*.5+x;
			buffering.y = (H - buffering.height)*.5+y;
			//NAVIGATOR
			nav.playButton.x=nav.pauseButton.x=padding+x;
			nav.pauseButton.y=nav.playButton.y;
			nav.bar.x=nav.playButton.width+padding*2+x;
			nav.container.x=nav.bar.x+padding;
			var barPadding = (nav.container.height - nav.playingBar.height)*.5;
			nav.progressBar.x=nav.playingBar.x=nav.container.x+barPadding;
			nav.progressBar.y=nav.playingBar.y=nav.container.y+barPadding;		
			if(!playing) nav.seeker.x = nav.container.x + barPadding;
			nav.seeker.y = nav.container.y - barPadding;
			rectangle = new Rectangle(nav.progressBar.x,nav.seeker.y,barwidth,0);			
			//nav.playingBar.width = 0;
			nav.y=H-nav.height-padding*.5+y;
			nav.bar.width=W-nav.bar.x-padding;
			var endPoint:int=nav.bar.x+nav.bar.width;
			if (fullscreen) {
				endPoint=nav.fullscreen.x=endPoint-nav.fullscreen.width-padding;
			} else {
				nav.fullscreen.visible=false;
			}
			endPoint = nav.volumeBar.x = endPoint - nav.volumeBar.width - padding;
			nav.container.width = endPoint-nav.container.x - padding;
			barwidth = nav.container.width - barPadding*2;
			nav.progressBar.width = nav.playingBar.width = barwidth;
			nav.progressBar.width = ((info.progress * barwidth * .01) >> 0);
			
			nav.closeBt.x = nav.bar.x + nav.bar.width + 1;
			nav.closeBt.y = nav.bar.y;
			nav.closeBt.buttonMode = true;
			nav.closeBt.addEventListener(MouseEvent.CLICK, closeClickHandler);
		}
		public function closeClickHandler(e:MouseEvent):void {
			dispatchEvent(new Event("CLOSEAUTOMODE"));
			}
			
		public function stopVideo():void {
			_player.Stop();
			}
		
		public function videoplay():void {
			playing = _player.Play(_video);
					
			overButton.visible = false;	
			}
			
		public function replay(_video1:String):void {
			_player.Stop();
			_video = _video1;
			_player.Play(_video1);
			overButton.visible = false;	
			playing = true;
			
			nav.playButton.visible = false;
			nav.pauseButton.visible = true;
			//═ HIDE CONTROLS ═════════════════════════════════════════════════════════════
			var controlDisplayEvent:Function = function(e:Event):void {
				nav.visible = (e.type == 'mouseOver' && playing);
			};
			overlay.addEventListener(MouseEvent.MOUSE_OVER, controlDisplayEvent);
			overlay.addEventListener(MouseEvent.MOUSE_OUT, controlDisplayEvent);
			nav.addEventListener(MouseEvent.MOUSE_OVER, controlDisplayEvent);
			}
		private function formatTime(time:Number):String {
			if (time>0) {
				var integer:String = String((time/60)>>0);
				var decimal:String = String((time%60)>>0);
				return ((integer.length<2)?"0"+integer:integer)+":"+((decimal.length<2)?"0"+decimal:decimal);
			} else {
				return String("00:00");
			}

		}
	}
}