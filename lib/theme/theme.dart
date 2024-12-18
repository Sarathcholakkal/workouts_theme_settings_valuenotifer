import 'package:flutter/material.dart';

// ThemeData lightMode = ThemeData(
//   brightness: Brightness.light,
//   colorScheme: ColorScheme.light(
//     surface: Colors.grey.shade400,
//   ),
// ); // ColorScheme.light // ThemeData

// ThemeData darkMode = ThemeData(
//   brightness: Brightness.dark,
//   colorScheme: ColorScheme.dark(
//     surface: Colors.grey.shade900,
//   ),
// ); // ThemeData

// ThemeData lightMode = ThemeData(
//   colorScheme: ColorScheme.fromSeed(
//     seedColor: Color(0xFF00C853),
//     brightness: Brightness.light,
//   ),
// );
//==================================================================================

// Define the light theme
final lightMode = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF1DB954), // Spotify green
    brightness: Brightness.light,
  ).copyWith(
    primary: const Color(0xFF1DB954),
    onPrimary: Colors.white,
    secondary: const Color(0xFF191414),
    onSecondary: Colors.white,
    // Black text on light background
    surface: const Color(0xFFF5F5F5), // Light surface
    onSurface: const Color(0xFF000000), // Black text/icons on surface
    error: const Color(0xFFD32F2F),
    onError: Colors.white,
    tertiary: const Color(0xFF9E9E9E), // Light gray for tertiary elements
    outline: const Color(0xFFBDBDBD), // Light gray for borders/dividers
    shadow: const Color(0xFF000000),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF1DB954), // Primary color
    foregroundColor: Colors.white, // Text/icon color
  ),
);

// Define the dark theme
final darkMode = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF1DB954), // Spotify green
    brightness: Brightness.dark,
  ).copyWith(
    primary: const Color(0xFF1DB954),
    onPrimary: Colors.white,
    secondary: const Color(0xFF191414),
    onSecondary: Colors.white,

    surface: const Color(0xFF181818), // Dark surface
    onSurface: Colors.white,
    error: const Color(0xFFE57373),
    onError: Colors.white,
    tertiary: const Color(0xFF535353), // Mid-gray for tertiary elements
    outline: const Color(0xFF404040), // Dark gray for borders/dividers
    shadow: const Color(0xFF000000),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF1DB954), // Primary color
    foregroundColor: Colors.white, // Text/icon color
  ),
);
