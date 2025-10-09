import 'package:flutter/material.dart';
import 'package:flutter_application_1/profile_card.dart';

void main() {
  runApp( RootWidget());
}

class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ProfileCard(),debugShowCheckedModeBanner: false,);
  }
}
