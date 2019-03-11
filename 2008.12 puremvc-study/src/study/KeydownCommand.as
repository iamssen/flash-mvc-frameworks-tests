package study 
{
	import org.puremvc.as3.patterns.command.SimpleCommand;
	import org.puremvc.as3.interfaces.ICommand;
	/**
	 * @author SSen
	 */
	public class KeydownCommand extends SimpleCommand implements ICommand 
	{
		public function KeydownCommand()
		{
		}
		public function execute(notification : INotification) : void
		{
		}
	}
}
