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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDFeQR5COIBkfrGN58veELvtawaYkMKt6g',
    appId: '1:509212190265:web:0b12929fd8a5e860ec4fe8',
    messagingSenderId: '509212190265',
    projectId: 'ctn-app-e7141',
    authDomain: 'ctn-app-e7141.firebaseapp.com',
    storageBucket: 'ctn-app-e7141.appspot.com',
    measurementId: 'G-PBG0DVV9QK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB7SweQKsogAP1yHl9dDMJlGVvZcg68CJQ',
    appId: '1:509212190265:android:25a30638c216fe53ec4fe8',
    messagingSenderId: '509212190265',
    projectId: 'ctn-app-e7141',
    storageBucket: 'ctn-app-e7141.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAnrUhOt9LgC80IP6gcryh6YN2sQgQI9Cg',
    appId: '1:509212190265:ios:8aadaa3a80269aa7ec4fe8',
    messagingSenderId: '509212190265',
    projectId: 'ctn-app-e7141',
    storageBucket: 'ctn-app-e7141.appspot.com',
    androidClientId:
        '509212190265-laljmlngic7mn1lgdrj53qr7b6k5a0ja.apps.googleusercontent.com',
    iosClientId:
        '509212190265-6t3uj7smj4vp735m1nj7oq7feq2o61f7.apps.googleusercontent.com',
    iosBundleId: 'com.example.ctnapp',
  );
}
