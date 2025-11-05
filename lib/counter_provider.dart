import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int counter = 6;
  void increment() {
    counter++;
    notifyListeners();
  }
}
