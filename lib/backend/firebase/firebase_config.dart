import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBsZhozsXNqRXDh9R254R9-RDDAlU_Sxxg",
            authDomain: "all-in-one-services-768a5.firebaseapp.com",
            projectId: "all-in-one-services-768a5",
            storageBucket: "all-in-one-services-768a5.appspot.com",
            messagingSenderId: "907782676444",
            appId: "1:907782676444:web:434f4af61e1643eff5f919",
            measurementId: "G-6NT05NKNYR"));
  } else {
    await Firebase.initializeApp();
  }
}
