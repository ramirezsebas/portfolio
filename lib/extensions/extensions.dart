import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension SizeX on MediaQueryData {
  bool get isMobileSize => size.width < 850;

  bool get isTabletSize => size.width < 1100 && size.width >= 850;

  bool get isDesktopSize => size.width >= 1100;
}

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
