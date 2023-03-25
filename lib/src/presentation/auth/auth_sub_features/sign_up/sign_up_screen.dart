import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:newsz/src/config/theme/appcolors.dart';
import 'package:newsz/src/presentation/auth/auth_sub_features/sign_up/sign_up_controller.dart';
import 'package:newsz/src/presentation/auth/widgets/auth_text_field.dart';
import 'package:newsz/src/widgets/appbutton.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
        init: SignUpController(),
        builder: (controller) {
          return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Text(
                    "Create\nan account",
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
                    isPassword: false,
                    label: "username",
                    textController: controller.userNameController,
                    icon: FontAwesomeIcons.user,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: AuthTextField(
                    isPassword: false,
                    label: "Email",
                    textController: controller.emailController,
                    icon: FontAwesomeIcons.envelope,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Obx(
                    () => AuthTextField(
                      isPassword: controller.isPassWordNotVisible,
                      label: "Password",
                      textController: controller.passWordController,
                      icon: controller.isPassWordNotVisible
                          ? FontAwesomeIcons.eye
                          : FontAwesomeIcons.eyeSlash,
                      callback: (p0) => controller.changePasswordVisibilty(p0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Obx(
                        () => Checkbox(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                            activeColor: redRibbon,
                            value: controller.acceptedAgreement,
                            onChanged: (value) =>
                                controller.acceptAgreement(value!)),
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "I have read ",
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                ?.copyWith(
                                    fontSize: 14,
                                    color: lynch,
                                    fontWeight: FontWeight.w500)),
                        TextSpan(
                            text: "Terms & Agreement",
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                ?.copyWith(
                                    fontSize: 14,
                                    color: redRibbon,
                                    fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                debugPrint("TESTss");
                              })
                      ]))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: constraints.maxHeight*0.08,
                    child: AppButton(btntitle: "Sign Up")),
                )
              ],
            );
          }));
        });
  }
}
