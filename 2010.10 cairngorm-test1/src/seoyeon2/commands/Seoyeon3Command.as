package seoyeon2.commands
{
	import com.adobe.cairngorm.business.Responder;
	import com.adobe.cairngorm.commands.Command;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.rpc.events.ResultEvent;
	
	import seoyeon2.business.Seoyeon2Delegate;
	import seoyeon2.control.Seoyeon3Event;

	public class Seoyeon3Command implements Responder, Command
	{
		private var _callback:Function;

		public function execute(event:CairngormEvent):void
		{
			var evt:Seoyeon3Event=event as Seoyeon3Event;
			_callback=evt.callback;
			var del:Seoyeon2Delegate=new Seoyeon2Delegate(this);
			del.helloworld();
		}

		public function onResult(event:*=null):void
		{
			_callback(true, ResultEvent(event).result);
			_callback=null;
		}

		public function onFault(event:*=null):void
		{
			_callback(false);
			_callback=null;
		}
	}
}