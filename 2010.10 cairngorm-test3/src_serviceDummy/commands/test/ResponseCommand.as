package commands.test
{
	import com.adobe.cairngorm.business.Responder;
	import com.adobe.cairngorm.commands.Command;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	public class ResponseCommand implements Command, Responder
	{
		public function ResponseCommand()
		{
		}
		
		public function execute(event:CairngormEvent):void
		{
		}
		
		public function onResult(event:*=null):void
		{
		}
		
		public function onFault(event:*=null):void
		{
		}
	}
}