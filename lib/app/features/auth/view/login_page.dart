import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relight/app/features/auth/notifier/auth_state_notifier.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final authNotifier = ref.read(authStateNotifierProvider.notifier);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                  (states) => Colors.red[700],
                ),
              ),
              onPressed: () async {
                if (ref.watch(authStateNotifierProvider.notifier).mounted) {
                  await ref
                      .read(authStateNotifierProvider.notifier)
                      .signInWithGoogle();
                }
              },
              child: const Text('Login w google'),
            ),
            FilledButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                  (states) => Colors.black,
                ),
              ),
              onPressed: () async {},
              child: const Text('Login w apple'),
            ),
            FilledButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                  (states) => Colors.black,
                ),
              ),
              onPressed: () async {
                await ref
                    .read(authStateNotifierProvider.notifier)
                    .logout(context);
              },
              child: const Text('logout'),
            ),
          ],
        ),
      ),
    );
  }

  // @override
  // void dispose() {
  //   ref.refresh(authStateNotifierProvider);
  //   super.dispose();
  // }
}
