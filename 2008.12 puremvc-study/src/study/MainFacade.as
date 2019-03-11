package study 
{
	import org.puremvc.as3.interfaces.IFacade;
	import org.puremvc.as3.patterns.facade.Facade;
	import org.puremvc.as3.patterns.observer.Notification;		
	/**
	 * @author SSen
	 */
	public class MainFacade extends Facade implements IFacade 
	{
		public static const STARTUP : String = "startUp";
		public static const KEYDOWN : String = "keyDown";
		public static const MOUSEDOWN : String = "mouseDown";
		public static const KEYUPDATE : String = "keyUpdate";
		public static const MOUSEUPDATE : String = "mouseUpdate";

		public static function getInstance() : MainFacade
		{
			if (instance == null) {
				instance = new MainFacade();
			}
			return instance as MainFacade;
		}
		
		public function startUp(targetObject : Object):void
		{
			notifyObservers(new Notification(STARTUP, targetObject));
		}
		
		override public function initializeController():void
		{
			super.initializeController();
			registerCommand(STARTUP, StartupCommand);
			registerCommand(KEYDOWN, KeydownCommand);
			registerCommand(MOUSEDOWN, MousedownCommand);
		}
	}
}
