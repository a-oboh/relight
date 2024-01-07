import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:relight/app/common/notifiers/base_status.dart';
import 'package:relight/app/common/providers/app_providers.dart';
import 'package:relight/app/common/utils/app_router.dart';
import 'package:relight/app/common/utils/db_tags.dart';
import 'package:relight/app/features/features.dart';

final authStateNotifierProvider =
    StateNotifierProvider.autoDispose<AuthStateNotifier, AuthState>(
  (ref) {
    return AuthStateNotifier(
      router: ref.watch(goRouterProvider),
      firestore: ref.watch(dbProvider),
      authRepository: ref.watch(firebaseAuthRepoProvider),
      userRepository: ref.read(userRepoProvider),
      ref: ref,
    );
  },
);

class AuthStateNotifier extends StateNotifier<AuthState> {
  AuthStateNotifier({
    required GoRouter router,
    required FirebaseFirestore firestore,
    required FirebaseAuthRepository authRepository,
    required UserRepository userRepository,
    required Ref ref,
  })  : _router = router,
        _firestore = firestore,
        _authRepository = authRepository,
        _userRepository = userRepository,
        _ref = ref,
        super(AuthState());

  final GoRouter _router;
  final FirebaseFirestore _firestore;
  final FirebaseAuthRepository _authRepository;
  final UserRepository _userRepository;
  final Ref _ref;

  Future<void> signInWithGoogle() async {
    try {
      state = state.copyWith(status: const BaseStatus.loading());
      final userCredential = await _authRepository.loginWithGoogle();

      final email = userCredential?.user?.email;

      if (email != null) {
        final newUser = await _isNewUser(email);

        // create firestore collection
        if (newUser) {
          final fcmId = await FirebaseMessaging.instance.getToken();

          await _userRepository.saveUser(
            RelightUser(
              email: email,
              displayName: userCredential?.user?.displayName ?? '',
              profile: Profile(
                fcmToken: fcmId,
              ),
            ),
          );
        }

        state = state.copyWith(
          userCredential: userCredential,
          status: const BaseStatus.initial(),
        );

        await _router.pushReplacement(RelightRouter.homeRoute);
      } else {
        state = state.copyWith(
          status: const BaseStatus.error(
            errorText: 'There was a problem with your google account',
          ),
        );
      }
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
