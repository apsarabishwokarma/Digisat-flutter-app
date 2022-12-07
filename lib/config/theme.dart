import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

final defaultTheme = ThemeData(
  // primaryColor: primaryColor,
  colorSchemeSeed: primaryColor,
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  fontFamily: GoogleFonts.merriweather().fontFamily,
  appBarTheme: AppBarTheme(
    centerTitle: true,
    iconTheme: const IconThemeData(
      color: Colors.black,
      size: 33,
    ),
    titleTextStyle: GoogleFonts.merriweather(
      fontWeight: FontWeight.w400,
      fontSize: 27,
      color: Colors.black,
    ),
    elevation: 0, // remove shadow below,
    backgroundColor: Colors.white,
    actionsIconTheme: const IconThemeData(
      color: Colors.black,
      size: 33,
    ),
  ),
  textTheme: TextTheme(
    headline1: GoogleFonts.merriweather(
      fontSize: 36,
      height: 45.25 / 36,
      fontWeight: FontWeight.w700,
    ),
    headline2: GoogleFonts.merriweather(
      fontSize: 24,
      height: 30 / 24,
      fontWeight: FontWeight.w900,
    ),
    bodyText1: GoogleFonts.sourceSansPro(
      fontSize: 18,
      height: 25.61 / 18,
    ),
    bodyText2: GoogleFonts.sourceSansPro(
      fontSize: 16,
      height: 25.6 / 16,
    ),
  ),
);
