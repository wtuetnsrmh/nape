package bbjxl.com.ui
{
	/**
	作者：被逼叫小乱
	/倒计时
	www.bbjxl.com/Blog
	**/
	import flash.display.Sprite;

	import flash.text.*;

	import flash.utils.*;

	import flash.events.Event;
	import flash.events.TimerEvent;

	import flash.utils.Timer;
	import bbjxl.com.event.CountDownEvent;


	public class CountDown extends Sprite
	{

		private var lastDate:Date;

		private var nonceDate:Date;

		private var lastText:TextField;

		private var nonceText:TextField;

		private var format:TextFormat;
		
		private var _timer:Timer;

		public function CountDown(_value:uint)
		{
			//以分钟计数
			var nextMillSec:Number = new Date().getTime()+(_value)*60*1000;
			//trace(_value)

			lastDate = new Date(nextMillSec);

			init();
			//trace("lastDate="+lastDate);

		}

		private function init()
		{

			format=new TextFormat();

			format.size = 20;
			format.color=0xffffff;
			format.bold=true;

			lastText=new TextField();

			lastText.autoSize = TextFieldAutoSize.LEFT;

			lastText.defaultTextFormat = format;

			addChild(lastText);

			nonceText=new TextField();

			nonceText.autoSize = TextFieldAutoSize.LEFT;

			nonceText.defaultTextFormat = format;

			//lastText.y = 40;
			//nonceText.y = 100;
			//addChild(nonceText);
			_timer=new Timer(100);
			_timer.addEventListener(TimerEvent.TIMER,onEnterframe);
			_timer.start();
			//addEventListener(Event.ENTER_FRAME,onEnterframe);

		}

		private function onEnterframe(event:TimerEvent):void
		{

			dyDate();

			//noncedate();

		}

		private function dyDate()
		{

			nonceDate = new Date  ;

			var lastHour = lastDate.getTime();

			var nonceHour = nonceDate.getTime();
			//trace(lastHour+"/"+nonceHour)
			if(Math.floor(lastHour/1000)!=Math.floor(nonceHour/1000)){
			//var dyDays=Math.abs(Math.ceil((lastHour - nonceHour) / (1000 * 60 * 60 * 24)));

			//var dyHour=Math.abs(Math.ceil((lastHour - nonceHour) / (1000 * 60 * 60))%24);
			
			var dyCent=Math.abs(Math.floor((lastHour-nonceHour)/(1000*60))%60);

			var dySecond=Math.abs(Math.ceil((lastHour-nonceHour)/1000)%60);




			/*if (dyHour < 10)
			{
				dyHour = "0" + dyHour;
			}*/

			if (dyCent < 10)
			{
				dyCent = "0" + dyCent;
			}

			if (dySecond < 10)
			{
				dySecond = "0" + dySecond;
			}

			lastText.text ="倒计时："+ dyCent + ":" + dySecond ;
			}else{
				//trace("over");
				lastText.text = "倒计时：00" + ":" +"00";
				_timer.stop();
				//removeEventListener(Event.ENTER_FRAME,onEnterframe);
				var timeOver:CountDownEvent=new CountDownEvent();
				dispatchEvent(timeOver);
				}

		}
		
		public function timerStop():void{
			_timer.stop();
			}
		
		private function noncedate()
		{

			var year = nonceDate.getFullYear();

			var month = nonceDate.getMonth() + 1;

			var date = nonceDate.getDate();

			var hour = nonceDate.getHours();

			var minute = nonceDate.getMinutes();

			var second = nonceDate.getSeconds();

			if (month < 10)
			{
				month = "0" + month;
			}

			if (date < 10)
			{
				date = "0" + date;
			}

			if (hour < 10)
			{
				hour = "0" + hour;
			}

			if (minute < 10)
			{
				minute = "0" + minute;
			}

			if (second < 10)
			{
				second = "0" + second;
			}

			nonceText.text = year + "年" + month + "月" + date + "日" + hour + "时" + minute + "分" + second + "秒";

		}

	}


}