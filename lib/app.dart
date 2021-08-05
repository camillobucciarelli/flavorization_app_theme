import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'flavors.dart';
import 'pages/my_home_page.dart';

class App extends StatelessWidget {
  final AdaptiveThemeMode _systemThemeMode;

  const App(this._systemThemeMode);

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: FlavorStyle.themeDataLight,
      dark: FlavorStyle.themeDataDark,
      initial: _systemThemeMode,
      builder: (theme, darkTheme) {
        return MaterialApp(
          theme: theme,
          darkTheme: darkTheme,
          home: MyHomePage(),
        );
      },
    );
  }
}
