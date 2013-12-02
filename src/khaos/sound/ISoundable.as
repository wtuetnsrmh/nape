package khaos.sound
{
	public interface ISoundable
	{
		function get id(): String;
		function play(): void ;
		function get type(): int;
		function stop(): void;
		function isPlaying(): Boolean;
	}
}