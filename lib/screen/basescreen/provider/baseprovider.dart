
import 'package:flutter/material.dart';

class Baseprovider extends ChangeNotifier
{
  int i=0;

  void navigationPosition(int value)
  {
    i = value;
    notifyListeners();
  }
}
