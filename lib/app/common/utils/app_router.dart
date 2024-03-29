import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:relight/app/features/features.dart';

class RelightRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(path: initialRoute, builder: (_, __) => const SplashPage()),
      GoRoute(path: loginRoute, builder: (_, __) => const LoginPage()),
      GoRoute(
        path: homeRoute,
        name: homeRoute,
        builder: (_, __) => const DashboardPage(),
      ),
      GoRoute(
        path: createHighlight,
        builder: (_, __) => const CreateHighlight(),
      ),
      GoRoute(
        path: selectHighlightSource,
        builder: (_, state) {
          final arg = state.extra! as SelectSourceArgs;
          return SelectSourcePage(
            args: arg,
          );
        },
      ),
      GoRoute(
        path: createHighlightSource,
        builder: (_, __) => const CreateBookSourcePage(),
      ),
      GoRoute(
        name: reminderSettings,
        path: reminderSettings,
        builder: (_, state) {
          final arg = state.extra as RelightUser?;
          return ReminderSettingsPage(
            user: arg,
          );
        },
      ),
      GoRoute(
        path: editHighlight,
        builder: (_, state) {
          final arg = state.extra! as Highlight;
          return EditHighlight(highlight: arg);
        },
      ),
      GoRoute(
        path: NewHighlightCategorySource.routePath,
        builder: (_, state) {
          return const NewHighlightCategorySource();
        },
      ),
      GoRoute(
        path: NewArticleHighlight.routePath,
        builder: (_, state) {
          return NewArticleHighlight();
        },
      ),
      GoRoute(
        path: NewUrlHighlightPreviewPage.routePath,
        builder: (_, state) {
          final arg = state.extra! as UrlMetadataModel;
          return NewUrlHighlightPreviewPage(urlMetadata: arg);
        },
      ),
      GoRoute(
        path: SingleHighlightPage.routePath,
        builder: (_, state) {
          final arg = state.extra! as Highlight;
          return SingleHighlightPage(highlight: arg);
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
    if (kDebugMode) {
      print(route.settings.name);
    }
  }
}
