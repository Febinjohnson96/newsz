import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:newsz/src/config/images/images.dart';
import 'package:newsz/src/data/models/onboarding_model/onboarding_model.dart';

class OnboardingController extends GetxController {
  final pageController = PageController();
  final titlecontroller = PageController();
  final _isLastPage = false.obs;
  bool get isLastPage => _isLastPage.value;

  List<OnboardingModel> get listOfOnboardingContent => [
        OnboardingModel(
            image: protest,
            textPrimary: "Get the latest news from",
            textSecondary: "\nreliable\nsources",
            textTertiary: "."),
        OnboardingModel(
            image: flags,
            textPrimary: "Still",
            textSecondary: " up to date",
            textTertiary: "\nnews from all around the world"),
        OnboardingModel(
            image: dome,
            textPrimary: "From art to politics,",
            textSecondary: "\nanything",
            textTertiary: " in newz"),
      ];

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

  void routeToSignIn() {
    if (isLastPage) {
      Get.offAllNamed('/signin');
    }
  }
}
