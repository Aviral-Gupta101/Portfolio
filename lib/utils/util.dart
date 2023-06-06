import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var colorScheme = ColorScheme.fromSeed(
    seedColor: const Color(0xFF1F1F1F), brightness: Brightness.dark);
var primaryColor = Colors.blue.shade500;

TextStyle navbarTextStyle(Color color, FontWeight fontWeight, double fontSize) {
  TextStyle navbarStyle = GoogleFonts.roboto().copyWith(
    color: color,
    fontWeight: fontWeight,
    fontSize: fontSize,
  );
  return navbarStyle;
}

TextStyle titleTextStyle(Color color, FontWeight fontWeight, double fontSize) {
  TextStyle navbarStyle = GoogleFonts.archivo().copyWith(
    color: color,
    fontWeight: fontWeight,
    fontSize: fontSize,
  );
  return navbarStyle;
}
