import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:newsz/src/config/theme/appcolors.dart';
import 'package:newsz/src/presentation/forgot_password/forgot_password_controller.dart';
import 'package:newsz/src/widgets/app_text_field.dart';
import 'package:newsz/src/widgets/appbutton.dart';

class ForGotPassWordScreen extends StatelessWidget {
  const ForGotPassWordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ForgotPassWordController>(
        init: ForgotPassWordController(),
        builder: (controller) {
          return Scaffold(
            body: LayoutBuilder(builder: (context, constraints) {
              return SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Center(
                        child: Image.asset(
                          "assets/images/forgot password/Forgotpassword.png",
                          height: 250,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      child: Text(
                        "Forgot\nPassword ?",
                        style: Theme.of(context)
                            .textTheme
                            .headline1
                            ?.copyWith(color: blueVogue, fontSize: 34),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      child: Text(
                        "Enter your email address to reset password ",
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            ?.copyWith(color: blueVogue, fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: AppTextField(
                        isPassword: false,
                        label: "Email",
                        textController: controller.emailController,
                        icon: FontAwesomeIcons.envelope,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 20),
                      child: SizedBox(
                          height: constraints.maxHeight * 0.08,
                          child: const AppButton(btntitle: "Next")),
                    )
                  ],
                ),
              );
            }),
          );
        });
  }
}
