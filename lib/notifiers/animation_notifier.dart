import 'package:flutter/cupertino.dart';

class AnimationNotifier extends ChangeNotifier {
  bool animateHomeToDetail = false;

  void playHomeToDetailAnimations() {
    animateHomeToDetail = true;
    notifyListeners();
  }

  void playDetailToHomeAnimations() {
    animateHomeToDetail = false;
    notifyListeners();
  }
}
