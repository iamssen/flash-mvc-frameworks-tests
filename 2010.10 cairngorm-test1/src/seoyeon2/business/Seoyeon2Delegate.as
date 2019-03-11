package seoyeon2.business
{
	import com.adobe.cairngorm.business.Responder;
	import com.adobe.cairngorm.business.ServiceLocator;
	
	import mx.rpc.AbstractService;
	import mx.rpc.AsyncToken;
	
	import seoyeon2.vo.Seoyeon2VO;

	public class Seoyeon2Delegate
	{
		private var _service:AbstractService;
		private var _responder:Responder

		public function Seoyeon2Delegate(responder:Responder)
		{
			_service=ServiceLocator.getInstance().getService("seoyeonService");
			_responder=responder;
		}

		public function load(vo:Seoyeon2VO):void
		{
			var token:AsyncToken=_service.seoyeon2(vo);
			//var token:AsyncToken=_service.helloworld();
			token.resultHandler=_responder.onResult;
			token.faultHandler=_responder.onFault;
		}
		public function helloworld():void
		{
			var token:AsyncToken=_service.helloworld();
			token.resultHandler=_responder.onResult;
			token.faultHandler=_responder.onFault;
		}

	}
}