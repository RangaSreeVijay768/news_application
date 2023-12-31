// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDYXopOf8USFUoNJG1knpCa00hCnaQQdBw',
    appId: '1:451906266249:web:94a95407b6aebeff315258',
    messagingSenderId: '451906266249',
    projectId: 'chatapp-92597',
    authDomain: 'chatapp-92597.firebaseapp.com',
    storageBucket: 'chatapp-92597.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDW6_PGl_q7zQ12meKE6J4zeciPB7okkjM',
    appId: '1:451906266249:android:b52b8172e0e4a5f3315258',
    messagingSenderId: '451906266249',
    projectId: 'chatapp-92597',
    storageBucket: 'chatapp-92597.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDJgLK-6psna_6TBWKQInvFF479eYq2fhg',
    appId: '1:451906266249:ios:49a0ee503cdd0ee1315258',
    messagingSenderId: '451906266249',
    projectId: 'chatapp-92597',
    storageBucket: 'chatapp-92597.appspot.com',
    iosClientId: '451906266249-o7lfr2o54vn6spe1iib5if92ho0npai0.apps.googleusercontent.com',
    iosBundleId: 'com.example.myfirstproject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDJgLK-6psna_6TBWKQInvFF479eYq2fhg',
    appId: '1:451906266249:ios:77fd5ae53a021d97315258',
    messagingSenderId: '451906266249',
    projectId: 'chatapp-92597',
    storageBucket: 'chatapp-92597.appspot.com',
    iosClientId: '451906266249-2kcvhmfcu7tcuanu8hg4oueh9m5ctouj.apps.googleusercontent.com',
    iosBundleId: 'com.example.myfirstproject.RunnerTests',
  );
}
