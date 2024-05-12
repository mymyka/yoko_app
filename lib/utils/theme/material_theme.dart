import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff4639bf),
      surfaceTint: Color(0xff544ace),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff6b62e6),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff5c598d),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffcfcbff),
      onSecondaryContainer: Color(0xff3a3768),
      tertiary: Color(0xff8a2081),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffb649a9),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfffcf8ff),
      onBackground: Color(0xff1b1b23),
      surface: Color(0xfffcf9f1),
      onSurface: Color(0xff1c1c17),
      surfaceVariant: Color(0xffe5e1e7),
      onSurfaceVariant: Color(0xff48464b),
      outline: Color(0xff78767c),
      outlineVariant: Color(0xffc9c5cb),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff31312b),
      inverseOnSurface: Color(0xfff4f1e8),
      inversePrimary: Color(0xffc4c0ff),
      primaryFixed: Color(0xffe3dfff),
      onPrimaryFixed: Color(0xff120068),
      primaryFixedDim: Color(0xffc4c0ff),
      onPrimaryFixedVariant: Color(0xff3c2eb5),
      secondaryFixed: Color(0xffe3dfff),
      onSecondaryFixed: Color(0xff181445),
      secondaryFixedDim: Color(0xffc5c0fb),
      onSecondaryFixedVariant: Color(0xff444173),
      tertiaryFixed: Color(0xffffd7f3),
      onTertiaryFixed: Color(0xff390035),
      tertiaryFixedDim: Color(0xffffabee),
      onTertiaryFixedVariant: Color(0xff7e1277),
      surfaceDim: Color(0xffdddad2),
      surfaceBright: Color(0xfffcf9f1),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff6f3eb),
      surfaceContainer: Color(0xfff1eee5),
      surfaceContainerHigh: Color(0xffebe8e0),
      surfaceContainerHighest: Color(0xffe5e2da),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff3828b2),
      surfaceTint: Color(0xff544ace),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff6b62e6),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff403d6f),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff726fa4),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff790b73),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffb649a9),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfffcf8ff),
      onBackground: Color(0xff1b1b23),
      surface: Color(0xfffcf9f1),
      onSurface: Color(0xff1c1c17),
      surfaceVariant: Color(0xffe5e1e7),
      onSurfaceVariant: Color(0xff444247),
      outline: Color(0xff605e64),
      outlineVariant: Color(0xff7c7a7f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff31312b),
      inverseOnSurface: Color(0xfff4f1e8),
      inversePrimary: Color(0xffc4c0ff),
      primaryFixed: Color(0xff6b62e6),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff5247cb),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff726fa4),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff59568a),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xffb649a9),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff982e8e),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdddad2),
      surfaceBright: Color(0xfffcf9f1),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff6f3eb),
      surfaceContainer: Color(0xfff1eee5),
      surfaceContainerHigh: Color(0xffebe8e0),
      surfaceContainerHighest: Color(0xffe5e2da),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff18007b),
      surfaceTint: Color(0xff544ace),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff3828b2),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff1f1b4c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff403d6f),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff440040),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff790b73),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfffcf8ff),
      onBackground: Color(0xff1b1b23),
      surface: Color(0xfffcf9f1),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xffe5e1e7),
      onSurfaceVariant: Color(0xff242328),
      outline: Color(0xff444247),
      outlineVariant: Color(0xff444247),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff31312b),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xffeee9ff),
      primaryFixed: Color(0xff3828b2),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff200098),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff403d6f),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff292657),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff790b73),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff560051),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdddad2),
      surfaceBright: Color(0xfffcf9f1),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff6f3eb),
      surfaceContainer: Color(0xfff1eee5),
      surfaceContainerHigh: Color(0xffebe8e0),
      surfaceContainerHighest: Color(0xffe5e2da),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffc4c0ff),
      surfaceTint: Color(0xffc4c0ff),
      onPrimary: Color(0xff2303a1),
      primaryContainer: Color(0xff645bde),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xffc5c0fb),
      onSecondary: Color(0xff2d2a5b),
      secondaryContainer: Color(0xff3d3a6b),
      onSecondaryContainer: Color(0xffd4d0ff),
      tertiary: Color(0xffffabee),
      onTertiary: Color(0xff5c0057),
      tertiaryContainer: Color(0xffae42a2),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff13131a),
      onBackground: Color(0xffe5e1ec),
      surface: Color(0xff14140f),
      onSurface: Color(0xffe5e2da),
      surfaceVariant: Color(0xff48464b),
      onSurfaceVariant: Color(0xffc9c5cb),
      outline: Color(0xff929095),
      outlineVariant: Color(0xff48464b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e2da),
      inverseOnSurface: Color(0xff31312b),
      inversePrimary: Color(0xff544ace),
      primaryFixed: Color(0xffe3dfff),
      onPrimaryFixed: Color(0xff120068),
      primaryFixedDim: Color(0xffc4c0ff),
      onPrimaryFixedVariant: Color(0xff3c2eb5),
      secondaryFixed: Color(0xffe3dfff),
      onSecondaryFixed: Color(0xff181445),
      secondaryFixedDim: Color(0xffc5c0fb),
      onSecondaryFixedVariant: Color(0xff444173),
      tertiaryFixed: Color(0xffffd7f3),
      onTertiaryFixed: Color(0xff390035),
      tertiaryFixedDim: Color(0xffffabee),
      onTertiaryFixedVariant: Color(0xff7e1277),
      surfaceDim: Color(0xff14140f),
      surfaceBright: Color(0xff3a3934),
      surfaceContainerLowest: Color(0xff0e0e0a),
      surfaceContainerLow: Color(0xff1c1c17),
      surfaceContainer: Color(0xff20201b),
      surfaceContainerHigh: Color(0xff2a2a25),
      surfaceContainerHighest: Color(0xff353530),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffc9c5ff),
      surfaceTint: Color(0xffc4c0ff),
      onPrimary: Color(0xff0e0059),
      primaryContainer: Color(0xff8881ff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffc9c5ff),
      onSecondary: Color(0xff120e40),
      secondaryContainer: Color(0xff8e8bc2),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffb2ee),
      onTertiary: Color(0xff30002d),
      tertiaryContainer: Color(0xffd766c8),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff13131a),
      onBackground: Color(0xffe5e1ec),
      surface: Color(0xff14140f),
      onSurface: Color(0xfffefbf2),
      surfaceVariant: Color(0xff48464b),
      onSurfaceVariant: Color(0xffcdc9d0),
      outline: Color(0xffa5a2a8),
      outlineVariant: Color(0xff858288),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e2da),
      inverseOnSurface: Color(0xff2a2a25),
      inversePrimary: Color(0xff3d2fb7),
      primaryFixed: Color(0xffe3dfff),
      onPrimaryFixed: Color(0xff0a004a),
      primaryFixedDim: Color(0xffc4c0ff),
      onPrimaryFixedVariant: Color(0xff2a13a6),
      secondaryFixed: Color(0xffe3dfff),
      onSecondaryFixed: Color(0xff0d083b),
      secondaryFixedDim: Color(0xffc5c0fb),
      onSecondaryFixedVariant: Color(0xff333061),
      tertiaryFixed: Color(0xffffd7f3),
      onTertiaryFixed: Color(0xff270025),
      tertiaryFixedDim: Color(0xffffabee),
      onTertiaryFixedVariant: Color(0xff660061),
      surfaceDim: Color(0xff14140f),
      surfaceBright: Color(0xff3a3934),
      surfaceContainerLowest: Color(0xff0e0e0a),
      surfaceContainerLow: Color(0xff1c1c17),
      surfaceContainer: Color(0xff20201b),
      surfaceContainerHigh: Color(0xff2a2a25),
      surfaceContainerHighest: Color(0xff353530),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffef9ff),
      surfaceTint: Color(0xffc4c0ff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffc9c5ff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffef9ff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffc9c5ff),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9fa),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffffb2ee),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff13131a),
      onBackground: Color(0xffe5e1ec),
      surface: Color(0xff14140f),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff48464b),
      onSurfaceVariant: Color(0xfffef9ff),
      outline: Color(0xffcdc9d0),
      outlineVariant: Color(0xffcdc9d0),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e2da),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff1e0091),
      primaryFixed: Color(0xffe8e4ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffc9c5ff),
      onPrimaryFixedVariant: Color(0xff0e0059),
      secondaryFixed: Color(0xffe8e4ff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffc9c5ff),
      onSecondaryFixedVariant: Color(0xff120e40),
      tertiaryFixed: Color(0xffffddf4),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffffb2ee),
      onTertiaryFixedVariant: Color(0xff30002d),
      surfaceDim: Color(0xff14140f),
      surfaceBright: Color(0xff3a3934),
      surfaceContainerLowest: Color(0xff0e0e0a),
      surfaceContainerLow: Color(0xff1c1c17),
      surfaceContainer: Color(0xff20201b),
      surfaceContainerHigh: Color(0xff2a2a25),
      surfaceContainerHighest: Color(0xff353530),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
