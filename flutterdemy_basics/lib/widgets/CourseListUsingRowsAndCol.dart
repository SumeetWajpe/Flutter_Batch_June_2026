import 'package:flutter/material.dart';

class CourseListWithRowsAndCols extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image(image: AssetImage("assets/images/react.png"), width: 100),
      ],
    );
  }
}
