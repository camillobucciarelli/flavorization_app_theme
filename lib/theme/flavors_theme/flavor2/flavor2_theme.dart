import 'package:flavorization_app_theme/theme/flavors_theme/flavor2/flavor2_theme_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Flavor2Theme {
  //region Cupertino
  static CupertinoThemeData cupertinoThemeDataOf(BuildContext context) {
    if (Theme.of(context).brightness == Brightness.light) {
      return cupertinoThemeLight;
    }
    return cupertinoThemeDark;
  }

  static final CupertinoThemeData cupertinoThemeLight = CupertinoThemeData(
      textTheme: CupertinoTextThemeData(
        dateTimePickerTextStyle: ThemeData.dark().textTheme.bodyText2,
        pickerTextStyle: ThemeData.dark().textTheme.bodyText2,
      ),
      brightness: Brightness.light);

  static final CupertinoThemeData cupertinoThemeDark = CupertinoThemeData(
      textTheme: CupertinoTextThemeData(
        dateTimePickerTextStyle: ThemeData.dark().textTheme.bodyText2,
        pickerTextStyle: ThemeData.dark().textTheme.bodyText2,
      ),
      brightness: Brightness.dark);

  //endregion

  static final ThemeData light = ThemeData(
    scaffoldBackgroundColor: Flavor2ThemeColorsLight.instance.background,
    backgroundColor: Flavor2ThemeColorsLight.instance.background,
    brightness: Brightness.light,
    accentColorBrightness: Brightness.light,
    buttonColor: Flavor2ThemeColorsLight.instance.accent,
    accentColor: Flavor2ThemeColorsLight.instance.accent,
    hintColor: Flavor2ThemeColorsLight.instance.accent,
    focusColor: Flavor2ThemeColorsLight.instance.accent,
    accentTextTheme: ThemeData.light().textTheme,
    appBarTheme: ThemeData.light().appBarTheme.copyWith(
          backgroundColor: Flavor2ThemeColorsLight.instance.background.withOpacity(.7),
          elevation: 0,
          centerTitle: true,
          actionsIconTheme: IconThemeData(color: Flavor2ThemeColorsLight.instance.textColor),
          iconTheme: IconThemeData(color: Flavor2ThemeColorsLight.instance.textColor),
        ),
    textTheme: ThemeData.light().textTheme.copyWith(
      bodyText2: ThemeData.light().textTheme.bodyText2?.copyWith(
        fontSize: 16.0,
        color: Flavor2ThemeColorsLight.instance.textColor,
      ),
    ),
    //... add here any other personalization
    cupertinoOverrideTheme: cupertinoThemeLight,
  );

  static final ThemeData dark = ThemeData(
    scaffoldBackgroundColor: Flavor2ThemeColorsDark.instance.background,
    backgroundColor: Flavor2ThemeColorsDark.instance.background,
    brightness: Brightness.dark,
    appBarTheme: ThemeData.dark().appBarTheme.copyWith(
          backgroundColor: Flavor2ThemeColorsDark.instance.background.withOpacity(.7),
          elevation: 0,
          centerTitle: true,
          actionsIconTheme: IconThemeData(color: Flavor2ThemeColorsDark.instance.textColor),
          iconTheme: IconThemeData(color: Flavor2ThemeColorsDark.instance.textColor),
        ),
    textTheme: ThemeData.dark().textTheme.copyWith(
      bodyText2: ThemeData.dark().textTheme.bodyText2?.copyWith(
        fontSize: 16.0,
        color: Flavor2ThemeColorsDark.instance.textColor,
      ),
    ),
    //... add here any other personalization
    cupertinoOverrideTheme: cupertinoThemeDark,
  );
}
