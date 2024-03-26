import 'package:flutter/material.dart';
import 'package:scribe/raw_data/themes/dark_theme.dart';
import 'package:scribe/screens/on_boardings/on_boarding.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:path/path.dart' as path;

Future main() async {
  // await dotenv.load(fileName: path.join("..", ".env"));
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Scribe",
      theme: DarkTheme.theme,
      home: const OnBoarding(),
    );
  }
}
