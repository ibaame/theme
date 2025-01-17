import 'package:flutter/material.dart';

enum AppTheme {
  blueLight("Blue Light"),
  blueDark("Blue Dark"),
  redDark("Red Dark");

  const AppTheme(this.name);
  final String name;
}

final appThemeData = {
  AppTheme.blueLight.name: ThemeData(
    appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
    brightness: Brightness.light,
    primaryColor: Colors.blue,
  ),
  AppTheme.blueDark.name: ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: Colors.blue[700]),
    brightness: Brightness.dark,
    primaryColor: Colors.blue[700],
  ),
  AppTheme.redDark.name: ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: Colors.red[700]),
    brightness: Brightness.dark,
    primaryColor: Colors.red[700],
  ),
};
