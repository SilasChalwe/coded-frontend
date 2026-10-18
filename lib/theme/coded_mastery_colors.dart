import 'package:flutter/material.dart';

/// Coded Mastery's e-learning color tokens, translated from the CSS HSL values.
class CodedMasteryColors {
  const CodedMasteryColors();

  // Light theme.
  Color get background => _hsl(40, 33, 97);
  Color get foreground => _hsl(220, 30, 15);
  Color get card => _hsl(0, 0, 100);
  Color get cardForeground => foreground;
  Color get popover => _hsl(0, 0, 100);
  Color get popoverForeground => foreground;
  Color get primary => _hsl(178, 42, 55);
  Color get primaryForeground => _hsl(0, 0, 100);
  Color get secondary => _hsl(216, 55, 25);
  Color get secondaryForeground => _hsl(0, 0, 100);
  Color get accent => _hsl(178, 42, 90);
  Color get accentForeground => _hsl(178, 42, 35);
  Color get muted => _hsl(40, 20, 94);
  Color get mutedForeground => _hsl(220, 10, 45);
  Color get destructive => _hsl(0, 84, 60);
  Color get destructiveForeground => _hsl(0, 0, 100);
  Color get border => _hsl(220, 15, 90);
  Color get input => _hsl(220, 15, 90);
  Color get ring => _hsl(178, 42, 55);

  // Custom brand tokens.
  Color get heroGradientStart => _hsl(216, 55, 20);
  Color get heroGradientEnd => _hsl(216, 55, 30);
  Color get cream => _hsl(40, 33, 97);
  Color get teal => _hsl(178, 42, 55);
  Color get tealLight => _hsl(178, 42, 70);
  Color get tealDark => _hsl(178, 42, 40);
  Color get navy => _hsl(216, 55, 25);
  Color get navyLight => _hsl(216, 40, 35);
  Color get navyDark => _hsl(216, 60, 18);
  Color get orange => _hsl(25, 95, 55);
  Color get yellow => _hsl(45, 95, 55);
  Color get success => _hsl(145, 65, 45);
  Color get warning => _hsl(45, 95, 55);

  LinearGradient get heroGradient => LinearGradient(
    colors: [heroGradientStart, heroGradientEnd],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // Light sidebar.
  Color get sidebarBackground => _hsl(0, 0, 98);
  Color get sidebarForeground => _hsl(240, 5.3, 26.1);
  Color get sidebarPrimary => primary;
  Color get sidebarPrimaryForeground => primaryForeground;
  Color get sidebarAccent => _hsl(178, 42, 95);
  Color get sidebarAccentForeground => accentForeground;
  Color get sidebarBorder => _hsl(220, 13, 91);
  Color get sidebarRing => ring;

  // Dark theme.
  Color get darkBackground => _hsl(220, 30, 10);
  Color get darkForeground => _hsl(0, 0, 95);
  Color get darkCard => _hsl(220, 25, 14);
  Color get darkCardForeground => darkForeground;
  Color get darkPopover => _hsl(220, 25, 14);
  Color get darkPopoverForeground => darkForeground;
  Color get darkSecondary => _hsl(216, 35, 35);
  Color get darkMuted => _hsl(220, 20, 20);
  Color get darkMutedForeground => _hsl(220, 10, 60);
  Color get darkAccent => _hsl(178, 42, 20);
  Color get darkAccentForeground => _hsl(178, 42, 70);
  Color get darkDestructive => _hsl(0, 62.8, 30.6);
  Color get darkDestructiveForeground => _hsl(0, 0, 95);
  Color get darkBorder => _hsl(220, 20, 20);
  Color get darkInput => _hsl(220, 20, 20);
  Color get darkSidebarBackground => _hsl(220, 30, 12);
  Color get darkSidebarForeground => _hsl(0, 0, 90);
  Color get darkSidebarAccent => _hsl(178, 42, 20);
  Color get darkSidebarAccentForeground => _hsl(178, 42, 70);
  Color get darkSidebarBorder => _hsl(220, 20, 20);

  // Compatibility aliases.
  Color get surface => card;
  Color get textPrimary => foreground;
  Color get textSecondary => mutedForeground;
  Color get darkSurface => darkCard;
  Color get darkTextPrimary => darkForeground;
  Color get darkTextSecondary => darkMutedForeground;
  Color get error => destructive;
}

Color _hsl(double hue, double saturation, double lightness) {
  return HSLColor.fromAHSL(1, hue, saturation / 100, lightness / 100).toColor();
}
