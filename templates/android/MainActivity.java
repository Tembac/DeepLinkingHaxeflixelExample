package ::APP_PACKAGE::;

import android.os.Bundle;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;

public class MainActivity extends org.haxe.lime.GameActivity {

    private static String urlLinked = "no link yet.";

     @Override
     protected void onCreate(Bundle savedInstanceState) {
         super.onCreate(savedInstanceState);

         handleIntent();
     }

     @Override
     public void onStart() {
         super.onStart();

         handleIntent();
     }

     @Override
     public void onRestart() {
         super.onRestart();

         handleIntent();
     }

     @Override
     public void onResume() {
         super.onResume();

         handleIntent();
     }

     @Override
     protected void onNewIntent(Intent intent) {
         super.onNewIntent(intent);

         // Override previous intent
         setIntent(intent);

         // Handle new intent
         handleIntent();
     }

     /**
      * Entry point for handling the activity's intent
      */
     private void handleIntent() {
         // Get the intent set on this activity
         Intent intent = getIntent();

         final String dataString = intent.getDataString();
         if(dataString != null)
         {
           urlLinked = dataString;
         }
         Log.d("FuncaLink", "link: " + urlLinked);

     }

     public static String linkedUrl () {

       return urlLinked;

    }

}
