import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_design/desktopBody.dart';
import 'package:flutter_app_responsive_design/mobileBody.dart';
import 'package:flutter_app_responsive_design/responsivelayout.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: MobileBody(),
        desktopBody: DesktopBody(),
      ),
    );
  }
}
