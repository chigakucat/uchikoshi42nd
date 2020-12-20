import 'package:flutter/material.dart';

class PanoramaPageModel extends ChangeNotifier {
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
