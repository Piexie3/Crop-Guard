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
    apiKey: 'AIzaSyD0qY2-vryd3_8yXhQO-2ZsJdVVXuhaFCc',
    appId: '1:429212076423:web:70f85d444f6e1fb6c4eb22',
    messagingSenderId: '429212076423',
    projectId: 'daema-d73de',
    authDomain: 'daema-d73de.firebaseapp.com',
    storageBucket: 'daema-d73de.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC10nP9Q06PpdRCUKeDUBpQYGjlxu7zMzw',
    appId: '1:429212076423:android:e197e62186fad173c4eb22',
    messagingSenderId: '429212076423',
    projectId: 'daema-d73de',
    storageBucket: 'daema-d73de.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCHKeEXD91YgM6NuEQXNDjHok1DfMMjkcU',
    appId: '1:429212076423:ios:a43051a4c1ccfd81c4eb22',
    messagingSenderId: '429212076423',
    projectId: 'daema-d73de',
    storageBucket: 'daema-d73de.appspot.com',
    iosClientId: '429212076423-c8k2lhrvgrd6a89u4t7trcv52dfdd7hc.apps.googleusercontent.com',
    iosBundleId: 'com.example.daema',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCHKeEXD91YgM6NuEQXNDjHok1DfMMjkcU',
    appId: '1:429212076423:ios:7ccb7499592c885bc4eb22',
    messagingSenderId: '429212076423',
    projectId: 'daema-d73de',
    storageBucket: 'daema-d73de.appspot.com',
    iosClientId: '429212076423-a1r043dgga3a7ffcael6i63r98bjl6tq.apps.googleusercontent.com',
    iosBundleId: 'com.example.daema.RunnerTests',
  );
}
