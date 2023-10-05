// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show TargetPlatform, defaultTargetPlatform, kIsWeb;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options_dev.dart';
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
    apiKey: 'AIzaSyByoAJM0MT1fvPaR8KXi12ew8s-b5YtgHM',
    appId: '1:437855968088:web:756106166f2952c215e32d',
    messagingSenderId: '437855968088',
    projectId: 'relight-staging',
    authDomain: 'relight-staging.firebaseapp.com',
    storageBucket: 'relight-staging.appspot.com',
    measurementId: 'G-B8V264455Q',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBOx5dflMKys250WCxFN8h-BR2dD9cejrw',
    appId: '1:437855968088:android:9125e58b1944303e15e32d',
    messagingSenderId: '437855968088',
    projectId: 'relight-staging',
    storageBucket: 'relight-staging.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBOfIdwA6Va2NPGmz1BmKvcJD7ezbmYljM',
    appId: '1:437855968088:ios:e9816e11fe81016815e32d',
    messagingSenderId: '437855968088',
    projectId: 'relight-staging',
    storageBucket: 'relight-staging.appspot.com',
    iosClientId:
        '437855968088-i459o6i86vbeq2anukrankiteg91ugdf.apps.googleusercontent.com',
    iosBundleId: 'com.relight.app.dev',
  );
}
