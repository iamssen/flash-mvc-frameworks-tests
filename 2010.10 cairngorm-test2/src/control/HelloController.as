package control {
	import com.adobe.cairngorm.control.FrontController;
	
	import commands.AYo;
	import commands.SayHello;
	
	public class HelloController extends FrontController {
		public function HelloController() {
			addCommand(HelloCommands.SAY_HELLO, SayHello);
			addCommand(HelloCommands.A_YO, AYo);
		}
	}
}