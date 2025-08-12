import 'package:flutter/foundation.dart';

class CounterProvider with ChangeNotifier {
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
provider - state management
code is moderate comparing GetX
and not used in small apps

In that code

notifyListeners() call inside the class which extend ChangeNotifier (Happens)
   only the widget listens and changes Ui

*/
