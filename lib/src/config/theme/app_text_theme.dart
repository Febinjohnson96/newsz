import 'package:flutter/material.dart';
import 'package:newsz/src/config/theme/appcolors.dart';

class AppTheme {
  static final appTheme = ThemeData(
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
      ),
      inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: athensGrey,
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: athensGrey),
              borderRadius: BorderRadius.circular(20)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: athensGrey),
              borderRadius: BorderRadius.circular(20)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: athensGrey),
              borderRadius: BorderRadius.circular(20))));
}
