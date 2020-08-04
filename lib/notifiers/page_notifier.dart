import 'package:flutter/cupertino.dart';

class PageNotifier extends ChangeNotifier {
  final double viewportFraction;
  PageController pageController;

  double currentPage = 0;

  PageNotifier({this.viewportFraction = 1}) {
    pageController = PageController(viewportFraction: viewportFraction);
    pageController.addListener(() {
      currentPage = pageController.page;
      notifyListeners();
    });
  }
}
