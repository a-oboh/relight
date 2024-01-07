import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logging/logging.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:relight/app/common/utils/app_router.dart';

final dbProvider =
    Provider<FirebaseFirestore>((ref) => FirebaseFirestore.instance);

final loggingProvider = Provider.family(
  (ref, String arg) => Logger(arg),
);

final goRouterProvider = Provider((ref) => RelightRouter.router);

final googleSignInProvider = Provider((ref) => GoogleSignIn());

final firebaseAuthProvider = Provider((ref) => FirebaseAuth.instance);

final userProvider =
    StreamProvider((ref) => ref.read(firebaseAuthProvider).authStateChanges());

final googleAuthProvider = Provider((ref) => GoogleAuthProvider);

final dioProvider = Provider((ref) {
  final dio = Dio();
  dio.interceptors.add(PrettyDioLogger());

  return dio;
});

final messagingProvider = Provider((ref) => FirebaseMessaging.instance);
