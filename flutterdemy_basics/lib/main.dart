import 'package:flutter/material.dart';
import 'package:flutterdemy_basics/widgets/CourseListUsingRowsAndCol.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demy',

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 194, 47, 220),
          title: Text(
            "Flutterdemy",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: CourseListWithRowsAndCols(),
      ),
    );
  }
}
