import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC6WgzYfShvxJ2vlBOzlbKBDBgg1QjL084",
            authDomain: "thothplatform.firebaseapp.com",
            projectId: "thothplatform",
            storageBucket: "thothplatform.appspot.com",
            messagingSenderId: "1098118864702",
            appId: "1:1098118864702:web:553cbe2c71786b7c64166f"));
  } else {
    await Firebase.initializeApp();
  }
}
