import 'package:flutter/material.dart';

class GroundSkyPageModel extends ChangeNotifier {
  bool isLoading = false;

  startLoading() {
    isLoading = true;
    notifyListeners();
  }

  endLoading() {
    isLoading = false;
    notifyListeners();
  }
}
