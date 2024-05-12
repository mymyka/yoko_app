import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4282792383),
      surfaceTint: Color(4283714254),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4285227750),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4284242317),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4291808255),
      onSecondaryContainer: Color(4282005352),
      tertiary: Color(4287242369),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4290136489),
      onTertiaryContainer: Color(4294967295),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      background: Color(4294768895),
      onBackground: Color(4279966499),
      surface: Color(4294769137),
      onSurface: Color(4280032279),
      surfaceVariant: Color(4293255655),
      onSurfaceVariant: Color(4282926667),
      outline: Color(4286084732),
      outlineVariant: Color(4291413451),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281413931),
      inverseOnSurface: Color(4294242792),
      inversePrimary: Color(4291084543),
      primaryFixed: Color(4293124095),
      onPrimaryFixed: Color(4279369832),
      primaryFixedDim: Color(4291084543),
      onPrimaryFixedVariant: Color(4282134197),
      secondaryFixed: Color(4293124095),
      onSecondaryFixed: Color(4279768133),
      secondaryFixedDim: Color(4291150075),
      onSecondaryFixedVariant: Color(4282663283),
      tertiaryFixed: Color(4294957043),
      onTertiaryFixed: Color(4281925685),
      tertiaryFixedDim: Color(4294945774),
      onTertiaryFixedVariant: Color(4286452343),
      surfaceDim: Color(4292729554),
      surfaceBright: Color(4294769137),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294374379),
      surfaceContainer: Color(4294045413),
      surfaceContainerHigh: Color(4293650656),
      surfaceContainerHighest: Color(4293255898),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4281870514),
      surfaceTint: Color(4283714254),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4285227750),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4282400111),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4285689764),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4286122867),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4290136489),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      background: Color(4294768895),
      onBackground: Color(4279966499),
      surface: Color(4294769137),
      onSurface: Color(4280032279),
      surfaceVariant: Color(4293255655),
      onSurfaceVariant: Color(4282663495),
      outline: Color(4284505700),
      outlineVariant: Color(4286347903),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281413931),
      inverseOnSurface: Color(4294242792),
      inversePrimary: Color(4291084543),
      primaryFixed: Color(4285227750),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4283582411),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4285689764),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4284044938),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4290136489),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4288163470),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292729554),
      surfaceBright: Color(4294769137),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294374379),
      surfaceContainer: Color(4294045413),
      surfaceContainerHigh: Color(4293650656),
      surfaceContainerHighest: Color(4293255898),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4279763067),
      surfaceTint: Color(4283714254),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4281870514),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4280228684),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4282400111),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4282646592),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4286122867),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      background: Color(4294768895),
      onBackground: Color(4279966499),
      surface: Color(4294769137),
      onSurface: Color(4278190080),
      surfaceVariant: Color(4293255655),
      onSurfaceVariant: Color(4280558376),
      outline: Color(4282663495),
      outlineVariant: Color(4282663495),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281413931),
      inverseOnSurface: Color(4294967295),
      inversePrimary: Color(4293847551),
      primaryFixed: Color(4281870514),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4280287384),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4282400111),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4280886871),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4286122867),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4283826257),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292729554),
      surfaceBright: Color(4294769137),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294374379),
      surfaceContainer: Color(4294045413),
      surfaceContainerHigh: Color(4293650656),
      surfaceContainerHighest: Color(4293255898),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4291084543),
      surfaceTint: Color(4291084543),
      onPrimary: Color(4280484769),
      primaryContainer: Color(4284767198),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4291150075),
      onSecondary: Color(4281150043),
      secondaryContainer: Color(4282202731),
      onSecondaryContainer: Color(4292137215),
      tertiary: Color(4294945774),
      onTertiary: Color(4284219479),
      tertiaryContainer: Color(4289610402),
      onTertiaryContainer: Color(4294967295),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      background: Color(4279440154),
      onBackground: Color(4293255660),
      surface: Color(4279505935),
      onSurface: Color(4293255898),
      surfaceVariant: Color(4282926667),
      onSurfaceVariant: Color(4291413451),
      outline: Color(4287795349),
      outlineVariant: Color(4282926667),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293255898),
      inverseOnSurface: Color(4281413931),
      inversePrimary: Color(4283714254),
      primaryFixed: Color(4293124095),
      onPrimaryFixed: Color(4279369832),
      primaryFixedDim: Color(4291084543),
      onPrimaryFixedVariant: Color(4282134197),
      secondaryFixed: Color(4293124095),
      onSecondaryFixed: Color(4279768133),
      secondaryFixedDim: Color(4291150075),
      onSecondaryFixedVariant: Color(4282663283),
      tertiaryFixed: Color(4294957043),
      onTertiaryFixed: Color(4281925685),
      tertiaryFixedDim: Color(4294945774),
      onTertiaryFixedVariant: Color(4286452343),
      surfaceDim: Color(4279505935),
      surfaceBright: Color(4282005812),
      surfaceContainerLowest: Color(4279111178),
      surfaceContainerLow: Color(4280032279),
      surfaceContainer: Color(4280295451),
      surfaceContainerHigh: Color(4280953381),
      surfaceContainerHighest: Color(4281677104),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4291413503),
      surfaceTint: Color(4291084543),
      onPrimary: Color(4279107673),
      primaryContainer: Color(4287136255),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4291413503),
      onSecondary: Color(4279373376),
      secondaryContainer: Color(4287531970),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294947566),
      onTertiary: Color(4281335853),
      tertiaryContainer: Color(4292306632),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      background: Color(4279440154),
      onBackground: Color(4293255660),
      surface: Color(4279505935),
      onSurface: Color(4294900722),
      surfaceVariant: Color(4282926667),
      onSurfaceVariant: Color(4291676624),
      outline: Color(4289045160),
      outlineVariant: Color(4286939784),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293255898),
      inverseOnSurface: Color(4280953381),
      inversePrimary: Color(4282199991),
      primaryFixed: Color(4293124095),
      onPrimaryFixed: Color(4278845514),
      primaryFixedDim: Color(4291084543),
      onPrimaryFixedVariant: Color(4280947622),
      secondaryFixed: Color(4293124095),
      onSecondaryFixed: Color(4279044155),
      secondaryFixedDim: Color(4291150075),
      onSecondaryFixedVariant: Color(4281544801),
      tertiaryFixed: Color(4294957043),
      onTertiaryFixed: Color(4280746021),
      tertiaryFixedDim: Color(4294945774),
      onTertiaryFixedVariant: Color(4284874849),
      surfaceDim: Color(4279505935),
      surfaceBright: Color(4282005812),
      surfaceContainerLowest: Color(4279111178),
      surfaceContainerLow: Color(4280032279),
      surfaceContainer: Color(4280295451),
      surfaceContainerHigh: Color(4280953381),
      surfaceContainerHighest: Color(4281677104),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294900223),
      surfaceTint: Color(4291084543),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4291413503),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294900223),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4291413503),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294965754),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4294947566),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      background: Color(4279440154),
      onBackground: Color(4293255660),
      surface: Color(4279505935),
      onSurface: Color(4294967295),
      surfaceVariant: Color(4282926667),
      onSurfaceVariant: Color(4294900223),
      outline: Color(4291676624),
      outlineVariant: Color(4291676624),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293255898),
      inverseOnSurface: Color(4278190080),
      inversePrimary: Color(4280156305),
      primaryFixed: Color(4293453055),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4291413503),
      onPrimaryFixedVariant: Color(4279107673),
      secondaryFixed: Color(4293453055),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4291413503),
      onSecondaryFixedVariant: Color(4279373376),
      tertiaryFixed: Color(4294958580),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4294947566),
      onTertiaryFixedVariant: Color(4281335853),
      surfaceDim: Color(4279505935),
      surfaceBright: Color(4282005812),
      surfaceContainerLowest: Color(4279111178),
      surfaceContainerLow: Color(4280032279),
      surfaceContainer: Color(4280295451),
      surfaceContainerHigh: Color(4280953381),
      surfaceContainerHighest: Color(4281677104),
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
