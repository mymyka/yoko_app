import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension TextThemeExtension on TextTheme {
  TextStyle? get h1 => bodyLarge?.copyWith(
        fontSize: 45,
        fontFamily: 'Serif',
        fontWeight: FontWeight.w900,
      );

  TextStyle? get h2 => GoogleFonts.montserrat(
        fontSize: 36,
        fontWeight: FontWeight.w700,
      );

  TextStyle? get h3 => GoogleFonts.montserrat(
        fontSize: 29,
        fontWeight: FontWeight.w700,
      );

  TextStyle? get h4 => GoogleFonts.montserrat(
        fontSize: 24,
        fontWeight: FontWeight.w400,
      );

  TextStyle? get body => GoogleFonts.montserrat(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      );

  TextStyle? get bodyBold => body?.copyWith(
        fontWeight: FontWeight.w700,
      );

  TextStyle? get bodyLight => body?.copyWith(
        fontWeight: FontWeight.w300,
      );

  TextStyle? get bodyCaption => body?.copyWith(
        fontSize: 10,
        fontWeight: FontWeight.w400,
      );
}
