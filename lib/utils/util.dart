import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_icon/svg_icon.dart';

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

List<Widget> mySkillsTilesLeft = const [
  ListTile(
    leading: SvgIcon("assets/flutter.svg"),
    title: Text("Flutter"),
  ),
  ListTile(
    leading: SvgIcon("assets/nodejs.svg"),
    title: Text("NodeJS"),
  ),
  ListTile(
    leading: SvgIcon("assets/firebase.svg"),
    title: Text("Firebase"),
  ),
  ListTile(
    leading: SvgIcon("assets/mysqlnew.svg"),
    title: Text("MySql"),
  ),
  ListTile(
    leading: SvgIcon("assets/c++.svg"),
    title: Text("C++"),
  ),
];

List<Widget> mySkillsTilesRight = const [
  ListTile(
    leading: SvgIcon("assets/git.svg"),
    title: Text("Git"),
  ),
  ListTile(
    leading: SvgIcon("assets/github.svg"),
    title: Text("Github"),
  ),
  ListTile(
    leading: SvgIcon("assets/html.svg"),
    title: Text("HTML"),
  ),
  ListTile(
    leading: SvgIcon(
      "assets/css.svg",
    ),
    title: Text("CSS"),
  ),
  ListTile(),
];

const maxScreenWidth = 650;
const aboutSectionWidthBreakPoint = 855;

String instagram_clone_des = "";
