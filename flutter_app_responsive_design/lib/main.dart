import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: MyOrientationDemo(),
    );
  }
}

class MyOrientationDemo extends StatelessWidget {
  const MyOrientationDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Orientation Demo')),
      body: Center(
        child: OrientationBuilder(
          builder: (context, orientation) {
            return Column(
              children: [
                Icon(
                  orientation == Orientation.portrait
                      ? Icons.phone_android
                      : Icons.phone_iphone,
                  size: 100,
                ),
                SizedBox(height: 20),
                Text(
                  'Device is in ${orientation == Orientation.portrait ? 'Portrait' : 'Landscape'} mode',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
