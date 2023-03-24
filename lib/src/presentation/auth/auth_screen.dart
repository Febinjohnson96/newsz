import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsz/src/presentation/auth/auth_controller.dart';
import 'package:newsz/src/presentation/auth/auth_sub_features/sign_in/sign_in_screen.dart';
import 'package:newsz/src/presentation/auth/auth_sub_features/sign_up/sign_up_screen.dart';
import 'package:newsz/src/presentation/auth/widgets/view_change_button.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        init: AuthController(),
        builder: (controller) {
          return GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              body: SafeArea(
                child: LayoutBuilder(builder: (context, constraints) {
                  return SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: GestureDetector(
                            // behavior: HitTestBehavior.translucent,
                            onTap: () => controller.onTouchBackButton(),
                            child: AbsorbPointer(
                              child: SizedBox(
                                height: constraints.maxHeight * .04,
                                width: constraints.maxWidth * .02,
                                child: const Icon(
                                  Icons.arrow_back,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: SizedBox(
                            height: constraints.maxHeight * 0.05,
                            child: ListView.separated(
                              separatorBuilder: (context, index) => const SizedBox(
                                width: 10,
                              ),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => Obx(
                                () => ViewChangebutton(
                                  buttonTitle: controller.authViews[index],
                                  isSelected: controller.selectedView ==
                                      controller.authViews[index],
                                  callback: () => controller
                                      .swapView(controller.authViews[index]),
                                ),
                              ),
                              itemCount: controller.authViews.length,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: constraints.maxHeight * 0.9,
                          child: Obx(() =>
                              controller.selectedView == controller.authViews.first
                                  ? FadeInLeft(
                                      duration: const Duration(milliseconds: 1400),
                                      delay: const Duration(milliseconds: 300),
                                      child: const SignInScreen())
                                  : FadeInRight(
                                      duration: const Duration(milliseconds: 1400),
                                      delay: const Duration(milliseconds: 300),
                                      child: const SignUpScreen())),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          );
        });
  }
}
