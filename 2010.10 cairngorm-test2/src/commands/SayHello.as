package commands
{
	import business.HelloDelegate;

	import com.adobe.cairngorm.business.Responder;
	import com.adobe.cairngorm.commands.Command;
	import com.adobe.cairngorm.control.CairngormEvent;

	import flash.utils.setTimeout;

	import models.HelloModel;

	import mx.rpc.events.ResultEvent;

	public class SayHello implements Command, Responder
	{

		private var _model:HelloModel;

		private var _delegate:HelloDelegate;

		public function execute(event:CairngormEvent):void
		{
			_model=event.data["model"] as HelloModel;
			_delegate=new HelloDelegate(this);
			_delegate.sayHello();
		}

		public function onResult(event:*=null):void
		{
			_model.message=ResultEvent(event).result.xml.string;
			_model=null;
			_delegate=null;
		}

		public function onFault(event:*=null):void
		{
			_model.message="fault";
			_model=null;
			_delegate=null;
		}
	}
}