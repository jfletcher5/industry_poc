import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAXSfJbN3SMuBBkKSHSmwfYUgG3qPPYLSg",
            authDomain: "industry-poc-qbh046.firebaseapp.com",
            projectId: "industry-poc-qbh046",
            storageBucket: "industry-poc-qbh046.appspot.com",
            messagingSenderId: "721340689169",
            appId: "1:721340689169:web:0714f2ce3b81e8cc7dbab0"));
  } else {
    await Firebase.initializeApp();
  }
}
