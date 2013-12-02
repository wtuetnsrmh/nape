package khaos.socket
{
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;

	public interface IProtocol
	{
		function readFrom(input:IDataInput):void;

		function writeTo(output:IDataOutput):void;

		function remain():int;

		function size():int;
		
		function endian():String;
	}
}