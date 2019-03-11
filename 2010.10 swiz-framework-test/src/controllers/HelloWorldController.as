package controllers {
	import flash.utils.setTimeout;

	import models.HelloWorldModel;

	import views.HelloWorldView;

	public class HelloWorldController {
		[Autowire]
		public var model:HelloWorldModel;

		[Mediate(event="HelloWorldEvent.HELLO", properties="msg")]
		public function handleHelloWorld(msg:String):void {
			setTimeout(result, 1000, msg);
			model.msg="loading ...";
		}

		private function result(msg:String):void {
			model.msg=msg;
		}
	}
}