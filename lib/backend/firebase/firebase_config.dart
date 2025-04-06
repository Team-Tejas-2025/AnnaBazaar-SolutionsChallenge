import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBXHZH7Ot9cYgd856nOKUDjWV-dscb-CrQ",
            authDomain: "anna-bazaar-solution.firebaseapp.com",
            projectId: "anna-bazaar-solution",
            storageBucket: "anna-bazaar-solution.firebasestorage.app",
            messagingSenderId: "614546026220",
            appId: "1:614546026220:web:6bf6f13906075438183fc9",
            measurementId: "G-WQ05KEDR4V"));
  } else {
    await Firebase.initializeApp();
  }
}
