// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCLWXq9n7DeydwG4T7Tt0meVG7gnUYCN5E',
    appId: '1:567302080019:web:97815e08e057d3ecd4a1e6',
    messagingSenderId: '567302080019',
    projectId: 'chatbot-e2485',
    authDomain: 'chatbot-e2485.firebaseapp.com',
    storageBucket: 'chatbot-e2485.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCVfk1N2U5U4Vq6QG5MJtHDc4rB0_5tENU',
    appId: '1:567302080019:android:4dbf5b443ff96346d4a1e6',
    messagingSenderId: '567302080019',
    projectId: 'chatbot-e2485',
    storageBucket: 'chatbot-e2485.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAz0o8WG1iu-Kw2jgW_CaokP9N15nXoJFw',
    appId: '1:567302080019:ios:2a3a5f4095bf04ecd4a1e6',
    messagingSenderId: '567302080019',
    projectId: 'chatbot-e2485',
    storageBucket: 'chatbot-e2485.appspot.com',
    iosBundleId: 'com.example.chatbotApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAz0o8WG1iu-Kw2jgW_CaokP9N15nXoJFw',
    appId: '1:567302080019:ios:2a3a5f4095bf04ecd4a1e6',
    messagingSenderId: '567302080019',
    projectId: 'chatbot-e2485',
    storageBucket: 'chatbot-e2485.appspot.com',
    iosBundleId: 'com.example.chatbotApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCLWXq9n7DeydwG4T7Tt0meVG7gnUYCN5E',
    appId: '1:567302080019:web:25d64d8a602a0da5d4a1e6',
    messagingSenderId: '567302080019',
    projectId: 'chatbot-e2485',
    authDomain: 'chatbot-e2485.firebaseapp.com',
    storageBucket: 'chatbot-e2485.appspot.com',
  );
}
