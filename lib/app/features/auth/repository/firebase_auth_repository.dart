import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:relight/app/common/providers/app_providers.dart';

final googleAuthProviderWrapperProvider =
    Provider((ref) => GoogleAuthProviderWrapper());
final firebaseAuthRepoProvider = Provider(
  (ref) => FirebaseAuthRepository(
    googleSignIn: ref.watch(googleSignInProvider),
    googleAuthProviderWrapper: ref.watch(googleAuthProviderWrapperProvider),
    firebaseAuth: ref.watch(firebaseAuthProvider),
  ),
);

class FirebaseAuthRepository {
  FirebaseAuthRepository({
    required GoogleSignIn googleSignIn,
    required GoogleAuthProviderWrapper googleAuthProviderWrapper,
    required FirebaseAuth firebaseAuth,
  })  : _firebaseAuth = firebaseAuth,
        _googleAuthProviderWrapper = googleAuthProviderWrapper,
        _googleSignIn = googleSignIn;

  final GoogleSignIn _googleSignIn;
  final GoogleAuthProviderWrapper _googleAuthProviderWrapper;
  final FirebaseAuth _firebaseAuth;

  Future<UserCredential?> loginWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      final googleAuth = await googleUser?.authentication;

      // Create a new credential
      final providerCredential =
          _googleAuthProviderWrapper.credential(googleAuth);

      // Once signed in, return the UserCredential

      final userCredential =
          await _firebaseAuth.signInWithCredential(providerCredential);

      return userCredential;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> logout() async {
    await _firebaseAuth.signOut();
  }
}

class GoogleAuthProviderWrapper {
  OAuthCredential credential(GoogleSignInAuthentication? auth) {
    return GoogleAuthProvider.credential(
      accessToken: auth?.accessToken,
      idToken: auth?.idToken,
    );
  }
}
