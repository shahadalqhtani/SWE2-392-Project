import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDg_RhD6aanyz1Tgve8qf5u3bjM6c9yeis",
            authDomain: "the-c-s-world-83czhb.firebaseapp.com",
            projectId: "the-c-s-world-83czhb",
            storageBucket: "the-c-s-world-83czhb.appspot.com",
            messagingSenderId: "108948918146",
            appId: "1:108948918146:web:33f88e3afb65b715bc499b"));
  } else {
    await Firebase.initializeApp();
  }
}
