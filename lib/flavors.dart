import 'package:flavorization_app_theme/theme/app_theme/app_dimens.dart';
import 'package:flavorization_app_theme/theme/app_theme/app_theme.dart';
import 'package:flavorization_app_theme/theme/app_theme/app_theme_colors.dart';
import 'package:flavorization_app_theme/theme/dimens.dart';
import 'package:flavorization_app_theme/theme/flavors_theme/flavor1/Flavor1_dimens.dart';
import 'package:flavorization_app_theme/theme/flavors_theme/flavor1/flavor1_theme.dart';
import 'package:flavorization_app_theme/theme/flavors_theme/flavor1/flavor1_theme_colors.dart';
import 'package:flavorization_app_theme/theme/flavors_theme/flavor2/Flavor2_dimens.dart';
import 'package:flavorization_app_theme/theme/flavors_theme/flavor2/flavor2_theme.dart';
import 'package:flavorization_app_theme/theme/flavors_theme/flavor2/flavor2_theme_colors.dart';
import 'package:flavorization_app_theme/theme/theme_colors.dart';
import 'package:flutter/material.dart';

enum Flavor {
  FLAVOR1,
  FLAVOR2,
}

class FlavorStyle {
  static Flavor? currentFlavor;

  static String get title =>
      {
        Flavor.FLAVOR1: 'Flavor 1',
        Flavor.FLAVOR2: 'Flavor 2',
      }[currentFlavor] ??
      'no flavor set';

  static ThemeData get themeDataLight =>
      {
        Flavor.FLAVOR1: Flavor1Theme.light,
        Flavor.FLAVOR2: Flavor2Theme.light,
      }[currentFlavor] ??
      AppTheme.light;

  static ThemeData get themeDataDark =>
      {
        Flavor.FLAVOR1: Flavor1Theme.dark,
        Flavor.FLAVOR2: Flavor2Theme.dark,
      }[currentFlavor] ??
      AppTheme.dark;

  static ThemeColors get themeColorsLight =>
      {
        Flavor.FLAVOR1: Flavor1ThemeColorsLight.instance,
        Flavor.FLAVOR2: Flavor2ThemeColorsLight.instance,
      }[currentFlavor] ??
      AppThemeColorsLight.instance;

  static ThemeColors get themeColorsDark =>
      {
        Flavor.FLAVOR1: Flavor1ThemeColorsDark.instance,
        Flavor.FLAVOR2: Flavor2ThemeColorsDark.instance,
      }[currentFlavor] ??
      AppThemeColorsDark.instance;

  static Dimens get dimens =>
      {
        Flavor.FLAVOR1: Flavor1Dimens.instance,
        Flavor.FLAVOR2: Flavor2Dimens.instance,
      }[currentFlavor] ??
          AppDimens.instance;
}
