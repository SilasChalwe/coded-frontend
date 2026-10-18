import 'package:flutter/material.dart';

import 'coded_mastery_colors.dart';
import 'coded_mastery_typography.dart';

/// Global design-system entry point.
///
/// Example: `codedMastery.theme.color.primary`.
const codedMastery = CodedMastery(
  theme: CodedMasteryTheme(useDarkTheme: false),
);

class CodedMastery {
  const CodedMastery({this.theme = const CodedMasteryTheme()});

  final CodedMasteryTheme theme;
}

class CodedMasteryTheme {
  const CodedMasteryTheme({
    this.useDarkTheme = false,
    this.color = const CodedMasteryColors(),
    this.typography = const CodedMasteryTypography(),
  });

  /// Change this to `true` in [codedMastery] to force dark mode.
  final bool useDarkTheme;
  final CodedMasteryColors color;
  final CodedMasteryTypography typography;

  ThemeData get light => _buildTheme(Brightness.light);
  ThemeData get dark => _buildTheme(Brightness.dark);
  ThemeMode get mode => useDarkTheme ? ThemeMode.dark : ThemeMode.light;

  ThemeData _buildTheme(Brightness brightness) {
    final isDark = brightness == Brightness.dark;
    final foreground = isDark ? color.darkForeground : color.foreground;
    final surface = isDark ? color.darkCard : color.card;
    final secondary = isDark ? color.darkSecondary : color.secondary;
    final accent = isDark ? color.darkAccent : color.accent;
    final accentForeground = isDark
        ? color.darkAccentForeground
        : color.accentForeground;
    final destructive = isDark ? color.darkDestructive : color.destructive;
    final destructiveForeground = isDark
        ? color.darkDestructiveForeground
        : color.destructiveForeground;
    final border = isDark ? color.darkBorder : color.border;
    final mutedForeground = isDark
        ? color.darkMutedForeground
        : color.mutedForeground;

    final colorScheme = ColorScheme(
      brightness: brightness,
      primary: color.primary,
      onPrimary: color.primaryForeground,
      primaryContainer: accent,
      onPrimaryContainer: accentForeground,
      secondary: secondary,
      onSecondary: color.secondaryForeground,
      secondaryContainer: accent,
      onSecondaryContainer: accentForeground,
      error: destructive,
      onError: destructiveForeground,
      surface: surface,
      onSurface: foreground,
      outline: border,
      shadow: Colors.black,
      inverseSurface: foreground,
      onInverseSurface: surface,
      inversePrimary: color.tealLight,
      surfaceTint: color.primary,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: isDark ? color.darkBackground : color.background,
      textTheme: typography.textTheme.apply(
        bodyColor: foreground,
        displayColor: foreground,
      ),
      appBarTheme: AppBarTheme(
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: foreground,
        titleTextStyle: typography.titleLarge.copyWith(color: foreground),
      ),
      cardTheme: CardThemeData(
        elevation: 0,
        color: surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: border),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: surface,
        hintStyle: typography.bodyMedium.copyWith(color: mutedForeground),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: color.primary,
          foregroundColor: color.primaryForeground,
          textStyle: typography.labelLarge,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
