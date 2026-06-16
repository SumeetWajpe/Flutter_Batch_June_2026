import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Using Theme",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(15),
          // color: Theme.of(context).colorScheme.primaryContainer,
          color: const Color.fromARGB(255, 200, 249, 249),
          child: Text(
            "Styled with Theme !",
            // style: Theme.of(context).textTheme.displayLarge,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
