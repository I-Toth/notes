import 'package:flutter/material.dart';

// Light Mode
ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    surface: Color(0xFFF6F9FC),
    primary: Color(0xFF64B5F6),
    secondary: Color(0xFF81C784),
    inversePrimary: Color(0xFF455A64),
    onSurface: Colors.black87,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
  ),
);

// Dark Mode
ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    surface: Color(0xFF121212),
    primary: Color(0xFF1E88E5),
    secondary: Color(0xFFFFA726),
    inversePrimary: Color(0xFFCFD8DC),
    onSurface: Colors.white,
    onPrimary: Colors.black87,
    onSecondary: Colors.black87,
  ),
);
