import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';
import 'package:relight/app/common/common.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      final user = ref.watch(userProvider).value;
      Logger('splash').info(user);
      _listenToUser();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Relight',
          style: AppTextStyles.heading4,
        ),
      ),
    );
  }

  Future<void> _listenToUser() async {
    FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user == null) {
        context.pushReplacement(RelightRouter.loginRoute);
      } else {
        context.pushReplacement(RelightRouter.homeRoute);
      }
    });
  }
}
