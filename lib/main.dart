import 'package:flutter/material.dart';
import 'package:flutter_application_1/counter_provider.dart';
import 'package:flutter_application_1/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) {
        return CounterProvider();
      },
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home: Home());
  }
}
