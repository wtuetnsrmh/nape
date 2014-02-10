/*
动态接口
 */
package com._public._method{
	import flash.display.MovieClip;
	import flash.system.ApplicationDomain;
	import flash.display.SimpleButton;
	public class app {
		public static function createMc(linkName:String,loadinfo:ApplicationDomain):MovieClip {//无外部类实例化MC
			try {
				var theDomain:ApplicationDomain=loadinfo;
				var classMc=theDomain.getDefinition(linkName);
			} catch (e:ReferenceError) {
				return null;
			}
			var newSpr=new classMc as MovieClip;
			return newSpr;
		}
		public static function createButton(linkName:String,loadinfo:ApplicationDomain):SimpleButton {//无外部类实例化MC
			try {
				var theDomain:ApplicationDomain=loadinfo;
				var classMc=theDomain.getDefinition(linkName);
			} catch (e:ReferenceError) {
				return null;
			}
			var newSpr=new classMc as SimpleButton;
			return newSpr;
		}
	}
}