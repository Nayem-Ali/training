import 'package:flutter/material.dart';

class GlobalTheme {
  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);
  static final Color _darkFocusColor = Colors.white.withOpacity(0.12);

  static ThemeData lightThemeData = themeData(lightColorScheme, _lightFocusColor);
  static ThemeData darkThemeData = themeData(darkColorScheme, _darkFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      // appBarTheme: AppBarTheme(
      //   color: colorScheme.primary,
        // titleTextStyle: TextStyle(
        //   color: colorScheme.secondary,
        //   fontSize: 22,
        //   fontWeight: FontWeight.w700,
        // ),
      // ),
      colorScheme: colorScheme,
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: Colors.transparent,
      focusColor: focusColor,
    );
  }

  static const ColorScheme lightColorScheme = ColorScheme(
    primary: Color(0xFF298325),
    secondary: Color(0xFFEFF3F3),
    error: Colors.redAccent,
    background: Color(0xFFE6EBEB),
    surface: Color(0xFFFAFBFB),
    onPrimary: Colors.white,
    onSecondary: Color(0xFF322942),
    onError: Colors.white,
    onBackground: Colors.white,
    onSurface: Color(0xFF241E30),
    brightness: Brightness.light,
  );
  static const ColorScheme darkColorScheme = ColorScheme(
    primary: Color(0xFF060721),
    secondary: Color(0xFF4D1F7C),
    background: Color(0xFF241E30),
    surface: Color(0xFF1F1929),
    onBackground: Color(0x0DFFFFFF),
    error: Colors.redAccent,
    onError: Colors.white,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.white,
    brightness: Brightness.dark,
  );
}
