import 'package:flutter/material.dart';

class TitleModel with ChangeNotifier {
  String _title = "Default Title";

  String get title => _title;

  void setTitle(String title) {
    _title = title;
    notifyListeners();
  }
}
