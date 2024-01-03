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
    apiKey: 'AIzaSyC7Id5cCdM7HSd3Fdj2PT6qUpaQ4S0mMS4',
    appId: '1:799632055322:web:3f52bd0f57d7be723f85a3',
    messagingSenderId: '799632055322',
    projectId: 'chat-app-15-36077',
    authDomain: 'chat-app-15-36077.firebaseapp.com',
    storageBucket: 'chat-app-15-36077.appspot.com',
    measurementId: 'G-C64H4NDD4L',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCiqN4ZbnOkIprEgLhtoyGuHiQ_jlLAPKY',
    appId: '1:799632055322:android:3bf185140d6614583f85a3',
    messagingSenderId: '799632055322',
    projectId: 'chat-app-15-36077',
    storageBucket: 'chat-app-15-36077.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBeuARNhcFiFORGQi-OjiVcQJwfVFLVLJE',
    appId: '1:799632055322:ios:95dc80c6b796bf9a3f85a3',
    messagingSenderId: '799632055322',
    projectId: 'chat-app-15-36077',
    storageBucket: 'chat-app-15-36077.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBeuARNhcFiFORGQi-OjiVcQJwfVFLVLJE',
    appId: '1:799632055322:ios:f5c01f200aa599893f85a3',
    messagingSenderId: '799632055322',
    projectId: 'chat-app-15-36077',
    storageBucket: 'chat-app-15-36077.appspot.com',
    iosBundleId: 'com.example.chatApp.RunnerTests',
  );
}