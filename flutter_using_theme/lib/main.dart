import 'package:flutter/material.dart';
import 'package:flutter_using_theme/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,

          brightness: Brightness.light,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 20, color: Colors.white),
          displayLarge: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ),
      home: Scaffold(body: Home()),
    );
  }
}
