import 'package:flutter/material.dart';
import 'package:flutter_application_1/counter_app.dart';
import 'package:flutter_application_1/counter_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home Screen', style: TextStyle(fontSize: 30)),
            Text(
              'Counter : ${context.watch<CounterProvider>().counter}',
              style: TextStyle(fontSize: 30),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const CounterApp();
                    },
                  ),
                );
              },
              child: const Text('Go to Counter'),
            ),
          ],
        ),
      ),
    );
  }
}
