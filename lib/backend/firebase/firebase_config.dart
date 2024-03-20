import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBJph-F_AhQLLxt1hUEyYaH2sfr6c3yQPQ",
            authDomain: "salon-de-belleza-proyec-ar2gvp.firebaseapp.com",
            projectId: "salon-de-belleza-proyec-ar2gvp",
            storageBucket: "salon-de-belleza-proyec-ar2gvp.appspot.com",
            messagingSenderId: "397098309356",
            appId: "1:397098309356:web:aa8199f731dad1a40d77c9"));
  } else {
    await Firebase.initializeApp();
  }
}
