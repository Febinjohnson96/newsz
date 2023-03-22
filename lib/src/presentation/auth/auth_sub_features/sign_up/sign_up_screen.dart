import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsz/src/presentation/auth/auth_sub_features/sign_up/sign_up_controller.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
        init: SignUpController(),
        builder: (controller) {
          return const Scaffold(
            body: Center(
              child: Text("SignUP"),
            ),
          );
        });
  }
}
