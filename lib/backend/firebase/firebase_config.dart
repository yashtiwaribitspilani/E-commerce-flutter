import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCpzZHQ5R-fjc3Y8eH2rakvvRNRyYRWu6c",
            authDomain: "startup-a54cf.firebaseapp.com",
            projectId: "startup-a54cf",
            storageBucket: "startup-a54cf.appspot.com",
            messagingSenderId: "876440760888",
            appId: "1:876440760888:web:ffa8d4ae1caf6b41e8accd",
            measurementId: "G-ZHV70HG77F"));
  } else {
    await Firebase.initializeApp();
  }
}
