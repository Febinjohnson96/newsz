import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:newsz/src/config/images/images.dart';
import 'package:newsz/src/data/models/onboarding_model/onboarding_model.dart';

class OnboardingController extends GetxController {
  final pageController = PageController();
  final titlecontroller = PageController();

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
    pageController.nextPage(
        duration: const Duration(milliseconds: 1400), curve: Curves.ease);
  }

  void routeToSignIn() {
    Get.offAllNamed('/signin');
  }
}
