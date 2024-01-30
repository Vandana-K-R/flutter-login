import 'package:flutter/material.dart';
import 'package:sample/src/constants/colors.dart';
import 'package:sample/src/constants/sizes.dart';

class ThisElevatedButtonTheme {
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: OutlinedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(),
        foregroundColor: whiteColor,
        backgroundColor: secondaryColor,
        padding: EdgeInsets.symmetric(vertical: buttonheight)),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: OutlinedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(),
        foregroundColor: secondaryColor,
        backgroundColor: whiteColor,
        side: BorderSide(color: secondaryColor),
        padding: EdgeInsets.symmetric(vertical: buttonheight)),
  );
}
