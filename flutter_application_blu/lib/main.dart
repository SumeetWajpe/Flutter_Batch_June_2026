import 'package:flutter/material.dart';
import 'package:flutter_application_blu/bluetoothscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bluetooth App',
      theme: ThemeData(useMaterial3: true),
      home: const BluetoothScreen(),
    );
  }
}
