import 'package:flutter/cupertino.dart';

class CounterProvider with ChangeNotifier
{
  int i=0;

  void increment()
  {
    i++;
    notifyListeners();
  }
  void decrement()
  {
    i--;
    notifyListeners();
  }
  void x2()
  {
    i = i*i;
    notifyListeners();
  }
  void x3()
  {
    i = i*i*i;
    notifyListeners();
  }
  void x4()
  {
    i = i*i*i*i;
    notifyListeners();
  }
  void x5()
  {
    i = i*i*i*i*i;
    notifyListeners();
  }
}