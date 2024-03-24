import 'package:flutter/material.dart';
import 'package:scribe/screens/on_boarding.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Scribe",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          titleTextStyle: TextStyle(color: Colors.white),
        ),
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 24, color: Colors.white),
          bodyMedium: TextStyle(fontSize: 18, color: Colors.white),
          bodySmall: TextStyle(fontSize: 14, color: Colors.white),
        ),
      ),
      home: const OnBoarding(),
    );
  }
}
