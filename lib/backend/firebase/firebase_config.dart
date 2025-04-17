import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDPuyNyeKBJ3yR9LS0KDxBONZmkAATDrKI",
            authDomain: "venta-exterior-nissan-27lfqs.firebaseapp.com",
            projectId: "venta-exterior-nissan-27lfqs",
            storageBucket: "venta-exterior-nissan-27lfqs.appspot.com",
            messagingSenderId: "890379930862",
            appId: "1:890379930862:web:e482ee4c2bcc026ea677ff"));
  } else {
    await Firebase.initializeApp();
  }
}
