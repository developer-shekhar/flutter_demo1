import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData themeData = new ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.teal,
    accentColor: Colors.teal,
    primaryColor: Colors.teal,
    primaryColorBrightness: Brightness.dark,
    accentColorBrightness: Brightness.dark,
    buttonColor: Colors.teal,
    scaffoldBackgroundColor: Colors.white70,
    buttonTheme: new ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
    ),
    highlightColor: Colors.teal,
    iconTheme: new IconThemeData(
      color: Colors.grey,
    ),
    splashColor: Colors.tealAccent,
  );
}
