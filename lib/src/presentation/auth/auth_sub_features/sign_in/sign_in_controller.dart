import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsz/src/core/utils/validation/validation.dart';

class SignInController extends GetxController {
  final emailController = TextEditingController();
  final passWordController = TextEditingController();
  final validation = AppValidations();

  final _isPassWordNotVisible = true.obs;
  bool get isPassWordNotVisible => _isPassWordNotVisible.value;

  final _emailError = "".obs;
  String get emailError => _emailError.value;

  final _passWordError = "".obs;
  String get passWordError => _passWordError.value;

  void changePasswordVisibilty(bool passWordVisibility) {
    _isPassWordNotVisible(passWordVisibility);
  }

  void onClickSignInButton() {
    if (validateUserCredential()) {
      debugPrint("Success");
    } else {
      debugPrint("NOPE");
    }
  }

  bool validateUserCredential() {
    if (emailController.text.isEmpty) {
      _emailError("Email is empty");
      return false;
    }
    if (!validation.isValidEmail(emailController.text)) {
      _emailError("Please fill email properly");
      return false;
    }
    if (!validation.isValidPassWord(passWordController.text)) {
      _passWordError(
          "Please fill password in the format John!2d\nNeed 1 capitalletter\nAt least 1 number\n1 special character");
      return false;
    }
    if (emailController.text.isNotEmpty ||
        validation.isValidEmail(emailController.text)) {
      _emailError('');
    }
    if (validation.isValidPassWord(passWordController.text)) {
      _passWordError('');
    }
    _emailError('');
    _passWordError('');
    return true;
  }
}
