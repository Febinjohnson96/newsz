import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:newsz/src/config/theme/appcolors.dart';
import 'package:newsz/src/presentation/auth/auth_sub_features/sign_in/sign_in_controller.dart';
import 'package:newsz/src/presentation/auth/widgets/auth_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignInController>(
        init: SignInController(),
        builder: (controller) {
          return Scaffold(
              body: Column(
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
                height: 20,
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
            ],
          ));
        });
  }
}
