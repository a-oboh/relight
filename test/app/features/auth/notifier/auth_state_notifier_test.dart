import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mocktail/mocktail.dart';
import 'package:relight/app/common/utils/db_tags.dart';
import 'package:relight/app/features/auth/auth.dart';

void main() {
  late AuthStateNotifier authStateNotifier;
  final FirebaseFirestore firestore = FakeFirebaseFirestore();
  final GoRouter goRouter = MockGoRouter();
  final authRepository = MockFirebaseAuthRepository();
  late final ProviderContainer container;

  setUpAll(() {
    authStateNotifier = AuthStateNotifier(
      firestore: firestore,
      router: goRouter,
      authRepository: authRepository,
    );
  });

  // tearDown(container.dispose);

  test('google sign in successful', () async {
    container = ProviderContainer(
      overrides: [
        authStateNotifierProvider.overrideWith((ref) => authStateNotifier),
      ],
    );
    final collectionPath = CollectionTags.users.name;
    await firestore
        .collection(collectionPath)
        .doc('EMAIL')
        .set({'email': 'email'});

    final listener = Listener();

    final userCredential = MockUserCredential();
    final user = MockUser();

    final providerListener = container.listen<AuthState>(
      authStateNotifierProvider,
      listener.call,
      fireImmediately: true,
    );

    when(authRepository.loginWithGoogle)
        .thenAnswer((_) async => userCredential);
    when(() => userCredential.user).thenReturn(user);
    when(() => user.email).thenReturn('EMAIL');

    await authStateNotifier.signInWithGoogle();
    final state = providerListener.read();
    expect(state.userCredential, isA<UserCredential>());
    addTearDown(container.dispose);
  });
}

class MockFirebaseFirestore extends Mock implements FirebaseFirestore {}

class MockGoRouter extends Mock implements GoRouter {}

class Listener extends Mock {
  void call(AuthState? previous, AuthState value);
}

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

class MockGoogleSignInAccount extends Mock implements GoogleSignInAccount {}

class MockFirebaseAuthRepository extends Mock
    implements FirebaseAuthRepository {}

class MockUserCredential extends Mock implements UserCredential {}

class MockUser extends Mock implements User {}
