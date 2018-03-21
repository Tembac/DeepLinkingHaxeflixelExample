package;

#if (android && openfl)
import openfl.utils.JNI;
#end


class DeepLinking {

	public static function getLink ():String {

		#if (android && openfl)

		var resultJNI = testextension_linkedUrl_jni();

		return resultJNI;

		#else

		return "plataforma no soporta deep links.";

		#end

	}


	#if (android && openfl)
	private static var testextension_linkedUrl_jni = JNI.createStaticMethod("com.tembac.deepLinkingTest.MainActivity", "linkedUrl", "()Ljava/lang/String;");
	#end


}
