import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final pageController = PageController();
  final titlecontroller = PageController();
  final _isLastPage = false.obs;
  bool get isLastPage => _isLastPage.value;

  void nextPage() {
    if (pageController.page == 1) {
      _isLastPage(true);
    }
    debugPrint(isLastPage.toString());
    pageController.nextPage(
        duration: const Duration(milliseconds: 3000), curve: Curves.ease);
    titlecontroller.nextPage(
        duration: const Duration(milliseconds: 3000), curve: Curves.ease);
  }
}
