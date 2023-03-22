import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  final emailController = TextEditingController();
  final passWordController = TextEditingController();

  final _isPassWordNotVisible = true.obs;
  bool get isPassWordNotVisible => _isPassWordNotVisible.value;

  void changePasswordVisibilty(bool passWordVisibility) {
    _isPassWordNotVisible(passWordVisibility);
  }
}
