import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:relight/app/common/common.dart';
import 'package:relight/app/features/features.dart';

class RelightRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(path: initialRoute, builder: (_, __) => const SplashPage()),
      GoRoute(path: loginRoute, builder: (_, __) => const LoginPage()),
      GoRoute(path: homeRoute, builder: (_, __) => const DashboardPage()),
      GoRoute(
        path: createHighlight,
        builder: (_, __) => const CreateHighlight(),
      ),
      GoRoute(
        path: selectHighlightSource,
        builder: (_, state) {
          final arg = state.extra! as List<HighlightSource>;
          return SelectSourcePage(
            savedSources: arg,
          );
        },
      ),
      GoRoute(
        path: createHighlightSource,
        builder: (_, __) => const CreateBookSourcePage(),
      ),
      GoRoute(
        path: reminderSettings,
        builder: (_, __) => const ReminderSettingsPage(),
      ),
      GoRoute(
        path: editHighlight,
        builder: (_, state) {
          final arg = state.extra! as Highlight;
          return EditHighlight(highlight: arg);
        },
      ),
    ],
    observers: [AppRouteOberver()],
  );

  static const initialRoute = '/';
  static const loginRoute = '/login';
  static const homeRoute = '/dashboard';
  static const createHighlight = '/highlight/create_highlight';
  static const selectHighlightSource = '/highlight/select_highlight_source';
  static const editHighlight = '/highlight/edit';
  static const createHighlightSource = '/highlight/source/new';
  static const reminderSettings = '/profile/reminder_settings';
}

class AppRouteOberver extends NavigatorObserver {
  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (route.settings.name == RelightRouter.selectHighlightSource) {}
    print(route.settings.name);
  }
}
