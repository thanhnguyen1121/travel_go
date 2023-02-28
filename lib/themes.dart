import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData light(BuildContext context) {
  return ThemeData.light().copyWith(
    textTheme: GoogleFonts.openSansTextTheme().copyWith(
      headline1: GoogleFonts.openSansTextTheme().headline1?.copyWith(
            fontSize: 75,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
      headline2: GoogleFonts.openSansTextTheme().headline2?.copyWith(
            fontSize: 75,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
      headline3: GoogleFonts.openSansTextTheme().headline3?.copyWith(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
      headline4: GoogleFonts.openSansTextTheme().headline4?.copyWith(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
      headline5: GoogleFonts.openSansTextTheme().headline5?.copyWith(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
      headline6: GoogleFonts.openSansTextTheme().headline6?.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
      bodyText1: GoogleFonts.openSansTextTheme().bodyText1?.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
      bodyText2: GoogleFonts.openSansTextTheme().bodyText2?.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w300,
            color: Colors.black,
          ),
      subtitle1: GoogleFonts.openSansTextTheme().subtitle1?.copyWith(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
      subtitle2: GoogleFonts.openSansTextTheme().subtitle2?.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Colors.black,
          ),

      caption: GoogleFonts.openSansTextTheme().caption?.copyWith(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      overline: GoogleFonts.openSansTextTheme().overline?.copyWith(
        fontSize: 8,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        elevation: 0,
        backgroundColor: const Color(0xff00A651),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      ),
    ),
  );
}

ThemeData dark(BuildContext context) {
  return ThemeData.dark();
}
