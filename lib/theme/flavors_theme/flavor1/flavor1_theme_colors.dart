import 'package:flutter/material.dart';

import '../../theme_colors.dart';

class Flavor1ThemeColorsLight extends ThemeColors {
  static const _instance = Flavor1ThemeColorsLight._internal();

  static Flavor1ThemeColorsLight get instance => _instance;

  const Flavor1ThemeColorsLight._internal();

  @override
  Color get background => const Color(0xFFFFFFFF);

  @override
  Color get textColor => const Color(0xFF232323);

  @override
  Color get textColorLight => const Color(0xFF373737);

  @override
  Color get textColorLighter => const Color(0xFF565656);

  @override
  Color get primary => const Color(0xFF8a73ed);

  @override
  Color get primaryLight => const Color(0xFFece8fc);

  @override
  Color get primaryLighter => const Color(0xFFf4f1fd);

  @override
  Color get accent => const Color(0xFF8a73ed);

  @override
  Color get accentLight => const Color(0xFFfce6d4);

  @override
  Color get accentLighter => const Color(0xFFfef9f5);
}

class Flavor1ThemeColorsDark extends ThemeColors {
  static const _instance = Flavor1ThemeColorsDark._internal();

  static Flavor1ThemeColorsDark get instance => _instance;

  const Flavor1ThemeColorsDark._internal();

  @override
  Color get background => const Color(0xFF8a73ed);

  @override
  Color get textColor => const Color(0xFFFFFFFF);

  @override
  Color get textColorLight => const Color(0xB3FFFFFF);

  @override
  Color get textColorLighter => const Color(0x80FFFFFF);

  @override
  Color get primary => const Color(0xFF457b9d);

  @override
  Color get primaryLight => const Color(0xFFa8dadc);

  @override
  Color get primaryLighter => const Color(0xFFf1faee);

  @override
  Color get accent => const Color(0xFFf4a299);

  @override
  Color get accentLight => const Color(0xFFe9c46a);

  @override
  Color get accentLighter => const Color(0xFFf4e1b4);
}
