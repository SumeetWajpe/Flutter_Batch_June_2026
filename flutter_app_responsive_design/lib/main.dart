// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(primarySwatch: Colors.green),
//       debugShowCheckedModeBanner: false,
//       home: MyOrientationDemo(),
//     );
//   }
// }

// class MyOrientationDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('OrientationBuilder Example')),
//       body: Center(
//         child: OrientationBuilder(
//           builder: (context, orientation) {
//             Build UI elements based on device orientation
//             return Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Icon(
//                   Display different icons based on orientation
//                   orientation == Orientation.portrait
//                       ? Icons.phone_android
//                       : Icons.phone_iphone,
//                   size: 100.0,
//                 ),
//                 SizedBox(height: 20.0),
//                 Text(
//                   Display different text based on orientation
//                   'Device is in ${orientation == Orientation.portrait ? 'Portrait' : 'Landscape'} mode',
//                   style: TextStyle(fontSize: 20.0),
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_design/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MediaQuery.orientationOf(context);
    return const MaterialApp(home: HomePage());
  }
}
