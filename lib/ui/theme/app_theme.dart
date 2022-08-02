
import 'package:flutter/material.dart';
import 'package:new_test/ui/theme/palette.dart';

final ThemeData appTheme = ThemeData(
  fontFamily: "Poppins",
  primaryColor: Palette.primaryColor,
  accentColor: Palette.accentColor,
  textTheme: const TextTheme(
    headline1: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
    headline2: TextStyle(fontSize: 30.0, fontWeight: FontWeight.normal),
    headline3: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
    headline4: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
    headline5: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
    subtitle1: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
    subtitle2: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
  ),
);
