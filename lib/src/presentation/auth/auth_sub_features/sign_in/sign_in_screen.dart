import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsz/src/presentation/auth/auth_sub_features/sign_in/sign_in_controller.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignInController>(
        init: SignInController(),
        builder: (controller) {
          return const Scaffold(
            body: Center(
              child: Text("SignIn"),
            ),
          );
        });
  }
}
