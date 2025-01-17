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
    apiKey: 'AIzaSyAZ1efDx66b0SgaFOiRpxp1THY2W-w86pE',
    appId: '1:343703758058:web:cda6767e3bd91ffb00e393',
    messagingSenderId: '343703758058',
    projectId: 'taskfocal6',
    authDomain: 'taskfocal6.firebaseapp.com',
    storageBucket: 'taskfocal6.appspot.com',
    measurementId: 'G-NBM7XZ99Y4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAIU04jQNB_PTo6ma4Bq5wGcsbA90-1JWk',
    appId: '1:343703758058:android:315e228b205ba3da00e393',
    messagingSenderId: '343703758058',
    projectId: 'taskfocal6',
    storageBucket: 'taskfocal6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBzBwCI-RRIDhTpxraWmEG-QYwv3uB0AT0',
    appId: '1:343703758058:ios:2959008d6c02b88a00e393',
    messagingSenderId: '343703758058',
    projectId: 'taskfocal6',
    storageBucket: 'taskfocal6.appspot.com',
    iosBundleId: 'com.example.projecttask6',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBzBwCI-RRIDhTpxraWmEG-QYwv3uB0AT0',
    appId: '1:343703758058:ios:2959008d6c02b88a00e393',
    messagingSenderId: '343703758058',
    projectId: 'taskfocal6',
    storageBucket: 'taskfocal6.appspot.com',
    iosBundleId: 'com.example.projecttask6',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAZ1efDx66b0SgaFOiRpxp1THY2W-w86pE',
    appId: '1:343703758058:web:e76d818e5d2721d600e393',
    messagingSenderId: '343703758058',
    projectId: 'taskfocal6',
    authDomain: 'taskfocal6.firebaseapp.com',
    storageBucket: 'taskfocal6.appspot.com',
    measurementId: 'G-4TS43FZTYV',
  );
}
