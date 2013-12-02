package khaos.interfaces
{

	public interface IView
	{
		function show():void;
		function hide():void;
		function visible():Boolean;
		function set viewType(value:int):void;
		function get viewType():int;
		function get x():Number;
		function get y():Number;
		function set x(tx:Number):void;
		function set y(ty:Number):void;
	}
}