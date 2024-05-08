import 'package:flutter/material.dart';

extension TextThemeExtension on TextTheme {
  TextStyle? get h1 => bodyLarge?.copyWith(
        fontSize: 42,
        fontWeight: FontWeight.w700,
      );

  TextStyle? get h2 => bodyLarge?.copyWith(
        fontSize: 35,
        fontWeight: FontWeight.w700,
      );

  TextStyle? get h3 => bodyLarge?.copyWith(
        fontSize: 29,
        fontWeight: FontWeight.w700,
      );

  TextStyle? get h4 => bodyLarge?.copyWith(
        fontSize: 24,
        fontWeight: FontWeight.w700,
      );

  TextStyle? get body => bodyLarge?.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );

  TextStyle? get bodyBold => body?.copyWith(
        fontWeight: FontWeight.w700,
      );

  TextStyle? get bodyLight => body?.copyWith(
        fontWeight: FontWeight.w300,
      );

  TextStyle? get bodyCaption => bodyLarge?.copyWith(
        fontSize: 10,
        fontWeight: FontWeight.w400,
      );
}
