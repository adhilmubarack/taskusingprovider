import 'package:flutter/material.dart';

class AddSub with ChangeNotifier {
  int _result = 0;
  int get result => _result;

  void add(int a, int b) {
    _result = a + b;
    notifyListeners();
  }

  void sub(int a, int b) {
    _result = a - b;
    notifyListeners();
  }
}
