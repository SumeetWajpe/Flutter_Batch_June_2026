import 'package:flutter/material.dart';
import 'package:hello_flutter_app/columns.dart';
// import 'package:hello_flutter_app/container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Using Layout Widgets",
            style: TextStyle(color: Colors.white),
          ),
        ),
        // backgroundColor: Colors.teal,
        // body: MyContainer(),
        body: RowsAndColumns(),

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
