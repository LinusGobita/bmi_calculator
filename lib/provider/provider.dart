
import 'package:flutter/material.dart';

class MyThemes{
  static final primary = Colors.blue;
  static final primaryColor = Colors.blue;

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColor: primaryColor,
    colorScheme: ColorScheme.dark(primary: primary),
    dividerColor: Colors.white,
  );
  static final lightTheme = ThemeData(
    primaryColor: primaryColor,
    colorScheme: ColorScheme.light(primary: primary),
    dividerColor: Colors.black,
  );
}