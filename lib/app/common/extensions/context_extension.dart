import 'package:flutter/material.dart';
import 'package:relight/l10n/l10n.dart';

extension ContextExt on BuildContext {
  AppLocalizations get localization => AppLocalizations.of(this);
}
