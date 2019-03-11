package study 
{
	import org.puremvc.as3.interfaces.INotification;	
	import org.puremvc.as3.patterns.command.SimpleCommand;
	import org.puremvc.as3.interfaces.ICommand;
	import org.puremvc.as3.patterns.observer.Notifier;	
	/**
	 * @author SSen
	 */
	public class StartupCommand extends SimpleCommand implements ICommand 
	{
		override public function execute(notification : INotification) : void
		{
			facade.registerProxy(new KeyDownProxy());
		}
	}
}
