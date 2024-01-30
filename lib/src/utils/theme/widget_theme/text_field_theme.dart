import 'package:flutter/material.dart';
import 'package:sample/src/constants/colors.dart';

class ThisTextFormFieldTheme {
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: secondaryColor,
    floatingLabelStyle: TextStyle(color: secondaryColor),
    labelStyle: TextStyle(color: secondaryColor),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: secondaryColor, width: 2.0)),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: primaryColor,
    floatingLabelStyle: TextStyle(color: whiteColor),
    labelStyle: TextStyle(color: whiteColor),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: whiteColor, width: 2.0)),
  );
}
