import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier
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
  void two()
  {
    i*=2;
    notifyListeners();
  }
  void Three()
  {
    i*=3;
    notifyListeners();
  }
  void Four()
  {
    i*=4;
    notifyListeners();
  }
  void clear()
  {
    i=0;
    notifyListeners();
  }

}