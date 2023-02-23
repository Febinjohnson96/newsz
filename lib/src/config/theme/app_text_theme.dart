import 'package:flutter/material.dart';

class AppTextTheme {
  static final textTheme = ThemeData(
      fontFamily: 'montserrat',
      textTheme: const TextTheme(
        headline1: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 26,
        ),
        headline2: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 26,
        ),
        headline3: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 24,
        ),
        headline4: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 22,
        ),
        headline5: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
        headline6: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
        bodyText1: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 17,
        ),
        bodyText2: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 14,
        ),
        subtitle2: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
        button: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 24,
        ),
      ));
}
