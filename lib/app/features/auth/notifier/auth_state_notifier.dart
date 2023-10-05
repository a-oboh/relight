import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:relight/app/common/notifiers/base_status.dart';
import 'package:relight/app/common/providers/app_providers.dart';
import 'package:relight/app/common/utils/app_router.dart';
import 'package:relight/app/common/utils/db_tags.dart';
import 'package:relight/app/features/auth/notifier/auth_state.dart';
import 'package:relight/app/features/auth/repository/firebase_auth_repository.dart';

final authStateNotifierProvider =
    StateNotifierProvider<AuthStateNotifier, AuthState>(
  (ref) {
    return AuthStateNotifier(
      router: ref.watch(goRouterProvider),
      firestore: ref.watch(dbProvider),
      authRepository: ref.watch(firebaseAuthRepoProvider),
    );
  },
);

class AuthStateNotifier extends StateNotifier<AuthState> {
  AuthStateNotifier({
    required GoRouter router,
    required FirebaseFirestore firestore,
    required FirebaseAuthRepository authRepository,
  })  : _router = router,
        _firestore = firestore,
        _authRepository = authRepository,
        super(AuthState());

  final GoRouter _router;
  final FirebaseFirestore _firestore;
  final FirebaseAuthRepository _authRepository;

  Future<void> signInWithGoogle() async {
    try {
      state = state.copyWith(status: const BaseStatus.loading());
      final userCredential = await _authRepository.loginWithGoogle();

      final email = userCredential?.user?.email;

      final newUser = await _isNewUser(email ?? '');

      // create firestore collection
      if (newUser) {
        await _firestore.collection(CollectionTags.users.name).doc(email).set({
          'email': email,
          'firstName': userCredential?.user?.displayName,
        });
      }

      state = state.copyWith(
        userCredential: userCredential,
        status: const BaseStatus.initial(),
      );

      await _router.pushReplacement(RelightRouter.homeRoute);
    } catch (e) {
      state = state.copyWith(
        status: const BaseStatus.error(errorText: 'Error logging in'),
      );
    }
  }

  Future<bool> _isNewUser(String email) async {
    try {
      final doc = await _firestore
          .collection(CollectionTags.users.name)
          .doc(email)
          .get();
      return !doc.exists;
    } catch (e) {
      return false;
    }
  }

  Future<void> logout(BuildContext context) async {
    state = state.copyWith(status: const BaseStatus.loading());
    await _authRepository.logout();
    state = state.copyWith(status: const BaseStatus.initial());

    _router.go(RelightRouter.loginRoute);
  }

  Future<void> appleSignIn() async {
    //TODO(albert): implement apple signin after
  }
}
