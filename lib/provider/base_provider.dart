import 'package:flutter/material.dart';

class BaseProvider extends ChangeNotifier {
  Size _size = const Size(0, 0);
  get size => _size;

  set size(value) {
    _size = value;
    notifyListeners();
  }
}
