import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsz/src/config/images/images.dart';
import 'package:newsz/src/config/theme/appcolors.dart';
import 'package:newsz/src/presentation/onboarding/onboarding_controller.dart';

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
                PageView(
                  controller: controller.pageController,
                  children: [
                    Image.asset(
                        height: constraints.maxHeight,
                        width: constraints.maxWidth,
                        fit: BoxFit.cover,
                        protest),
                  ],
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.45,
                    width: MediaQuery.of(context).size.width,
                    color: blueVogue.withOpacity(0.3),
                  ),
                ),
                PageView(
                  controller: controller.pageController,
                  children: const [
                  ],
                ),
              ]);
            }),
          );
        });
  }
}
