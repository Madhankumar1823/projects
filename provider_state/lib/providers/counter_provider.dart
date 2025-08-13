import 'package:flutter/foundation.dart';

class CounterProvider extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }
}

/*
Provider state management used
used in larger apps
comparing GetX code is moderate in Provider

Here Notify listeners are used to update the UI

notify listeners calls inside the class that extends ChangeNotifier happens
 only there was an update to the state

 */
