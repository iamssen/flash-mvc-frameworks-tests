package commands.helloworld {
import com.adobe.cairngorm.business.Responder;
import com.adobe.cairngorm.commands.Command;
import com.adobe.cairngorm.control.CairngormEvent;

import flash.utils.setTimeout;

import models.helloworld.HelloWorldModel;

public class Hello implements Command, Responder {

	private var _model:HelloWorldModel;

	public function execute(event:CairngormEvent):void {
		_model=event.data["model"] as HelloWorldModel;
		setTimeout(onResult, 1000);
	}

	public function onResult(event:*=null):void {
		_model.msg="hello world";
		_model=null;
	}

	public function onFault(event:*=null):void {
	}
}
}