import 'package:flutter/material.dart';

class DarkTheme {
  static ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: Colors.black,
      primarySwatch: Colors.blue,
      colorScheme: const ColorScheme.dark(
        background: Color.fromRGBO(64, 69, 89, 1),
      ),
      scaffoldBackgroundColor: const Color.fromRGBO(47, 50, 65, 1),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black,
        titleTextStyle: TextStyle(color: Colors.white),
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(fontSize: 32, color: Colors.white),
        titleMedium: TextStyle(fontSize: 24, color: Colors.white),
        titleSmall: TextStyle(fontSize: 18, color: Colors.white),

        bodyLarge: TextStyle(fontSize: 24, color: Colors.white),
        bodyMedium: TextStyle(fontSize: 18, color: Colors.white),
        bodySmall: TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }
}
