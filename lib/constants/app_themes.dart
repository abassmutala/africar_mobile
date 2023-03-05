import 'package:africar/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final ThemeData africarLightTheme = _africarLightTheme();
final ThemeData africarDarkTheme = _africarDarkTheme();

ColorScheme _africarLightColorScheme() {
  return ColorScheme.fromSeed(seedColor: africarPrimary);
}

TextTheme _africarLightTextTheme(TextTheme base) {
  return base.copyWith(
    displayLarge: base.headlineLarge!.copyWith(fontFamily: 'Avenir', color: Colors.black),
    displayMedium: base.headlineMedium!.copyWith(fontFamily: 'Avenir', color: Colors.black),
    displaySmall: base.headlineSmall!.copyWith(fontFamily: 'Avenir', color: Colors.black),
    headlineLarge: base.headlineLarge!.copyWith(fontFamily: 'Avenir', color: Colors.black, fontWeight: FontWeight.bold),
    headlineMedium: base.headlineMedium!.copyWith(fontFamily: 'Avenir', color: Colors.black),
    headlineSmall: base.headlineSmall!.copyWith(fontFamily: 'Avenir', color: Colors.black),
    titleLarge: base.bodyLarge!.copyWith(fontFamily: 'Avenir', color: Colors.black, fontWeight: FontWeight.bold),
    titleMedium: base.bodyMedium!.copyWith(fontFamily: 'Avenir'),
    titleSmall: base.bodySmall!.copyWith(fontFamily: 'Avenir'),
    bodyLarge: base.bodyLarge!.copyWith(fontFamily: 'Avenir'),
    bodyMedium: base.bodyMedium!.copyWith(fontFamily: 'Avenir'),
    bodySmall: base.bodySmall!.copyWith(fontFamily: 'Avenir'),
    labelLarge: base.bodyLarge!.copyWith(fontFamily: 'Avenir'),
    labelMedium: base.bodyMedium!.copyWith(fontFamily: 'Avenir'),
    labelSmall: base.bodySmall!.copyWith(fontFamily: 'Avenir'),
  );
}

CupertinoTextThemeData _africarCupertinoLightTextTheme(
  CupertinoTextThemeData appleBase,
) {
  return appleBase.copyWith(
    navTitleTextStyle:
        appleBase.navTitleTextStyle.copyWith(fontFamily: 'Avenir'),
    navLargeTitleTextStyle:
        appleBase.navLargeTitleTextStyle.copyWith(fontFamily: 'Avenir'),
    tabLabelTextStyle:
        appleBase.tabLabelTextStyle.copyWith(fontFamily: 'Avenir'),
  );
}

CupertinoTextThemeData _africarCupertinoDarkTextTheme(
  CupertinoTextThemeData appleBase,
) {
  return appleBase.copyWith(
    navTitleTextStyle:
        appleBase.navTitleTextStyle.copyWith(fontFamily: 'Avenir'),
    navLargeTitleTextStyle:
        appleBase.navLargeTitleTextStyle.copyWith(fontFamily: 'Avenir'),
    tabLabelTextStyle:
        appleBase.tabLabelTextStyle.copyWith(fontFamily: 'Avenir'),
  );
}

ThemeData _africarLightTheme() {
  final ThemeData base = ThemeData.light();
  const CupertinoTextThemeData appleBase = CupertinoTextThemeData();
  return base.copyWith(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: _africarLightColorScheme(),
    textTheme: _africarLightTextTheme(base.textTheme),
    bottomNavigationBarTheme: base.bottomNavigationBarTheme.copyWith(
        backgroundColor: Colors.white, 
        selectedItemColor: africarPrimary,
        unselectedItemColor: Colors.grey[600]),
    cupertinoOverrideTheme: NoDefaultCupertinoThemeData(
      brightness: Brightness.light,
      textTheme: _africarCupertinoLightTextTheme(appleBase),
    ),
  );
}

ThemeData _africarDarkTheme() {
  final ThemeData base = ThemeData.light();
  const CupertinoTextThemeData appleBase = CupertinoTextThemeData();
  return base.copyWith(
    useMaterial3: true,
    brightness: Brightness.dark,
    cupertinoOverrideTheme: NoDefaultCupertinoThemeData(
      brightness: Brightness.light,
      textTheme: _africarCupertinoDarkTextTheme(appleBase),
    ),
  );
}
