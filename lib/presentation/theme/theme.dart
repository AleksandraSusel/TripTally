import 'package:flutter/material.dart';

class MaterialTheme {
  const MaterialTheme(this.textTheme);

  final TextTheme textTheme;

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff835415),
      surfaceTint: Color(0xff835415),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffddba),
      onPrimaryContainer: Color(0xff2b1700),
      secondary: Color(0xff835414),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffddba),
      onSecondaryContainer: Color(0xff2b1700),
      tertiary: Color(0xff4f6629),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffd0eda0),
      onTertiaryContainer: Color(0xff121f00),
      error: Color(0xff904a43),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff3b0907),
      background: Color(0xfffff8f4),
      onBackground: Color(0xff211a14),
      surface: Color(0xfffff8f4),
      onSurface: Color(0xff211a13),
      surfaceVariant: Color(0xfff1e0d0),
      onSurfaceVariant: Color(0xff504539),
      outline: Color(0xff827568),
      outlineVariant: Color(0xffd4c4b5),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff372f27),
      inverseOnSurface: Color(0xfffdeee3),
      inversePrimary: Color(0xfffaba72),
      primaryFixed: Color(0xffffddba),
      onPrimaryFixed: Color(0xff2b1700),
      primaryFixedDim: Color(0xfffaba72),
      onPrimaryFixedVariant: Color(0xff673d00),
      secondaryFixed: Color(0xffffddba),
      onSecondaryFixed: Color(0xff2b1700),
      secondaryFixedDim: Color(0xfff9ba72),
      onSecondaryFixedVariant: Color(0xff663d00),
      tertiaryFixed: Color(0xffd0eda0),
      onTertiaryFixed: Color(0xff121f00),
      tertiaryFixedDim: Color(0xffb5d087),
      onTertiaryFixedVariant: Color(0xff384d13),
      surfaceDim: Color(0xffe5d8cc),
      surfaceBright: Color(0xfffff8f4),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1e6),
      surfaceContainer: Color(0xfffaebe0),
      surfaceContainerHigh: Color(0xfff4e6da),
      surfaceContainerHighest: Color(0xffeee0d5),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffaba72),
      surfaceTint: Color(0xfffaba72),
      onPrimary: Color(0xff482900),
      primaryContainer: Color(0xff673d00),
      onPrimaryContainer: Color(0xffffddba),
      secondary: Color(0xfff9ba72),
      onSecondary: Color(0xff482a00),
      secondaryContainer: Color(0xff663d00),
      onSecondaryContainer: Color(0xffffddba),
      tertiary: Color(0xffb5d087),
      onTertiary: Color(0xff223600),
      tertiaryContainer: Color(0xff384d13),
      onTertiaryContainer: Color(0xffd0eda0),
      error: Color(0xffffb4ab),
      onError: Color(0xff561e19),
      errorContainer: Color(0xff73332d),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff18120c),
      onBackground: Color(0xffeee0d5),
      surface: Color(0xff18120c),
      onSurface: Color(0xffeee0d5),
      surfaceVariant: Color(0xff504539),
      onSurfaceVariant: Color(0xffd4c4b5),
      outline: Color(0xff9d8e81),
      outlineVariant: Color(0xff504539),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffeee0d5),
      inverseOnSurface: Color(0xff372f27),
      inversePrimary: Color(0xff835415),
      primaryFixed: Color(0xffffddba),
      onPrimaryFixed: Color(0xff2b1700),
      primaryFixedDim: Color(0xfffaba72),
      onPrimaryFixedVariant: Color(0xff673d00),
      secondaryFixed: Color(0xffffddba),
      onSecondaryFixed: Color(0xff2b1700),
      secondaryFixedDim: Color(0xfff9ba72),
      onSecondaryFixedVariant: Color(0xff663d00),
      tertiaryFixed: Color(0xffd0eda0),
      onTertiaryFixed: Color(0xff121f00),
      tertiaryFixedDim: Color(0xffb5d087),
      onTertiaryFixedVariant: Color(0xff384d13),
      surfaceDim: Color(0xff18120c),
      surfaceBright: Color(0xff403830),
      surfaceContainerLowest: Color(0xff130d07),
      surfaceContainerLow: Color(0xff211a13),
      surfaceContainer: Color(0xff251e17),
      surfaceContainerHigh: Color(0xff302921),
      surfaceContainerHighest: Color(0xff3b332c),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
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
      surface: surface,
      onSurface: onSurface,
      surfaceContainerHighest: surfaceVariant,
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

  final Color seed;
  final Color value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;
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
