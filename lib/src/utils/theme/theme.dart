import 'package:flutter/material.dart';
import 'package:sample/src/utils/theme/widget_theme/elevated_button_theme.dart';
import 'package:sample/src/utils/theme/widget_theme/outlined_button_theme.dart';
import 'package:sample/src/utils/theme/widget_theme/text_field_theme.dart';
import 'package:sample/src/utils/theme/widget_theme/text_theme.dart';

class ThisAppTheme {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: ThisTextTheme.lightTextTheme,
      outlinedButtonTheme: ThisOutlinedButtonTheme.lightOutlineButtonTheme,
      elevatedButtonTheme: ThisElevatedButtonTheme.lightElevatedButtonTheme,
      inputDecorationTheme: ThisTextFormFieldTheme.lightInputDecorationTheme,
      textButtonTheme: TextButtonThemeData()
      );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
      textTheme: ThisTextTheme.darkTextTheme,
      outlinedButtonTheme: ThisOutlinedButtonTheme.darkOutlineButtonTheme,
      elevatedButtonTheme: ThisElevatedButtonTheme.darkElevatedButtonTheme,
      inputDecorationTheme: ThisTextFormFieldTheme.darkInputDecorationTheme,
  );
}
