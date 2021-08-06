import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flavorization_app_theme/environments.dart';
import 'package:flavorization_app_theme/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../flavors.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late AdaptiveThemeMode _currentThemeMode;

  @override
  void initState() {
    super.initState();
    _currentThemeMode = AdaptiveTheme.of(context).mode;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(FlavorStyle.title),
        textTheme: Theme.of(context).textTheme,
        actions: [
          IconButton(
            onPressed: () {
              if (_currentThemeMode.isLight) {
                AdaptiveTheme.of(context).setDark();
                setState(() => _currentThemeMode = AdaptiveThemeMode.dark);
              } else {
                AdaptiveTheme.of(context).setLight();
                setState(() => _currentThemeMode = AdaptiveThemeMode.light);
              }
            },
            icon: Icon(_currentThemeMode.isLight ? Icons.brightness_2_rounded : Icons.brightness_high_rounded),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Hello ${FlavorStyle.title} on env: ${Environment.env}'
            ),
            Padding(padding: EdgeInsets.all(FlavorStyle.dimens.padding),child: CustomButton(onTap: () {}, label: 'Button label'))
          ],
        ),
      ),
    );
  }
}
