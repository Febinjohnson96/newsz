import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsz/src/presentation/onboarding/onboarding_controller.dart';
import 'package:newsz/src/presentation/onboarding/widgets/onboarding_content.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
        init: OnboardingController(),
        builder: (controller) {
          return Scaffold(
            body: LayoutBuilder(builder: (context, constraints) {
              return PageView.builder(
                  allowImplicitScrolling: true,
                  itemCount: controller.listOfOnboardingContent.length,
                  itemBuilder: (context, index) {
                    return OnboardingContent(
                      image: controller.listOfOnboardingContent[index].image,
                      constraints: constraints,
                      textPrimary:
                          controller.listOfOnboardingContent[index].textPrimary,
                      textSecondary: controller
                          .listOfOnboardingContent[index].textSecondary,
                      textTertiary: controller
                          .listOfOnboardingContent[index].textTertiary,
                    );
                  });
            }),
          );
        });
  }
}
