import 'package:flutter/material.dart';
import 'package:flutter_application/utils/custom_theme.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData light(BuildContext context) {
  return ThemeData.light().copyWith(
    extensions: <ThemeExtension<dynamic>>[CustomTheme()],
    textTheme: GoogleFonts.playfairDisplayTextTheme().copyWith(
      displayLarge:
          GoogleFonts.playfairDisplayTextTheme().displayLarge?.copyWith(
                fontSize: 75,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
      displayMedium:
          GoogleFonts.playfairDisplayTextTheme().displayMedium?.copyWith(
                fontSize: 75,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
      displaySmall:
          GoogleFonts.playfairDisplayTextTheme().displaySmall?.copyWith(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
      headlineMedium:
          GoogleFonts.playfairDisplayTextTheme().headlineMedium?.copyWith(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
      headlineSmall:
          GoogleFonts.playfairDisplayTextTheme().headlineSmall?.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
      titleLarge: GoogleFonts.playfairDisplayTextTheme().titleLarge?.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
      bodyLarge: GoogleFonts.playfairDisplayTextTheme().bodyLarge?.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
      bodyMedium: GoogleFonts.playfairDisplayTextTheme().bodyMedium?.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w300,
            color: Colors.black,
          ),
      titleMedium: GoogleFonts.playfairDisplayTextTheme().titleMedium?.copyWith(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
      titleSmall: GoogleFonts.playfairDisplayTextTheme().titleSmall?.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Colors.black,
          ),
      bodySmall: GoogleFonts.playfairDisplayTextTheme().bodySmall?.copyWith(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
      labelSmall: GoogleFonts.playfairDisplayTextTheme().labelSmall?.copyWith(
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
