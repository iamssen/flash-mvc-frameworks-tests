package
{
	import flash.utils.getQualifiedClassName;
	
	import mx.core.IMXMLObject;
	
	public class TestMXML implements IMXMLObject
	{
		public function TestMXML()
		{
		}
		
		public function initialized(document:Object, id:String):void
		{
			trace(document, id, getQualifiedClassName(document));
		}
	}
}