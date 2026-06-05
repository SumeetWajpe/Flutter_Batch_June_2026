import 'package:flutter/material.dart';

class RowsAndColumns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Container(
          color: Colors.amber,
          height: 300,
          width: 100,
          padding: EdgeInsets.all(10),
          child: Text("Hello Column"),
        ),
        Container(
          color: Colors.blue,
          height: 100,
          width: 100,
          padding: EdgeInsets.all(10),
          child: Text("Hello Column"),
        ),
        Container(
          color: Colors.cyan,
          height: 100,
          width: 100,
          padding: EdgeInsets.all(10),
          child: Text("Hello Column"),
        ),
      ],
    );
  }
}

// Column
// @override
// Widget build(BuildContext context) {
//   return Column(
//     mainAxisAlignment: MainAxisAlignment.start,
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: <Widget>[
//       Container(
//         color: Colors.amber,
//         height: 100,
//         width: 100,
//         padding: EdgeInsets.all(10),
//         child: Text("Hello Column"),
//       ),
//       Container(
//         color: Colors.blue,
//         height: 100,
//         width: 300,
//         padding: EdgeInsets.all(10),
//         child: Text("Hello Column"),
//       ),
//       Container(
//         color: Colors.cyan,
//         height: 100,
//         width: 100,
//         padding: EdgeInsets.all(10),
//         child: Text("Hello Column"),
//       ),
//     ],
//   );
// }
