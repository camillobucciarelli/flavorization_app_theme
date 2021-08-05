import 'package:flavorization_app_theme/theme/flavors_theme/flavor1/flavor1_theme_colors.dart';
import 'package:flavorization_app_theme/theme/flavors_theme/flavor2/flavor2_theme_colors.dart';
import 'package:flavorization_app_theme/theme/theme_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Flavor1Theme {
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
    scaffoldBackgroundColor: Flavor1ThemeColorsLight.instance.background,
    backgroundColor: Flavor1ThemeColorsLight.instance.background,
    brightness: Brightness.light,
    appBarTheme: ThemeData.light().appBarTheme.copyWith(
      backgroundColor: Flavor1ThemeColorsLight.instance.background.withOpacity(.7),
      elevation: 0,
      centerTitle: true,
      actionsIconTheme: IconThemeData(color: Flavor1ThemeColorsLight.instance.textColor),
      iconTheme: IconThemeData(color: Flavor1ThemeColorsLight.instance.textColor),
    ),
    textTheme: ThemeData.light().textTheme.copyWith(
      bodyText2: ThemeData.light().textTheme.bodyText2?.copyWith(
        fontSize: 16.0,
        color: Flavor1ThemeColorsLight.instance.textColor,
      ),
    ),
    //... add here any other personalization
    cupertinoOverrideTheme: cupertinoThemeLight,
  );

  static final ThemeData dark = ThemeData(
    scaffoldBackgroundColor: Flavor1ThemeColorsDark.instance.background,
    backgroundColor: Flavor1ThemeColorsDark.instance.background,
    brightness: Brightness.dark,
    appBarTheme: ThemeData.dark().appBarTheme.copyWith(
      backgroundColor: Flavor1ThemeColorsDark.instance.background.withOpacity(.7),
      elevation: 0,
      centerTitle: true,
      textTheme: ThemeData.dark().textTheme,
      actionsIconTheme: IconThemeData(color: Flavor1ThemeColorsDark.instance.textColor),
      iconTheme: IconThemeData(color: Flavor1ThemeColorsDark.instance.textColor),
    ),
    textTheme: ThemeData.dark().textTheme.copyWith(
      bodyText2: ThemeData.dark().textTheme.bodyText2?.copyWith(
        fontSize: 16.0,
        color: Flavor1ThemeColorsDark.instance.textColor,
      ),
    ),
    //... add here any other personalization
    cupertinoOverrideTheme: cupertinoThemeDark,
  );
}
