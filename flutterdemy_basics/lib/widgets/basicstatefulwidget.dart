import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  var count;

  @override
  void initState() {
    super.initState();
    count = 100;
  }

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Count : $count", style: const TextStyle(fontSize: 30)),
        const SizedBox(height: 20),
        ElevatedButton(onPressed: increment, child: const Text("Increment++")),
      ],
    );
  }
}
