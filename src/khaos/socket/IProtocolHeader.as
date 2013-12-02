package khaos.socket
{
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;

	public interface IProtocolHeader
	{
		function dataLength():int;
		function headLength():int;
		function readFrom(input:IDataInput):void;
		function writeTo(output:IDataOutput):void;
	}
}