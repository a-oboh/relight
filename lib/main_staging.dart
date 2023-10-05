import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:relight/app/app.dart';
import 'package:relight/bootstrap.dart';

import 'package:relight/firebase_options_stg.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await bootstrap(() => const RelightApp());
}
