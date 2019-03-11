package seoyeon2.vo
{
	[RemoteClass(alias="kt.ucems.seoyeon.dto.SeoyeonDto")]
	public class Seoyeon2VO
	{
		public var name:String;
		public var msg:String;
		public function toString():String {
			return "[Seoyeon2VO "+[name, msg]+"]";
		}
	}
}