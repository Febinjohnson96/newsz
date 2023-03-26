import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpMainController extends GetxController {
  final userNameController = TextEditingController();
  final emailController = TextEditingController();
  final passWordController = TextEditingController();

  final _isPassWordNotVisible = true.obs;
  bool get isPassWordNotVisible => _isPassWordNotVisible.value;

  final _acceptedAgreement = false.obs;
  bool get acceptedAgreement => _acceptedAgreement.value;

  void changePasswordVisibilty(bool passWordVisibility) {
    _isPassWordNotVisible(passWordVisibility);
  }

  void acceptAgreement(bool value) {
    debugPrint("Accepted $value");
    _acceptedAgreement(value);
  }
}
