import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relight/app/common/providers/app_providers.dart';
import 'package:relight/app/common/utils/app_colors.dart';
import 'package:relight/app/common/utils/text_styles.dart';
import 'package:relight/l10n/l10n.dart';

class RelightApp extends ConsumerWidget {
  const RelightApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);
    //TODO(a-oboh): add custom font
    return MaterialApp.router(
      theme: ThemeData(
        primaryColor: AppColors.primaryGrey,
        appBarTheme: Theme.of(context)
            .appBarTheme
            .copyWith(systemOverlayStyle: SystemUiOverlayStyle.dark),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: AppColors.purpleMain,
          cardColor: AppColors.secondaryGrey,
          brightness: Brightness.dark,
        ),
        textTheme: textTheme,
        scaffoldBackgroundColor: AppColors.dark,
        inputDecorationTheme: const InputDecorationTheme(
          hintStyle: TextStyle(color: AppColors.lightGrey),
          filled: true,
          fillColor: AppColors.primaryGrey,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: AppColors.secondaryGrey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: AppColors.purpleMain),
          ),
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: AppColors.purpleMain,
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        popupMenuTheme:
            const PopupMenuThemeData(color: AppColors.secondaryGrey),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: router,
    );
  }
}
