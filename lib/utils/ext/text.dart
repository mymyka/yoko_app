import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension TextThemeExtension on TextTheme {
  TextStyle? get h1 => GoogleFonts.montserrat(
        fontSize: 45,
        fontWeight: FontWeight.w500,
      );

  TextStyle? get h2 => bodyLarge?.copyWith(
        fontSize: 35,
        fontFamily: 'Serif',
        fontWeight: FontWeight.w700,
      );

  TextStyle? get h3 => bodyLarge?.copyWith(
        fontSize: 29,
        fontFamily: 'Serif',
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
