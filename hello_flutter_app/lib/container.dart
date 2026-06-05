import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.amber,
        height: 150,
        width: 150,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(10),
        child: Center(child: Text("Hello Container !")),
      ),
    );
  }
}
