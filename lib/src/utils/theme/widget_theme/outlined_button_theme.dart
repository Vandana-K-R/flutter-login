import 'package:flutter/material.dart';
import 'package:sample/src/constants/colors.dart';
import 'package:sample/src/constants/sizes.dart';

class ThisOutlinedButtonTheme {
  static final lightOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(),
        foregroundColor: secondaryColor,
        side: BorderSide(color: secondaryColor),
        padding: EdgeInsets.symmetric(vertical: buttonheight)),
  );

  static final darkOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(),
        foregroundColor: whiteColor,
        side: BorderSide(color: whiteColor),
        padding: EdgeInsets.symmetric(vertical: buttonheight)),
  );
}
