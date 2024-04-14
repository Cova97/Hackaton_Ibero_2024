import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC6zA3pKmkGQAZBP9sY8v9SyTjjj184cJc",
            authDomain: "prueba-hackaton-7cb3e.firebaseapp.com",
            projectId: "prueba-hackaton-7cb3e",
            storageBucket: "prueba-hackaton-7cb3e.appspot.com",
            messagingSenderId: "1001981657941",
            appId: "1:1001981657941:web:a999fce57b51d4f9a665dc"));
  } else {
    await Firebase.initializeApp();
  }
}
