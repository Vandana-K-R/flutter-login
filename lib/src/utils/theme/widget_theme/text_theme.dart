import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThisTextTheme {
  static TextTheme lightTextTheme = TextTheme(
      headlineMedium: GoogleFonts.montserrat(color: Colors.black87),
      titleMedium: GoogleFonts.montserrat(color: Colors.black54, fontSize: 24));
  static TextTheme darkTextTheme = TextTheme(
      headlineMedium: GoogleFonts.montserrat(color: Colors.white70),
      titleMedium: GoogleFonts.montserrat(color: Colors.white54, fontSize: 24));
}
