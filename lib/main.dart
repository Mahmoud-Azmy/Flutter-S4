import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_screen.dart';

void main() {
  runApp(RootWidget());
}

class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen(), debugShowCheckedModeBanner: false);
  }
}
