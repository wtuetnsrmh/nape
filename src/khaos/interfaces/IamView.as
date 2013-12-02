package khaos.interfaces
{
	public interface IamView
	{
		function show():void;
		function hide():void;
		function isVisible():Boolean;
		function set viewType(value:int):void;
		function get viewType():int;
		
		function set showParam(value:Object):void;
		function get showParam():Object;
		
		function get posx():Number;
		function get posy():Number;
		
		function initUI():void;
		//function register():void;
	}
}