import 'package:firebase_core/firebase_core.dart';
import 'package:relight/app/app.dart';
import 'package:relight/bootstrap.dart';
import 'package:relight/firebase_options_dev.dart';

void main() {
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  bootstrap(() => const RelightApp());
}
