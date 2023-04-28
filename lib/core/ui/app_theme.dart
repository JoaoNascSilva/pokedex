import 'package:flutter/material.dart';

class AppTheme {
  static AppTheme? _instance;

  AppTheme._();

  static AppTheme get instance {
    _instance ??= AppTheme._();
    return _instance!;
  }

  static final theme = ThemeData(useMaterial3: true);
}

extension AppThemeExtensions on BuildContext {
  AppTheme get colors => AppTheme.instance;
}
