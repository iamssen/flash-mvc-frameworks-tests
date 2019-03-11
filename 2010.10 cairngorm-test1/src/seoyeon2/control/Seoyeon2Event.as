package seoyeon2.control
{
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import seoyeon2.vo.Seoyeon2VO;
	
	public class Seoyeon2Event extends CairngormEvent
	{
		private var _vo:Seoyeon2VO;
		private var _callback:Function;

		public function Seoyeon2Event(vo:Seoyeon2VO, callback:Function)
		{
			super(Seoyeon2Control.SEOYEON);
			_vo=vo;
			_callback = callback;
		}

		public function get vo():Seoyeon2VO
		{
			return _vo;
		}
		
		public function get callback():Function
		{
			return _callback;
		}
	}
}