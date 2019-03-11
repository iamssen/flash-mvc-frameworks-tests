package view
{
	import business.HelloServices;

	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.control.CairngormEventDispatcher;

	import control.HelloCommands;
	import control.HelloController;

	import flash.display.Graphics;
	import flash.display.Sprite;
	import flash.events.MouseEvent;

	import models.HelloModel;

	import mx.binding.utils.BindingUtils;
	import mx.core.UIComponent;

	public class HelloView2 extends UIComponent
	{

		private var m:HelloModel;

		private var c:HelloController;

		private var b:HelloServices;

		private var v:Comp;

		public function HelloView2()
		{
			var sp:Sprite=getBtn();
			sp.x=10;
			sp.y=10;
			addChild(sp);
			sp.addEventListener(MouseEvent.CLICK, clickHandler);

			m=new HelloModel;
			m.message="-";
			c=new HelloController;
			b=new HelloServices;
			v=new Comp;

			BindingUtils.bindProperty(v, "property", m, "message");
		}

		private function getBtn():Sprite
		{
			var sp:Sprite=new Sprite;
			var g:Graphics=sp.graphics;
			g.beginFill(0x000000);
			g.drawRect(0, 0, 100, 100);
			g.endFill();
			return sp;
		}

		protected function clickHandler(event:MouseEvent):void
		{
			var evt:CairngormEvent=new CairngormEvent(HelloCommands.SAY_HELLO);
			evt.data={model: m};
			CairngormEventDispatcher.getInstance().dispatchEvent(evt);
		}
	}
}


class Comp
{
	private var _property:String;

	public function get property():String
	{
		return _property;
	}

	public function set property(value:String):void
	{
		_property=value;
		trace(value);
	}

}