package control.test
{
	import com.adobe.cairngorm.control.FrontController;
	
	
	import commands.test.RequestCommand;
	import commands.test.ResponseCommand;
	
	public class TestControl extends FrontController
	{
		public function TestControl()
		{
			addCommand(TestCommands.REQUEST, RequestCommand);
			addCommand(TestCommands.RESPONSE, ResponseCommand);
		}
	}
}