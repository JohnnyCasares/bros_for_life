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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDaI3UqEJfUlHyy1e3KADcuNpBxmQekp4I',
    appId: '1:124500881090:web:6772d0b0cb6213c24a555b',
    messagingSenderId: '124500881090',
    projectId: 'bros-for-life',
    authDomain: 'bros-for-life.firebaseapp.com',
    storageBucket: 'bros-for-life.appspot.com',
    measurementId: 'G-HS508XYCSE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCTGHxJUSdqesqs3uWQWFZSrD15F0GPR5k',
    appId: '1:124500881090:android:c61b6d53d55bcbaa4a555b',
    messagingSenderId: '124500881090',
    projectId: 'bros-for-life',
    storageBucket: 'bros-for-life.appspot.com',
  );
}