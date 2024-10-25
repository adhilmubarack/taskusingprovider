import 'dart:ffi';
import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Addsub with ChangeNotifier {


  int _result = 0;
  int get result => _result;



  void Add(a,b)
{
_result = a + b;
notifyListeners();

void Sub(){
  _result = a - b;
  notifyListeners();
}

}
}