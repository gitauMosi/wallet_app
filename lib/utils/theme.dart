import 'package:flutter/material.dart';

import 'color.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColor.cardColorLight,
    scaffoldBackgroundColor: AppColor.scaffoldBackgroundLight,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.scaffoldBackgroundLight,
      foregroundColor: AppColor.textPrimaryColorDark,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.black),
      bodyMedium: TextStyle(color: Colors.black54),
    ),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColor.cardColorDark,
    scaffoldBackgroundColor: AppColor.scaffoldBackgroundDark,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.scaffoldBackgroundDark,
      foregroundColor: AppColor.textPrimaryColorLight,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white70),
    ),
  );
}
