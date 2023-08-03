import 'package:go_router/go_router.dart';
import 'package:relight/app/features/auth/view/login_page.dart';
import 'package:relight/app/features/splash_page.dart';

class RelightRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(path: initialRoute, builder: (_, __) => const SplashPage()),
      GoRoute(path: loginRoute, builder: (_, __) => const LoginPage()),
    ],
  );

  static const initialRoute = '/';
  static const loginRoute = '/login';
  static const homeRoute = '/home';
}
