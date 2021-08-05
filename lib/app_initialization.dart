import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flavorization_app_theme/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

Future<void> appInitialization() async {
  WidgetsFlutterBinding.ensureInitialized();
  var _systemThemeMode = await AdaptiveTheme.getThemeMode();
  if (_systemThemeMode == null) {
    if ((SchedulerBinding.instance?.window.platformBrightness ?? Brightness.light) == Brightness.light) {
      _systemThemeMode = AdaptiveThemeMode.light;
    } else {
      _systemThemeMode = AdaptiveThemeMode.dark;
    }
  }
  runApp(App(_systemThemeMode));
}
