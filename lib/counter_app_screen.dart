import 'package:flutter/material.dart';

class CounterAppScreen extends StatefulWidget {
  const CounterAppScreen({super.key});

  @override
  State<CounterAppScreen> createState() => _CounterAppScreenState();
}

class _CounterAppScreenState extends State<CounterAppScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    //counter App
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Counter App"),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              child: const Text("+"),
            ),
            Text("counter: $counter"),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter--;
                });
              },
              child: const Text("-"),
            ),
          ],
        ),
      ),
    );
  }
}
