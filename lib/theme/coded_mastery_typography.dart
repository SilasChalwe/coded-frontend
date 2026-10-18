import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Poppins type scale used throughout Coded Mastery.
class CodedMasteryTypography {
  const CodedMasteryTypography();

  TextStyle get displayLarge => GoogleFonts.poppins(
    fontSize: 48,
    height: 1.1,
    fontWeight: FontWeight.w800,
    letterSpacing: -1.2,
  );

  TextStyle get headlineLarge => GoogleFonts.poppins(
    fontSize: 32,
    height: 1.2,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.5,
  );

  TextStyle get headlineMedium => GoogleFonts.poppins(
    fontSize: 28,
    height: 1.25,
    fontWeight: FontWeight.w600,
  );

  TextStyle get titleLarge => GoogleFonts.poppins(
    fontSize: 22,
    height: 1.3,
    fontWeight: FontWeight.w600,
  );

  TextStyle get titleMedium => GoogleFonts.poppins(
    fontSize: 16,
    height: 1.4,
    fontWeight: FontWeight.w500,
  );

  TextStyle get bodyLarge => GoogleFonts.poppins(
    fontSize: 16,
    height: 1.5,
    fontWeight: FontWeight.w400,
  );

  TextStyle get bodyMedium => GoogleFonts.poppins(
    fontSize: 14,
    height: 1.5,
    fontWeight: FontWeight.w400,
  );

  TextStyle get bodySmall => GoogleFonts.poppins(
    fontSize: 12,
    height: 1.5,
    fontWeight: FontWeight.w300,
  );

  TextStyle get labelLarge => GoogleFonts.poppins(
    fontSize: 14,
    height: 1.25,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.2,
  );

  TextTheme get textTheme => TextTheme(
    displayLarge: displayLarge,
    headlineLarge: headlineLarge,
    headlineMedium: headlineMedium,
    titleLarge: titleLarge,
    titleMedium: titleMedium,
    bodyLarge: bodyLarge,
    bodyMedium: bodyMedium,
    bodySmall: bodySmall,
    labelLarge: labelLarge,
  );
}
