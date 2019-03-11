package commands.test
{
	import com.adobe.cairngorm.business.Responder;
	import com.adobe.cairngorm.commands.Command;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import model.test.TestModel;
	
	import flash.utils.setTimeout;
	
	public class RequestCommand implements Command, Responder
	{

		private var _model:TestModel;
		public function execute(event:CairngormEvent):void
		{
			trace(event);
			_model = event.data["model"];
			setTimeout(onResult, 100);
		}
		
		public function onResult(event:*=null):void
		{
			_model.name = "이서연";
			_model.age = 30;
			_model = null;
		}
		
		public function onFault(event:*=null):void
		{
		}
	}
}