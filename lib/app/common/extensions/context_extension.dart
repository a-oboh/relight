import 'package:flutter/material.dart';
import 'package:relight/l10n/l10n.dart';

extension ContextExt on BuildContext {
  AppLocalizations get localization => AppLocalizations.of(this);

  bool isDialogShowing() {
    return ModalRoute.of(this)?.isActive ?? false;
  }
}

extension HardCoded on String {
  String get hardCoded => this;
}
