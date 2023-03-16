import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData light(BuildContext context) {
  return ThemeData.light().copyWith(
    textTheme: GoogleFonts.openSansTextTheme().copyWith(
      displayLarge: GoogleFonts.openSansTextTheme().displayLarge?.copyWith(
            fontSize: 75,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
      displayMedium: GoogleFonts.openSansTextTheme().displayMedium?.copyWith(
            fontSize: 75,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
      displaySmall: GoogleFonts.openSansTextTheme().displaySmall?.copyWith(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
      headlineMedium: GoogleFonts.openSansTextTheme().headlineMedium?.copyWith(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
      headlineSmall: GoogleFonts.openSansTextTheme().headlineSmall?.copyWith(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
      titleLarge: GoogleFonts.openSansTextTheme().titleLarge?.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
      bodyLarge: GoogleFonts.openSansTextTheme().bodyLarge?.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
      bodyMedium: GoogleFonts.openSansTextTheme().bodyMedium?.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w300,
            color: Colors.black,
          ),
      titleMedium: GoogleFonts.openSansTextTheme().titleMedium?.copyWith(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
      titleSmall: GoogleFonts.openSansTextTheme().titleSmall?.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Colors.black,
          ),
      bodySmall: GoogleFonts.openSansTextTheme().bodySmall?.copyWith(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
      labelSmall: GoogleFonts.openSansTextTheme().labelSmall?.copyWith(
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
