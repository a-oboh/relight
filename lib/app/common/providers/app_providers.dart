import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logging/logging.dart';
import 'package:relight/app/common/utils/app_router.dart';

final firestoreProvider = Provider((ref) => FirebaseFirestore.instance);

final loggingProvider = Provider.family(
  (ref, String arg) => Logger(arg),
);

final goRouterProvider = Provider((ref) => RelightRouter.router);

final googleSignInProvider = Provider((ref) => GoogleSignIn());

final firebaseAuthProvider = Provider((ref) => FirebaseAuth.instance);

final googleAuthProvider = Provider((ref) => GoogleAuthProvider);
