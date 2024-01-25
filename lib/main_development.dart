import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:relight/app/relight_app.dart';
import 'package:relight/bootstrap.dart';
import 'package:relight/firebase_options_dev.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  bootstrap(() => const RelightApp());
}
