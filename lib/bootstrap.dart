import 'dart:async';
import 'dart:developer';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest_all.dart' as tz;

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  await dotenv.load();

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setSystemUIOverlayStyle(
  //   const SystemUiOverlayStyle(statusBarColor: Colors.white),
  // );

  // record fatal errors
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  // Catch and report Dart errors
  FlutterError.onError = (FlutterErrorDetails details) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(details);
    FirebaseAnalytics.instance.logEvent(
      name: 'flutter_error',
      parameters: {
        'exception': details.exception.toString(),
        'stack_trace': details.stack.toString(),
      },
    );
  };

  tz.initializeTimeZones();
  final currentTimeZone = await FlutterTimezone.getLocalTimezone();

  tz.setLocalLocation(tz.getLocation(currentTimeZone));

  runApp(ProviderScope(child: await builder()));
}
