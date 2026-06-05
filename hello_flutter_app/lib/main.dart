import 'package:flutter/material.dart';
import 'package:hello_flutter_app/container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: MyContainer(),
        // body: Center(
        //   child: Text(
        //     "Hello Flutter !",
        //     textDirection: TextDirection.ltr,
        //     style: TextStyle(fontSize: 30),
        //   ),
        // ),
      ),
    );
  }
}
