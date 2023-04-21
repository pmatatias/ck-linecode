import 'package:flutter/material.dart';

class PState extends ChangeNotifier{
  String _nu = "ppp";
  String get nu => _nu;
  set nu (String ns ){
    _nu = ns;
    notifyListeners();
  }
}