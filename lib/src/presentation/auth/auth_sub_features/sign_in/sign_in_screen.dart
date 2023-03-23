import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:newsz/src/config/images/images.dart';
import 'package:newsz/src/config/theme/appcolors.dart';
import 'package:newsz/src/presentation/auth/auth_sub_features/sign_in/sign_in_controller.dart';
import 'package:newsz/src/presentation/auth/widgets/auth_text_field.dart';
import 'package:newsz/src/widgets/appbutton.dart';
import 'package:newsz/src/widgets/appbutton_with_icon.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignInController>(
        init: SignInController(),
        builder: (controller) {
          return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
            return SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: Text(
                      "Let's Sign\nYou In",
                      style: Theme.of(context)
                          .textTheme
                          .headline1
                          ?.copyWith(color: blueVogue, fontSize: 34),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: AuthTextField(
                      textController: controller.emailController,
                      label: "E-mail",
                      isPassword: false,
                      icon: FontAwesomeIcons.envelope,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Obx(
                      () => AuthTextField(
                        textController: controller.passWordController,
                        label: "Password",
                        isPassword: controller.isPassWordNotVisible,
                        icon: controller.isPassWordNotVisible
                            ? FontAwesomeIcons.eye
                            : FontAwesomeIcons.eyeSlash,
                        callback: (p0) => controller.changePasswordVisibilty(p0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "forgot password ?",
                          style: Theme.of(context).textTheme.headline6?.copyWith(
                              color: blueVogue, fontWeight: FontWeight.w500),
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                        height: constraints.maxHeight * 0.1,
                        child: AppButton(
                          btntitle: "Sign In",
                          callback: () {},
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                      child: Text(
                    "Or sign in with",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(fontWeight: FontWeight.w500, color: blueVogue),
                  )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      height: constraints.maxHeight * 0.1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppButtonWithIcon(
                            btntitle: "Google   ",
                            textColor: blueVogue,
                            btnColor: athensGrey,
                            iconImagePath: google,
                            callback: () {},
                          ),
                          AppButtonWithIcon(
                            btntitle: "Apple Id",
                            btnColor: athensGrey,
                            iconImagePath: apple,
                            callback: () {},
                            textColor: blueVogue,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          }));
        });
  }
}
