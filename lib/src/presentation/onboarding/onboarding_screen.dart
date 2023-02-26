import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsz/src/config/theme/appcolors.dart';
import 'package:newsz/src/presentation/onboarding/onboarding_controller.dart';
import 'package:newsz/src/presentation/onboarding/widgets/onboarding_images.dart';
import 'package:newsz/src/presentation/onboarding/widgets/onboarding_titles.dart';
import 'package:newsz/src/widgets/appbutton.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
        init: OnboardingController(),
        builder: (controller) {
          return Scaffold(
            body: LayoutBuilder(builder: (context, constraints) {
              return Stack(children: [
                OnboardingImages(
                  constraints: constraints,
                  pageController: controller.pageController,
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: blueVogue.withOpacity(0.3),
                  ),
                ),
                Positioned(
                  bottom: constraints.maxHeight * 0.2,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      width: constraints.maxWidth * 0.7,
                      height: constraints.maxWidth * 0.6,
                      child: OnboardingTitles(
                        pageController: controller.titlecontroller,
                      ),
                    ),
                  ),
                ),
                Positioned(
                    bottom: constraints.maxHeight * 0.05,
                    left: constraints.maxWidth * 0.3,
                    child: SizedBox(
                        width: constraints.maxWidth * 0.45,
                        child: Obx(
                          () => AppButton(
                              callback: () => controller.nextPage(),
                              btntitle:
                                  controller.isLastPage ? "Sign in" : "Next"),
                        ))),
              ]);
            }),
          );
        });
  }
}
