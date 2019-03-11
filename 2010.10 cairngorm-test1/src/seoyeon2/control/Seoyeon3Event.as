package seoyeon2.control
{
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import flash.events.EventDispatcher;
	
	public class Seoyeon3Event extends CairngormEvent
	{
		private var _callback:Function;

		public function Seoyeon3Event(callback:Function)
		{
			super(Seoyeon2Control.SEOYEON3);
			_callback = callback;
		}
		public function get callback():Function
		{
			return _callback;
		}
	}
}