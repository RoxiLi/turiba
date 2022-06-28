import 'dart:io';

import 'package:firebase_core/firebase_core.dart';

class DefaultFirebaseConfig {
  static FirebaseOptions get platformOptions {
    if (Platform.isIOS || Platform.isMacOS) {
      // iOS and MacOS
      return const FirebaseOptions(
        appId: '1:1057584388099:ios:c829a10d512a2f564ed636',
        messagingSenderId: '1057584388099',
        projectId: 'turiba-d29c8',
        apiKey: 'AIzaSyDGiLndJ809XOYGCTmZ2_uH14fz86VIfXQ',
        authDomain: 'turiba-d29c8.firebaseapp.com',
        iosBundleId: 'com.io.turiba',
        iosClientId:
        '1057584388099-55hf2cc3qt0np1eh9ad838blskelt2hn.apps.googleusercontent.com',
        databaseURL: 'https://therapist-39dd8.firebaseio.com',
      );
    } else {
      // Android
      return const FirebaseOptions(
        appId: '1:1057584388099:android:fd728082d6ea35ca4ed636',
        apiKey: 'AIzaSyDrSiWURkm_6zZQIz8whwSnz-ok45qgv54',
        projectId: 'turiba-d29c8',
        messagingSenderId: '1057584388099',
        authDomain: 'turiba-d29c8.firebaseapp.com',
        androidClientId: '1057584388099-ntu47hj4id8liofg8vl882ghjq4tfg5l.apps.googleusercontent.com',
      );
    }
  }
}



