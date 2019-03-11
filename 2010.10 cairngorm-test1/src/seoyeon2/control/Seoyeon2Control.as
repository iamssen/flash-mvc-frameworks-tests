package seoyeon2.control
{
	import com.adobe.cairngorm.control.FrontController;
	
	import seoyeon2.commands.Seoyeon2Command;
	import seoyeon2.commands.Seoyeon3Command;
	

	public class Seoyeon2Control extends FrontController
	{
		private static var _instance:Seoyeon2Control;

		public static function getInstance():Seoyeon2Control
		{
			if (!_instance)
				_instance=new Seoyeon2Control;
			return _instance;
		}

		public function Seoyeon2Control()
		{
			addCommand(SEOYEON, Seoyeon2Command);
			addCommand(SEOYEON3, Seoyeon3Command);
		}

		public static const SEOYEON:String="seoyeon";
		public static const SEOYEON3:String="seoyeon3";

	}
}