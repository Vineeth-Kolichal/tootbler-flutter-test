import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData theme = ThemeData(
    scaffoldBackgroundColor: whiteColor,
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(color: whiteColor),
      backgroundColor: primaryColor,
      titleTextStyle: textTheme.titleLarge!.copyWith(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
    cardTheme: const CardTheme(
      color: Colors.white,
    ),
    textTheme: textTheme,
    primaryColor: primaryColor,
    useMaterial3: true,
  );
  static TextTheme textTheme = const TextTheme(
      labelLarge: TextStyle(
        fontSize: 16,
        color: Colors.white,
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ));

  //Colors
  static const Color primaryColor = Color(0xFF1e4aa7);
  static const Color blackColor = Colors.black;
  static const Color whiteColor = Colors.white;
}
