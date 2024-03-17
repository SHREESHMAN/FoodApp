import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyD6JHTS6OD1oPBfihn83yjsgAF_i_nBEJc",
            authDomain: "ieee-y95v7t.firebaseapp.com",
            projectId: "ieee-y95v7t",
            storageBucket: "ieee-y95v7t.appspot.com",
            messagingSenderId: "353756899661",
            appId: "1:353756899661:web:4591a2feb3f875a9f82f04"));
  } else {
    await Firebase.initializeApp();
  }
}
