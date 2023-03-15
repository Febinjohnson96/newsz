import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsz/src/config/theme/appcolors.dart';
import 'package:newsz/src/presentation/signin/signin_controller.dart';

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
                return Column(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              "assets/images/signup/parliament.jpg",
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
                          bottom: constraints.maxHeight*0.08,
                          left: constraints.maxWidth*0.1,
                          child: Text(
                            'Sign in\noptions.',
                            style: Theme.of(context).textTheme.headline1?.copyWith(color: Colors.white,fontSize: 32),
                          ),
                        )
                      ],
                    )
                  ],
                );
              }),
            ),
          );
        });
  }
}
