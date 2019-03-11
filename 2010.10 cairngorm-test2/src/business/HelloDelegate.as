package business
{
	import com.adobe.cairngorm.business.Responder;
	import com.adobe.cairngorm.business.ServiceLocator;

	import mx.rpc.AsyncToken;

	public class HelloDelegate
	{

		private var _responder:Responder;

		public function HelloDelegate(responder:Responder)
		{
			_responder=responder;
		}

		public function sayHello():void
		{
			var token:AsyncToken=ServiceLocator.getInstance().getHTTPService("helloService").send();
			token.resultHandler=_responder.onResult;
			token.faultHandler=_responder.onFault;
		}

		public function aYo():void
		{
			var token:AsyncToken=ServiceLocator.getInstance().getHTTPService("ayoService").send();
			token.resultHandler=_responder.onResult;
			token.faultHandler=_responder.onFault;
		}

	}
}