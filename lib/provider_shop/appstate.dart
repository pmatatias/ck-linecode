import 'package:ck_linecode/provider_shop/pstate.dart';
import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  late PState pState;

  AppState() {
    initData();
  }
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  set isLoading(bool isload) {
    _isLoading = isload;
    notifyListeners();
  }

  String _txt = "";
  String get gettxt => _txt;
  set txt(String newtxt) {
    _txt = newtxt;
  }

  

  Future<void> initData({String data = "abc"}) async {
    isLoading = true;
    await Future.delayed(const Duration(seconds: 5));
    _txt = pState.nu;
    isLoading = false; // notifylistener called inside the setter
  }
}
