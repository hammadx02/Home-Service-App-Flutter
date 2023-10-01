import 'package:flutter/material.dart';

class IconVisibiltyProvider with ChangeNotifier {
  bool _isVisable = false;

  bool get isVisable => _isVisable;

  void toggleVisibilty() {
    _isVisable = !_isVisable;
    notifyListeners();
  }
}
