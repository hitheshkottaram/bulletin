import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF2196F3),
      surfaceTint: Color(0xFF2196F3),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFFB3E5FC),
      onPrimaryContainer: Color(0xFF0D47A1),
      secondary: Color(0xFF607D8B),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFF90A4AE),
      onSecondaryContainer: Color(0xFF263238),
      tertiary: Color(0xFF8BC34A),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFF4CAF50),
      onTertiaryContainer: Color(0xFF388E3C),
      error: Color(0xFFF44336),
      onError: Color(0xFFFFFFFF),
      errorContainer: Color(0xFFEF5350),
      onErrorContainer: Color(0xFFD32F2F),
      surface: Color(0xFFFAFAFA),
      onSurface: Color(0xFF212121),
      onSurfaceVariant: Color(0xFFBDBDBD),
      outline: Color(0xFF9E9E9E),
      outlineVariant: Color(0xFFBDBDBD),
      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),
      inverseSurface: Color(0xFF212121),
      inversePrimary: Color(0xFF64B5F6),
      primaryFixed: Color(0xFFB3E5FC),
      onPrimaryFixed: Color(0xFF000000),
      primaryFixedDim: Color(0xFF64B5F6),
      onPrimaryFixedVariant: Color(0xFF0D47A1),
      secondaryFixed: Color(0xFF90A4AE),
      onSecondaryFixed: Color(0xFF263238),
      secondaryFixedDim: Color(0xFF607D8B),
      onSecondaryFixedVariant: Color(0xFF263238),
      tertiaryFixed: Color(0xFF4CAF50),
      onTertiaryFixed: Color(0xFFFFFFFF),
      tertiaryFixedDim: Color(0xFF388E3C),
      onTertiaryFixedVariant: Color(0xFF388E3C),
      surfaceDim: Color(0xFFEEEEEE),
      surfaceBright: Color(0xFFFAFAFA),
      surfaceContainerLowest: Color(0xFFFFFFFF),
      surfaceContainerLow: Color(0xFFF5F5F5),
      surfaceContainer: Color(0xFFF0F0F0),
      surfaceContainerHigh: Color(0xFFE0E0E0),
      surfaceContainerHighest: Color(0xFFD0D0D0),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF1976D2),
      surfaceTint: Color(0xFF2196F3),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFF64B5F6),
      onPrimaryContainer: Color(0xFFFFFFFF),
      secondary: Color(0xFF757575),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFB0BEC5),
      onSecondaryContainer: Color(0xFF263238),
      tertiary: Color(0xFF8BC34A),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFF4CAF50),
      onTertiaryContainer: Color(0xFF388E3C),
      error: Color(0xFFF44336),
      onError: Color(0xFFFFFFFF),
      errorContainer: Color(0xFFEF5350),
      onErrorContainer: Color(0xFFD32F2F),
      surface: Color(0xFFF5F5F5),
      onSurface: Color(0xFF212121),
      onSurfaceVariant: Color(0xFFBDBDBD),
      outline: Color(0xFF9E9E9E),
      outlineVariant: Color(0xFFBDBDBD),
      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),
      inverseSurface: Color(0xFF212121),
      inversePrimary: Color(0xFF64B5F6),
      primaryFixed: Color(0xFF64B5F6),
      onPrimaryFixed: Color(0xFFFFFFFF),
      primaryFixedDim: Color(0xFF64B5F6),
      onPrimaryFixedVariant: Color(0xFF0D47A1),
      secondaryFixed: Color(0xFFB0BEC5),
      onSecondaryFixed: Color(0xFF263238),
      secondaryFixedDim: Color(0xFF757575),
      onSecondaryFixedVariant: Color(0xFF263238),
      tertiaryFixed: Color(0xFF4CAF50),
      onTertiaryFixed: Color(0xFFFFFFFF),
      tertiaryFixedDim: Color(0xFF388E3C),
      onTertiaryFixedVariant: Color(0xFF388E3C),
      surfaceDim: Color(0xFFEEEEEE),
      surfaceBright: Color(0xFFF5F5F5),
      surfaceContainerLowest: Color(0xFFFFFFFF),
      surfaceContainerLow: Color(0xFFF5F5F5),
      surfaceContainer: Color(0xFFF0F0F0),
      surfaceContainerHigh: Color(0xFFE0E0E0),
      surfaceContainerHighest: Color(0xFFD0D0D0),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF1976D2), // Updated to full hex
      surfaceTint: Color(0xFF2196F3),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFF64B5F6),
      onPrimaryContainer: Color(0xFFFFFFFF),
      secondary: Color(0xFF757575),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFB0BEC5),
      onSecondaryContainer: Color(0xFF263238),
      tertiary: Color(0xFF8BC34A),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFF4CAF50),
      onTertiaryContainer: Color(0xFF388E3C),
      error: Color(0xFFF44336),
      onError: Color(0xFFFFFFFF),
      errorContainer: Color(0xFFEF5350),
      onErrorContainer: Color(0xFFD32F2F),
      surface: Color(0xFFF5F5F5),
      onSurface: Color(0xFF212121),
      onSurfaceVariant: Color(0xFFBDBDBD),
      outline: Color(0xFF9E9E9E),
      outlineVariant: Color(0xFFBDBDBD),
      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),
      inverseSurface: Color(0xFF212121),
      inversePrimary: Color(0xFF64B5F6),
      primaryFixed: Color(0xFF64B5F6),
      onPrimaryFixed: Color(0xFFFFFFFF),
      primaryFixedDim: Color(0xFF64B5F6),
      onPrimaryFixedVariant: Color(0xFF0D47A1),
      secondaryFixed: Color(0xFFB0BEC5),
      onSecondaryFixed: Color(0xFF263238),
      secondaryFixedDim: Color(0xFF757575),
      onSecondaryFixedVariant: Color(0xFF263238),
      tertiaryFixed: Color(0xFF4CAF50),
      onTertiaryFixed: Color(0xFFFFFFFF),
      tertiaryFixedDim: Color(0xFF388E3C),
      onTertiaryFixedVariant: Color(0xFF388E3C),
      surfaceDim: Color(0xFFEEEEEE),
      surfaceBright: Color(0xFFF5F5F5),
      surfaceContainerLowest: Color(0xFFFFFFFF),
      surfaceContainerLow: Color(0xFFF5F5F5),
      surfaceContainer: Color(0xFFF0F0F0),
      surfaceContainerHigh: Color(0xFFE0E0E0),
      surfaceContainerHighest: Color(0xFFD0D0D0),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFF2196F3),
      surfaceTint: Color(0xFF2196F3),
      onPrimary: Color(0xFF9E9E9E),
      primaryContainer: Color(0xFF64B5F6),
      onPrimaryContainer: Color(0xFF64B5F6),
      secondary: Color(0xFF607D8B),
      onSecondary: Color(0xFF263238),
      secondaryContainer: Color(0xFF90A4AE),
      onSecondaryContainer: Color(0xFF263238),
      tertiary: Color(0xFF388E3C),
      onTertiary: Color(0xFF000000),
      tertiaryContainer: Color(0xFF4CAF50),
      onTertiaryContainer: Color(0xFF388E3C),
      error: Color(0xFFF44336),
      onError: Color(0xFF000000),
      errorContainer: Color(0xFFEF5350),
      onErrorContainer: Color(0xFFBF360C),
      surface: Color(0xFF212121),
      onSurface: Color(0xFF616161),
      onSurfaceVariant: Color(0xFFBDBDBD),
      outline: Color(0xFF757575),
      outlineVariant: Color(0xFFBDBDBD),
      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),
      inverseSurface: Color(0xFF616161),
      inversePrimary: Color(0xFF64B5F6),
      primaryFixed: Color(0xFF64B5F6),
      onPrimaryFixed: Color(0xFF000000),
      primaryFixedDim: Color(0xFF2196F3),
      onPrimaryFixedVariant: Color(0xFF64B5F6),
      secondaryFixed: Color(0xFF90A4AE),
      onSecondaryFixed: Color(0xFF263238),
      secondaryFixedDim: Color(0xFF607D8B),
      onSecondaryFixedVariant: Color(0xFF263238),
      tertiaryFixed: Color(0xFF4CAF50),
      onTertiaryFixed: Color(0xFF000000),
      tertiaryFixedDim: Color(0xFF388E3C),
      onTertiaryFixedVariant: Color(0xFF388E3C),
      surfaceDim: Color(0xFF424242),
      surfaceBright: Color(0xFF607D8B),
      surfaceContainerLowest: Color(0xFF607D8B),
      surfaceContainerLow: Color(0xFF607D8B),
      surfaceContainer: Color(0xFF616161),
      surfaceContainerHigh: Color(0xFF757575),
      surfaceContainerHighest: Color(0xFF9E9E9E),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFF1976D2),
      surfaceTint: Color(0xFF2196F3),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFF64B5F6),
      onPrimaryContainer: Color(0xFF000000),
      secondary: Color(0xFF607D8B),
      onSecondary: Color(0xFF000000),
      secondaryContainer: Color(0xFF90A4AE),
      onSecondaryContainer: Color(0xFF757575),
      tertiary: Color(0xFF8BC34A),
      onTertiary: Color(0xFF000000),
      tertiaryContainer: Color(0xFF4CAF50),
      onTertiaryContainer: Color(0xFF000000),
      error: Color(0xFFF44336),
      onError: Color(0xFF000000),
      errorContainer: Color(0xFFEF5350),
      onErrorContainer: Color(0xFF000000),
      surface: Color(0xFF000000),
      onSurface: Color(0xFFFFFFFF),
      onSurfaceVariant: Color(0xFFBDBDBD),
      outline: Color(0xFF9E9E9E),
      outlineVariant: Color(0xFF757575),
      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),
      inverseSurface: Color(0xFF616161),
      inversePrimary: Color(0xFF64B5F6),
      primaryFixed: Color(0xFF64B5F6),
      onPrimaryFixed: Color(0xFF000000),
      primaryFixedDim: Color(0xFF2196F3),
      onPrimaryFixedVariant: Color(0xFF2196F3),
      secondaryFixed: Color(0xFF90A4AE),
      onSecondaryFixed: Color(0xFF263238),
      secondaryFixedDim: Color(0xFF607D8B),
      onSecondaryFixedVariant: Color(0xFF263238),
      tertiaryFixed: Color(0xFF4CAF50),
      onTertiaryFixed: Color(0xFF000000),
      tertiaryFixedDim: Color(0xFF388E3C),
      onTertiaryFixedVariant: Color(0xFF388E3C),
      surfaceDim: Color(0xFF424242),
      surfaceBright: Color(0xFF607D8B),
      surfaceContainerLowest: Color(0xFF607D8B),
      surfaceContainerLow: Color(0xFF607D8B),
      surfaceContainer: Color(0xFF616161),
      surfaceContainerHigh: Color(0xFF757575),
      surfaceContainerHighest: Color(0xFF9E9E9E),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFF1E88E5),
      surfaceTint: Color(0xFF2196F3),
      onPrimary: Color(0xFF000000),
      primaryContainer: Color(0xFF64B5F6),
      onPrimaryContainer: Color(0xFF000000),
      secondary: Color(0xFF607D8B),
      onSecondary: Color(0xFF000000),
      secondaryContainer: Color(0xFF90A4AE),
      onSecondaryContainer: Color(0xFF263238),
      tertiary: Color(0xFF8BC34A),
      onTertiary: Color(0xFF000000),
      tertiaryContainer: Color(0xFF4CAF50),
      onTertiaryContainer: Color(0xFF388E3C),
      error: Color(0xFFF44336),
      onError: Color(0xFF000000),
      errorContainer: Color(0xFFEF5350),
      onErrorContainer: Color(0xFFBF360C),
      surface: Color(0xFF212121),
      onSurface: Color(0xFFFFFFFF),
      onSurfaceVariant: Color(0xFFBDBDBD),
      outline: Color(0xFF9E9E9E),
      outlineVariant: Color(0xFF757575),
      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),
      inverseSurface: Color(0xFF616161),
      inversePrimary: Color(0xFF64B5F6),
      primaryFixed: Color(0xFF64B5F6),
      onPrimaryFixed: Color(0xFF000000),
      primaryFixedDim: Color(0xFF2196F3),
      onPrimaryFixedVariant: Color(0xFF2196F3),
      secondaryFixed: Color(0xFF90A4AE),
      onSecondaryFixed: Color(0xFF000000),
      secondaryFixedDim: Color(0xFF607D8B),
      onSecondaryFixedVariant: Color(0xFF263238),
      tertiaryFixed: Color(0xFF4CAF50),
      onTertiaryFixed: Color(0xFF000000),
      tertiaryFixedDim: Color(0xFF388E3C),
      onTertiaryFixedVariant: Color(0xFF388E3C),
      surfaceDim: Color(0xFF424242),
      surfaceBright: Color(0xFF607D8B),
      surfaceContainerLowest: Color(0xFF000000),
      surfaceContainerLow: Color(0xFF388E3C),
      surfaceContainer: Color(0xFF4CAF50),
      surfaceContainerHigh: Color(0xFF757575),
      surfaceContainerHighest: Color(0xFF9E9E9E),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
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
