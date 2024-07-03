import 'package:flutter/foundation.dart';

class ProgressModel extends ChangeNotifier {
  double _progress = 0.0;

  double get progress => _progress;

  void incrementProgress() {
    if (_progress < 1.0) {
      _progress += 0.25;
      notifyListeners();
    }
  }

  void resetProgress() {
    _progress = 0.0;
    notifyListeners();
  }
}
