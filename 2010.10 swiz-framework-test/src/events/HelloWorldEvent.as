package events
{
	import flash.events.Event;
	
	public class HelloWorldEvent extends Event
	{
		
		public static const HELLO:String = "hello";

		private var _msg:String;
		public function HelloWorldEvent(type:String, msg:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			_msg = msg;
		}
		
		public function get msg():String
		{
			return _msg;
		}

		override public function clone():Event
		{
			return new HelloWorldEvent(type, msg);
		}
		
	}
}