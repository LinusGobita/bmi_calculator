
import 'package:flutter/material.dart';

class MyThemes{
  static final primaryColor = Colors.blue;

  static final darkTheme = ThemeData(
    primaryColor: primaryColor,
    dividerColor: Colors.white,
  );
   static final lightTheme = ThemeData(
    primaryColor: primaryColor,
    dividerColor: Colors.black,
  );
}