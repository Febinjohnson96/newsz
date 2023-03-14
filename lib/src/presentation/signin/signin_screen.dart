import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsz/src/presentation/signin/signin_controller.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignInController>(
        init: SignInController(),
        builder: (controller) {
          return const Scaffold();
        });
  }
}
