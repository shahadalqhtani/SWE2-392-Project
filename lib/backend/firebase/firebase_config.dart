import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC2w3U8YFK2lajIxou-ezYzHoFJtv4AOzw",
            authDomain: "the-cs-world.firebaseapp.com",
            projectId: "the-cs-world",
            storageBucket: "the-cs-world.appspot.com",
            messagingSenderId: "256087961562",
            appId: "1:256087961562:web:93114cd4e43dc0280f9ae3"));
  } else {
    await Firebase.initializeApp();
  }
}
