import 'package:flavorization_app_theme/flavors.dart';
import 'package:flutter/material.dart';

abstract class ThemeColors {
  static ThemeColors of(BuildContext context) {
    if (Theme.of(context).brightness == Brightness.light) {
      return FlavorStyle.themeColorsLight;
    }
    return FlavorStyle.themeColorsDark;
  }

  const ThemeColors();

  Color get background;

  Color get textColor;

  Color get textColorLight;

  Color get textColorLighter;

  Color get primary;

  Color get primaryLight;

  Color get primaryLighter;

  Color get accent;

  Color get accentLight;

  Color get accentLighter;

  //... you can define here more colors
}
