import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_theme_colors.dart';

class AppTheme {
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
    scaffoldBackgroundColor: AppThemeColorsLight.instance.background,
    backgroundColor: AppThemeColorsLight.instance.background,
    brightness: Brightness.light,
    appBarTheme: ThemeData.light().appBarTheme.copyWith(
      backgroundColor: AppThemeColorsLight.instance.background.withOpacity(.7),
      elevation: 0,
      centerTitle: true,
      actionsIconTheme: IconThemeData(color: AppThemeColorsLight.instance.textColor),
      iconTheme: IconThemeData(color: AppThemeColorsLight.instance.textColor),
    ),
    //... add here any other personalization
    cupertinoOverrideTheme: cupertinoThemeLight,
  );

  static final ThemeData dark = ThemeData(
    scaffoldBackgroundColor: AppThemeColorsDark.instance.background,
    backgroundColor: AppThemeColorsDark.instance.background,
    brightness: Brightness.dark,
    appBarTheme: ThemeData.light().appBarTheme.copyWith(
      backgroundColor: AppThemeColorsDark.instance.background.withOpacity(.7),
      elevation: 0,
      centerTitle: true,
      actionsIconTheme: IconThemeData(color: AppThemeColorsDark.instance.textColor),
      iconTheme: IconThemeData(color: AppThemeColorsDark.instance.textColor),
    ),
    //... add here any other personalization
    cupertinoOverrideTheme: cupertinoThemeDark,
  );
}
