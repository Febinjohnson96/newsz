import 'package:animate_do/animate_do.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsz/src/config/images/images.dart';
import 'package:newsz/src/config/theme/appcolors.dart';
import 'package:newsz/src/presentation/signin/signin_controller.dart';
import 'package:newsz/src/widgets/appbutton_with_icon.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignInController>(
        init: SignInController(),
        builder: (controller) {
          return Scaffold(
            body: SafeArea(
              child: LayoutBuilder(builder: (context, constraints) {
                return FadeInUp(
                  duration: const Duration(milliseconds: 1400),
                  delay: const Duration(milliseconds: 300),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset(
                                  parliament,
                                  height: constraints.maxHeight * 0.6,
                                  width: constraints.maxWidth,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 10),
                              child: Container(
                                height: constraints.maxHeight * 0.6,
                                width: constraints.maxWidth,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: blueVogue.withOpacity(0.5),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: constraints.maxHeight * 0.08,
                              left: constraints.maxWidth * 0.1,
                              child: Text(
                                'Sign in\noptions.',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1
                                    ?.copyWith(color: Colors.white, fontSize: 32),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: SizedBox(
                            height: constraints.maxHeight * 0.08,
                            child: const AppButtonWithIcon(
                              btntitle: 'Continue with Email',
                              btnColor: redRibbon,
                              iconImagePath: mail,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: SizedBox(
                            height: constraints.maxHeight * 0.08,
                            child: const AppButtonWithIcon(
                              btntitle: 'Sign In with Google',
                              btnColor: athensGrey,
                              iconImagePath: google,
                              textColor: blueVogue,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 11, horizontal: 20),
                          child: SizedBox(
                            height: constraints.maxHeight * 0.08,
                            child: const AppButtonWithIcon(
                              btntitle: 'Sign In with Apple ID',
                              btnColor: athensGrey,
                              iconImagePath:
                                  apple,
                              textColor: blueVogue,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5,),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "Don't have an account? ",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  ?.copyWith(
                                      color: lynch, fontWeight: FontWeight.w500)),
                          TextSpan(
                              text: "Sign Up",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  ?.copyWith(
                                      color: redRibbon,
                                      fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  debugPrint("TESTss");
                                })
                        ])),
                         const SizedBox(height: 5,),
                      ],
                    ),
                  ),
                );
              }),
            ),
          );
        });
  }
}
