package control.helloworld {
import com.adobe.cairngorm.control.FrontController;

import commands.helloworld.Hello;

public class HelloWorldController extends FrontController {
	public function HelloWorldController() {
		addCommand(HelloWorldCommands.HELLO, Hello);
	}
}
}